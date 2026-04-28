import type { SupabaseClient } from "@supabase/supabase-js";
import type {
  AnyToolDef,
  ChatMessage,
  StreamEvent,
  ToolAgentCall,
  ToolContext,
} from "./tool_agent";

// Runs one user turn of a multi-turn tool-calling agent with token streaming.
//
// Shape of the loop:
//   1. POST chat/completions with `stream: true` and `tools: [...]`.
//   2. Accumulate `delta.content` (yield as "delta" events) and
//      `delta.tool_calls` (buffered per index until finish).
//   3. If finish_reason === "tool_calls": execute requested tools in parallel,
//      append results as role:"tool" messages, loop back to step 1.
//   4. If finish_reason === "stop": write assistant turn to ai_tutor_turns,
//      emit "done", return.
//
// Never throws past the emitter — any failure becomes an "error" event.

const OPENAI_URL = "https://api.openai.com/v1/chat/completions";

interface StreamDelta {
  content?: string;
  tool_calls?: Array<{
    index: number;
    id?: string;
    type?: "function";
    function?: { name?: string; arguments?: string };
  }>;
}

interface StreamChunk {
  choices?: Array<{
    delta?: StreamDelta;
    finish_reason?: string | null;
  }>;
  usage?: { prompt_tokens?: number; completion_tokens?: number };
}

interface AccumulatedToolCall {
  id: string;
  name: string;
  arguments: string;
}

function toolsForOpenAI(tools: AnyToolDef[]): unknown[] {
  return tools.map((t) => ({
    type: "function",
    function: {
      name: t.name,
      description: t.description,
      parameters: t.parameters,
    },
  }));
}

// Reads raw SSE bytes and yields parsed chunks. Drops malformed frames.
async function* readSSE(response: Response): AsyncIterable<StreamChunk> {
  if (!response.body) return;
  const reader = response.body.getReader();
  const decoder = new TextDecoder();
  let buffer = "";
  try {
    while (true) {
      const { done, value } = await reader.read();
      if (done) break;
      buffer += decoder.decode(value, { stream: true });
      let newlineIdx: number;
      while ((newlineIdx = buffer.indexOf("\n")) !== -1) {
        const line = buffer.slice(0, newlineIdx).trim();
        buffer = buffer.slice(newlineIdx + 1);
        if (!line.startsWith("data:")) continue;
        const payload = line.slice(5).trim();
        if (payload === "[DONE]") return;
        try {
          yield JSON.parse(payload) as StreamChunk;
        } catch {
          // malformed chunk — skip
        }
      }
    }
  } finally {
    try {
      reader.releaseLock();
    } catch {
      /* noop */
    }
  }
}

