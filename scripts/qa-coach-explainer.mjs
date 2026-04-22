#!/usr/bin/env node
// QA harness for the Coach + Explainer agents. Runs 3 scenarios each against
// gpt-4o-mini using the EXACT system prompts from the agent modules.
// Usage: node scripts/qa-coach-explainer.mjs

import { readFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, resolve } from "node:path";

const __dirname = dirname(fileURLToPath(import.meta.url));
const REPO_ROOT = resolve(__dirname, "..");

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
  console.error("ERROR: no OPENAI_API_KEY / OPENAI_KEY in env.");
  process.exit(1);
}

const COACH_SYSTEM = `You are a supportive SAT tutor watching a student struggle. Based on their recent attempt pattern, decide the best intervention. Respect the student's autonomy — always offer a choice.

INTERVENTION GUIDE:
- offer_easier: if 3+ wrong in a row on same topic — drop to easier difficulty
- switch_topic: if student has been on one topic > 15 min AND accuracy is dropping
- take_break: if session > 45 min OR time-per-question is doubling (fatigue)
- keep_pushing: if student is close (2 wrong, 1 right, improving) — encourage
- review_concept: if wrong answers share a misconception pattern — suggest explainer first

VOICE:
- Warm, not condescending
- Specific ("you've been on linear equations for 18 min") not generic ("you're working hard")
- Offer agency. Always frame as student's choice.

ACTION SLUGS — STRICT.
Both primary_action.action and secondary_action.action MUST be one of exactly these five strings:
"offer_easier", "switch_topic", "take_break", "keep_pushing", "review_concept".
Do not invent slugs like "continue_topic" or "continue_session". The primary_action.action should match the intervention; the secondary_action.action should be a different slug from the same five (the student's alternative).

RESPOND ONLY IN JSON.`;

const EXPLAINER_SYSTEM = `You are an SAT tutor. A student just got a question wrong and explained their reasoning. Your job is to respond to THEIR specific misconception — not repeat the official rationale.

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

async function callOpenAI({ system, user, temperature, maxTokens }) {
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
      temperature,
      max_tokens: maxTokens,
      messages: [
        { role: "system", content: system },
        { role: "user", content: user },
      ],
    }),
  });
  const latencyMs = Date.now() - t0;
  if (!response.ok) {
    const text = await response.text().catch(() => "<no body>");
    return { error: `OpenAI ${response.status}: ${text}`, latencyMs };
  }
  const body = await response.json();
  return { raw: body.choices?.[0]?.message?.content ?? "", usage: body.usage ?? {}, latencyMs };
}

function print(name, result) {
  console.log("\n══════════════════════════════════════════════════════");
  console.log(`SCENARIO: ${name}`);
  if (result.error) {
    console.log("ERROR:", result.error);
    return;
  }
  console.log(`Latency: ${result.latencyMs}ms · prompt=${result.usage.prompt_tokens} completion=${result.usage.completion_tokens}`);
  console.log("══════════════════════════════════════════════════════");
  try {
    console.log(JSON.stringify(JSON.parse(result.raw), null, 2));
  } catch {
    console.log("UNPARSEABLE RAW:\n" + result.raw);
  }
}

// ─── Coach user-prompt builder (mirrors coach.ts summarizeAttempts) ────
function buildCoachUserPrompt(input) {
  const minutes = Math.round(input.sessionDuration / 60000);
  const recent = input.recentAttempts;
  const avgMs = recent.length ? Math.round(recent.reduce((s, a) => s + a.timeSpent, 0) / recent.length) : 0;
  const wrong = recent.filter((a) => !a.isCorrect).length;
  const lines = [
    `Session: ${minutes} min so far, ${input.totalAttempts} questions total.`,
    `Last ${recent.length} attempts: ${wrong} wrong, avg ${Math.round(avgMs / 1000)}s/question.`,
    `Current question: topic="${input.currentQuestion.topic}" skill="${input.currentQuestion.skill}" difficulty="${input.currentQuestion.difficulty}"`,
    "Attempt-by-attempt (most recent last):",
  ];
  recent.forEach((a, i) => {
    lines.push(`  ${i + 1}. topic=${a.topic} skill=${a.skill} diff=${a.difficulty} ${a.isCorrect ? "CORRECT" : "WRONG"} conf=${a.confidence} time=${Math.round(a.timeSpent / 1000)}s`);
  });
  return `Student signal:

${lines.join("\n")}

