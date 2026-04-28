// Diagnostician — the first agent in the TutorZero HAI loop.
//
// After a 20-question diagnostic, we hand the raw attempts to gpt-4o-mini with
// confidence + timing signal. It returns a ranked weakness list, paired
// strengths, initial predicted SAT scores, a calibration score, and a plain-
// language summary. The student is then asked to verify each weakness
// (confirmed / misread / maybe) — that verification closes the loop.

import type { AgentCall } from "./types";
import { loadPrompt } from "./prompts/loader";

export type ConfidenceLevel = "guessing" | "somewhat" | "confident";
export type DifficultyCode = "E" | "M" | "H";

export interface DiagnosticianAttempt {
  questionId: string;
  domain: string;
  skill: string;
  difficulty: DifficultyCode;
  selectedIndex: number;
  correctIndex: number;
  isCorrect: boolean;
  confidence: ConfidenceLevel;
  /** milliseconds spent on the question */
  timeSpent: number;
}

export interface DiagnosticianInput {
  attempts: DiagnosticianAttempt[];
  /** optional ISO date of the student's SAT, if known */
  testDate?: string;
}

export type WeaknessSeverity = "high" | "medium" | "low";
export type Miscalibration = "none" | "overconfident" | "underconfident";

export interface DiagnosticianWeakness {
  skill: string;
  skill_display: string;
  severity: WeaknessSeverity;
  evidence: string;
  confidence_miscalibration: Miscalibration;
  sample_question_ids: string[];
}

export interface DiagnosticianStrength {
  skill: string;
  skill_display: string;
  evidence: string;
}

export interface DiagnosticianOutput {
  weaknesses: DiagnosticianWeakness[];
  strengths: DiagnosticianStrength[];
  estimated_math_score: number;
  estimated_rw_score: number;
  calibration_score: number;
  top_focus: string;
  summary: string;
}

// Compact per-skill summary that gpt-4o-mini can actually reason over at low
// cost. We pre-aggregate counts, average time, confidence mix, and include the
// raw questionIds so the agent can cite them in sample_question_ids.
function buildSkillTable(input: DiagnosticianInput): string {
  interface Bucket {
    domain: string;
    skill: string;
    attempts: DiagnosticianAttempt[];
  }
  const buckets = new Map<string, Bucket>();
  for (const a of input.attempts) {
    const key = `${a.domain}::${a.skill}`;
    const b = buckets.get(key) ?? { domain: a.domain, skill: a.skill, attempts: [] };
    b.attempts.push(a);
    buckets.set(key, b);
  }

  const lines: string[] = [];
  for (const { domain, skill, attempts } of buckets.values()) {
    const n = attempts.length;
    const correct = attempts.filter((a) => a.isCorrect).length;
    const avgMs = Math.round(attempts.reduce((s, a) => s + a.timeSpent, 0) / n);
    const confidentCorrect = attempts.filter((a) => a.confidence === "confident" && a.isCorrect).length;
    const confidentWrong = attempts.filter((a) => a.confidence === "confident" && !a.isCorrect).length;
    const guessingCorrect = attempts.filter((a) => a.confidence === "guessing" && a.isCorrect).length;
    const guessingWrong = attempts.filter((a) => a.confidence === "guessing" && !a.isCorrect).length;
    const diffMix = attempts.reduce<Record<DifficultyCode, number>>(
      (acc, a) => ({ ...acc, [a.difficulty]: (acc[a.difficulty] ?? 0) + 1 }),
      { E: 0, M: 0, H: 0 }
    );
    const ids = attempts.map((a) => a.questionId).join(",");

    lines.push(
      `- domain="${domain}" skill="${skill}" attempts=${n} correct=${correct}/${n}` +
        ` avgMs=${avgMs} diff(E/M/H)=${diffMix.E}/${diffMix.M}/${diffMix.H}` +
        ` confRight=${confidentCorrect} confWrong=${confidentWrong}` +
        ` guessRight=${guessingCorrect} guessWrong=${guessingWrong}` +
        ` questionIds=[${ids}]`
    );
  }
  return lines.join("\n");
}

