import type { SupabaseClient } from "@supabase/supabase-js";
import { fetchOpenAI } from "../openai";
import { AgentError, type AgentCall, type AgentResult } from "./types";

export interface AgentContext {
  userId?: string;
  sessionId?: number;
}

interface AgentLogRow {
  user_id: string | null;
  session_id: number | null;
  agent: string;
  input_json: unknown;
  output_json: unknown;
  model: string;
  prompt_tokens: number | null;
  completion_tokens: number | null;
  latency_ms: number | null;
  error: string | null;
}

async function logAgentCall(supabase: SupabaseClient, row: AgentLogRow): Promise<void> {
  const { error } = await supabase.from("ai_agent_calls").insert(row);
  if (error) {
    // Never let a logging failure break the agent response — surface to console only.
    console.error("[runAgent] Failed to log to ai_agent_calls:", error.message);
  }
}

export async function runAgent<TIn, TOut>(
  agent: AgentCall<TIn, TOut>,
  input: TIn,
  context: AgentContext,
  apiKey: string,
  supabase: SupabaseClient
): Promise<AgentResult<TOut>> {
  const model = agent.model || process.env.OPENAI_MODEL || "gpt-4o-mini";

  const body: Record<string, unknown> = {
    model,
    messages: [
      { role: "system", content: agent.systemPrompt },
      { role: "user", content: agent.buildUserPrompt(input) },
    ],
  };
  if (agent.responseFormat === "json_object") {
    body.response_format = { type: "json_object" };
  }
  if (typeof agent.temperature === "number") body.temperature = agent.temperature;
  if (typeof agent.maxTokens === "number") body.max_tokens = agent.maxTokens;

  const startedAt = Date.now();
  const result = await fetchOpenAI(apiKey, body);
  const latencyMs = Date.now() - startedAt;

  if (result.error || !result.data) {
    await logAgentCall(supabase, {
      user_id: context.userId ?? null,
      session_id: context.sessionId ?? null,
      agent: agent.name,
      input_json: input as unknown,
      output_json: null,
      model,
      prompt_tokens: null,
      completion_tokens: null,
      latency_ms: latencyMs,
      error: result.error ?? `OpenAI returned ${result.status}`,
    });
    throw new AgentError(result.error ?? "OpenAI request failed", "openai");
  }

  const raw = result.data.choices?.[0]?.message?.content ?? "";
  const promptTokens = result.data.usage?.prompt_tokens ?? 0;
  const completionTokens = result.data.usage?.completion_tokens ?? 0;

  let parsed: TOut;
  try {
    parsed = agent.parseOutput(raw);
  } catch (err) {
    const message = err instanceof Error ? err.message : "Failed to parse agent output";
    await logAgentCall(supabase, {
      user_id: context.userId ?? null,
      session_id: context.sessionId ?? null,
      agent: agent.name,
      input_json: input as unknown,
      output_json: raw,
      model,
      prompt_tokens: promptTokens,
      completion_tokens: completionTokens,
      latency_ms: latencyMs,
      error: message,
    });
    throw new AgentError(message, "parse", err);
  }

  await logAgentCall(supabase, {
    user_id: context.userId ?? null,
    session_id: context.sessionId ?? null,
    agent: agent.name,
    input_json: input as unknown,
    output_json: parsed as unknown,
    model,
    prompt_tokens: promptTokens,
    completion_tokens: completionTokens,
    latency_ms: latencyMs,
    error: null,
  });

  return {
    output: parsed,
    model,
    promptTokens,
    completionTokens,
    latencyMs,
  };
}