Pick one intervention and return JSON:
{
  "intervention": "offer_easier" | "switch_topic" | "take_break" | "keep_pushing" | "review_concept",
  "message": "<2-3 sentences, warm, specific>",
  "primary_action": { "label": "<button text>", "action": "<slug>" },
  "secondary_action": { "label": "<button text>", "action": "<slug>" }
}`;
}

// ─── COACH SCENARIOS ────────────────────────────────────────────────────
const coachA = {
  recentAttempts: [
    { topic: "algebra", skill: "linear_equations_one_var", difficulty: "M", isCorrect: false, timeSpent: 65000, confidence: "confident" },
    { topic: "algebra", skill: "linear_equations_one_var", difficulty: "M", isCorrect: false, timeSpent: 75000, confidence: "somewhat" },
    { topic: "algebra", skill: "linear_equations_one_var", difficulty: "M", isCorrect: false, timeSpent: 85000, confidence: "somewhat" },
  ],
  currentQuestion: { topic: "algebra", skill: "linear_equations_one_var", difficulty: "M" },
  sessionDuration: 8 * 60_000,
  totalAttempts: 6,
};

const coachB = {
  recentAttempts: [
    { topic: "advanced_math", skill: "nonlinear_equations", difficulty: "H", isCorrect: false, timeSpent: 150_000, confidence: "somewhat" },
    { topic: "advanced_math", skill: "nonlinear_equations", difficulty: "H", isCorrect: true,  timeSpent: 180_000, confidence: "somewhat" },
    { topic: "advanced_math", skill: "nonlinear_equations", difficulty: "H", isCorrect: false, timeSpent: 220_000, confidence: "guessing" },
  ],
  currentQuestion: { topic: "advanced_math", skill: "nonlinear_equations", difficulty: "H" },
  sessionDuration: 50 * 60_000,
  totalAttempts: 22,
};

const coachC = {
  recentAttempts: [
    { topic: "algebra", skill: "systems_of_linear_equations", difficulty: "M", isCorrect: false, timeSpent: 70_000, confidence: "somewhat" },
    { topic: "algebra", skill: "systems_of_linear_equations", difficulty: "M", isCorrect: false, timeSpent: 65_000, confidence: "somewhat" },
    { topic: "algebra", skill: "systems_of_linear_equations", difficulty: "M", isCorrect: true,  timeSpent: 55_000, confidence: "confident" },
  ],
  currentQuestion: { topic: "algebra", skill: "systems_of_linear_equations", difficulty: "M" },
  sessionDuration: 12 * 60_000,
  totalAttempts: 5,
};

// ─── Explainer user-prompt builder (mirrors explainer.ts) ──────────────
function buildExplainerUserPrompt(input) {
  const passageBlock = input.passage ? `\nPASSAGE / STIMULUS:\n${input.passage}\n` : "";
  const optionsBlock = input.options.map((opt, i) => `${String.fromCharCode(65 + i)}. ${opt}`).join("\n");
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
}

// ─── EXPLAINER SCENARIOS ────────────────────────────────────────────────
const explainerA = {
  questionId: "aaa00001",
  stem: "If 3x + 7 = 22, what is the value of x?",
  options: ["3", "5", "7", "15"],
  correctAnswer: "B",
  studentAnswer: "C",
  officialRationale: "Subtract 7 from both sides to get 3x = 15, then divide by 3 to get x = 5.",
  studentExplanation: "I thought I needed to divide 22 by 3 first to get about 7, so I picked C.",
  topic: "algebra",
  skill: "linear_equations_one_var",
  difficulty: "E",
};

const explainerB = {
  questionId: "aaa00002",
  stem: "For the function f(x) = 2x² - 3x + 1, what is f(2)?",
  options: ["3", "5", "9", "11"],
  correctAnswer: "A",
  studentAnswer: "D",
  officialRationale: "Substitute x = 2: f(2) = 2(4) - 3(2) + 1 = 8 - 6 + 1 = 3.",
  studentExplanation: "I thought f(2) meant you multiply f by 2 so I took the whole expression and multiplied every coefficient by 2, giving me 4x² - 6x + 2. Then I put x=2... actually I'm not sure, I got 11.",
  topic: "advanced_math",
  skill: "nonlinear_functions",
  difficulty: "M",
};

const explainerC = {
  questionId: "aaa00003",
  stem: "A researcher surveyed 200 students at one high school and found that 40% preferred pizza over burgers. Which statement is most strongly supported by the data?",
  options: [
    "40% of students at that high school prefer pizza over burgers.",
    "40% of all U.S. high school students prefer pizza over burgers.",
    "Pizza is more popular than burgers nationwide.",
    "The researcher's sample was biased.",
  ],
  correctAnswer: "A",
  studentAnswer: "B",
  officialRationale: "The data only supports conclusions about the sampled population — students at that one high school. It cannot be generalized to all U.S. students.",
  studentExplanation: "I read it quickly and thought they surveyed a national sample, so B seemed right.",
  topic: "information_ideas",
  skill: "inferences",
  difficulty: "M",
};

// ─── RUN ────────────────────────────────────────────────────────────────
await (async () => {
  // Coach
  print("COACH A · 3-in-a-row wrong on Algebra", await callOpenAI({
    system: COACH_SYSTEM, user: buildCoachUserPrompt(coachA), temperature: 0.2, maxTokens: 700,
  }));
  print("COACH B · 50 min session, time doubling", await callOpenAI({
    system: COACH_SYSTEM, user: buildCoachUserPrompt(coachB), temperature: 0.2, maxTokens: 700,
  }));
  print("COACH C · close but not quite, improving", await callOpenAI({
    system: COACH_SYSTEM, user: buildCoachUserPrompt(coachC), temperature: 0.2, maxTokens: 700,
  }));

  // Explainer
  print("EXPLAINER A · procedural error (divide first)", await callOpenAI({
    system: EXPLAINER_SYSTEM, user: buildExplainerUserPrompt(explainerA), temperature: 0.3, maxTokens: 800,
  }));
  print("EXPLAINER B · conceptual gap (function notation)", await callOpenAI({
    system: EXPLAINER_SYSTEM, user: buildExplainerUserPrompt(explainerB), temperature: 0.3, maxTokens: 800,
  }));
  print("EXPLAINER C · misread question (scope of sample)", await callOpenAI({
    system: EXPLAINER_SYSTEM, user: buildExplainerUserPrompt(explainerC), temperature: 0.3, maxTokens: 800,
  }));
})();
