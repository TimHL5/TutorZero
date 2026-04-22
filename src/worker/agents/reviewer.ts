// Reviewer — runs after every practice/diagnostic session.
//
// Responsibilities:
//   1. Surface 2-3 specific positive observations the student should hear.
//   2. Detect patterns (pacing / calibration / topic / improvement / misconception)
//      with concrete evidence.
//   3. Update predicted SAT scores with bounded deltas (±20 per session, clamped
//      to [200, 800]) so single bad sessions can't whiplash the prediction.
//   4. Recommend ONE focus skill for the next session.
//
// Score logic and tone live in the system prompt. parseOutput is the safety net:
// it clamps deltas + final scores even if the model drifts outside the rules.

import type { AgentCall } from "./types";

export type SessionType = "diagnostic" | "practice" | "full_test";
export type ConfidenceLevel = "guessing" | "somewhat" | "confident";
export type DifficultyCode = "E" | "M" | "H";
export type PatternSeverity = "high" | "medium" | "low";
export type PatternType =
  | "pacing"
  | "calibration"
  | "topic_weakness"
  | "improvement"
  | "misconception";

export interface ReviewerSessionMeta {
  startedAt: string;
  endedAt: string;
  sessionType: SessionType;
  topic?: string;
  totalAttempts: number;
  correctCount: number;
}

export interface ReviewerAttempt {
  questionId: string;
  topic: string;
  skill: string;
  difficulty: DifficultyCode | string;
  isCorrect: boolean;
  timeSpent: number;
  confidence: ConfidenceLevel | string;
}

export interface ReviewerScores {
  math: number;
  rw: number;
  calibration: number;
}

export interface ReviewerInput {
  session: ReviewerSessionMeta;
  attempts: ReviewerAttempt[];
  previousScores: ReviewerScores;
  previousWeaknesses?: string[];
}

export interface ReviewerPattern {
  pattern: string;
  evidence: string;
  severity: PatternSeverity;
  type: PatternType;
}

export interface ReviewerNextFocus {
  topic: string;
  skill: string;
  reason: string;
}

export interface ReviewerOutput {
  highlights: string[];
  patterns: ReviewerPattern[];
  calibration_delta: number;
  estimated_math_delta: number;
  estimated_rw_delta: number;
  new_calibration: number;
  new_math: number;
  new_rw: number;
  next_session_focus: ReviewerNextFocus;
  summary: string;
}

const SYSTEM_PROMPT = `You are an SAT coach reviewing a student's practice session. Analyze patterns, update score predictions, and recommend next focus.

SCORE UPDATE LOGIC:
- Start from previous scores
- For each correct answer: +2 (easy) / +3 (medium) / +4 (hard)
- For each wrong answer: -1 to -3 based on difficulty
- Confidence-calibrated answers (right+confident, wrong+guessing) weight more
- Cap deltas at ±20 per session to avoid whiplash
- Floor 200, cap 800

PATTERN DETECTION:
- Pacing: time per question increasing/decreasing across session
- Calibration: confidence matching outcomes better/worse than before
- Topic: specific skill gaining or losing accuracy
- Improvement: skills showing positive trend vs previous sessions
- Misconception: multiple wrong answers sharing error pattern

TONE:
- Celebrate real progress (be specific, don't flatter)
- Name patterns clearly
- Suggest ONE focus for next session, not a laundry list

RESPOND ONLY IN JSON.`;

const VALID_SEVERITIES = new Set<PatternSeverity>(["high", "medium", "low"]);
const VALID_TYPES = new Set<PatternType>([
  "pacing",
  "calibration",
  "topic_weakness",
  "improvement",
  "misconception",
]);

function clamp(value: number, min: number, max: number): number {
  if (Number.isNaN(value)) return min;
  return Math.max(min, Math.min(max, value));
}

interface SkillBucket {
  topic: string;
  skill: string;
  attempts: ReviewerAttempt[];
}

// Compact per-skill aggregation. Mirrors Diagnostician's approach: feed the
// model a small structured table rather than raw attempts so token cost stays
// flat as session length grows.
function buildAttemptDigest(attempts: ReviewerAttempt[]): string {
  if (attempts.length === 0) return "(no attempts)";

  const buckets = new Map<string, SkillBucket>();
  for (const a of attempts) {
    const key = `${a.topic}::${a.skill}`;
    const b = buckets.get(key) ?? { topic: a.topic, skill: a.skill, attempts: [] };
    b.attempts.push(a);
    buckets.set(key, b);
  }

  const lines: string[] = [];
  for (const { topic, skill, attempts: bucketAttempts } of buckets.values()) {
    const n = bucketAttempts.length;
    const correct = bucketAttempts.filter((a) => a.isCorrect).length;
    const avgMs = Math.round(
      bucketAttempts.reduce((s, a) => s + a.timeSpent, 0) / n
    );
    const confRight = bucketAttempts.filter((a) => a.confidence === "confident" && a.isCorrect).length;
    const confWrong = bucketAttempts.filter((a) => a.confidence === "confident" && !a.isCorrect).length;
    const guessRight = bucketAttempts.filter((a) => a.confidence === "guessing" && a.isCorrect).length;
    const guessWrong = bucketAttempts.filter((a) => a.confidence === "guessing" && !a.isCorrect).length;
    const ids = bucketAttempts.map((a) => a.questionId).join(",");

    lines.push(
      `- topic="${topic}" skill="${skill}" attempts=${n} correct=${correct}/${n}` +
        ` avgMs=${avgMs} confRight=${confRight} confWrong=${confWrong}` +
        ` guessRight=${guessRight} guessWrong=${guessWrong}` +
        ` questionIds=[${ids}]`
    );
  }

  // Per-attempt timing trend so the model can spot pacing drift
  const trend = attempts
    .map((a, i) => `Q${i + 1}:${a.questionId}=${Math.round(a.timeSpent / 1000)}s${a.isCorrect ? "✓" : "✗"}`)
    .join(" ");
  lines.push(`Timing trend (Q-by-Q): ${trend}`);

  return lines.join("\n");
}