function isWeakness(v: unknown): v is DiagnosticianWeakness {
  if (typeof v !== "object" || v === null) return false;
  const o = v as Record<string, unknown>;
  return (
    typeof o.skill === "string" &&
    typeof o.skill_display === "string" &&
    (o.severity === "high" || o.severity === "medium" || o.severity === "low") &&
    typeof o.evidence === "string" &&
    (o.confidence_miscalibration === "none" ||
      o.confidence_miscalibration === "overconfident" ||
      o.confidence_miscalibration === "underconfident") &&
    Array.isArray(o.sample_question_ids) &&
    o.sample_question_ids.every((s) => typeof s === "string")
  );
}

function isStrength(v: unknown): v is DiagnosticianStrength {
  if (typeof v !== "object" || v === null) return false;
  const o = v as Record<string, unknown>;
  return (
    typeof o.skill === "string" &&
    typeof o.skill_display === "string" &&
    typeof o.evidence === "string"
  );
}

export const diagnosticianAgent: AgentCall<DiagnosticianInput, DiagnosticianOutput> = {
  name: "diagnostician",
  model: process.env.OPENAI_MODEL_STRONG || "gpt-4o",
  responseFormat: "json_object",
  temperature: 0.2,
  maxTokens: 2000,
  loadSystemPrompt: () => loadPrompt("diagnostician"),
  buildUserPrompt: (input) => {
    const testDateLine = input.testDate
      ? `\nStudent's SAT test date: ${input.testDate}`
      : "";
    return `Here is the student's 20-question diagnostic, aggregated by skill:${testDateLine}

${buildSkillTable(input)}

Rank the 3–5 most important weaknesses, list 2–3 strengths, estimate per-section SAT scores (200–800), compute calibration_score (0–100), choose top_focus (a weakness skill slug), and write a 2–3 sentence plain-language summary.

Return JSON with this exact shape:
{
  "weaknesses": [
    {
      "skill": "<slug>",
      "skill_display": "<human name>",
      "severity": "high" | "medium" | "low",
      "evidence": "<1-2 sentences>",
      "confidence_miscalibration": "none" | "overconfident" | "underconfident",
      "sample_question_ids": ["<questionId>", ...]  // up to 3
    }
  ],
  "strengths": [
    { "skill": "<slug>", "skill_display": "<human name>", "evidence": "<sentence>" }
  ],
  "estimated_math_score": <int 200-800>,
  "estimated_rw_score": <int 200-800>,
  "calibration_score": <number 0-100>,
  "top_focus": "<slug of #1 weakness>",
  "summary": "<2-3 sentences for the student>"
}`;
  },
  parseOutput: (raw) => {
    const parsed: unknown = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Diagnostician returned non-object JSON");
    }
    const o = parsed as Record<string, unknown>;

    if (!Array.isArray(o.weaknesses) || !o.weaknesses.every(isWeakness)) {
      throw new Error("weaknesses is missing or malformed");
    }
    if (!Array.isArray(o.strengths) || !o.strengths.every(isStrength)) {
      throw new Error("strengths is missing or malformed");
    }
    if (typeof o.estimated_math_score !== "number" || o.estimated_math_score < 200 || o.estimated_math_score > 800) {
      throw new Error("estimated_math_score out of range");
    }
    if (typeof o.estimated_rw_score !== "number" || o.estimated_rw_score < 200 || o.estimated_rw_score > 800) {
      throw new Error("estimated_rw_score out of range");
    }
    if (typeof o.calibration_score !== "number" || o.calibration_score < 0 || o.calibration_score > 100) {
      throw new Error("calibration_score out of range");
    }
    if (typeof o.top_focus !== "string" || o.top_focus.length === 0) {
      throw new Error("top_focus must be a non-empty string");
    }
    if (typeof o.summary !== "string" || o.summary.length === 0) {
      throw new Error("summary must be a non-empty string");
    }

    return {
      weaknesses: o.weaknesses,
      strengths: o.strengths,
      estimated_math_score: Math.round(o.estimated_math_score),
      estimated_rw_score: Math.round(o.estimated_rw_score),
      calibration_score: Math.round(o.calibration_score * 10) / 10,
      top_focus: o.top_focus,
      summary: o.summary,
    };
  },
};
