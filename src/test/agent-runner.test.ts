import { describe, it, expect, vi, beforeEach, afterEach } from "vitest";
import type { SupabaseClient } from "@supabase/supabase-js";
import { runAgent } from "@/worker/agents/runner";
import { echoAgent } from "@/worker/agents/echo";
import { AgentError } from "@/worker/agents/types";

// Build a minimal Supabase double that records the rows it was asked to insert.
function makeSupabaseDouble() {
  const inserts: Record<string, unknown>[] = [];
  const client = {
    from: (_table: string) => ({
      insert: async (row: Record<string, unknown>) => {
        inserts.push(row);
        return { data: null, error: null };
      },
    }),
  } as unknown as SupabaseClient;
  return { client, inserts };
}

function mockOpenAIResponse(content: string, status = 200) {
  return {
    ok: status >= 200 && status < 300,
    status,
    json: async () => ({
      choices: [{ message: { content } }],
      usage: { prompt_tokens: 11, completion_tokens: 22 },
    }),
    text: async () => content,
  } as Response;
}

describe("runAgent", () => {
  const fetchSpy = vi.spyOn(globalThis, "fetch");

  beforeEach(() => {
    fetchSpy.mockReset();
  });

  afterEach(() => {
    fetchSpy.mockReset();
  });

  it("returns parsed output and logs a success row", async () => {
    fetchSpy.mockResolvedValueOnce(
      mockOpenAIResponse('{"echo":"hello world","wordCount":2}')
    );
    const { client, inserts } = makeSupabaseDouble();

    const result = await runAgent(
      echoAgent,
      { message: "hello world" },
      { userId: "user-123" },
      "test-key",
      client
    );

    expect(result.output).toEqual({ echo: "hello world", wordCount: 2 });
    expect(result.promptTokens).toBe(11);
    expect(result.completionTokens).toBe(22);
    expect(result.model).toBe("gpt-4o-mini");
    expect(result.latencyMs).toBeGreaterThanOrEqual(0);

    expect(inserts).toHaveLength(1);
    expect(inserts[0]).toMatchObject({
      agent: "echo",
      user_id: "user-123",
      session_id: null,
      input_json: { message: "hello world" },
      output_json: { echo: "hello world", wordCount: 2 },
      error: null,
      prompt_tokens: 11,
      completion_tokens: 22,
    });
  });

  it("sends response_format json_object when agent declares it", async () => {
    fetchSpy.mockResolvedValueOnce(
      mockOpenAIResponse('{"echo":"x","wordCount":1}')
    );
    const { client } = makeSupabaseDouble();

    await runAgent(
      echoAgent,
      { message: "x" },
      {},
      "test-key",
      client
    );

    const [, init] = fetchSpy.mock.calls[0] as [string, RequestInit];
    const body = JSON.parse(init.body as string);
    expect(body.response_format).toEqual({ type: "json_object" });
    expect(body.temperature).toBe(0);
    expect(body.max_tokens).toBe(200);
  });

  it("logs an error row and throws AgentError when output fails to parse", async () => {
    fetchSpy.mockResolvedValueOnce(
      mockOpenAIResponse("definitely not json")
    );
    const { client, inserts } = makeSupabaseDouble();

    await expect(
      runAgent(echoAgent, { message: "x" }, {}, "test-key", client)
    ).rejects.toBeInstanceOf(AgentError);

    expect(inserts).toHaveLength(1);
    expect(inserts[0].error).toMatch(/JSON|invalid|Unexpected/i);
    expect(inserts[0].output_json).toBe("definitely not json");
  });

  it("logs an error row and throws AgentError when OpenAI fails", async () => {
    fetchSpy.mockResolvedValueOnce(
      mockOpenAIResponse("server fail", 500)
    );
    const { client, inserts } = makeSupabaseDouble();

    await expect(
      runAgent(echoAgent, { message: "x" }, {}, "test-key", client)
    ).rejects.toBeInstanceOf(AgentError);

    expect(inserts).toHaveLength(1);
    expect(inserts[0].error).toMatch(/OpenAI/i);
    expect(inserts[0].output_json).toBeNull();
  });
});
