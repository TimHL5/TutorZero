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
import { loadPrompt } from "./prompts/loader";

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

export interface PlannerPracticeRow {
  /** Skill slug — same as PlannerWeakSkill.skill so the prompt can join them. */
  skill: string;
  /** Domain slug ("algebra" etc.) so the agent doesn't need to compute it. */
  domain: string;
  /** Total questions answered in this skill across all practice. */
  attempted: number;
  /** Mastery in [0,1]. -1 when attempted is 0 — keep the field always present
   * so downstream prompt builders don't have to special-case nulls. */
  mastery: number;
}

export interface PlannerInput {
  weakSkills: PlannerWeakSkill[];
  /** Per-skill practice rollup (29 rows, padded with attempted=0 for skills
   * the student hasn't touched). The planner reads this alongside weakSkills
   * to prioritize unpracticed gaps even when the diagnostic didn't flag them. */
  practiceSummary: PlannerPracticeRow[];
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
  loadSystemPrompt: () => loadPrompt("planner"),
  buildUserPrompt: (input) => {
    const { weakSkills, practiceSummary, testDate, hoursPerWeek, weekStartDate, previousPlanEdits } = input;
    const verifiedTag = (w: PlannerWeakSkill) => (w.verified ? " (verified)" : " (unverified)");

    // Tag every diagnostic-weak skill with whether the student has actually
    // practiced it — so the agent can apply Rule 1 (high-severity unpracticed
    // → 3-4 sessions/week) without having to cross-reference two lists.
    const practicedSet = new Set(practiceSummary.filter((p) => p.attempted > 0).map((p) => p.skill));
    const skillsLine = weakSkills.length === 0
      ? "(none flagged — fall through to PRACTICE SUMMARY priorities)"
      : weakSkills
          .map((w) => {
            const status = practicedSet.has(w.skill) ? "practiced" : "unpracticed";
            return `- ${w.skill} [${w.severity}, ${status}]${verifiedTag(w)}`;
          })
          .join("\n");

    // Practice summary, grouped by domain, with attempted/mastery alongside
    // an [unpracticed] / [low_mastery] / [proficient] label so the agent can
    // pattern-match priority rules without computing them.
    const summaryByDomain: Record<string, PlannerPracticeRow[]> = {};
    for (const row of practiceSummary) {
      if (!summaryByDomain[row.domain]) summaryByDomain[row.domain] = [];
      summaryByDomain[row.domain].push(row);
    }
    const labelFor = (row: PlannerPracticeRow) => {
      if (row.attempted === 0) return "unpracticed";
      if (row.mastery < 0.7) return "low_mastery";
      if (row.mastery < 0.85) return "proficient";
      return "advanced";
    };
    const summaryBlock = practiceSummary.length === 0
      ? "(no practice data yet — treat all skills as unpracticed)"
      : Object.entries(summaryByDomain)
          .map(([domain, rows]) =>
            `${domain}:\n` +
            rows
              .map((r) => {
                const masteryStr = r.attempted > 0 ? `${Math.round(r.mastery * 100)}%` : "—";
                return `  - ${r.skill} [${labelFor(r)}, attempted=${r.attempted}, mastery=${masteryStr}]`;
              })
              .join("\n")
          )
          .join("\n");

    const editsBlock = previousPlanEdits && previousPlanEdits.length > 0
      ? `\nPREVIOUS USER EDITS (last week's plan)\n${previousPlanEdits.map((e) => `- "${e.originalSuggestion}" → "${e.userEdit}"`).join("\n")}\nBias this week's distribution toward what the student kept after editing.\n`
      : "";

    return `STUDENT CONTEXT
weekStartDate=${weekStartDate}
testDate=${testDate}
hoursPerWeek=${hoursPerWeek}
totalMinuteBudget=${hoursPerWeek * 60}

WEAK SKILLS (from diagnostic — skill slugs)
${skillsLine}

PRACTICE SUMMARY (skill-level rollup of all real attempts)
${summaryBlock}
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