async function openaiStream(
  apiKey: string,
  body: Record<string, unknown>,
  timeoutMs: number
): Promise<Response> {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);
  try {
    const res = await fetch(OPENAI_URL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${apiKey}`,
      },
      body: JSON.stringify({ ...body, stream: true }),
      signal: controller.signal,
    });
    if (!res.ok) {
      const text = await res.text().catch(() => "");
      throw new Error(`OpenAI ${res.status}: ${text.slice(0, 200)}`);
    }
    return res;
  } finally {
    clearTimeout(timer);
  }
}

async function logTurn(
  supabase: SupabaseClient,
  ctx: ToolContext,
  role: "user" | "assistant" | "tool",
  content: string | null,
  toolCalls: unknown,
  model: string | null,
  promptTokens: number | null,
  completionTokens: number | null,
  latencyMs: number | null,
  error: string | null
): Promise<number | null> {
  try {
    const { data } = await supabase
      .from("ai_tutor_turns")
      .insert({
        user_id: ctx.userId,
        browser_id: ctx.browserId,
        conversation_id: ctx.conversationId,
        role,
        content,
        tool_calls: toolCalls,
        model,
        prompt_tokens: promptTokens,
        completion_tokens: completionTokens,
        latency_ms: latencyMs,
        error,
      })
      .select("id")
      .single();
    return (data?.id as number | undefined) ?? null;
  } catch (err) {
    console.error("[tool_runner] logTurn failed:", err);
    return null;
  }
}

async function executeTool(
  def: AnyToolDef,
  rawArgs: string,
  ctx: ToolContext
): Promise<{ ok: true; result: unknown } | { ok: false; error: string }> {
  let parsed: unknown;
  try {
    parsed = rawArgs.trim() === "" ? {} : JSON.parse(rawArgs);
  } catch (err) {
    return { ok: false, error: `Invalid JSON arguments: ${(err as Error).message}` };
  }
  let validated: unknown;
  try {
    validated = def.validate(parsed);
  } catch (err) {
    return { ok: false, error: (err as Error).message };
  }
  try {
    const result = await def.execute(validated, ctx);
    return { ok: true, result };
  } catch (err) {
    return { ok: false, error: `Tool '${def.name}' threw: ${(err as Error).message}` };
  }
}

export interface RunToolAgentOptions {
  agent: ToolAgentCall;
  messages: ChatMessage[];
  apiKey: string;
  context: ToolContext;
  emit: (event: StreamEvent) => Promise<void>;
  timeoutMs?: number;
}

export async function runToolAgent(opts: RunToolAgentOptions): Promise<void> {
  const { agent, apiKey, context, emit } = opts;
  const timeoutMs = opts.timeoutMs ?? 60_000;
  const maxRounds = agent.maxToolRounds ?? 4;

  // Seed the conversation with the system prompt — tool runner owns this so
  // callers only pass user/assistant/tool turns.
  const messages: ChatMessage[] = [
    { role: "system", content: agent.loadSystemPrompt() },
    ...opts.messages,
  ];

  // Persist the latest user turn once up front so multi-round loops don't
  // double-write it.
  const lastUser = [...opts.messages].reverse().find((m) => m.role === "user");
  if (lastUser) {
    await logTurn(
      context.supabase,
      context,
      "user",
      typeof lastUser.content === "string" ? lastUser.content : null,
      null,
      null,
      null,
      null,
      null,
      null
    );
  }

  let totalPromptTokens = 0;
  let totalCompletionTokens = 0;
  const toolsByName = new Map(agent.tools.map((t) => [t.name, t]));
  const toolsPayload = toolsForOpenAI(agent.tools);

  for (let round = 0; round < maxRounds + 1; round++) {
    const isLastRound = round === maxRounds;
    const startedAt = Date.now();

    let response: Response;
    try {
      response = await openaiStream(
        apiKey,
        {
          model: agent.model,
          messages,
          tools: isLastRound ? undefined : toolsPayload,
          tool_choice: isLastRound ? undefined : "auto",
          temperature: agent.temperature,
          max_tokens: agent.maxTokens,
          stream_options: { include_usage: true },
        },
        timeoutMs
      );
    } catch (err) {
      const msg = (err as Error).message;
      await emit({ type: "error", message: msg });
      await logTurn(
        context.supabase,
        context,
        "assistant",
        null,
        null,
        agent.model,
        null,
        null,
        Date.now() - startedAt,
        msg
      );
      return;
    }

    let accumulatedContent = "";
    const accumulatedToolCalls = new Map<number, AccumulatedToolCall>();
    let finishReason: string | null = null;
    let chunkUsage: { prompt_tokens?: number; completion_tokens?: number } | undefined;

    for await (const chunk of readSSE(response)) {
      if (chunk.usage) chunkUsage = chunk.usage;
      const choice = chunk.choices?.[0];
      if (!choice) continue;

      const delta = choice.delta;
      if (delta?.content) {
        accumulatedContent += delta.content;
        await emit({ type: "delta", text: delta.content });
      }
      if (delta?.tool_calls) {
        for (const tc of delta.tool_calls) {
          const idx = tc.index;
          const existing = accumulatedToolCalls.get(idx) ?? { id: "", name: "", arguments: "" };
          if (tc.id) existing.id = tc.id;
          if (tc.function?.name) existing.name = tc.function.name;
          if (tc.function?.arguments) existing.arguments += tc.function.arguments;
          accumulatedToolCalls.set(idx, existing);
        }
      }
      if (choice.finish_reason) finishReason = choice.finish_reason;
    }

    if (chunkUsage?.prompt_tokens) totalPromptTokens += chunkUsage.prompt_tokens;
    if (chunkUsage?.completion_tokens) totalCompletionTokens += chunkUsage.completion_tokens;
    const latencyMs = Date.now() - startedAt;

    // Model wants to call tools — execute them, append results, loop.
    if (finishReason === "tool_calls" && accumulatedToolCalls.size > 0) {
      const calls = Array.from(accumulatedToolCalls.values()).filter((c) => c.name);

      // Record the assistant turn (content may be empty) with its tool calls.
      await logTurn(
        context.supabase,
        context,
        "assistant",
        accumulatedContent || null,
        calls.map((c) => ({ id: c.id, name: c.name, arguments: c.arguments })),
        agent.model,
        chunkUsage?.prompt_tokens ?? null,
        chunkUsage?.completion_tokens ?? null,
        latencyMs,
        null
      );

      messages.push({
        role: "assistant",
        content: accumulatedContent || null,
        tool_calls: calls.map((c) => ({
          id: c.id,
          type: "function",
          function: { name: c.name, arguments: c.arguments },
        })),
      });

      // Execute tools in parallel.
      const results = await Promise.all(
        calls.map(async (call) => {
          const def = toolsByName.get(call.name);
          if (!def) {
            return { call, ok: false as const, error: `Unknown tool: ${call.name}` };
          }
          let parsedArgs: unknown = {};
          try {
            parsedArgs = call.arguments ? JSON.parse(call.arguments) : {};
          } catch {
            /* emit raw string for client preview */
          }
          await emit({ type: "tool_call", id: call.id, name: call.name, arguments: parsedArgs });
          const res = await executeTool(def, call.arguments, context);
          if (res.ok) {
            await emit({
              type: "tool_result",
              id: call.id,
              name: call.name,
              ok: true,
              preview: previewResult(res.result),
            });
            // Surface proactive next-step buttons to the UI. The tool still
            // returns data to the model (normal tool_result), but we also
            // emit a `suggested_action` so the frontend can render a button.
            if (call.name === "suggestPracticeSession") {
              const s = (res.result as {
                suggestion?: { label?: string; rationale?: string; url?: string };
              } | null)?.suggestion;
              if (s && typeof s.label === "string" && typeof s.url === "string" && s.label && s.url) {
                await emit({
                  type: "suggested_action",
                  toolCallId: call.id,
                  label: s.label,
                  rationale: typeof s.rationale === "string" ? s.rationale : "",
                  url: s.url,
                });
              }
            }
            return { call, ok: true as const, result: res.result };
          }
          await emit({
            type: "tool_result",
            id: call.id,
            name: call.name,
            ok: false,
            preview: res.error.slice(0, 200),
          });
          return { call, ok: false as const, error: res.error };
        })
      );

      for (const r of results) {
        const content = r.ok
          ? JSON.stringify(r.result ?? null)
          : JSON.stringify({ error: r.error });
        messages.push({
          role: "tool",
          content,
          tool_call_id: r.call.id,
          name: r.call.name,
        });
        await logTurn(
          context.supabase,
          context,
          "tool",
          content,
          { name: r.call.name, id: r.call.id, ok: r.ok },
          null,
          null,
          null,
          null,
          r.ok ? null : r.error
        );
      }

      continue; // next round
    }

    // Final assistant turn. Persist, emit done, exit.
    const turnId = await logTurn(
      context.supabase,
      context,
      "assistant",
      accumulatedContent,
      null,
      agent.model,
      chunkUsage?.prompt_tokens ?? null,
      chunkUsage?.completion_tokens ?? null,
      latencyMs,
      null
    );

    await emit({
      type: "done",
      promptTokens: totalPromptTokens,
      completionTokens: totalCompletionTokens,
      turnId,
    });
    return;
  }
}

function previewResult(r: unknown): string {
  try {
    const s = typeof r === "string" ? r : JSON.stringify(r);
    return s.length > 160 ? s.slice(0, 160) + "…" : s;
  } catch {
    return "(unserializable)";
  }
}
