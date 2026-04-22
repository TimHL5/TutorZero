// Coach — the "are you okay?" agent. Fires mid-session when Practice.tsx's
// detectFrustration heuristic trips (3-in-a-row wrong, time doubling, long
// session). Reads the recent pattern and picks one of five interventions.
// Always returns two buttons so the student keeps agency.

import type { AgentCall } from "./types";

export type CoachIntervention =
  | "offer_easier"
  | "switch_topic"
  | "take_break"
  | "keep_pushing"
  | "review_concept";

export type CoachActionSlug = CoachIntervention | "dismiss";

export interface CoachRecentAttempt {
  topic: string;
  skill: string;
  /** Human name like "Linear equations in one variable" (preferred over slug). */
  skillDisplay?: string;
  difficulty: string;
  isCorrect: boolean;
  /** ms spent on the question */
  timeSpent: number;
  confidence: string;
}

export interface CoachInput {
  recentAttempts: CoachRecentAttempt[];
  currentQuestion: {
    topic: string;
    skill: string;
    skillDisplay?: string;
    topicDisplay?: string;
    difficulty: string;
  };
  /** total session duration in ms */
  sessionDuration: number;
  totalAttempts: number;
  /** Session-wide accuracy 0–100 (includes all attempts, not just recent). */
  sessionAccuracy?: number;
  /** Accuracy on the current question's skill so far this session, 0–100. */
  skillAccuracy?: number;
}

export interface CoachAction {
  label: string;
  action: string;
}

export interface CoachOutput {
  intervention: CoachIntervention;
  message: string;
  primary_action: CoachAction;
  secondary_action: CoachAction;
}

const SYSTEM_PROMPT = `You are a supportive SAT tutor watching a student struggle. Based on their recent attempt pattern, decide the best intervention. Respect the student's autonomy — always offer a choice.

INTERVENTION GUIDE:
- offer_easier: 3+ wrong in a row on same skill — drop difficulty.
- switch_topic: on one topic > 15 min AND accuracy is dropping.
- take_break: session > 45 min OR time-per-question is doubling.
- keep_pushing: student is close (mix of right/wrong, improving) — encourage with specifics.
- review_concept: wrong answers share a misconception pattern — suggest they try the concept explainer first.

USE THE NUMBERS. Every message MUST cite at least one real number or name from the input. "You've been working hard" is a FAIL — always say *on what*, *for how long*, or *how many wrong*. Use the student-facing skill display name, not the slug.

VOICE:
- Warm, direct, never condescending.
- Never "I know this is tough" without evidence.
- Offer agency. Frame both buttons as legitimate paths.

EXAMPLES OF THE RIGHT VOICE:
- "You've missed the last 3 Linear equations in one variable questions in 6 minutes. That's a sign the rule-switching is getting tangled — want to drop to the easier pool and rebuild pattern?"
- "You're 47 minutes in and your time-per-question has doubled from 45s to 1m40s. Pause for 2 min? You'll come back sharper."
- "You just flipped a wrong streak: 2 wrong on Inferences, then correct. That's the pattern we want. Keep going, or switch if you'd like a break from this passage style."

BAD (too generic) — do NOT produce:
- "You're working hard."
- "Great effort so far!"
- "This topic seems difficult."

ACTION SLUGS — STRICT.
Both primary_action.action and secondary_action.action MUST be one of exactly these five strings:
"offer_easier", "switch_topic", "take_break", "keep_pushing", "review_concept".
Do not invent slugs like "continue_topic" or "continue_session". The primary_action.action should match the intervention; the secondary_action.action should be a different slug from the same five (the student's alternative).

RESPOND ONLY IN JSON.`;

function summarizeAttempts(input: CoachInput): string {
  const lines: string[] = [];
  const recent = input.recentAttempts;
  const minutesInSession = Math.round(input.sessionDuration / 60000);
  const avgMs = recent.length
    ? Math.round(recent.reduce((s, a) => s + a.timeSpent, 0) / recent.length)
    : 0;
  const recentWrong = recent.filter((a) => !a.isCorrect).length;
  const currentSkillName =
    input.currentQuestion.skillDisplay ?? input.currentQuestion.skill;
  const currentTopicName =
    input.currentQuestion.topicDisplay ?? input.currentQuestion.topic;

  lines.push(
    `Session: ${minutesInSession} min, ${input.totalAttempts} questions total.` +
      (input.sessionAccuracy != null ? ` Session accuracy: ${input.sessionAccuracy}%.` : "")
  );
  lines.push(
    `Last ${recent.length} attempts: ${recentWrong} wrong, avg ${Math.round(avgMs / 1000)}s/question.`
  );
  lines.push(
    `Current question: topic="${currentTopicName}" skill="${currentSkillName}" (slug=${input.currentQuestion.skill}) difficulty="${input.currentQuestion.difficulty}".` +
      (input.skillAccuracy != null ? ` Accuracy on this skill so far: ${input.skillAccuracy}%.` : "")
  );
  lines.push("Attempt-by-attempt (most recent last):");
  recent.forEach((a, i) => {
    const skillName = a.skillDisplay ?? a.skill;
    lines.push(
      `  ${i + 1}. topic=${a.topic} skill="${skillName}" diff=${a.difficulty}` +
        ` ${a.isCorrect ? "CORRECT" : "WRONG"} conf=${a.confidence}` +
        ` time=${Math.round(a.timeSpent / 1000)}s`
    );
  });
  return lines.join("\n");
}

function isAction(v: unknown): v is CoachAction {
  if (typeof v !== "object" || v === null) return false;
  const o = v as Record<string, unknown>;
  return typeof o.label === "string" && o.label.length > 0 && typeof o.action === "string" && o.action.length > 0;
}

const INTERVENTIONS: CoachIntervention[] = [
  "offer_easier",
  "switch_topic",
  "take_break",
  "keep_pushing",
  "review_concept",
];

export const coachAgent: AgentCall<CoachInput, CoachOutput> = {
  name: "coach",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.2,
  maxTokens: 700,
  systemPrompt: SYSTEM_PROMPT,
  buildUserPrompt: (input) => {
    return `Student signal:

${summarizeAttempts(input)}

Pick one intervention and return JSON:
{
  "intervention": "offer_easier" | "switch_topic" | "take_break" | "keep_pushing" | "review_concept",
  "message": "<2-3 sentences, warm, specific>",
  "primary_action": { "label": "<button text>", "action": "<slug>" },
  "secondary_action": { "label": "<button text>", "action": "<slug>" }
}`;
  },
  parseOutput: (raw) => {
    const parsed: unknown = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Coach returned non-object JSON");
    }
    const o = parsed as Record<string, unknown>;
    if (typeof o.intervention !== "string" || !INTERVENTIONS.includes(o.intervention as CoachIntervention)) {
      throw new Error("intervention missing or out of enum");
    }
    if (typeof o.message !== "string" || o.message.length === 0) {
      throw new Error("message must be a non-empty string");
    }
    if (!isAction(o.primary_action)) {
      throw new Error("primary_action malformed");
    }
    if (!isAction(o.secondary_action)) {
      throw new Error("secondary_action malformed");
    }
    return {
      intervention: o.intervention as CoachIntervention,
      message: o.message,
      primary_action: o.primary_action,
      secondary_action: o.secondary_action,
    };
  },
};
