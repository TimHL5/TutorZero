import type { AgentCall } from "./types";

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
  systemPrompt:
    'You are a test agent. Echo back the user\'s message and count its words. ' +
    'Respond in JSON: {"echo": string, "wordCount": number}',
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
