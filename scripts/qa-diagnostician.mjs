#!/usr/bin/env node
// QA harness for the Diagnostician agent. Runs 3 synthetic attempt sets
// against gpt-4o-mini using the EXACT system prompt in
// src/worker/agents/diagnostician.ts, then pretty-prints the JSON.
//
// Usage: node scripts/qa-diagnostician.mjs
// Reads OPENAI_KEY (or OPENAI_API_KEY) from .env.local.

import { readFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, resolve } from "node:path";

const __dirname = dirname(fileURLToPath(import.meta.url));
const REPO_ROOT = resolve(__dirname, "..");

// ─── Env loading ────────────────────────────────────────────────────────
function loadEnvFile(path) {
  try {
    const raw = readFileSync(path, "utf8");
    for (const line of raw.split("\n")) {
      const m = line.match(/^\s*([A-Z_][A-Z0-9_]*)\s*=\s*(.*?)\s*$/);
      if (!m) continue;
      if (!process.env[m[1]]) process.env[m[1]] = m[2];
    }
  } catch {
    // ignore
  }
}
loadEnvFile(resolve(REPO_ROOT, ".env.local"));

const apiKey = process.env.OPENAI_API_KEY || process.env.OPENAI_KEY;
if (!apiKey) {
  console.error("ERROR: no OPENAI_API_KEY / OPENAI_KEY in env. Populate .env.local.");
  process.exit(1);
}

// ─── EXACT system prompt from src/worker/agents/diagnostician.ts ────────
const SYSTEM_PROMPT = `You are an SAT diagnostic expert. You just received a student's 20-question diagnostic results. Analyze patterns and produce a calibrated weakness diagnosis.

KEY PRINCIPLES:
1. Confidence × correctness reveals more than correctness alone.
   - Wrong + confident = misconception (high severity)
   - Wrong + guessing = gap, but student knows they don't know (medium)
   - Right + guessing = lucky, unstable knowledge (medium)
   - Right + confident = solid
2. Time patterns matter. Fast + wrong = careless. Slow + wrong = conceptual struggle.
3. Don't over-diagnose. Rank the top 3-5 weaknesses by severity and evidence. Ignore skills with <2 attempts.
4. Be specific. "Algebra" is not useful. "Solving linear equations with fractions" is useful.
5. Estimated scores: use accuracy + difficulty curve. Roughly:
     - Baseline: 400 per section
     - Each correct easy = +15, medium = +20, hard = +25
     - Confident + correct boosts stability — round up
     - Cap at 800
6. Calibration score: % of attempts where confidence matched outcome. "Confident + correct" OR "guessing + wrong" both count as well-calibrated.

RESPOND ONLY IN JSON matching the provided schema.`;

// ─── Attempt synthesis helpers ──────────────────────────────────────────
// Small realistic skill set drawn from TutorZero's taxonomy.
const SKILLS = {
  linear_one_var: { domain: "Algebra", skill: "Linear equations in one variable" },
  linear_functions: { domain: "Algebra", skill: "Linear functions" },
  systems: { domain: "Algebra", skill: "Systems of two linear equations" },
  nonlinear_eq: { domain: "Advanced Math", skill: "Nonlinear equations" },
  percentages: { domain: "Problem-Solving and Data Analysis", skill: "Percentages" },
  area_volume: { domain: "Geometry and Trigonometry", skill: "Area and volume" },
  central_ideas: { domain: "Information and Ideas", skill: "Central Ideas and Details" },
  inferences: { domain: "Information and Ideas", skill: "Inferences" },
  transitions: { domain: "Expression of Ideas", skill: "Transitions" },
  boundaries: { domain: "Standard English Conventions", skill: "Boundaries" },
};

let counter = 0;
function mkAttempt(skillKey, { diff, correct, confidence, timeSpent }) {
  counter++;
  const id = counter.toString(16).padStart(8, "0");
  const s = SKILLS[skillKey];
  return {
    questionId: id,
    domain: s.domain,
    skill: s.skill,
    difficulty: diff,
    selectedIndex: correct ? 1 : 0,
    correctIndex: 1,
    isCorrect: correct,
    confidence,
    timeSpent,
  };
}

