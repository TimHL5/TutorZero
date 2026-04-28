import { loadPrompt } from "./prompts/loader";
import type { ToolAgentCall } from "./tool_agent";
import { tutorTools } from "../tools";

// TutorZero's conversational SAT tutor. Unlike the one-shot AgentCall agents
// (explainer, coach, etc.), this is a multi-turn, tool-calling agent: it can
// ask the database about the student's profile, mistakes, and history before
// answering. See src/worker/tools/index.ts for the tool catalogue.

export const tutorAgent: ToolAgentCall = {
  name: "tutor",
  model: process.env.OPENAI_MODEL_STRONG || "gpt-4o-mini",
  loadSystemPrompt: () => loadPrompt("tutor"),
  tools: tutorTools,
  temperature: 0.5,
  maxTokens: 800,
  // Headroom for searchWeb + 1-2 context tools + suggestPracticeSession in
  // a single turn, plus rounds for the model to reason between calls.
  maxToolRounds: 6,
};
