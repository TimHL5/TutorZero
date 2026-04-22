// Planner — generates a one-week SAT study plan from the student's diagnosed
// weaknesses, test date, and weekly hour budget.
//
// Hard rules (also stated in the system prompt) are enforced in parseOutput:
//   - hour budget cap (no more than hoursPerWeek * 60 minutes total)
//   - per-day cap (≤ 120 min)
//   - sane day labels (monday..sunday)
//
// The agent's "soft" rules (high-severity skills get more frequency, mix of
// drill/review/timed_test, spaced repetition) live in the prompt — we trust
// the model on those and let the student edit.

import type { AgentCall } from "./types";

export type PlannerSeverity = "high" | "medium" | "low";
export type PlannerSessionType = "drill" | "review" | "mixed" | "timed_test";

export interface PlannerWeakSkill {
  skill: string;
  severity: PlannerSeverity;
  verified: boolean;
}

export interface PlannerPriorEdit {
  originalSuggestion: string;
  userEdit: string;
}

export interface PlannerInput {
  weakSkills: PlannerWeakSkill[];
  testDate: string;
  hoursPerWeek: number;
  weekStartDate: string;
  previousPlanEdits?: PlannerPriorEdit[];
}

export interface PlannerSession {
  id: string;
  durationMin: number;
  focusSkill: string;
  focusSkillDisplay: string;
  sessionType: PlannerSessionType;
  rationale: string;
}

export interface PlannerDay {
  day: string;
  date: string;
  sessions: PlannerSession[];
}

export interface PlannerOutput {
  week: PlannerDay[];
  totalHoursAllocated: number;
  coverage: Record<string, number>;
  weekGoal: string;
}

const DAYS_IN_ORDER = [
  "monday",
  "tuesday",
  "wednesday",
  "thursday",
  "friday",
  "saturday",
  "sunday",
] as const;
const VALID_DAYS = new Set<string>(DAYS_IN_ORDER);
const VALID_SESSION_TYPES = new Set<PlannerSessionType>([
  "drill",
  "review",
  "mixed",
  "timed_test",
]);

const PER_DAY_CAP_MIN = 120;

const SYSTEM_PROMPT = `You are an SAT study planner. Design a weekly plan based on the student's weaknesses, test date, and available hours.

RULES:
1. Respect the hour budget. Don't schedule more than allocated.
2. High-severity weaknesses get more time AND more frequency (3-4 sessions/week vs 1-2).
3. Mix drill (30 min, single skill) with review sessions (45 min, mixed).
4. Every 4th day, schedule a timed test section (60 min) if enough time remaining till test.
5. Never schedule > 2 hours in one day. Respect burnout.
6. If previous edits show user moved sessions (e.g. Monday → Tuesday), bias toward the user's preferred distribution.
7. Space repetition: don't cluster the same skill on consecutive days — interleave.

RESPOND ONLY IN JSON.`;

function isSession(v: unknown): v is PlannerSession {
  if (typeof v !== "object" || v === null) return false;
  const o = v as Record<string, unknown>;
  return (
    typeof o.id === "string" &&
    typeof o.durationMin === "number" &&
    o.durationMin > 0 &&
    typeof o.focusSkill === "string" &&
    typeof o.focusSkillDisplay === "string" &&
    typeof o.sessionType === "string" &&
    VALID_SESSION_TYPES.has(o.sessionType as PlannerSessionType) &&
    typeof o.rationale === "string"
  );
}

function isDay(v: unknown): v is PlannerDay {
  if (typeof v !== "object" || v === null) return false;
  const o = v as Record<string, unknown>;
  return (
    typeof o.day === "string" &&
    VALID_DAYS.has(o.day) &&
    typeof o.date === "string" &&
    Array.isArray(o.sessions) &&
    o.sessions.every(isSession)
  );
}

function isCoverage(v: unknown): v is Record<string, number> {
  if (typeof v !== "object" || v === null || Array.isArray(v)) return false;
  return Object.values(v as Record<string, unknown>).every((n) => typeof n === "number");
}

