// Concept — explains the underlying SAT concept behind a question, tailored
// to the student's specific wrong path. Fires lazily when the student expands
// the "The concept" section in the feedback view. Output replaces the static
// rationale with a personalized 4-part breakdown.

import type { AgentCall } from "./types";
import { loadPrompt } from "./prompts/loader";

export interface ConceptInput {
  questionId: string;
  stem: string;
  passage?: string;
  options: string[];
  /** Letter, e.g. "B" */
  correctAnswer: string;
  /** Letter, e.g. "C" — when set, the agent personalizes pitfall guidance. */
  studentAnswer?: string;
  topic: string;
  skill: string;
  difficulty: string;
  officialRationale?: string;
}

export interface ConceptOutput {
  overview: string;
  key_idea: string;
  when_it_applies: string;
  common_pitfall: string;
}

export const conceptAgent: AgentCall<ConceptInput, ConceptOutput> = {
  name: "concept",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.3,
  maxTokens: 700,
  loadSystemPrompt: () => loadPrompt("concept"),
  buildUserPrompt: (input) => {
    const passageBlock = input.passage ? `\nPASSAGE:\n${input.passage}\n` : "";
    const optsBlock = input.options
      .map((o, i) => `${String.fromCharCode(65 + i)}. ${o}`)
      .join("\n");
    const studentLine = input.studentAnswer
      ? `\nStudent picked: ${input.studentAnswer} (correct was ${input.correctAnswer}).`
      : `\nCorrect answer: ${input.correctAnswer}.`;
    const rationaleBlock = input.officialRationale
      ? `\nOfficial rationale (for context — don't quote verbatim):\n${input.officialRationale}\n`
      : "";
    return `QUESTION (id=${input.questionId}) · topic=${input.topic} · skill=${input.skill} · difficulty=${input.difficulty}:
${input.stem}
${passageBlock}
OPTIONS:
${optsBlock}
${studentLine}
${rationaleBlock}
Explain the concept. Return JSON:
{
  "overview": "<1-2 sentences>",
  "key_idea": "<one sentence>",
  "when_it_applies": "<1-2 sentences>",
  "common_pitfall": "<1-2 sentences, personalized to the student's wrong choice if present>"
}`;
  },
  parseOutput: (raw) => {
    const parsed: unknown = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Concept returned non-object JSON");
    }
    const o = parsed as Record<string, unknown>;
    const fields: Array<keyof ConceptOutput> = ["overview", "key_idea", "when_it_applies", "common_pitfall"];
    for (const f of fields) {
      if (typeof o[f] !== "string" || (o[f] as string).length === 0) {
        throw new Error(`${f} must be a non-empty string`);
      }
    }
    return {
      overview: o.overview as string,
      key_idea: o.key_idea as string,
      when_it_applies: o.when_it_applies as string,
      common_pitfall: o.common_pitfall as string,
    };
  },
};