function buildSkillTable(attempts) {
  const buckets = new Map();
  for (const a of attempts) {
    const key = a.domain + "::" + a.skill;
    if (!buckets.has(key)) buckets.set(key, []);
    buckets.get(key).push(a);
  }
  const lines = [];
  for (const [key, arr] of buckets) {
    const [domain, skill] = key.split("::");
    const n = arr.length;
    const correct = arr.filter((a) => a.isCorrect).length;
    const avgMs = Math.round(arr.reduce((s, a) => s + a.timeSpent, 0) / n);
    const confRight = arr.filter((a) => a.confidence === "confident" && a.isCorrect).length;
    const confWrong = arr.filter((a) => a.confidence === "confident" && !a.isCorrect).length;
    const guessRight = arr.filter((a) => a.confidence === "guessing" && a.isCorrect).length;
    const guessWrong = arr.filter((a) => a.confidence === "guessing" && !a.isCorrect).length;
    const mix = arr.reduce((acc, a) => ({ ...acc, [a.difficulty]: (acc[a.difficulty] ?? 0) + 1 }), { E: 0, M: 0, H: 0 });
    const ids = arr.map((a) => a.questionId).join(",");
    lines.push(
      `- domain="${domain}" skill="${skill}" attempts=${n} correct=${correct}/${n}` +
        ` avgMs=${avgMs} diff(E/M/H)=${mix.E}/${mix.M}/${mix.H}` +
        ` confRight=${confRight} confWrong=${confWrong}` +
        ` guessRight=${guessRight} guessWrong=${guessWrong}` +
        ` questionIds=[${ids}]`
    );
  }
  return lines.join("\n");
}

function buildUserPrompt(attempts) {
  return `Here is the student's 20-question diagnostic, aggregated by skill:

${buildSkillTable(attempts)}

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
      "sample_question_ids": ["<questionId>", ...]
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
}

async function runScenario(name, attempts) {
  counter = 0; // reset id counter per scenario for readable ids
  const t0 = Date.now();
  const response = await fetch("https://api.openai.com/v1/chat/completions", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${apiKey}`,
    },
    body: JSON.stringify({
      model: "gpt-4o-mini",
      response_format: { type: "json_object" },
      temperature: 0.2,
      max_tokens: 2000,
      messages: [
        { role: "system", content: SYSTEM_PROMPT },
        { role: "user", content: buildUserPrompt(attempts) },
      ],
    }),
  });
  const latencyMs = Date.now() - t0;

  if (!response.ok) {
    console.error(`[${name}] OpenAI returned ${response.status}`);
    console.error(await response.text().catch(() => "<no body>"));
    return;
  }

  const body = await response.json();
  const raw = body.choices?.[0]?.message?.content ?? "";
  const usage = body.usage ?? {};

  console.log("\n══════════════════════════════════════════════════════");
  console.log(`SCENARIO: ${name}`);
  console.log(`Latency: ${latencyMs}ms · prompt_tokens=${usage.prompt_tokens} completion_tokens=${usage.completion_tokens}`);
  console.log("══════════════════════════════════════════════════════");
  try {
    const parsed = JSON.parse(raw);
    console.log(JSON.stringify(parsed, null, 2));
  } catch {
    console.log("UNPARSEABLE RAW:");
    console.log(raw);
  }
}

// ─── SCENARIOS ──────────────────────────────────────────────────────────

// (A) Mostly-correct student: high accuracy, mostly confident.
function scenarioA() {
  counter = 0;
  const a = [];
  const all = [
    ["linear_one_var", "M"], ["linear_one_var", "H"],
    ["linear_functions", "M"], ["linear_functions", "M"], ["linear_functions", "H"],
    ["systems", "M"], ["systems", "M"],
    ["nonlinear_eq", "M"], ["nonlinear_eq", "H"],
    ["percentages", "E"], ["percentages", "M"],
    ["area_volume", "M"], ["area_volume", "H"],
    ["central_ideas", "M"], ["central_ideas", "M"],
    ["inferences", "M"],
    ["transitions", "E"], ["transitions", "M"],
    ["boundaries", "M"], ["boundaries", "H"],
  ];
  for (const [s, d] of all) {
    const correct = Math.random() > 0.15;           // 85% correct
    const conf = correct && Math.random() > 0.2 ? "confident" : "somewhat";
    a.push(mkAttempt(s, { diff: d, correct, confidence: conf, timeSpent: 45_000 + Math.random() * 25_000 }));
  }
  return a;
}