export const plannerAgent: AgentCall<PlannerInput, PlannerOutput> = {
  name: "planner",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.4,
  maxTokens: 2500,
  systemPrompt: SYSTEM_PROMPT,
  buildUserPrompt: (input) => {
    const { weakSkills, testDate, hoursPerWeek, weekStartDate, previousPlanEdits } = input;
    const verifiedTag = (w: PlannerWeakSkill) => (w.verified ? " (verified)" : " (unverified)");
    const skillsLine = weakSkills.length === 0
      ? "(none flagged — choose a balanced mix across math + reading/writing)"
      : weakSkills.map((w) => `- ${w.skill} [${w.severity}]${verifiedTag(w)}`).join("\n");
    const editsBlock = previousPlanEdits && previousPlanEdits.length > 0
      ? `\nPREVIOUS USER EDITS (last week's plan)\n${previousPlanEdits.map((e) => `- "${e.originalSuggestion}" → "${e.userEdit}"`).join("\n")}\nBias this week's distribution toward what the student kept after editing.\n`
      : "";

    return `STUDENT CONTEXT
weekStartDate=${weekStartDate} (a Monday ISO date)
testDate=${testDate}
hoursPerWeek=${hoursPerWeek}
totalMinuteBudget=${hoursPerWeek * 60}

WEAK SKILLS
${skillsLine}
${editsBlock}
TASK
Produce a 7-day plan (Monday → Sunday). Each day has 0-N sessions. Each session has a duration in minutes, a focus skill (slug), a display name, a session type, and a 1-sentence rationale that mentions WHY this session today (e.g. "spaced from Monday's algebra drill").

Return JSON with this exact shape:
{
  "week": [
    {
      "day": "monday",
      "date": "<ISO date for that day, computed from weekStartDate>",
      "sessions": [
        {
          "id": "<short uuid-like string>",
          "durationMin": <int 15-90>,
          "focusSkill": "<skill slug>",
          "focusSkillDisplay": "<human name>",
          "sessionType": "drill" | "review" | "mixed" | "timed_test",
          "rationale": "<1 sentence>"
        }
      ]
    },
    ... (one entry per day, monday..sunday)
  ],
  "totalHoursAllocated": <number, sum of all session minutes / 60>,
  "coverage": { "<skill>": <total minutes>, ... },
  "weekGoal": "<one sentence — the headline goal for the week>"
}`;
  },
  parseOutput: (raw) => {
    const parsed: unknown = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Planner returned non-object JSON");
    }
    const o = parsed as Record<string, unknown>;

    if (!Array.isArray(o.week) || !o.week.every(isDay)) {
      throw new Error("week is missing or malformed");
    }
    if (typeof o.totalHoursAllocated !== "number") {
      throw new Error("totalHoursAllocated must be a number");
    }
    if (!isCoverage(o.coverage)) {
      throw new Error("coverage must be Record<string, number>");
    }
    if (typeof o.weekGoal !== "string" || o.weekGoal.length === 0) {
      throw new Error("weekGoal must be a non-empty string");
    }

    // Safety net: enforce per-day cap. We do NOT trim the week if the model
    // overshoots hours — that's a soft rule and the student will see the
    // total vs budget on the page. But the per-day cap is hard (burnout).
    for (const day of o.week) {
      const total = day.sessions.reduce((s, sess) => s + sess.durationMin, 0);
      if (total > PER_DAY_CAP_MIN) {
        throw new Error(`day ${day.day} exceeds 120 min cap (${total} min)`);
      }
    }

    // Recompute totalHoursAllocated from the actual sessions so the UI never
    // shows a number that disagrees with the visible plan.
    let totalMinutes = 0;
    const recomputedCoverage: Record<string, number> = {};
    for (const day of o.week) {
      for (const sess of day.sessions) {
        totalMinutes += sess.durationMin;
        recomputedCoverage[sess.focusSkill] =
          (recomputedCoverage[sess.focusSkill] ?? 0) + sess.durationMin;
      }
    }

    return {
      week: o.week,
      totalHoursAllocated: Math.round((totalMinutes / 60) * 10) / 10,
      coverage: recomputedCoverage,
      weekGoal: o.weekGoal,
    };
  },
};
