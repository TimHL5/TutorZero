// Coach — the "are you okay?" agent. Fires mid-session when Practice.tsx's
// detectFrustration heuristic trips (3-in-a-row wrong, time doubling, long
// session). Reads the recent pattern and picks one of five interventions.
// Always returns two buttons so the student keeps agency.

import type { AgentCall } from "./types";
import { loadPrompt } from "./prompts/loader";

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

// Optional student context that lets the message connect to the bigger arc
// (target score, days-to-test, streak) — see THE MOTIVATOR'S JOB section in
// coach.md. Mirrors ReviewerStudentContext.
export interface CoachStudentContext {
  displayName?: string;
  targetScore?: number;
  currentPredictedScore?: number;
  testDate?: string;
  daysUntilTest?: number;
  streakDays?: number;
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
  studentContext?: CoachStudentContext;
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
  loadSystemPrompt: () => loadPrompt("coach"),
  buildUserPrompt: (input) => {
    // Render typed student context as a STUDENT block above the session
    // signal so the message can name stakes (target, test date, streak).
    const ctx = input.studentContext;
    const ctxLines: string[] = [];
    if (ctx) {
      if (ctx.displayName) ctxLines.push(`displayName=${ctx.displayName}`);
      if (ctx.targetScore != null) ctxLines.push(`targetScore=${ctx.targetScore}`);
      if (ctx.currentPredictedScore != null) ctxLines.push(`currentPredictedScore=${ctx.currentPredictedScore}`);
      if (ctx.testDate) ctxLines.push(`testDate=${ctx.testDate}`);
      if (ctx.daysUntilTest != null) ctxLines.push(`daysUntilTest=${ctx.daysUntilTest}`);
      if (ctx.streakDays != null) ctxLines.push(`streakDays=${ctx.streakDays}`);
    }
    const studentBlock = ctxLines.length > 0 ? `STUDENT\n${ctxLines.join("\n")}\n\n` : "";

    return `${studentBlock}Student signal:

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