// (B) Mostly-wrong student: low accuracy, lots of guessing.
function scenarioB() {
  counter = 0;
  const a = [];
  const all = [
    ["linear_one_var", "E"], ["linear_one_var", "M"],
    ["linear_functions", "M"], ["linear_functions", "M"],
    ["systems", "M"], ["systems", "H"],
    ["nonlinear_eq", "M"], ["nonlinear_eq", "H"],
    ["percentages", "E"], ["percentages", "M"],
    ["area_volume", "M"], ["area_volume", "H"],
    ["central_ideas", "M"], ["central_ideas", "H"],
    ["inferences", "M"], ["inferences", "M"],
    ["transitions", "M"], ["transitions", "M"],
    ["boundaries", "E"], ["boundaries", "M"],
  ];
  for (const [s, d] of all) {
    const correct = Math.random() > 0.75;           // ~25% correct
    const conf = Math.random() > 0.5 ? "guessing" : "somewhat";
    a.push(mkAttempt(s, { diff: d, correct, confidence: conf, timeSpent: 70_000 + Math.random() * 60_000 }));
  }
  return a;
}

// (C) Miscalibrated student: mixed accuracy but confidence wildly off.
// Confident-and-wrong on Algebra (high-severity misconception cluster) and
// guessing-and-right on Transitions (lucky). Slow + wrong on Nonlinear.
function scenarioC() {
  counter = 0;
  return [
    mkAttempt("linear_one_var",   { diff: "E", correct: false, confidence: "confident", timeSpent: 35_000 }),
    mkAttempt("linear_one_var",   { diff: "M", correct: false, confidence: "confident", timeSpent: 40_000 }),
    mkAttempt("linear_functions", { diff: "M", correct: false, confidence: "confident", timeSpent: 55_000 }),
    mkAttempt("linear_functions", { diff: "M", correct: true,  confidence: "somewhat",  timeSpent: 70_000 }),
    mkAttempt("systems",          { diff: "M", correct: true,  confidence: "confident", timeSpent: 60_000 }),
    mkAttempt("systems",          { diff: "H", correct: false, confidence: "somewhat",  timeSpent: 85_000 }),
    mkAttempt("nonlinear_eq",     { diff: "M", correct: false, confidence: "somewhat",  timeSpent: 140_000 }),
    mkAttempt("nonlinear_eq",     { diff: "H", correct: false, confidence: "guessing",  timeSpent: 160_000 }),
    mkAttempt("percentages",      { diff: "E", correct: true,  confidence: "confident", timeSpent: 30_000 }),
    mkAttempt("percentages",      { diff: "M", correct: true,  confidence: "confident", timeSpent: 45_000 }),
    mkAttempt("area_volume",      { diff: "M", correct: true,  confidence: "somewhat",  timeSpent: 65_000 }),
    mkAttempt("area_volume",      { diff: "H", correct: false, confidence: "guessing",  timeSpent: 90_000 }),
    mkAttempt("central_ideas",    { diff: "M", correct: true,  confidence: "confident", timeSpent: 50_000 }),
    mkAttempt("central_ideas",    { diff: "M", correct: true,  confidence: "confident", timeSpent: 48_000 }),
    mkAttempt("inferences",       { diff: "M", correct: false, confidence: "confident", timeSpent: 55_000 }),
    mkAttempt("inferences",       { diff: "H", correct: false, confidence: "somewhat",  timeSpent: 95_000 }),
    mkAttempt("transitions",      { diff: "M", correct: true,  confidence: "guessing",  timeSpent: 40_000 }),
    mkAttempt("transitions",      { diff: "M", correct: true,  confidence: "guessing",  timeSpent: 42_000 }),
    mkAttempt("boundaries",       { diff: "E", correct: true,  confidence: "confident", timeSpent: 30_000 }),
    mkAttempt("boundaries",       { diff: "M", correct: true,  confidence: "somewhat",  timeSpent: 50_000 }),
  ];
}

await runScenario("A · MOSTLY-CORRECT STUDENT",     scenarioA());
await runScenario("B · MOSTLY-WRONG STUDENT",       scenarioB());
await runScenario("C · MISCALIBRATED STUDENT",      scenarioC());
