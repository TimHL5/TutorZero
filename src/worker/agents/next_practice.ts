// NextPractice — recommends the very next thing for the student to practice
// based on the question they just attempted + their recent pattern. Lazy-
// loaded when the student expands "What to practice next" in the feedback
// view. Returns a concrete drill, not generic encouragement.

import type { AgentCall } from "./types";

export interface NextPracticeRecentAttempt {
  topic: string;
  skill: string;
  difficulty: string;
  isCorrect: boolean;
}

export interface NextPracticeInput {
  /** The question the student just answered. */
  questionId: string;
  topic: string;
  skill: string;
  difficulty: string;
  isCorrect: boolean;
  /** Up to ~5 previous attempts in this session for trend signal. */
  recentAttempts: NextPracticeRecentAttempt[];
}

export interface NextPracticeOutput {
  next_skill: string;
  next_difficulty: "easy" | "medium" | "hard";
  why: string;
  warmup_idea: string;
}

const SYSTEM_PROMPT = `You are an SAT tutor deciding what a student should practice next, right after they finished a question.

GOAL: Pick the highest-leverage next drill based on what just happened + their recent pattern. Don't recommend "more practice" generically.

DECISION RULES:
- If they just got it WRONG and it's the first attempt on the skill → suggest the same skill at the same difficulty.
- If they got it WRONG and they've already failed this skill recently → drop one difficulty level (hard→medium, medium→easy).
- If they got it RIGHT confidently and the recent pattern is strong → step up the difficulty OR move to a closely-related skill.
- If they got it RIGHT after struggling → reinforce by repeating the same skill, same difficulty.

OUTPUT — STRICT 4 FIELDS:
- "next_skill": short skill name (use the same skill name format as the input).
- "next_difficulty": exactly one of "easy", "medium", "hard".
- "why": 1-2 sentences explaining the choice in terms of THIS student's pattern.
- "warmup_idea": one specific warm-up question type or mental check (1 sentence).

TONE: Direct, specific, no platitudes. Reference numbers and patterns when you have them.

RESPOND ONLY IN JSON.`;

const DIFFICULTIES = ["easy", "medium", "hard"] as const;

export const nextPracticeAgent: AgentCall<NextPracticeInput, NextPracticeOutput> = {
  name: "next_practice",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.2,
  maxTokens: 500,
  systemPrompt: SYSTEM_PROMPT,
  buildUserPrompt: (input) => {
    const recentLines = input.recentAttempts
      .map((a, i) => `  ${i + 1}. topic=${a.topic} skill=${a.skill} diff=${a.difficulty} ${a.isCorrect ? "CORRECT" : "WRONG"}`)
      .join("\n");
    return `Student just answered question ${input.questionId}:
  topic=${input.topic} skill=${input.skill} difficulty=${input.difficulty} → ${input.isCorrect ? "CORRECT" : "WRONG"}

Recent attempts (this session, oldest first):
${recentLines || "  (none)"}

Pick the next thing to practice. Return JSON:
{
  "next_skill": "<skill name>",
  "next_difficulty": "easy" | "medium" | "hard",
  "why": "<1-2 sentences referencing the pattern above>",
  "warmup_idea": "<one specific warm-up>"
}`;
  },
  parseOutput: (raw) => {
    const parsed: unknown = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("NextPractice returned non-object JSON");
    }
    const o = parsed as Record<string, unknown>;
    if (typeof o.next_skill !== "string" || o.next_skill.length === 0) {
      throw new Error("next_skill must be a non-empty string");
    }
    if (
      typeof o.next_difficulty !== "string" ||
      !DIFFICULTIES.includes(o.next_difficulty as (typeof DIFFICULTIES)[number])
    ) {
      throw new Error("next_difficulty must be 'easy'|'medium'|'hard'");
    }
    if (typeof o.why !== "string" || o.why.length === 0) {
      throw new Error("why must be a non-empty string");
    }
    if (typeof o.warmup_idea !== "string" || o.warmup_idea.length === 0) {
      throw new Error("warmup_idea must be a non-empty string");
    }
    return {
      next_skill: o.next_skill,
      next_difficulty: o.next_difficulty as NextPracticeOutput["next_difficulty"],
      why: o.why,
      warmup_idea: o.warmup_idea,
    };
  },
};
