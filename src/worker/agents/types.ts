// Typed contracts for AI agents. Every agent is an `AgentCall` describing how
// to talk to the model + how to parse its response. The runner enforces the
// contract and logs every invocation to ai_agent_calls.

export type AgentName =
  | "diagnostician"
  | "coach"
  | "explainer"
  | "concept"
  | "next_practice"
  | "planner"
  | "reviewer"
  | "echo";

// AgentCall defines a one-shot call. Either `systemPrompt` or
// `loadSystemPrompt` must be set — the runner reads whichever is provided,
// preferring the loader so prompt files can be swapped without code changes.
export interface AgentCall<TInput, TOutput> {
  name: AgentName;
  model: string;
  systemPrompt?: string;
  loadSystemPrompt?: () => string;
  buildUserPrompt(input: TInput): string;
  parseOutput(raw: string): TOutput;
  responseFormat?: "json_object" | "text";
  maxTokens?: number;
  temperature?: number;
}

export interface AgentResult<TOutput> {
  output: TOutput;
  model: string;
  promptTokens: number;
  completionTokens: number;
  latencyMs: number;
  agentCallId: number | null;
}

export type AgentErrorStage = "openai" | "parse" | "log";

export class AgentError extends Error {
  constructor(
    message: string,
    public readonly stage: AgentErrorStage,
    public readonly cause?: unknown
  ) {
    super(message);
    this.name = "AgentError";
  }
}
