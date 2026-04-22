import { describe, it, expect, vi, beforeEach } from "vitest";
import type { SupabaseClient } from "@supabase/supabase-js";
import { runAgent } from "@/worker/agents/runner";
import { reviewerAgent } from "@/worker/agents/reviewer";
import { AgentError } from "@/worker/agents/types";

function makeSupabaseDouble() {
  const inserts: Record<string, unknown>[] = [];
  const client = {
    from: () => ({
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
      usage: { prompt_tokens: 50, completion_tokens: 80 },
    }),
    text: async () => content,
  } as Response;
}

const VALID_REVIEW = JSON.stringify({
  highlights: ["Algebra Q1-3 all correct under 60s — solid pace.", "Confidence matched outcomes on 7/8 questions."],
  patterns: [
    {
      pattern: "Slowed down on hard geometry",
      evidence: "Q9 (geom_circles) took 142s, vs avg 65s on earlier Qs",
      severity: "medium",
      type: "pacing",
    },
  ],
  calibration_delta: 5,
  estimated_math_delta: 8,
  estimated_rw_delta: -2,
  new_calibration: 65,
  new_math: 558,
  new_rw: 498,
  next_session_focus: {
    topic: "geometry",
    skill: "geom_circles",
    reason: "Two of three circle questions were missed — worth a focused set.",
  },
  summary: "Strong algebra performance with clean calibration. Spend the next session on circles — that's where time and accuracy both slipped.",
});

const INPUT = {
  session: {
    startedAt: "2026-04-16T20:00:00Z",
    endedAt: "2026-04-16T20:25:00Z",
    sessionType: "practice" as const,
    totalAttempts: 10,
    correctCount: 7,
  },
  attempts: [
    {
      questionId: "abc12345",
      topic: "algebra",
      skill: "linear_equations_one_var",
      difficulty: "easy",
      isCorrect: true,
      timeSpent: 42000,
      confidence: "confident",
    },
  ],
  previousScores: { math: 550, rw: 500, calibration: 60 },
};

describe("reviewerAgent", () => {
  const fetchSpy = vi.spyOn(globalThis, "fetch");

  beforeEach(() => {
    fetchSpy.mockReset();
  });

  it("returns the parsed review and logs a row", async () => {
    fetchSpy.mockResolvedValueOnce(mockOpenAIResponse(VALID_REVIEW));
    const { client, inserts } = makeSupabaseDouble();

    const result = await runAgent(reviewerAgent, INPUT, { userId: "u-1", sessionId: 42 }, "key", client);

    expect(result.output.new_math).toBe(558);
    expect(result.output.new_rw).toBe(498);
    expect(result.output.patterns).toHaveLength(1);
    expect(result.output.next_session_focus.topic).toBe("geometry");

    expect(inserts).toHaveLength(1);
    expect(inserts[0]).toMatchObject({
      agent: "reviewer",
      user_id: "u-1",
      session_id: 42,
      error: null,
    });
  });

  it("clamps deltas at ±20 and final scores at [200, 800]", async () => {
    const wild = JSON.stringify({
      ...JSON.parse(VALID_REVIEW),
      estimated_math_delta: 75,
      estimated_rw_delta: -200,
      new_math: 950,
      new_rw: 100,
      new_calibration: 250,
    });
    fetchSpy.mockResolvedValueOnce(mockOpenAIResponse(wild));
    const { client } = makeSupabaseDouble();

    const result = await runAgent(reviewerAgent, INPUT, {}, "key", client);

    expect(result.output.estimated_math_delta).toBe(20);
    expect(result.output.estimated_rw_delta).toBe(-20);
    expect(result.output.new_math).toBe(800);
    expect(result.output.new_rw).toBe(200);
    expect(result.output.new_calibration).toBe(100);
  });

  it("sends response_format json_object and the previous scores in the prompt", async () => {
    fetchSpy.mockResolvedValueOnce(mockOpenAIResponse(VALID_REVIEW));
    const { client } = makeSupabaseDouble();

    await runAgent(reviewerAgent, INPUT, {}, "key", client);

    const init = fetchSpy.mock.calls[0]?.[1] as RequestInit | undefined;
    expect(init?.body).toBeDefined();
    const body = JSON.parse(init!.body as string);
    expect(body.response_format).toEqual({ type: "json_object" });
    const userMsg = body.messages.find((m: { role: string }) => m.role === "user").content;
    expect(userMsg).toContain("math=550");
    expect(userMsg).toContain("rw=500");
    expect(userMsg).toContain("calibration=60");
  });

  it("rejects malformed pattern entries", async () => {
    const bad = JSON.stringify({
      ...JSON.parse(VALID_REVIEW),
      patterns: [
        { pattern: "x", evidence: "y", severity: "extreme", type: "pacing" },
      ],
    });
    fetchSpy.mockResolvedValueOnce(mockOpenAIResponse(bad));
    const { client, inserts } = makeSupabaseDouble();

    await expect(
      runAgent(reviewerAgent, INPUT, {}, "key", client)
    ).rejects.toBeInstanceOf(AgentError);
    expect(inserts[0].error).toMatch(/patterns/i);
  });
});
