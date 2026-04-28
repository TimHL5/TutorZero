import type { SupabaseClient } from "@supabase/supabase-js";

// Multi-turn tool-calling agent contract. Lives in parallel to the one-shot
// AgentCall<TIn, TOut> — they don't share enough shape to merge cleanly.
//
// The tool runner (tool_runner.ts) opens a streaming OpenAI chat completion
// with `tools` declared, accumulates tool-call fragments, executes them, and
// loops until the model emits a final assistant message (no more tool calls).
// Each call is logged to ai_tutor_turns so we can replay conversations.

export interface ToolContext {
  userId: string | null;
  browserId: string | null;
  supabase: SupabaseClient;
  // Conversation id is rendered into ai_tutor_turns so we can group turns
  // belonging to the same chat session.
  conversationId: string;
}

export interface ToolDef<TArgs = unknown, TResult = unknown> {
  name: string;
  description: string;
  // JSON Schema describing `arguments`. The runner forwards this verbatim to
  // OpenAI as the function's parameters schema. Keep schemas tight — the model
  // calibrates arg quality from them.
  parameters: Record<string, unknown>;
  // Runtime validator. Returns the typed args or throws with a human message
  // that gets fed back to the model as a tool error.
  validate: (raw: unknown) => TArgs;
  execute: (args: TArgs, ctx: ToolContext) => Promise<TResult>;
}

// Heterogeneous-tool array type. Each tool declares its own typed args, but
// the runner only sees `unknown` → validate → execute, so variance is safe
// once a tool has self-validated.
// eslint-disable-next-line @typescript-eslint/no-explicit-any
export type AnyToolDef = ToolDef<any, any>;

export interface ToolAgentCall {
  name: string;
  model: string;
  // Loaded synchronously at module import (mirrors AgentCall.loadSystemPrompt).
  loadSystemPrompt: () => string;
  tools: AnyToolDef[];
  temperature?: number;
  maxTokens?: number;
  // Hard cap on tool-call rounds before we force the model to answer.
  maxToolRounds?: number;
}

export type ToolMessageRole = "system" | "user" | "assistant" | "tool";

export interface ChatMessage {
  role: ToolMessageRole;
  content: string | null;
  // Present on assistant messages that emitted tool calls.
  tool_calls?: Array<{
    id: string;
    type: "function";
    function: { name: string; arguments: string };
  }>;
  // Present on role:"tool" messages — links back to the assistant tool_call.
  tool_call_id?: string;
  name?: string;
}

// Streaming events emitted by the tool runner. The route handler converts
// each to an SSE frame for the client.
export type StreamEvent =
  | { type: "delta"; text: string }
  | { type: "tool_call"; id: string; name: string; arguments: unknown }
  | { type: "tool_result"; id: string; name: string; ok: boolean; preview?: string }
  | { type: "suggested_action"; toolCallId: string; label: string; rationale: string; url: string }
  | { type: "done"; promptTokens: number; completionTokens: number; turnId: number | null }
  | { type: "error"; message: string };
