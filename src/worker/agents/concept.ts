// Concept — explains the underlying SAT concept behind a question, tailored
// to the student's specific wrong path. Fires lazily when the student expands
// the "The concept" section in the feedback view. Output replaces the static
// rationale with a personalized 4-part breakdown.

import type { AgentCall } from "./types";

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

const SYSTEM_PROMPT = `You are an SAT tutor explaining the underlying concept behind a question, not just the answer.

GOAL: After a student answers a question (right or wrong), surface the concept they need to internalize so they can recognize this question type next time.

OUTPUT — STRICT 4 FIELDS:
- "overview": 1-2 sentences naming the concept and why it shows up on the SAT.
- "key_idea": the single most important rule, formula, or insight in one sentence.
- "when_it_applies": when a student should reach for this concept on the test (signals to spot in the question).
- "common_pitfall": the most frequent way students get this wrong. If you have the student's specific wrong answer, point to the trap they fell into; otherwise give the most common one.

TONE:
- Specific, not abstract. Use the question as your example, not generic talk.
- 1-3 sentences per field. Brevity matters.
- Don't repeat the official rationale verbatim — synthesize what the concept IS.

RESPOND ONLY IN JSON.`;

export const conceptAgent: AgentCall<ConceptInput, ConceptOutput> = {
  name: "concept",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.3,
  maxTokens: 700,
  systemPrompt: SYSTEM_PROMPT,
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
