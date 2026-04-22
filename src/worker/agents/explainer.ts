// Explainer — meets the student at their own reasoning. Fires after a wrong
// answer when the student self-explains their thinking. Quotes them back,
// names the misconception, gives one concrete fix, and suggests what to
// practice next. Output is seeded into ExplanationChat as the first assistant
// message; follow-up goes through the regular /api/chat endpoint.

import type { AgentCall } from "./types";

export type MisconceptionType =
  | "procedural_error"
  | "conceptual_gap"
  | "misread_question"
  | "careless_error"
  | "vocabulary_gap"
  | "other";

export interface ExplainerInput {
  questionId: string;
  stem: string;
  passage?: string;
  options: string[];
  /** Letter, e.g. "B" */
  correctAnswer: string;
  /** Letter, e.g. "C" */
  studentAnswer: string;
  officialRationale: string;
  studentExplanation: string;
  topic: string;
  skill: string;
  difficulty: string;
}

export interface ExplainerOutput {
  response: string;
  misconception_type: MisconceptionType;
  specific_fix: string;
  follow_up_practice: string;
}

const SYSTEM_PROMPT = `You are an SAT tutor. A student just got a question wrong and explained their reasoning. Your job is to respond to THEIR specific misconception — not repeat the official rationale.

CORE APPROACH:
1. Find the gap in their reasoning. Quote their own words when possible: "You said '___' — here's where that breaks down..."
2. Don't just say the right answer again. Show them where their path diverged.
3. Classify the misconception type. This tells them (and us) what to work on.
4. Give one concrete fix — a rule, a heuristic, a mental check.
5. Suggest follow-up practice — specific, not generic.

TONE:
- Direct but kind. Not patronizing.
- Assume the student is smart and tried. Mistakes are information.
- 3-5 sentences for the main response. Brevity is respect.

OUTPUT SHAPE — STRICT.
Return exactly four top-level fields:
  - "response": 3-5 sentences addressing their reasoning.
  - "misconception_type": one of "procedural_error", "conceptual_gap", "misread_question", "careless_error", "vocabulary_gap", "other".
  - "specific_fix": one concrete rule or heuristic, a single short sentence.
  - "follow_up_practice": one specific practice suggestion, a single short sentence.

Do NOT bake "specific_fix" or "follow_up_practice" into the "response" prose. They are separate JSON string fields. Every response must include all four fields.

RESPOND ONLY IN JSON.`;

const MISCONCEPTION_TYPES: MisconceptionType[] = [
  "procedural_error",
  "conceptual_gap",
  "misread_question",
  "careless_error",
  "vocabulary_gap",
  "other",
];

export const explainerAgent: AgentCall<ExplainerInput, ExplainerOutput> = {
  name: "explainer",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.3,
  maxTokens: 800,
  systemPrompt: SYSTEM_PROMPT,
  buildUserPrompt: (input) => {
    const passageBlock = input.passage
      ? `\nPASSAGE / STIMULUS:\n${input.passage}\n`
      : "";
    const optionsBlock = input.options
      .map((opt, i) => `${String.fromCharCode(65 + i)}. ${opt}`)
      .join("\n");
    return `QUESTION (id=${input.questionId}) · topic=${input.topic} · skill=${input.skill} · difficulty=${input.difficulty}:
${input.stem}
${passageBlock}
OPTIONS:
${optionsBlock}

Correct answer: ${input.correctAnswer}
Student answered: ${input.studentAnswer}

OFFICIAL RATIONALE:
${input.officialRationale}

STUDENT'S OWN EXPLANATION OF WHY THEY PICKED ${input.studentAnswer}:
"${input.studentExplanation}"

Respond to their specific reasoning. Return JSON:
{
  "response": "<3-5 sentences; quote the student's words when you can>",
  "misconception_type": "procedural_error" | "conceptual_gap" | "misread_question" | "careless_error" | "vocabulary_gap" | "other",
  "specific_fix": "<one concrete rule, heuristic, or mental check>",
  "follow_up_practice": "<specific next step, not generic>"
}`;
  },
  parseOutput: (raw) => {
    const parsed: unknown = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Explainer returned non-object JSON");
    }
    const o = parsed as Record<string, unknown>;
    if (typeof o.response !== "string" || o.response.length === 0) {
      throw new Error("response must be a non-empty string");
    }
    if (typeof o.misconception_type !== "string" || !MISCONCEPTION_TYPES.includes(o.misconception_type as MisconceptionType)) {
      throw new Error("misconception_type missing or out of enum");
    }
    if (typeof o.specific_fix !== "string" || o.specific_fix.length === 0) {
      throw new Error("specific_fix must be a non-empty string");
    }
    if (typeof o.follow_up_practice !== "string" || o.follow_up_practice.length === 0) {
      throw new Error("follow_up_practice must be a non-empty string");
    }
    return {
      response: o.response,
      misconception_type: o.misconception_type as MisconceptionType,
      specific_fix: o.specific_fix,
      follow_up_practice: o.follow_up_practice,
    };
  },
};
