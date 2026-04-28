import type { AgentCall } from "./types";
import { loadPrompt } from "./prompts/loader";

export interface EchoInput {
  message: string;
}

export interface EchoOutput {
  echo: string;
  wordCount: number;
}

export const echoAgent: AgentCall<EchoInput, EchoOutput> = {
  name: "echo",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0,
  maxTokens: 200,
  loadSystemPrompt: () => loadPrompt("echo"),
  buildUserPrompt: (input) => `Message: ${input.message}`,
  parseOutput: (raw) => {
    const parsed = JSON.parse(raw);
    if (
      typeof parsed?.echo !== "string" ||
      typeof parsed?.wordCount !== "number"
    ) {
      throw new Error("Invalid echo output");
    }
    return { echo: parsed.echo, wordCount: parsed.wordCount };
  },
};
