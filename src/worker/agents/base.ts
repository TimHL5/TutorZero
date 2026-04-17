/**
 * Shared OpenAI agent infrastructure for TutorZero.
 *
 * Provides a single `callAgent` function that:
 *   1. Calls the OpenAI chat completions API.
 *   2. Logs every call to the `ai_agent_calls` Supabase table.
 *   3. Returns the response text.
 *
 * ---------------------------------------------------------------
 * Supabase migration (apply via Supabase SQL Editor or migration):
 *
 * CREATE TABLE IF NOT EXISTS ai_agent_calls (
 *   id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
 *   agent_name    TEXT        NOT NULL,
 *   input         TEXT        NOT NULL,
 *   output        TEXT        NOT NULL,
 *   model         TEXT        NOT NULL,
 *   input_tokens  INTEGER,
 *   output_tokens INTEGER,
 *   latency_ms    INTEGER,
 *   created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 *   user_id       UUID REFERENCES auth.users(id) ON DELETE SET NULL
 * );
 *
 * CREATE INDEX idx_ai_agent_calls_user     ON ai_agent_calls(user_id);
 * CREATE INDEX idx_ai_agent_calls_agent    ON ai_agent_calls(agent_name);
 * CREATE INDEX idx_ai_agent_calls_created  ON ai_agent_calls(created_at);
 * ---------------------------------------------------------------
 */

import OpenAI from "openai";
import { getSupabaseAdmin } from "../supabase";

// ---------------------------------------------------------------------------
// Shared OpenAI client — instantiated once and reused across all agent calls.
// ---------------------------------------------------------------------------
let _openaiClient: OpenAI | null = null;

function getOpenAIClient(): OpenAI {
  if (_openaiClient) return _openaiClient;

  const apiKey = process.env.OPENAI_API_KEY;
  if (!apiKey) {
    throw new Error("Missing OPENAI_API_KEY environment variable");
  }

  _openaiClient = new OpenAI({ apiKey });
  return _openaiClient;
}

// ---------------------------------------------------------------------------
// callAgent
// ---------------------------------------------------------------------------

export interface AgentCallResult {
  /** The text content returned by the model. */
  text: string;
  /** Token counts and latency metadata. */
  meta: {
    model: string;
    inputTokens: number | null;
    outputTokens: number | null;
    latencyMs: number;
  };
}

/**
 * Call an OpenAI chat completions model with a system + user prompt pair, log
 * the interaction to `ai_agent_calls`, and return the response text.
 *
 * @param agentName   Human-readable label used in logging (e.g. "tutor-chat").
 * @param systemPrompt  System message content.
 * @param userPrompt    User message content.
 * @param userId        Optional Supabase auth user ID for attribution.
 */
export async function callAgent(
  agentName: string,
  systemPrompt: string,
  userPrompt: string,
  userId?: string
): Promise<string> {
  const model = process.env.OPENAI_MODEL ?? "gpt-4o-mini";
  const client = getOpenAIClient();

  const startMs = Date.now();

  const completion = await client.chat.completions.create({
    model,
    messages: [
      { role: "system", content: systemPrompt },
      { role: "user", content: userPrompt },
    ],
  });

  const latencyMs = Date.now() - startMs;
  const outputText = completion.choices[0]?.message?.content ?? "";
  const inputTokens = completion.usage?.prompt_tokens ?? null;
  const outputTokens = completion.usage?.completion_tokens ?? null;

  // Fire-and-forget log — never let a logging failure break the agent response.
  (async () => {
    try {
      const supabase = getSupabaseAdmin();
      await supabase.from("ai_agent_calls").insert({
        agent_name: agentName,
        input: userPrompt,
        output: outputText,
        model,
        input_tokens: inputTokens,
        output_tokens: outputTokens,
        latency_ms: latencyMs,
        user_id: userId ?? null,
      });
    } catch (err) {
      console.error("[callAgent] Failed to log to ai_agent_calls:", err);
    }
  })();

  return outputText;
}