function isPattern(v: unknown): v is ReviewerPattern {
  if (typeof v !== "object" || v === null) return false;
  const o = v as Record<string, unknown>;
  return (
    typeof o.pattern === "string" &&
    typeof o.evidence === "string" &&
    typeof o.severity === "string" &&
    VALID_SEVERITIES.has(o.severity as PatternSeverity) &&
    typeof o.type === "string" &&
    VALID_TYPES.has(o.type as PatternType)
  );
}

function isNextFocus(v: unknown): v is ReviewerNextFocus {
  if (typeof v !== "object" || v === null) return false;
  const o = v as Record<string, unknown>;
  return (
    typeof o.topic === "string" &&
    typeof o.skill === "string" &&
    typeof o.reason === "string"
  );
}

export const reviewerAgent: AgentCall<ReviewerInput, ReviewerOutput> = {
  name: "reviewer",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.3,
  maxTokens: 1500,
  systemPrompt: SYSTEM_PROMPT,
  buildUserPrompt: (input) => {
    const { session, attempts, previousScores, previousWeaknesses } = input;
    const accuracy = session.totalAttempts > 0
      ? Math.round((session.correctCount / session.totalAttempts) * 100)
      : 0;
    const weaknessLine = previousWeaknesses && previousWeaknesses.length > 0
      ? `\nPreviously flagged weak skills: ${previousWeaknesses.join(", ")}`
      : "";

    return `SESSION META
type=${session.sessionType} topic=${session.topic ?? "mixed"} startedAt=${session.startedAt} endedAt=${session.endedAt}
attempts=${session.totalAttempts} correct=${session.correctCount} accuracy=${accuracy}%

PREVIOUS SCORES
math=${previousScores.math} rw=${previousScores.rw} calibration=${previousScores.calibration}${weaknessLine}

ATTEMPT DIGEST
${buildAttemptDigest(attempts)}

TASK
1. Pick 2-3 specific positive things to highlight (e.g. "first 5 algebra questions all correct, average 47s — confident pace").
2. Detect 1-4 patterns. Each must have concrete evidence (cite question IDs or timing). Do not invent patterns when the data is thin.
3. Update scores per the rules. Compute deltas first, then new totals. Cap each delta at ±20. Floor 200, cap 800.
4. Pick ONE next-session focus (topic + skill slug + 1-sentence reason).
5. Write a 2-3 sentence encouraging summary that names ONE concrete thing they did well.

Return JSON with this exact shape:
{
  "highlights": ["<sentence>", ...],
  "patterns": [
    {
      "pattern": "<short label>",
      "evidence": "<specific quote with IDs or times>",
      "severity": "high" | "medium" | "low",
      "type": "pacing" | "calibration" | "topic_weakness" | "improvement" | "misconception"
    }
  ],
  "calibration_delta": <number, can be negative>,
  "estimated_math_delta": <number in [-20, 20]>,
  "estimated_rw_delta": <number in [-20, 20]>,
  "new_calibration": <number 0-100>,
  "new_math": <int 200-800>,
  "new_rw": <int 200-800>,
  "next_session_focus": { "topic": "<slug>", "skill": "<slug>", "reason": "<sentence>" },
  "summary": "<2-3 sentences>"
}`;
  },
  parseOutput: (raw) => {
    const parsed: unknown = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Reviewer returned non-object JSON");
    }
    const o = parsed as Record<string, unknown>;

    if (!Array.isArray(o.highlights) || !o.highlights.every((h) => typeof h === "string")) {
      throw new Error("highlights must be string[]");
    }
    if (!Array.isArray(o.patterns) || !o.patterns.every(isPattern)) {
      throw new Error("patterns is missing or malformed");
    }
    if (typeof o.calibration_delta !== "number") {
      throw new Error("calibration_delta must be a number");
    }
    if (typeof o.estimated_math_delta !== "number" || typeof o.estimated_rw_delta !== "number") {
      throw new Error("score deltas must be numbers");
    }
    if (typeof o.new_calibration !== "number" || typeof o.new_math !== "number" || typeof o.new_rw !== "number") {
      throw new Error("new score values must be numbers");
    }
    if (!isNextFocus(o.next_session_focus)) {
      throw new Error("next_session_focus is missing or malformed");
    }
    if (typeof o.summary !== "string" || o.summary.length === 0) {
      throw new Error("summary must be a non-empty string");
    }

    // Safety net: clamp deltas to ±20 and final scores to [200, 800] regardless
    // of what the model returned. Trust nothing.
    const mathDelta = clamp(o.estimated_math_delta, -20, 20);
    const rwDelta = clamp(o.estimated_rw_delta, -20, 20);

    return {
      highlights: o.highlights,
      patterns: o.patterns,
      calibration_delta: o.calibration_delta,
      estimated_math_delta: mathDelta,
      estimated_rw_delta: rwDelta,
      new_calibration: clamp(o.new_calibration, 0, 100),
      new_math: Math.round(clamp(o.new_math, 200, 800)),
      new_rw: Math.round(clamp(o.new_rw, 200, 800)),
      next_session_focus: o.next_session_focus,
      summary: o.summary,
    };
  },
};
