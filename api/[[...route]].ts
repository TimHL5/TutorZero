import { createRequire as __createRequire } from 'module'; const require = __createRequire(import.meta.url);

// api/[[...route]].ts
import { handle } from "hono/vercel";

// src/worker/index.ts
import { Hono } from "hono";
import { getCookie, setCookie } from "hono/cookie";
import { stream } from "hono/streaming";
import Stripe from "stripe";

// src/worker/supabase.ts
import { createClient } from "@supabase/supabase-js";
var supabaseAdmin = null;
function getSupabaseAdmin() {
  if (supabaseAdmin) return supabaseAdmin;
  const url = process.env.SUPABASE_URL;
  const key = process.env.SUPABASE_SERVICE_ROLE_KEY;
  if (!url || !key) {
    throw new Error("Missing SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY environment variables");
  }
  supabaseAdmin = createClient(url, key, {
    auth: { persistSession: false, autoRefreshToken: false }
  });
  return supabaseAdmin;
}

// src/worker/openai.ts
async function fetchOpenAI(apiKey, body, timeoutMs = 25e3) {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);
  try {
    const response = await fetch("https://api.openai.com/v1/chat/completions", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Authorization": `Bearer ${apiKey}`
      },
      body: JSON.stringify(body),
      signal: controller.signal
    });
    clearTimeout(timer);
    if (!response.ok) {
      const errorText = await response.text().catch(() => "Unknown error");
      console.error("OpenAI API error:", response.status, errorText);
      return { error: `OpenAI returned ${response.status}`, status: response.status };
    }
    const data = await response.json();
    return { data, status: 200 };
  } catch (err) {
    clearTimeout(timer);
    if (err instanceof DOMException && err.name === "AbortError") {
      console.error("OpenAI request timed out");
      return { error: "AI request timed out. Please try again.", status: 504 };
    }
    console.error("OpenAI fetch failed:", err);
    return { error: "Failed to reach AI service. Please try again.", status: 502 };
  }
}
async function fetchOpenAIStream(apiKey, body, timeoutMs = 6e4) {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);
  let response;
  try {
    response = await fetch("https://api.openai.com/v1/chat/completions", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Authorization": `Bearer ${apiKey}`
      },
      body: JSON.stringify({ ...body, stream: true }),
      signal: controller.signal
    });
  } catch (err) {
    clearTimeout(timer);
    if (err instanceof DOMException && err.name === "AbortError") {
      return { error: "AI request timed out. Please try again.", status: 504 };
    }
    console.error("OpenAI stream fetch failed:", err);
    return { error: "Failed to reach AI service. Please try again.", status: 502 };
  }
  if (!response.ok || !response.body) {
    clearTimeout(timer);
    const errorText = await response.text().catch(() => "Unknown error");
    console.error("OpenAI stream API error:", response.status, errorText);
    return { error: `OpenAI returned ${response.status}`, status: response.status };
  }
  const body$ = response.body;
  async function* iterate() {
    const reader = body$.getReader();
    const decoder = new TextDecoder();
    let buffer = "";
    try {
      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        buffer += decoder.decode(value, { stream: true });
        let newlineIdx;
        while ((newlineIdx = buffer.indexOf("\n")) !== -1) {
          const line = buffer.slice(0, newlineIdx).trim();
          buffer = buffer.slice(newlineIdx + 1);
          if (!line.startsWith("data:")) continue;
          const payload = line.slice(5).trim();
          if (payload === "[DONE]") return;
          try {
            const json = JSON.parse(payload);
            const delta = json.choices?.[0]?.delta?.content;
            if (delta) yield delta;
          } catch {
          }
        }
      }
    } finally {
      clearTimeout(timer);
      try {
        reader.releaseLock();
      } catch {
      }
    }
  }
  return { stream: iterate(), status: 200 };
}

// src/worker/agents/types.ts
var AgentError = class extends Error {
  constructor(message, stage, cause) {
    super(message);
    this.stage = stage;
    this.cause = cause;
    this.name = "AgentError";
  }
};

// src/worker/agents/runner.ts
async function logAgentCall(supabase, row) {
  const { data, error } = await supabase.from("ai_agent_calls").insert(row).select("id").single();
  if (error) {
    console.error("[runAgent] Failed to log to ai_agent_calls:", error.message);
    return null;
  }
  return data?.id ?? null;
}
function resolveSystemPrompt(agent) {
  if (agent.loadSystemPrompt) return agent.loadSystemPrompt();
  if (agent.systemPrompt) return agent.systemPrompt;
  throw new AgentError(
    `Agent "${agent.name}" has neither systemPrompt nor loadSystemPrompt`,
    "parse"
  );
}
function renderExtraContext(extra) {
  if (!extra || Object.keys(extra).length === 0) return "";
  const lines = Object.entries(extra).filter(([, v]) => v !== void 0 && v !== null).map(([k, v]) => `- ${k}: ${typeof v === "string" ? v : JSON.stringify(v)}`);
  if (lines.length === 0) return "";
  return `Student context:
${lines.join("\n")}

`;
}
async function runAgent(agent, input, context, apiKey, supabase) {
  const model = agent.model || process.env.OPENAI_MODEL || "gpt-4o-mini";
  const systemPrompt = resolveSystemPrompt(agent);
  const userPrompt = renderExtraContext(context.extraContext) + agent.buildUserPrompt(input);
  const body = {
    model,
    messages: [
      { role: "system", content: systemPrompt },
      { role: "user", content: userPrompt }
    ]
  };
  if (agent.responseFormat === "json_object") {
    body.response_format = { type: "json_object" };
  }
  if (typeof agent.temperature === "number") body.temperature = agent.temperature;
  if (typeof agent.maxTokens === "number") body.max_tokens = agent.maxTokens;
  const startedAt = Date.now();
  const result = await fetchOpenAI(apiKey, body);
  const latencyMs = Date.now() - startedAt;
  if (result.error || !result.data) {
    await logAgentCall(supabase, {
      user_id: context.userId ?? null,
      session_id: context.sessionId ?? null,
      agent: agent.name,
      input_json: input,
      output_json: null,
      model,
      prompt_tokens: null,
      completion_tokens: null,
      latency_ms: latencyMs,
      error: result.error ?? `OpenAI returned ${result.status}`
    });
    throw new AgentError(result.error ?? "OpenAI request failed", "openai");
  }
  const raw = result.data.choices?.[0]?.message?.content ?? "";
  const promptTokens = result.data.usage?.prompt_tokens ?? 0;
  const completionTokens = result.data.usage?.completion_tokens ?? 0;
  let parsed;
  try {
    parsed = agent.parseOutput(raw);
  } catch (err) {
    const message = err instanceof Error ? err.message : "Failed to parse agent output";
    await logAgentCall(supabase, {
      user_id: context.userId ?? null,
      session_id: context.sessionId ?? null,
      agent: agent.name,
      input_json: input,
      output_json: raw,
      model,
      prompt_tokens: promptTokens,
      completion_tokens: completionTokens,
      latency_ms: latencyMs,
      error: message
    });
    throw new AgentError(message, "parse", err);
  }
  const agentCallId = await logAgentCall(supabase, {
    user_id: context.userId ?? null,
    session_id: context.sessionId ?? null,
    agent: agent.name,
    input_json: input,
    output_json: parsed,
    model,
    prompt_tokens: promptTokens,
    completion_tokens: completionTokens,
    latency_ms: latencyMs,
    error: null
  });
  return {
    output: parsed,
    model,
    promptTokens,
    completionTokens,
    latencyMs,
    agentCallId
  };
}

// src/worker/agents/prompts/loader.ts
import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
var __filename = fileURLToPath(import.meta.url);
var __dirname = path.dirname(__filename);
var cache = /* @__PURE__ */ new Map();
function readFileCached(absPath) {
  if (cache.has(absPath)) return cache.get(absPath);
  try {
    const contents = fs.readFileSync(absPath, "utf8");
    cache.set(absPath, contents);
    return contents;
  } catch {
    return null;
  }
}
function loadPrompt(name) {
  const base = readFileCached(path.join(__dirname, `${name}.md`));
  if (base == null) {
    throw new Error(`[loadPrompt] prompt not found: ${name}.md`);
  }
  const fewShot = readFileCached(path.join(__dirname, "_shared", `few_shot_${name}.md`));
  return fewShot ? `${base.trim()}

${fewShot.trim()}
` : base;
}

// src/worker/agents/echo.ts
var echoAgent = {
  name: "echo",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0,
  maxTokens: 200,
  loadSystemPrompt: () => loadPrompt("echo"),
  buildUserPrompt: (input) => `Message: ${input.message}`,
  parseOutput: (raw) => {
    const parsed = JSON.parse(raw);
    if (typeof parsed?.echo !== "string" || typeof parsed?.wordCount !== "number") {
      throw new Error("Invalid echo output");
    }
    return { echo: parsed.echo, wordCount: parsed.wordCount };
  }
};

// src/worker/agents/diagnostician.ts
function buildSkillTable(input) {
  const buckets = /* @__PURE__ */ new Map();
  for (const a of input.attempts) {
    const key = `${a.domain}::${a.skill}`;
    const b = buckets.get(key) ?? { domain: a.domain, skill: a.skill, attempts: [] };
    b.attempts.push(a);
    buckets.set(key, b);
  }
  const lines = [];
  for (const { domain, skill, attempts } of buckets.values()) {
    const n = attempts.length;
    const correct = attempts.filter((a) => a.isCorrect).length;
    const avgMs = Math.round(attempts.reduce((s, a) => s + a.timeSpent, 0) / n);
    const confidentCorrect = attempts.filter((a) => a.confidence === "confident" && a.isCorrect).length;
    const confidentWrong = attempts.filter((a) => a.confidence === "confident" && !a.isCorrect).length;
    const guessingCorrect = attempts.filter((a) => a.confidence === "guessing" && a.isCorrect).length;
    const guessingWrong = attempts.filter((a) => a.confidence === "guessing" && !a.isCorrect).length;
    const diffMix = attempts.reduce(
      (acc, a) => ({ ...acc, [a.difficulty]: (acc[a.difficulty] ?? 0) + 1 }),
      { E: 0, M: 0, H: 0 }
    );
    const ids = attempts.map((a) => a.questionId).join(",");
    lines.push(
      `- domain="${domain}" skill="${skill}" attempts=${n} correct=${correct}/${n} avgMs=${avgMs} diff(E/M/H)=${diffMix.E}/${diffMix.M}/${diffMix.H} confRight=${confidentCorrect} confWrong=${confidentWrong} guessRight=${guessingCorrect} guessWrong=${guessingWrong} questionIds=[${ids}]`
    );
  }
  return lines.join("\n");
}
function isWeakness(v) {
  if (typeof v !== "object" || v === null) return false;
  const o = v;
  return typeof o.skill === "string" && typeof o.skill_display === "string" && (o.severity === "high" || o.severity === "medium" || o.severity === "low") && typeof o.evidence === "string" && (o.confidence_miscalibration === "none" || o.confidence_miscalibration === "overconfident" || o.confidence_miscalibration === "underconfident") && Array.isArray(o.sample_question_ids) && o.sample_question_ids.every((s) => typeof s === "string");
}
function isStrength(v) {
  if (typeof v !== "object" || v === null) return false;
  const o = v;
  return typeof o.skill === "string" && typeof o.skill_display === "string" && typeof o.evidence === "string";
}
var diagnosticianAgent = {
  name: "diagnostician",
  model: process.env.OPENAI_MODEL_STRONG || "gpt-4o",
  responseFormat: "json_object",
  temperature: 0.2,
  maxTokens: 2e3,
  loadSystemPrompt: () => loadPrompt("diagnostician"),
  buildUserPrompt: (input) => {
    const testDateLine = input.testDate ? `
Student's SAT test date: ${input.testDate}` : "";
    return `Here is the student's 20-question diagnostic, aggregated by skill:${testDateLine}

${buildSkillTable(input)}

Rank the 3\u20135 most important weaknesses, list 2\u20133 strengths, estimate per-section SAT scores (200\u2013800), compute calibration_score (0\u2013100), choose top_focus (a weakness skill slug), and write a 2\u20133 sentence plain-language summary.

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
    const parsed = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Diagnostician returned non-object JSON");
    }
    const o = parsed;
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
      summary: o.summary
    };
  }
};

// src/worker/agents/coach.ts
function summarizeAttempts(input) {
  const lines = [];
  const recent = input.recentAttempts;
  const minutesInSession = Math.round(input.sessionDuration / 6e4);
  const avgMs = recent.length ? Math.round(recent.reduce((s, a) => s + a.timeSpent, 0) / recent.length) : 0;
  const recentWrong = recent.filter((a) => !a.isCorrect).length;
  const currentSkillName = input.currentQuestion.skillDisplay ?? input.currentQuestion.skill;
  const currentTopicName = input.currentQuestion.topicDisplay ?? input.currentQuestion.topic;
  lines.push(
    `Session: ${minutesInSession} min, ${input.totalAttempts} questions total.` + (input.sessionAccuracy != null ? ` Session accuracy: ${input.sessionAccuracy}%.` : "")
  );
  lines.push(
    `Last ${recent.length} attempts: ${recentWrong} wrong, avg ${Math.round(avgMs / 1e3)}s/question.`
  );
  lines.push(
    `Current question: topic="${currentTopicName}" skill="${currentSkillName}" (slug=${input.currentQuestion.skill}) difficulty="${input.currentQuestion.difficulty}".` + (input.skillAccuracy != null ? ` Accuracy on this skill so far: ${input.skillAccuracy}%.` : "")
  );
  lines.push("Attempt-by-attempt (most recent last):");
  recent.forEach((a, i) => {
    const skillName = a.skillDisplay ?? a.skill;
    lines.push(
      `  ${i + 1}. topic=${a.topic} skill="${skillName}" diff=${a.difficulty} ${a.isCorrect ? "CORRECT" : "WRONG"} conf=${a.confidence} time=${Math.round(a.timeSpent / 1e3)}s`
    );
  });
  return lines.join("\n");
}
function isAction(v) {
  if (typeof v !== "object" || v === null) return false;
  const o = v;
  return typeof o.label === "string" && o.label.length > 0 && typeof o.action === "string" && o.action.length > 0;
}
var INTERVENTIONS = [
  "offer_easier",
  "switch_topic",
  "take_break",
  "keep_pushing",
  "review_concept"
];
var coachAgent = {
  name: "coach",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.2,
  maxTokens: 700,
  loadSystemPrompt: () => loadPrompt("coach"),
  buildUserPrompt: (input) => {
    const ctx = input.studentContext;
    const ctxLines = [];
    if (ctx) {
      if (ctx.displayName) ctxLines.push(`displayName=${ctx.displayName}`);
      if (ctx.targetScore != null) ctxLines.push(`targetScore=${ctx.targetScore}`);
      if (ctx.currentPredictedScore != null) ctxLines.push(`currentPredictedScore=${ctx.currentPredictedScore}`);
      if (ctx.testDate) ctxLines.push(`testDate=${ctx.testDate}`);
      if (ctx.daysUntilTest != null) ctxLines.push(`daysUntilTest=${ctx.daysUntilTest}`);
      if (ctx.streakDays != null) ctxLines.push(`streakDays=${ctx.streakDays}`);
    }
    const studentBlock = ctxLines.length > 0 ? `STUDENT
${ctxLines.join("\n")}

` : "";
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
    const parsed = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Coach returned non-object JSON");
    }
    const o = parsed;
    if (typeof o.intervention !== "string" || !INTERVENTIONS.includes(o.intervention)) {
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
      intervention: o.intervention,
      message: o.message,
      primary_action: o.primary_action,
      secondary_action: o.secondary_action
    };
  }
};

// src/worker/agents/explainer.ts
var MISCONCEPTION_TYPES = [
  "procedural_error",
  "conceptual_gap",
  "misread_question",
  "careless_error",
  "vocabulary_gap",
  "other"
];
var explainerAgent = {
  name: "explainer",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.3,
  maxTokens: 800,
  loadSystemPrompt: () => loadPrompt("explainer"),
  buildUserPrompt: (input) => {
    const passageBlock = input.passage ? `
PASSAGE / STIMULUS:
${input.passage}
` : "";
    const optionsBlock = input.options.map((opt, i) => `${String.fromCharCode(65 + i)}. ${opt}`).join("\n");
    return `QUESTION (id=${input.questionId}) \xB7 topic=${input.topic} \xB7 skill=${input.skill} \xB7 difficulty=${input.difficulty}:
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
    const parsed = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Explainer returned non-object JSON");
    }
    const o = parsed;
    if (typeof o.response !== "string" || o.response.length === 0) {
      throw new Error("response must be a non-empty string");
    }
    if (typeof o.misconception_type !== "string" || !MISCONCEPTION_TYPES.includes(o.misconception_type)) {
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
      misconception_type: o.misconception_type,
      specific_fix: o.specific_fix,
      follow_up_practice: o.follow_up_practice
    };
  }
};

// src/worker/agents/concept.ts
var conceptAgent = {
  name: "concept",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.3,
  maxTokens: 700,
  loadSystemPrompt: () => loadPrompt("concept"),
  buildUserPrompt: (input) => {
    const passageBlock = input.passage ? `
PASSAGE:
${input.passage}
` : "";
    const optsBlock = input.options.map((o, i) => `${String.fromCharCode(65 + i)}. ${o}`).join("\n");
    const studentLine = input.studentAnswer ? `
Student picked: ${input.studentAnswer} (correct was ${input.correctAnswer}).` : `
Correct answer: ${input.correctAnswer}.`;
    const rationaleBlock = input.officialRationale ? `
Official rationale (for context \u2014 don't quote verbatim):
${input.officialRationale}
` : "";
    return `QUESTION (id=${input.questionId}) \xB7 topic=${input.topic} \xB7 skill=${input.skill} \xB7 difficulty=${input.difficulty}:
${input.stem}
${passageBlock}
OPTIONS:
${optsBlock}
${studentLine}
${rationaleBlock}
Explain the concept. Return JSON:
{
  "overview": "<1-2 sentences>",
  "key_idea": "<one sentence>",
  "when_it_applies": "<1-2 sentences>",
  "common_pitfall": "<1-2 sentences, personalized to the student's wrong choice if present>"
}`;
  },
  parseOutput: (raw) => {
    const parsed = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Concept returned non-object JSON");
    }
    const o = parsed;
    const fields = ["overview", "key_idea", "when_it_applies", "common_pitfall"];
    for (const f of fields) {
      if (typeof o[f] !== "string" || o[f].length === 0) {
        throw new Error(`${f} must be a non-empty string`);
      }
    }
    return {
      overview: o.overview,
      key_idea: o.key_idea,
      when_it_applies: o.when_it_applies,
      common_pitfall: o.common_pitfall
    };
  }
};

// src/worker/agents/next_practice.ts
var DIFFICULTIES = ["easy", "medium", "hard"];
var nextPracticeAgent = {
  name: "next_practice",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.2,
  maxTokens: 500,
  loadSystemPrompt: () => loadPrompt("next_practice"),
  buildUserPrompt: (input) => {
    const recentLines = input.recentAttempts.map((a, i) => `  ${i + 1}. topic=${a.topic} skill=${a.skill} diff=${a.difficulty} ${a.isCorrect ? "CORRECT" : "WRONG"}`).join("\n");
    return `Student just answered question ${input.questionId}:
  topic=${input.topic} skill=${input.skill} difficulty=${input.difficulty} \u2192 ${input.isCorrect ? "CORRECT" : "WRONG"}

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
    const parsed = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("NextPractice returned non-object JSON");
    }
    const o = parsed;
    if (typeof o.next_skill !== "string" || o.next_skill.length === 0) {
      throw new Error("next_skill must be a non-empty string");
    }
    if (typeof o.next_difficulty !== "string" || !DIFFICULTIES.includes(o.next_difficulty)) {
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
      next_difficulty: o.next_difficulty,
      why: o.why,
      warmup_idea: o.warmup_idea
    };
  }
};

// src/worker/agents/reviewer.ts
var VALID_SEVERITIES = /* @__PURE__ */ new Set(["high", "medium", "low"]);
var VALID_TYPES = /* @__PURE__ */ new Set([
  "pacing",
  "calibration",
  "topic_weakness",
  "improvement",
  "misconception"
]);
function clamp(value, min, max) {
  if (Number.isNaN(value)) return min;
  return Math.max(min, Math.min(max, value));
}
function buildAttemptDigest(attempts) {
  if (attempts.length === 0) return "(no attempts)";
  const buckets = /* @__PURE__ */ new Map();
  for (const a of attempts) {
    const key = `${a.topic}::${a.skill}`;
    const b = buckets.get(key) ?? { topic: a.topic, skill: a.skill, attempts: [] };
    b.attempts.push(a);
    buckets.set(key, b);
  }
  const lines = [];
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
      `- topic="${topic}" skill="${skill}" attempts=${n} correct=${correct}/${n} avgMs=${avgMs} confRight=${confRight} confWrong=${confWrong} guessRight=${guessRight} guessWrong=${guessWrong} questionIds=[${ids}]`
    );
  }
  const trend = attempts.map((a, i) => `Q${i + 1}:${a.questionId}=${Math.round(a.timeSpent / 1e3)}s${a.isCorrect ? "\u2713" : "\u2717"}`).join(" ");
  lines.push(`Timing trend (Q-by-Q): ${trend}`);
  return lines.join("\n");
}
function isPattern(v) {
  if (typeof v !== "object" || v === null) return false;
  const o = v;
  return typeof o.pattern === "string" && typeof o.evidence === "string" && typeof o.severity === "string" && VALID_SEVERITIES.has(o.severity) && typeof o.type === "string" && VALID_TYPES.has(o.type);
}
function isNextFocus(v) {
  if (typeof v !== "object" || v === null) return false;
  const o = v;
  return typeof o.topic === "string" && typeof o.skill === "string" && typeof o.reason === "string";
}
var reviewerAgent = {
  name: "reviewer",
  model: process.env.OPENAI_MODEL_STRONG || "gpt-4o",
  responseFormat: "json_object",
  temperature: 0.3,
  maxTokens: 1500,
  loadSystemPrompt: () => loadPrompt("reviewer"),
  buildUserPrompt: (input) => {
    const { session, attempts, previousScores, previousWeaknesses, studentContext } = input;
    const accuracy = session.totalAttempts > 0 ? Math.round(session.correctCount / session.totalAttempts * 100) : 0;
    const weaknessLine = previousWeaknesses && previousWeaknesses.length > 0 ? `
Previously flagged weak skills: ${previousWeaknesses.join(", ")}` : "";
    const ctxLines = [];
    if (studentContext) {
      if (studentContext.displayName) ctxLines.push(`displayName=${studentContext.displayName}`);
      if (studentContext.targetScore != null) ctxLines.push(`targetScore=${studentContext.targetScore}`);
      if (studentContext.testDate) ctxLines.push(`testDate=${studentContext.testDate}`);
      if (studentContext.daysUntilTest != null) ctxLines.push(`daysUntilTest=${studentContext.daysUntilTest}`);
      if (studentContext.streakDays != null) ctxLines.push(`streakDays=${studentContext.streakDays}`);
      if (studentContext.sessionsThisWeek != null) ctxLines.push(`sessionsThisWeek=${studentContext.sessionsThisWeek}`);
    }
    const ctxBlock = ctxLines.length > 0 ? `STUDENT CONTEXT
${ctxLines.join("\n")}

` : "";
    return `${ctxBlock}SESSION META
type=${session.sessionType} topic=${session.topic ?? "mixed"} startedAt=${session.startedAt} endedAt=${session.endedAt}
attempts=${session.totalAttempts} correct=${session.correctCount} accuracy=${accuracy}%

PREVIOUS SCORES
math=${previousScores.math} rw=${previousScores.rw} calibration=${previousScores.calibration}${weaknessLine}

ATTEMPT DIGEST
${buildAttemptDigest(attempts)}

TASK
1. Pick 2-3 specific positive things to highlight (e.g. "first 5 algebra questions all correct, average 47s \u2014 confident pace").
2. Detect 1-4 patterns. Each must have concrete evidence (cite question IDs or timing). Do not invent patterns when the data is thin.
3. Update scores per the rules. Compute deltas first, then new totals. Cap each delta at \xB120. Floor 200, cap 800.
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
    const parsed = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Reviewer returned non-object JSON");
    }
    const o = parsed;
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
      summary: o.summary
    };
  }
};

// src/worker/agents/planner.ts
var DAYS_IN_ORDER = [
  "monday",
  "tuesday",
  "wednesday",
  "thursday",
  "friday",
  "saturday",
  "sunday"
];
var VALID_DAYS = new Set(DAYS_IN_ORDER);
var VALID_SESSION_TYPES = /* @__PURE__ */ new Set([
  "drill",
  "review",
  "mixed",
  "timed_test"
]);
var PER_DAY_CAP_MIN = 120;
function isSession(v) {
  if (typeof v !== "object" || v === null) return false;
  const o = v;
  return typeof o.id === "string" && typeof o.durationMin === "number" && o.durationMin > 0 && typeof o.focusSkill === "string" && typeof o.focusSkillDisplay === "string" && typeof o.sessionType === "string" && VALID_SESSION_TYPES.has(o.sessionType) && typeof o.rationale === "string";
}
function isDay(v) {
  if (typeof v !== "object" || v === null) return false;
  const o = v;
  return typeof o.day === "string" && VALID_DAYS.has(o.day) && typeof o.date === "string" && Array.isArray(o.sessions) && o.sessions.every(isSession);
}
function isCoverage(v) {
  if (typeof v !== "object" || v === null || Array.isArray(v)) return false;
  return Object.values(v).every((n) => typeof n === "number");
}
var plannerAgent = {
  name: "planner",
  model: "gpt-4o-mini",
  responseFormat: "json_object",
  temperature: 0.4,
  maxTokens: 2500,
  loadSystemPrompt: () => loadPrompt("planner"),
  buildUserPrompt: (input) => {
    const { weakSkills, testDate, hoursPerWeek, weekStartDate, previousPlanEdits } = input;
    const verifiedTag = (w) => w.verified ? " (verified)" : " (unverified)";
    const skillsLine = weakSkills.length === 0 ? "(none flagged \u2014 choose a balanced mix across math + reading/writing)" : weakSkills.map((w) => `- ${w.skill} [${w.severity}]${verifiedTag(w)}`).join("\n");
    const editsBlock = previousPlanEdits && previousPlanEdits.length > 0 ? `
PREVIOUS USER EDITS (last week's plan)
${previousPlanEdits.map((e) => `- "${e.originalSuggestion}" \u2192 "${e.userEdit}"`).join("\n")}
Bias this week's distribution toward what the student kept after editing.
` : "";
    return `STUDENT CONTEXT
weekStartDate=${weekStartDate} (a Monday ISO date)
testDate=${testDate}
hoursPerWeek=${hoursPerWeek}
totalMinuteBudget=${hoursPerWeek * 60}

WEAK SKILLS
${skillsLine}
${editsBlock}
TASK
Produce a 7-day plan (Monday \u2192 Sunday). Each day has 0-N sessions. Each session has a duration in minutes, a focus skill (slug), a display name, a session type, and a 1-sentence rationale that mentions WHY this session today (e.g. "spaced from Monday's algebra drill").

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
  "weekGoal": "<one sentence \u2014 the headline goal for the week>"
}`;
  },
  parseOutput: (raw) => {
    const parsed = JSON.parse(raw);
    if (typeof parsed !== "object" || parsed === null) {
      throw new Error("Planner returned non-object JSON");
    }
    const o = parsed;
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
    for (const day of o.week) {
      const total = day.sessions.reduce((s, sess) => s + sess.durationMin, 0);
      if (total > PER_DAY_CAP_MIN) {
        throw new Error(`day ${day.day} exceeds 120 min cap (${total} min)`);
      }
    }
    let totalMinutes = 0;
    const recomputedCoverage = {};
    for (const day of o.week) {
      for (const sess of day.sessions) {
        totalMinutes += sess.durationMin;
        recomputedCoverage[sess.focusSkill] = (recomputedCoverage[sess.focusSkill] ?? 0) + sess.durationMin;
      }
    }
    return {
      week: o.week,
      totalHoursAllocated: Math.round(totalMinutes / 60 * 10) / 10,
      coverage: recomputedCoverage,
      weekGoal: o.weekGoal
    };
  }
};

// src/react-app/lib/sat-taxonomy.ts
var DOMAIN_TO_SLUG = {
  // R&W (test_type=1)
  "Information and Ideas": "information_ideas",
  "Craft and Structure": "craft_structure",
  "Expression of Ideas": "expression",
  "Standard English Conventions": "conventions",
  // Math (test_type=2)
  "Algebra": "algebra",
  "Advanced Math": "advanced_math",
  "Problem-Solving and Data Analysis": "problem_solving",
  "Geometry and Trigonometry": "geometry"
};
var SLUG_TO_DOMAIN = Object.fromEntries(
  Object.entries(DOMAIN_TO_SLUG).map(([k, v]) => [v, k])
);
var SKILL_TO_SLUG = {
  // R&W — Craft and Structure
  "Cross-Text Connections": "cross_text_connections",
  "Text Structure and Purpose": "text_structure_purpose",
  "Words in Context": "words_in_context",
  // R&W — Expression of Ideas
  "Rhetorical Synthesis": "rhetorical_synthesis",
  "Transitions": "transitions",
  // R&W — Information and Ideas
  "Central Ideas and Details": "central_ideas_details",
  "Command of Evidence": "command_of_evidence",
  "Inferences": "inferences",
  // R&W — Standard English Conventions
  "Boundaries": "boundaries",
  "Form, Structure, and Sense": "form_structure_sense",
  // Math — Algebra
  "Linear equations in one variable": "linear_equations_one_var",
  "Linear functions": "linear_functions",
  "Linear equations in two variables": "linear_equations_two_var",
  "Systems of two linear equations in two variables": "systems_of_linear_equations",
  "Linear inequalities in one or two variables": "linear_inequalities",
  // Math — Advanced Math
  "Equivalent expressions": "equivalent_expressions",
  "Nonlinear equations in one variable and systems of equations in two variables ": "nonlinear_equations",
  "Nonlinear functions": "nonlinear_functions",
  // Math — Geometry and Trigonometry
  "Area and volume": "area_and_volume",
  "Lines, angles, and triangles": "lines_angles_triangles",
  "Right triangles and trigonometry": "right_triangles_trigonometry",
  "Circles": "circles",
  // Math — Problem-Solving and Data Analysis
  "Ratios, rates, proportional relationships, and units": "ratios_rates_proportions",
  "Percentages": "percentages",
  "One-variable data: Distributions and measures of center and spread": "one_variable_data",
  "Two-variable data: Models and scatterplots": "two_variable_data",
  "Probability and conditional probability": "probability",
  "Inference from sample statistics and margin of error ": "inference_statistics",
  "Evaluating statistical claims: Observational studies and experiments ": "evaluating_statistical_claims"
};
var SLUG_TO_SKILL = Object.fromEntries(
  Object.entries(SKILL_TO_SLUG).map(([k, v]) => [v, k.trim()])
);
var DISPLAY_NAMES = {
  // Section shortcuts a few UI strings rely on
  math: "Math",
  reading: "Reading",
  writing: "Writing",
  // Domains (8)
  information_ideas: "Information and Ideas",
  craft_structure: "Craft and Structure",
  expression: "Expression of Ideas",
  conventions: "Standard English Conventions",
  algebra: "Algebra",
  advanced_math: "Advanced Math",
  problem_solving: "Problem-Solving and Data Analysis",
  geometry: "Geometry and Trigonometry",
  // Skills — R&W (10)
  cross_text_connections: "Cross-Text Connections",
  text_structure_purpose: "Text Structure and Purpose",
  words_in_context: "Words in Context",
  rhetorical_synthesis: "Rhetorical Synthesis",
  transitions: "Transitions",
  central_ideas_details: "Central Ideas and Details",
  command_of_evidence: "Command of Evidence",
  inferences: "Inferences",
  boundaries: "Boundaries",
  form_structure_sense: "Form, Structure, and Sense",
  // Skills — Math (19)
  linear_equations_one_var: "Linear equations in one variable",
  linear_functions: "Linear functions",
  linear_equations_two_var: "Linear equations in two variables",
  systems_of_linear_equations: "Systems of two linear equations",
  linear_inequalities: "Linear inequalities",
  equivalent_expressions: "Equivalent expressions",
  nonlinear_equations: "Nonlinear equations and systems",
  nonlinear_functions: "Nonlinear functions",
  area_and_volume: "Area and volume",
  lines_angles_triangles: "Lines, angles, and triangles",
  right_triangles_trigonometry: "Right triangles and trigonometry",
  circles: "Circles",
  ratios_rates_proportions: "Ratios, rates, and proportions",
  percentages: "Percentages",
  one_variable_data: "One-variable data",
  two_variable_data: "Two-variable data",
  probability: "Probability",
  inference_statistics: "Inference from sample statistics",
  evaluating_statistical_claims: "Evaluating statistical claims"
};
var SKILLS_BY_DOMAIN = {
  algebra: [
    { slug: "linear_equations_one_var", skillCode: "H.A.", displayName: DISPLAY_NAMES.linear_equations_one_var, domainSlug: "algebra" },
    { slug: "linear_functions", skillCode: "H.B.", displayName: DISPLAY_NAMES.linear_functions, domainSlug: "algebra" },
    { slug: "linear_equations_two_var", skillCode: "H.C.", displayName: DISPLAY_NAMES.linear_equations_two_var, domainSlug: "algebra" },
    { slug: "systems_of_linear_equations", skillCode: "H.D.", displayName: DISPLAY_NAMES.systems_of_linear_equations, domainSlug: "algebra" },
    { slug: "linear_inequalities", skillCode: "H.E.", displayName: DISPLAY_NAMES.linear_inequalities, domainSlug: "algebra" }
  ],
  advanced_math: [
    { slug: "equivalent_expressions", skillCode: "P.A.", displayName: DISPLAY_NAMES.equivalent_expressions, domainSlug: "advanced_math" },
    { slug: "nonlinear_equations", skillCode: "P.B.", displayName: DISPLAY_NAMES.nonlinear_equations, domainSlug: "advanced_math" },
    { slug: "nonlinear_functions", skillCode: "P.C.", displayName: DISPLAY_NAMES.nonlinear_functions, domainSlug: "advanced_math" }
  ],
  problem_solving: [
    { slug: "ratios_rates_proportions", skillCode: "Q.A.", displayName: DISPLAY_NAMES.ratios_rates_proportions, domainSlug: "problem_solving" },
    { slug: "percentages", skillCode: "Q.B.", displayName: DISPLAY_NAMES.percentages, domainSlug: "problem_solving" },
    { slug: "one_variable_data", skillCode: "Q.C.", displayName: DISPLAY_NAMES.one_variable_data, domainSlug: "problem_solving" },
    { slug: "two_variable_data", skillCode: "Q.D.", displayName: DISPLAY_NAMES.two_variable_data, domainSlug: "problem_solving" },
    { slug: "probability", skillCode: "Q.E.", displayName: DISPLAY_NAMES.probability, domainSlug: "problem_solving" },
    { slug: "inference_statistics", skillCode: "Q.F.", displayName: DISPLAY_NAMES.inference_statistics, domainSlug: "problem_solving" },
    { slug: "evaluating_statistical_claims", skillCode: "Q.G.", displayName: DISPLAY_NAMES.evaluating_statistical_claims, domainSlug: "problem_solving" }
  ],
  geometry: [
    { slug: "area_and_volume", skillCode: "S.A.", displayName: DISPLAY_NAMES.area_and_volume, domainSlug: "geometry" },
    { slug: "lines_angles_triangles", skillCode: "S.B.", displayName: DISPLAY_NAMES.lines_angles_triangles, domainSlug: "geometry" },
    { slug: "right_triangles_trigonometry", skillCode: "S.C.", displayName: DISPLAY_NAMES.right_triangles_trigonometry, domainSlug: "geometry" },
    { slug: "circles", skillCode: "S.D.", displayName: DISPLAY_NAMES.circles, domainSlug: "geometry" }
  ],
  information_ideas: [
    { slug: "central_ideas_details", skillCode: "CID", displayName: DISPLAY_NAMES.central_ideas_details, domainSlug: "information_ideas" },
    { slug: "command_of_evidence", skillCode: "COE", displayName: DISPLAY_NAMES.command_of_evidence, domainSlug: "information_ideas" },
    { slug: "inferences", skillCode: "INF", displayName: DISPLAY_NAMES.inferences, domainSlug: "information_ideas" }
  ],
  craft_structure: [
    { slug: "cross_text_connections", skillCode: "CTC", displayName: DISPLAY_NAMES.cross_text_connections, domainSlug: "craft_structure" },
    { slug: "text_structure_purpose", skillCode: "TSP", displayName: DISPLAY_NAMES.text_structure_purpose, domainSlug: "craft_structure" },
    { slug: "words_in_context", skillCode: "WIC", displayName: DISPLAY_NAMES.words_in_context, domainSlug: "craft_structure" }
  ],
  expression: [
    { slug: "rhetorical_synthesis", skillCode: "SYN", displayName: DISPLAY_NAMES.rhetorical_synthesis, domainSlug: "expression" },
    { slug: "transitions", skillCode: "TRA", displayName: DISPLAY_NAMES.transitions, domainSlug: "expression" }
  ],
  conventions: [
    { slug: "boundaries", skillCode: "BOU", displayName: DISPLAY_NAMES.boundaries, domainSlug: "conventions" },
    { slug: "form_structure_sense", skillCode: "FSS", displayName: DISPLAY_NAMES.form_structure_sense, domainSlug: "conventions" }
  ]
};
var DOMAINS_IN_ORDER = [
  { slug: "algebra", displayName: DISPLAY_NAMES.algebra, section: "math" },
  { slug: "advanced_math", displayName: DISPLAY_NAMES.advanced_math, section: "math" },
  { slug: "problem_solving", displayName: DISPLAY_NAMES.problem_solving, section: "math" },
  { slug: "geometry", displayName: DISPLAY_NAMES.geometry, section: "math" },
  { slug: "information_ideas", displayName: DISPLAY_NAMES.information_ideas, section: "reading" },
  { slug: "craft_structure", displayName: DISPLAY_NAMES.craft_structure, section: "reading" },
  { slug: "expression", displayName: DISPLAY_NAMES.expression, section: "writing" },
  { slug: "conventions", displayName: DISPLAY_NAMES.conventions, section: "writing" }
];
var SKILL_SLUG_TO_META = Object.fromEntries(
  Object.values(SKILLS_BY_DOMAIN).flat().map((m) => [m.slug, m])
);

// src/worker/tools/tavily.ts
var TAVILY_URL = "https://api.tavily.com/search";
var TIMEOUT_MS = 1e4;
function unavailable(query, reason) {
  return {
    query,
    answer: `Web search is temporarily unavailable (${reason}).`,
    results: []
  };
}
async function tavilySearch(query, options = {}) {
  const apiKey = process.env.TAVILY_API_KEY;
  if (!apiKey) return unavailable(query, "missing API key");
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), TIMEOUT_MS);
  try {
    const body = {
      api_key: apiKey,
      query,
      search_depth: options.searchDepth ?? "basic",
      max_results: options.maxResults ?? 5,
      include_answer: true
    };
    if (options.includeDomains && options.includeDomains.length > 0) {
      body.include_domains = options.includeDomains;
    }
    const res = await fetch(TAVILY_URL, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body),
      signal: controller.signal
    });
    if (!res.ok) {
      const text = await res.text().catch(() => "");
      console.error("[tavily] non-ok:", res.status, text.slice(0, 200));
      return unavailable(query, `upstream ${res.status}`);
    }
    const data = await res.json();
    const results = (data.results ?? []).map((r) => ({
      title: r.title ?? "",
      url: r.url ?? "",
      content: r.content ?? "",
      score: typeof r.score === "number" ? r.score : 0
    }));
    return {
      query: data.query ?? query,
      answer: data.answer,
      results
    };
  } catch (err) {
    if (err instanceof DOMException && err.name === "AbortError") {
      return unavailable(query, "timed out");
    }
    console.error("[tavily] fetch failed:", err);
    return unavailable(query, "network error");
  } finally {
    clearTimeout(timer);
  }
}

// src/worker/tools/index.ts
function requireUser(ctx) {
  if (!ctx.userId) {
    throw new Error(
      "This tool requires a signed-in student. Ask them to sign in to pull their history."
    );
  }
  return ctx.userId;
}
function asInt(v, field, min, max) {
  const n = typeof v === "number" ? v : Number(v);
  if (!Number.isFinite(n) || n < min || n > max) {
    throw new Error(`${field} must be an integer between ${min} and ${max}`);
  }
  return Math.floor(n);
}
function asString(v, field) {
  if (typeof v !== "string" || v.length === 0) {
    throw new Error(`${field} must be a non-empty string`);
  }
  return v;
}
function intToHexId(n) {
  return n.toString(16).padStart(8, "0");
}
var getStudentProfile = {
  name: "getStudentProfile",
  description: "Get the student's name, predicted SAT scores, target score, test date, and streak. Call this at the start of a conversation if you don't already know the student.",
  parameters: { type: "object", properties: {}, additionalProperties: false },
  validate: () => ({}),
  execute: async (_args, ctx) => {
    const userId = requireUser(ctx);
    const { data, error } = await ctx.supabase.from("user_profiles").select(
      "display_name, estimated_math_score, estimated_rw_score, target_score, test_date, streak_days, has_completed_diagnostic"
    ).eq("user_id", userId).maybeSingle();
    if (error) throw new Error(error.message);
    if (!data) return { profileFound: false };
    return {
      profileFound: true,
      displayName: data.display_name ?? null,
      estimatedMathScore: data.estimated_math_score ?? null,
      estimatedRwScore: data.estimated_rw_score ?? null,
      targetScore: data.target_score ?? null,
      testDate: data.test_date ?? null,
      streakDays: data.streak_days ?? 0,
      hasCompletedDiagnostic: Boolean(data.has_completed_diagnostic)
    };
  }
};
var getRecentSessions = {
  name: "getRecentSessions",
  description: "List the student's most recent practice or diagnostic sessions with accuracy and topics covered. Useful for 'how am I doing?' questions.",
  parameters: {
    type: "object",
    properties: {
      limit: {
        type: "integer",
        minimum: 1,
        maximum: 20,
        description: "How many recent sessions to return (1-20). Default 5."
      }
    },
    additionalProperties: false
  },
  validate: (raw) => {
    const o = raw ?? {};
    return { limit: asInt(o.limit ?? 5, "limit", 1, 20) };
  },
  execute: async ({ limit }, ctx) => {
    const userId = requireUser(ctx);
    const { data, error } = await ctx.supabase.from("user_sessions").select("id, session_type, started_at, completed_at, questions_total, questions_correct, metadata").eq("user_id", userId).order("started_at", { ascending: false }).limit(limit);
    if (error) throw new Error(error.message);
    return (data ?? []).map((r) => {
      let topics = [];
      try {
        const meta = typeof r.metadata === "string" ? JSON.parse(r.metadata) : r.metadata;
        if (meta && Array.isArray(meta.topics)) {
          topics = meta.topics.filter((t) => typeof t === "string");
        }
      } catch {
      }
      const total = r.questions_total ?? 0;
      const correct = r.questions_correct ?? 0;
      return {
        sessionId: r.id,
        sessionType: r.session_type,
        startedAt: r.started_at,
        completedAt: r.completed_at,
        questionsTotal: total,
        questionsCorrect: correct,
        accuracyPct: total > 0 ? Math.round(correct / total * 100) : null,
        topics
      };
    });
  }
};
var getWeakAreas = {
  name: "getWeakAreas",
  description: "Return the student's current weak areas. Prefers their most recent diagnosis; falls back to skill scores if no diagnosis exists.",
  parameters: { type: "object", properties: {}, additionalProperties: false },
  validate: () => ({}),
  execute: async (_args, ctx) => {
    const userId = requireUser(ctx);
    const { data: diagRow } = await ctx.supabase.from("ai_diagnoses").select("weaknesses, top_focus, created_at").eq("user_id", userId).order("created_at", { ascending: false }).limit(1).maybeSingle();
    if (diagRow?.weaknesses && Array.isArray(diagRow.weaknesses) && diagRow.weaknesses.length > 0) {
      return {
        source: "diagnosis",
        generatedAt: diagRow.created_at,
        topFocus: diagRow.top_focus ?? null,
        weaknesses: diagRow.weaknesses
      };
    }
    const { data: skillRows } = await ctx.supabase.rpc("get_user_skill_summary", {
      p_user_id: userId
    });
    if (!skillRows || !Array.isArray(skillRows) || skillRows.length === 0) {
      return { source: "none", weaknesses: [] };
    }
    const weak = skillRows.filter((r) => (r.avg_score ?? 1) < 0.7 && (r.total_attempted ?? 0) >= 3).sort((a, b) => (a.avg_score ?? 0) - (b.avg_score ?? 0)).slice(0, 5).map((r) => ({
      skill: r.topic,
      avgScore: r.avg_score,
      attempts: r.total_attempted
    }));
    return { source: "skill_scores", weaknesses: weak };
  }
};
var getRecentMistakes = {
  name: "getRecentMistakes",
  description: "Return the student's most recent wrong answers with topic, skill, and difficulty. Use this when the student asks about mistakes or says they're struggling.",
  parameters: {
    type: "object",
    properties: {
      limit: {
        type: "integer",
        minimum: 1,
        maximum: 10,
        description: "How many recent mistakes to return (1-10). Default 5."
      }
    },
    additionalProperties: false
  },
  validate: (raw) => {
    const o = raw ?? {};
    return { limit: asInt(o.limit ?? 5, "limit", 1, 10) };
  },
  execute: async ({ limit }, ctx) => {
    const userId = requireUser(ctx);
    const { data: sessionRows } = await ctx.supabase.from("user_sessions").select("id").eq("user_id", userId).order("started_at", { ascending: false }).limit(20);
    const sessionIds = (sessionRows ?? []).map((r) => r.id);
    if (sessionIds.length === 0) return { mistakes: [] };
    const { data: attemptRows, error: attemptErr } = await ctx.supabase.from("attempts").select("question_id, selected_index, time_spent_sec, confidence, created_at, session_id").in("session_id", sessionIds).eq("is_correct", false).order("created_at", { ascending: false }).limit(limit);
    if (attemptErr) throw new Error(attemptErr.message);
    const attempts = attemptRows ?? [];
    if (attempts.length === 0) return { mistakes: [] };
    const hexIds = attempts.map((a) => intToHexId(a.question_id));
    const { data: questionRows } = await ctx.supabase.from("sat_questions").select("question_id, domain, skill_desc, difficulty, stem_html, correct_answer").in("question_id", hexIds);
    const byHex = new Map((questionRows ?? []).map((q) => [q.question_id, q]));
    return {
      mistakes: attempts.map((a) => {
        const hex = intToHexId(a.question_id);
        const q = byHex.get(hex);
        return {
          questionId: hex,
          topic: q?.domain ?? null,
          skill: q?.skill_desc ?? null,
          difficulty: q?.difficulty ?? null,
          stemPreview: q?.stem_html ? stripHtml(q.stem_html).slice(0, 120) : null,
          selectedIndex: a.selected_index,
          correctAnswer: q?.correct_answer?.[0] ?? null,
          timeSpentSec: a.time_spent_sec,
          confidence: a.confidence,
          attemptedAt: a.created_at
        };
      })
    };
  }
};
var getQuestionDetails = {
  name: "getQuestionDetails",
  description: "Fetch the full stem, options, correct answer, and rationale for a specific question. Pass the 8-character hex questionId from a prior tool result.",
  parameters: {
    type: "object",
    properties: {
      questionId: {
        type: "string",
        description: "8-character hex question id, e.g. '002dba45'.",
        pattern: "^[0-9a-fA-F]{8}$"
      }
    },
    required: ["questionId"],
    additionalProperties: false
  },
  validate: (raw) => {
    const o = raw ?? {};
    const id = asString(o.questionId, "questionId");
    if (!/^[0-9a-fA-F]{8}$/.test(id)) {
      throw new Error("questionId must be an 8-character hex string");
    }
    return { questionId: id.toLowerCase() };
  },
  execute: async ({ questionId }, ctx) => {
    const { data, error } = await ctx.supabase.from("sat_questions").select(
      "question_id, domain, skill_desc, difficulty, stimulus_html, stem_html, answer_options, correct_answer, rationale_html"
    ).eq("question_id", questionId).maybeSingle();
    if (error) throw new Error(error.message);
    if (!data) return { found: false, questionId };
    const options = Array.isArray(data.answer_options) ? data.answer_options.map((o) => o?.content ?? "") : [];
    return {
      found: true,
      questionId: data.question_id,
      topic: data.domain,
      skill: data.skill_desc,
      difficulty: data.difficulty,
      passage: data.stimulus_html ? stripHtml(data.stimulus_html) : null,
      stem: data.stem_html ? stripHtml(data.stem_html) : null,
      options,
      correctAnswer: Array.isArray(data.correct_answer) ? data.correct_answer[0] : null,
      rationale: data.rationale_html ? stripHtml(data.rationale_html) : null
    };
  }
};
var getRecentExplainerMisconceptions = {
  name: "getRecentExplainerMisconceptions",
  description: "Return the misconception classifications that the Explainer agent has produced for this student recently. Useful to spot recurring error patterns.",
  parameters: {
    type: "object",
    properties: {
      limit: {
        type: "integer",
        minimum: 1,
        maximum: 10,
        description: "How many recent explainer calls to return (1-10). Default 5."
      }
    },
    additionalProperties: false
  },
  validate: (raw) => {
    const o = raw ?? {};
    return { limit: asInt(o.limit ?? 5, "limit", 1, 10) };
  },
  execute: async ({ limit }, ctx) => {
    const userId = requireUser(ctx);
    const { data, error } = await ctx.supabase.from("ai_agent_calls").select("input_json, output_json, created_at").eq("user_id", userId).eq("agent", "explainer").is("error", null).order("created_at", { ascending: false }).limit(limit);
    if (error) throw new Error(error.message);
    return (data ?? []).map((r) => {
      const input = r.input_json;
      const output = r.output_json;
      return {
        questionId: input?.questionId ?? null,
        topic: input?.topic ?? null,
        skill: input?.skill ?? null,
        misconceptionType: output?.misconception_type ?? null,
        specificFix: output?.specific_fix ?? null,
        followUpPractice: output?.follow_up_practice ?? null,
        at: r.created_at
      };
    });
  }
};
var SEARCH_FOCUS_VALUES = [
  "sat_logistics",
  "study_resources",
  "general_knowledge",
  "news"
];
var FOCUS_DOMAINS = {
  sat_logistics: ["collegeboard.org", "satsuite.collegeboard.org"],
  study_resources: [
    "khanacademy.org",
    "collegeboard.org",
    "satsuite.collegeboard.org"
  ],
  general_knowledge: void 0,
  news: void 0
};
var searchWeb = {
  name: "searchWeb",
  description: "Search the web for current, real-world information. Use for: SAT test dates, registration deadlines, score release dates, College Board policy changes, recent news about the SAT, study resources, specific external references the student asks about. You can also use this for general knowledge the student needs beyond SAT context (historical events, scientific facts, etc.) as long as it helps them learn. Prefer authoritative sources.",
  parameters: {
    type: "object",
    properties: {
      query: {
        type: "string",
        description: "The search query, typically 3-10 words."
      },
      focus: {
        type: "string",
        enum: SEARCH_FOCUS_VALUES,
        description: "Optional: biases the domain allowlist. 'sat_logistics' restricts to College Board; 'study_resources' adds Khan Academy; 'general_knowledge' and 'news' use the open web."
      }
    },
    required: ["query"],
    additionalProperties: false
  },
  validate: (raw) => {
    const o = raw ?? {};
    const query = asString(o.query, "query");
    let focus;
    if (o.focus !== void 0 && o.focus !== null) {
      const f = String(o.focus);
      if (!SEARCH_FOCUS_VALUES.includes(f)) {
        throw new Error(
          `focus must be one of ${SEARCH_FOCUS_VALUES.join(", ")}`
        );
      }
      focus = f;
    }
    return { query, focus };
  },
  execute: async ({ query, focus }) => {
    const includeDomains = focus ? FOCUS_DOMAINS[focus] : void 0;
    const resp = await tavilySearch(query, {
      searchDepth: "basic",
      maxResults: 5,
      includeDomains
    });
    return {
      query: resp.query,
      answer: resp.answer ?? null,
      sources: resp.results.map((r) => ({
        title: r.title,
        url: r.url,
        snippet: (r.content ?? "").slice(0, 400)
      }))
    };
  }
};
var VALID_DIFFICULTIES = /* @__PURE__ */ new Set(["E", "M", "H"]);
var findSimilarQuestionsInBank = {
  name: "findSimilarQuestionsInBank",
  description: "Find real SAT practice questions in the question bank matching a specific skill and difficulty. Use to offer the student concrete practice, cite examples, or show what a question type looks like.",
  parameters: {
    type: "object",
    properties: {
      skillSlug: {
        type: "string",
        description: "Skill slug, e.g. 'linear_equations_one_var'. Maps to skill_desc."
      },
      domain: {
        type: "string",
        description: "Domain name, e.g. 'Algebra' or 'Advanced Math'."
      },
      difficulty: {
        type: "string",
        enum: ["E", "M", "H"],
        description: "Difficulty: E (easy), M (medium), H (hard)."
      },
      limit: {
        type: "integer",
        minimum: 1,
        maximum: 5,
        description: "How many questions to return (1-5). Default 3."
      }
    },
    additionalProperties: false
  },
  validate: (raw) => {
    const o = raw ?? {};
    const out = { limit: asInt(o.limit ?? 3, "limit", 1, 5) };
    if (o.skillSlug !== void 0 && o.skillSlug !== null && o.skillSlug !== "") {
      out.skillSlug = asString(o.skillSlug, "skillSlug");
    }
    if (o.domain !== void 0 && o.domain !== null && o.domain !== "") {
      out.domain = asString(o.domain, "domain");
    }
    if (o.difficulty !== void 0 && o.difficulty !== null && o.difficulty !== "") {
      const d = String(o.difficulty).toUpperCase();
      if (!VALID_DIFFICULTIES.has(d)) {
        throw new Error("difficulty must be 'E', 'M', or 'H'");
      }
      out.difficulty = d;
    }
    return out;
  },
  execute: async ({ skillSlug, domain, difficulty, limit }, ctx) => {
    let query = ctx.supabase.from("sat_questions").select("question_id, domain, skill_desc, difficulty, stem_html").limit(limit);
    if (skillSlug) {
      const skillDesc = SLUG_TO_SKILL[skillSlug];
      if (skillDesc) {
        query = query.ilike("skill_desc", `${skillDesc}%`);
      }
    }
    if (domain) query = query.eq("domain", domain);
    if (difficulty) query = query.eq("difficulty", difficulty);
    const { data, error } = await query;
    if (error) throw new Error(error.message);
    return {
      questions: (data ?? []).map((q) => ({
        questionId: q.question_id,
        topic: q.domain ?? null,
        skill: q.skill_desc ?? null,
        difficulty: q.difficulty ?? null,
        stemPreview: q.stem_html ? stripHtml(q.stem_html).slice(0, 150) : null,
        practiceUrl: `/practice/session?question=${q.question_id}`
      }))
    };
  }
};
function todayWeekdayLower() {
  return (/* @__PURE__ */ new Date()).toLocaleDateString("en-US", { weekday: "long" }).toLowerCase();
}
var getStudyPlan = {
  name: "getStudyPlan",
  description: "Get the student's active weekly study plan, including today's focus skill and this week's sessions. Use when the student asks 'what should I work on today' or 'what's my plan'.",
  parameters: { type: "object", properties: {}, additionalProperties: false },
  validate: () => ({}),
  execute: async (_args, ctx) => {
    const userId = requireUser(ctx);
    const { data, error } = await ctx.supabase.from("ai_study_plans").select("week_start, plan_json, created_at").eq("user_id", userId).eq("active", true).order("created_at", { ascending: false }).limit(1).maybeSingle();
    if (error) throw new Error(error.message);
    if (!data) return { hasActivePlan: false };
    const planRaw = data.plan_json;
    const weekArr = Array.isArray(planRaw?.week) ? planRaw.week : [];
    const today = todayWeekdayLower();
    const todayEntry = weekArr.find(
      (d) => typeof d?.day === "string" && d.day.toLowerCase() === today
    );
    const todaysFocus = todayEntry ? {
      day: String(todayEntry.day),
      sessions: Array.isArray(todayEntry.sessions) ? todayEntry.sessions.map((s) => ({
        skill: typeof s.focusSkillDisplay === "string" ? s.focusSkillDisplay : null,
        skillSlug: typeof s.focusSkill === "string" ? s.focusSkill : null,
        durationMin: typeof s.durationMin === "number" ? s.durationMin : null,
        sessionType: typeof s.sessionType === "string" ? s.sessionType : null,
        rationale: typeof s.rationale === "string" ? s.rationale : null
      })) : []
    } : null;
    return {
      hasActivePlan: true,
      weekStart: data.week_start,
      weekGoal: typeof planRaw?.weekGoal === "string" ? planRaw.weekGoal : null,
      totalHoursAllocated: typeof planRaw?.totalHoursAllocated === "number" ? planRaw.totalHoursAllocated : null,
      todaysFocus,
      thisWeek: planRaw
    };
  }
};
var getDiagnosticResults = {
  name: "getDiagnosticResults",
  description: "Get the student's most recent diagnostic results, including predicted scores, calibration score, top weaknesses, and the summary. Use when the student asks about their diagnosis or baseline.",
  parameters: { type: "object", properties: {}, additionalProperties: false },
  validate: () => ({}),
  execute: async (_args, ctx) => {
    const userId = requireUser(ctx);
    const { data, error } = await ctx.supabase.from("ai_diagnoses").select(
      "estimated_math, estimated_rw, calibration_score, top_focus, summary, weaknesses, strengths, created_at"
    ).eq("user_id", userId).order("created_at", { ascending: false }).limit(1).maybeSingle();
    if (error) throw new Error(error.message);
    if (!data) return { hasDiagnosis: false };
    return {
      hasDiagnosis: true,
      estimatedMath: data.estimated_math ?? null,
      estimatedRw: data.estimated_rw ?? null,
      calibrationScore: data.calibration_score ?? null,
      topFocus: data.top_focus ?? null,
      summary: data.summary ?? null,
      weaknesses: Array.isArray(data.weaknesses) ? data.weaknesses : [],
      strengths: Array.isArray(data.strengths) ? data.strengths : [],
      createdAt: data.created_at
    };
  }
};
function projectSection(current, hoursPerWeek, weeksUntilTest) {
  const factor = Math.max(0, 0.8 - (current - 400) / 800);
  const raw = hoursPerWeek * weeksUntilTest * factor;
  const capped = Math.min(100, raw);
  const projected = Math.min(800, Math.max(current, Math.round(current + capped)));
  return projected;
}
var calculateScoreProjection = {
  name: "calculateScoreProjection",
  description: "Calculate a realistic score projection based on the student's current scores, study time, and weeks until test. Uses a simple model \u2014 explain to the student it's a guide, not a guarantee.",
  parameters: {
    type: "object",
    properties: {
      currentMath: { type: "integer", minimum: 200, maximum: 800 },
      currentRw: { type: "integer", minimum: 200, maximum: 800 },
      hoursPerWeek: { type: "number", minimum: 1, maximum: 40 },
      weeksUntilTest: { type: "number", minimum: 0, maximum: 52 }
    },
    required: ["currentMath", "currentRw", "hoursPerWeek", "weeksUntilTest"],
    additionalProperties: false
  },
  validate: (raw) => {
    const o = raw ?? {};
    const currentMath = asInt(o.currentMath, "currentMath", 200, 800);
    const currentRw = asInt(o.currentRw, "currentRw", 200, 800);
    const hoursPerWeek = Number(o.hoursPerWeek);
    if (!Number.isFinite(hoursPerWeek) || hoursPerWeek < 1 || hoursPerWeek > 40) {
      throw new Error("hoursPerWeek must be a number between 1 and 40");
    }
    const weeksUntilTest = Number(o.weeksUntilTest);
    if (!Number.isFinite(weeksUntilTest) || weeksUntilTest < 0 || weeksUntilTest > 52) {
      throw new Error("weeksUntilTest must be a number between 0 and 52");
    }
    return { currentMath, currentRw, hoursPerWeek, weeksUntilTest };
  },
  execute: async ({ currentMath, currentRw, hoursPerWeek, weeksUntilTest }) => {
    const projectedMath = projectSection(currentMath, hoursPerWeek, weeksUntilTest);
    const projectedRw = projectSection(currentRw, hoursPerWeek, weeksUntilTest);
    const currentTotal = currentMath + currentRw;
    const projectedTotal = projectedMath + projectedRw;
    return {
      currentTotal,
      projectedMath,
      projectedRw,
      projectedTotal,
      pointsGained: projectedTotal - currentTotal,
      confidenceNote: "This assumes focused practice on weak areas. Actual gains vary."
    };
  }
};
var TOPIC_SLUGS = /* @__PURE__ */ new Set([
  "algebra",
  "advanced_math",
  "problem_solving",
  "geometry",
  "information_ideas",
  "craft_structure",
  "expression",
  "conventions"
]);
var suggestPracticeSession = {
  name: "suggestPracticeSession",
  description: "Suggest that the student start a specific practice session right now. The UI will render a button the student can click to begin. Use when you've identified a concrete next step during the conversation \u2014 don't just describe what they should do, offer it. Call this AFTER you've explained why, not before.",
  parameters: {
    type: "object",
    properties: {
      skillSlug: {
        type: "string",
        description: "Optional skill slug, e.g. 'linear_equations_one_var'."
      },
      topicSlug: {
        type: "string",
        enum: Array.from(TOPIC_SLUGS),
        description: "Optional domain slug when a specific skill isn't appropriate."
      },
      label: {
        type: "string",
        description: "Button text shown to the student, e.g. 'Start 20 min on Linear equations'."
      },
      rationale: {
        type: "string",
        description: "One sentence explaining why this session now."
      }
    },
    required: ["label", "rationale"],
    additionalProperties: false
  },
  validate: (raw) => {
    const o = raw ?? {};
    const out = {
      label: asString(o.label, "label"),
      rationale: asString(o.rationale, "rationale")
    };
    if (o.skillSlug !== void 0 && o.skillSlug !== null && o.skillSlug !== "") {
      out.skillSlug = asString(o.skillSlug, "skillSlug");
    }
    if (o.topicSlug !== void 0 && o.topicSlug !== null && o.topicSlug !== "") {
      const t = asString(o.topicSlug, "topicSlug");
      if (!TOPIC_SLUGS.has(t)) {
        throw new Error(
          `topicSlug must be one of ${Array.from(TOPIC_SLUGS).join(", ")}`
        );
      }
      out.topicSlug = t;
    }
    return out;
  },
  execute: async ({ skillSlug, topicSlug, label, rationale }) => {
    let url = "/practice";
    if (skillSlug) {
      url = `/practice/session?skills=${encodeURIComponent(skillSlug)}`;
    } else if (topicSlug) {
      url = `/practice/session?topic=${encodeURIComponent(topicSlug)}`;
    }
    return { suggestion: { label, rationale, url } };
  }
};
function stripHtml(html) {
  return html.replace(/<[^>]+>/g, "").replace(/\s+/g, " ").trim();
}
var tutorTools = [
  getStudentProfile,
  getRecentSessions,
  getWeakAreas,
  getRecentMistakes,
  getQuestionDetails,
  getRecentExplainerMisconceptions,
  searchWeb,
  findSimilarQuestionsInBank,
  getStudyPlan,
  getDiagnosticResults,
  calculateScoreProjection,
  suggestPracticeSession
];

// src/worker/agents/tutor.ts
var tutorAgent = {
  name: "tutor",
  model: process.env.OPENAI_MODEL_STRONG || "gpt-4o-mini",
  loadSystemPrompt: () => loadPrompt("tutor"),
  tools: tutorTools,
  temperature: 0.5,
  maxTokens: 800,
  // Headroom for searchWeb + 1-2 context tools + suggestPracticeSession in
  // a single turn, plus rounds for the model to reason between calls.
  maxToolRounds: 6
};

// src/worker/agents/tool_runner.ts
var OPENAI_URL = "https://api.openai.com/v1/chat/completions";
function toolsForOpenAI(tools) {
  return tools.map((t) => ({
    type: "function",
    function: {
      name: t.name,
      description: t.description,
      parameters: t.parameters
    }
  }));
}
async function* readSSE(response) {
  if (!response.body) return;
  const reader = response.body.getReader();
  const decoder = new TextDecoder();
  let buffer = "";
  try {
    while (true) {
      const { done, value } = await reader.read();
      if (done) break;
      buffer += decoder.decode(value, { stream: true });
      let newlineIdx;
      while ((newlineIdx = buffer.indexOf("\n")) !== -1) {
        const line = buffer.slice(0, newlineIdx).trim();
        buffer = buffer.slice(newlineIdx + 1);
        if (!line.startsWith("data:")) continue;
        const payload = line.slice(5).trim();
        if (payload === "[DONE]") return;
        try {
          yield JSON.parse(payload);
        } catch {
        }
      }
    }
  } finally {
    try {
      reader.releaseLock();
    } catch {
    }
  }
}
async function openaiStream(apiKey, body, timeoutMs) {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);
  try {
    const res = await fetch(OPENAI_URL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${apiKey}`
      },
      body: JSON.stringify({ ...body, stream: true }),
      signal: controller.signal
    });
    if (!res.ok) {
      const text = await res.text().catch(() => "");
      throw new Error(`OpenAI ${res.status}: ${text.slice(0, 200)}`);
    }
    return res;
  } finally {
    clearTimeout(timer);
  }
}
async function logTurn(supabase, ctx, role, content, toolCalls, model, promptTokens, completionTokens, latencyMs, error) {
  try {
    const { data } = await supabase.from("ai_tutor_turns").insert({
      user_id: ctx.userId,
      browser_id: ctx.browserId,
      conversation_id: ctx.conversationId,
      role,
      content,
      tool_calls: toolCalls,
      model,
      prompt_tokens: promptTokens,
      completion_tokens: completionTokens,
      latency_ms: latencyMs,
      error
    }).select("id").single();
    return data?.id ?? null;
  } catch (err) {
    console.error("[tool_runner] logTurn failed:", err);
    return null;
  }
}
async function executeTool(def, rawArgs, ctx) {
  let parsed;
  try {
    parsed = rawArgs.trim() === "" ? {} : JSON.parse(rawArgs);
  } catch (err) {
    return { ok: false, error: `Invalid JSON arguments: ${err.message}` };
  }
  let validated;
  try {
    validated = def.validate(parsed);
  } catch (err) {
    return { ok: false, error: err.message };
  }
  try {
    const result = await def.execute(validated, ctx);
    return { ok: true, result };
  } catch (err) {
    return { ok: false, error: `Tool '${def.name}' threw: ${err.message}` };
  }
}
async function runToolAgent(opts) {
  const { agent, apiKey, context, emit } = opts;
  const timeoutMs = opts.timeoutMs ?? 6e4;
  const maxRounds = agent.maxToolRounds ?? 4;
  const messages = [
    { role: "system", content: agent.loadSystemPrompt() },
    ...opts.messages
  ];
  const lastUser = [...opts.messages].reverse().find((m) => m.role === "user");
  if (lastUser) {
    await logTurn(
      context.supabase,
      context,
      "user",
      typeof lastUser.content === "string" ? lastUser.content : null,
      null,
      null,
      null,
      null,
      null,
      null
    );
  }
  let totalPromptTokens = 0;
  let totalCompletionTokens = 0;
  const toolsByName = new Map(agent.tools.map((t) => [t.name, t]));
  const toolsPayload = toolsForOpenAI(agent.tools);
  for (let round = 0; round < maxRounds + 1; round++) {
    const isLastRound = round === maxRounds;
    const startedAt = Date.now();
    let response;
    try {
      response = await openaiStream(
        apiKey,
        {
          model: agent.model,
          messages,
          tools: isLastRound ? void 0 : toolsPayload,
          tool_choice: isLastRound ? void 0 : "auto",
          temperature: agent.temperature,
          max_tokens: agent.maxTokens,
          stream_options: { include_usage: true }
        },
        timeoutMs
      );
    } catch (err) {
      const msg = err.message;
      await emit({ type: "error", message: msg });
      await logTurn(
        context.supabase,
        context,
        "assistant",
        null,
        null,
        agent.model,
        null,
        null,
        Date.now() - startedAt,
        msg
      );
      return;
    }
    let accumulatedContent = "";
    const accumulatedToolCalls = /* @__PURE__ */ new Map();
    let finishReason = null;
    let chunkUsage;
    for await (const chunk of readSSE(response)) {
      if (chunk.usage) chunkUsage = chunk.usage;
      const choice = chunk.choices?.[0];
      if (!choice) continue;
      const delta = choice.delta;
      if (delta?.content) {
        accumulatedContent += delta.content;
        await emit({ type: "delta", text: delta.content });
      }
      if (delta?.tool_calls) {
        for (const tc of delta.tool_calls) {
          const idx = tc.index;
          const existing = accumulatedToolCalls.get(idx) ?? { id: "", name: "", arguments: "" };
          if (tc.id) existing.id = tc.id;
          if (tc.function?.name) existing.name = tc.function.name;
          if (tc.function?.arguments) existing.arguments += tc.function.arguments;
          accumulatedToolCalls.set(idx, existing);
        }
      }
      if (choice.finish_reason) finishReason = choice.finish_reason;
    }
    if (chunkUsage?.prompt_tokens) totalPromptTokens += chunkUsage.prompt_tokens;
    if (chunkUsage?.completion_tokens) totalCompletionTokens += chunkUsage.completion_tokens;
    const latencyMs = Date.now() - startedAt;
    if (finishReason === "tool_calls" && accumulatedToolCalls.size > 0) {
      const calls = Array.from(accumulatedToolCalls.values()).filter((c) => c.name);
      await logTurn(
        context.supabase,
        context,
        "assistant",
        accumulatedContent || null,
        calls.map((c) => ({ id: c.id, name: c.name, arguments: c.arguments })),
        agent.model,
        chunkUsage?.prompt_tokens ?? null,
        chunkUsage?.completion_tokens ?? null,
        latencyMs,
        null
      );
      messages.push({
        role: "assistant",
        content: accumulatedContent || null,
        tool_calls: calls.map((c) => ({
          id: c.id,
          type: "function",
          function: { name: c.name, arguments: c.arguments }
        }))
      });
      const results = await Promise.all(
        calls.map(async (call) => {
          const def = toolsByName.get(call.name);
          if (!def) {
            return { call, ok: false, error: `Unknown tool: ${call.name}` };
          }
          let parsedArgs = {};
          try {
            parsedArgs = call.arguments ? JSON.parse(call.arguments) : {};
          } catch {
          }
          await emit({ type: "tool_call", id: call.id, name: call.name, arguments: parsedArgs });
          const res = await executeTool(def, call.arguments, context);
          if (res.ok) {
            await emit({
              type: "tool_result",
              id: call.id,
              name: call.name,
              ok: true,
              preview: previewResult(res.result)
            });
            if (call.name === "suggestPracticeSession") {
              const s = res.result?.suggestion;
              if (s && typeof s.label === "string" && typeof s.url === "string" && s.label && s.url) {
                await emit({
                  type: "suggested_action",
                  toolCallId: call.id,
                  label: s.label,
                  rationale: typeof s.rationale === "string" ? s.rationale : "",
                  url: s.url
                });
              }
            }
            return { call, ok: true, result: res.result };
          }
          await emit({
            type: "tool_result",
            id: call.id,
            name: call.name,
            ok: false,
            preview: res.error.slice(0, 200)
          });
          return { call, ok: false, error: res.error };
        })
      );
      for (const r of results) {
        const content = r.ok ? JSON.stringify(r.result ?? null) : JSON.stringify({ error: r.error });
        messages.push({
          role: "tool",
          content,
          tool_call_id: r.call.id,
          name: r.call.name
        });
        await logTurn(
          context.supabase,
          context,
          "tool",
          content,
          { name: r.call.name, id: r.call.id, ok: r.ok },
          null,
          null,
          null,
          null,
          r.ok ? null : r.error
        );
      }
      continue;
    }
    const turnId = await logTurn(
      context.supabase,
      context,
      "assistant",
      accumulatedContent,
      null,
      agent.model,
      chunkUsage?.prompt_tokens ?? null,
      chunkUsage?.completion_tokens ?? null,
      latencyMs,
      null
    );
    await emit({
      type: "done",
      promptTokens: totalPromptTokens,
      completionTokens: totalCompletionTokens,
      turnId
    });
    return;
  }
}
function previewResult(r) {
  try {
    const s = typeof r === "string" ? r : JSON.stringify(r);
    return s.length > 160 ? s.slice(0, 160) + "\u2026" : s;
  } catch {
    return "(unserializable)";
  }
}

// src/worker/index.ts
var SUPABASE_URL = "https://bkmyfcolrdumyrwktjrr.supabase.co";
var SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJrbXlmY29scmR1bXlyd2t0anJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM5NDg3NTcsImV4cCI6MjA4OTUyNDc1N30.ClqyVHYOazJduEi6NTfENRcz2fdlDbiN2vBOJ937oHQ";
var app = new Hono();
async function optionalAuthMiddleware(c, next) {
  const token = getCookie(c, "sb-access-token");
  if (token) {
    try {
      const response = await fetch(`${SUPABASE_URL}/auth/v1/user`, {
        headers: {
          Authorization: `Bearer ${token}`,
          apikey: SUPABASE_ANON_KEY
        }
      });
      if (response.ok) {
        const user = await response.json();
        c.set("user", user);
      }
    } catch {
    }
  }
  await next();
}
async function authMiddleware(c, next) {
  const token = getCookie(c, "sb-access-token");
  if (!token) {
    return c.json({ error: "Unauthorized" }, 401);
  }
  try {
    const response = await fetch(`${SUPABASE_URL}/auth/v1/user`, {
      headers: {
        Authorization: `Bearer ${token}`,
        apikey: SUPABASE_ANON_KEY
      }
    });
    if (!response.ok) {
      return c.json({ error: "Unauthorized" }, 401);
    }
    const user = await response.json();
    c.set("user", user);
    await next();
  } catch {
    return c.json({ error: "Unauthorized" }, 401);
  }
}
async function fetchStudentContext(supabase, userId) {
  if (!userId) return void 0;
  try {
    const [profileRes, diagnosisRes] = await Promise.all([
      supabase.from("user_profiles").select("display_name, estimated_math_score, estimated_rw_score, target_score, test_date").eq("user_id", userId).maybeSingle(),
      supabase.from("ai_diagnoses").select("weaknesses, top_focus").eq("user_id", userId).order("created_at", { ascending: false }).limit(1).maybeSingle()
    ]);
    const profile = profileRes.data;
    const diagnosis = diagnosisRes.data;
    const weakAreas = Array.isArray(diagnosis?.weaknesses) ? diagnosis.weaknesses.slice(0, 3).map((w) => w.skill_display || w.skill).filter((x) => typeof x === "string" && x.length > 0) : [];
    const ctx = {};
    if (profile?.display_name) ctx.student_name = profile.display_name;
    if (profile?.estimated_math_score) ctx.estimated_math_score = profile.estimated_math_score;
    if (profile?.estimated_rw_score) ctx.estimated_rw_score = profile.estimated_rw_score;
    if (profile?.target_score) ctx.target_score = profile.target_score;
    if (profile?.test_date) ctx.test_date = profile.test_date;
    if (weakAreas.length > 0) ctx.top_weak_areas = weakAreas;
    if (diagnosis?.top_focus) ctx.primary_focus = diagnosis.top_focus;
    return Object.keys(ctx).length > 0 ? ctx : void 0;
  } catch (err) {
    console.error("[fetchStudentContext] failed:", err);
    return void 0;
  }
}
var STRIPE_MONTHLY_PRICE_ID = "price_1THC2ARBhjUJNe8kjQgDrZXy";
var STRIPE_YEARLY_PRICE_ID = "price_1THC36RBhjUJNe8k93TzNGFi";
function safeParseTopics(metadata) {
  try {
    return metadata ? JSON.parse(metadata).topics || [] : [];
  } catch {
    return [];
  }
}
if (!process.env.OPENAI_API_KEY && process.env.OPENAI_KEY) {
  process.env.OPENAI_API_KEY = process.env.OPENAI_KEY;
}
if (!process.env.SUPABASE_SERVICE_ROLE_KEY && process.env.SUPABASE_SECRET_KEY) {
  process.env.SUPABASE_SERVICE_ROLE_KEY = process.env.SUPABASE_SECRET_KEY;
}
if (!process.env.SUPABASE_URL && process.env.SUPABASE_ID) {
  process.env.SUPABASE_URL = `https://${process.env.SUPABASE_ID}.supabase.co`;
}
app.get("/api/users/me", authMiddleware, async (c) => {
  const user = c.get("user");
  const supabase = getSupabaseAdmin();
  let { data: profile } = await supabase.from("user_profiles").select("*").eq("user_id", user.id).maybeSingle();
  if (!profile) {
    const displayName = user.user_metadata?.full_name || user.user_metadata?.name || user.user_metadata?.given_name || user.email.split("@")[0];
    const pictureUrl = user.user_metadata?.avatar_url || user.user_metadata?.picture || null;
    await supabase.from("user_profiles").insert({
      user_id: user.id,
      email: user.email,
      display_name: displayName,
      picture_url: pictureUrl
    });
    const { data: newProfile } = await supabase.from("user_profiles").select("*").eq("user_id", user.id).maybeSingle();
    profile = newProfile;
  }
  const { data: _subscription } = await supabase.from("subscriptions").select("tier").eq("user_id", user.id).or("expires_at.is.null,expires_at.gt." + (/* @__PURE__ */ new Date()).toISOString()).maybeSingle();
  return c.json({
    id: user.id,
    email: user.email,
    google_user_data: {
      given_name: user.user_metadata?.full_name || user.user_metadata?.name || user.user_metadata?.given_name,
      picture: user.user_metadata?.avatar_url || user.user_metadata?.picture
    },
    profile: {
      displayName: profile?.display_name,
      hasCompletedDiagnostic: profile?.has_completed_diagnostic === true,
      hasCompletedOnboarding: profile?.has_completed_onboarding === true,
      streakDays: profile?.streak_days || 0,
      streakLastDate: profile?.streak_last_date,
      estimatedMathScore: profile?.estimated_math_score || 400,
      estimatedRWScore: profile?.estimated_rw_score || 400,
      targetScore: profile?.target_score || null,
      testDate: profile?.test_date || null,
      studyHoursPerWeek: profile?.study_hours_per_week || null,
      // HAI demo: everyone is "pro" so no UI paywalls fire. Stripe tables
      // remain populated for future re-activation; only the derivation
      // the frontend consumes is hardcoded here.
      subscriptionTier: "pro"
    }
  });
});
app.patch("/api/user/profile", authMiddleware, async (c) => {
  const user = c.get("user");
  const supabase = getSupabaseAdmin();
  try {
    const body = await c.req.json();
    const {
      displayName,
      targetScore,
      testDate,
      mathConfidence,
      readingConfidence,
      studyHoursPerWeek,
      hasCompletedOnboarding
    } = body;
    const updates = {};
    if (typeof displayName === "string") {
      const trimmedName = displayName.trim().slice(0, 50);
      if (trimmedName) {
        updates.display_name = trimmedName;
      }
    }
    if (typeof targetScore === "number") {
      updates.target_score = Math.max(400, Math.min(1600, Math.round(targetScore)));
    }
    if (typeof testDate === "string") {
      if (!/^\d{4}-\d{2}-\d{2}$/.test(testDate)) {
        return c.json({ error: "Invalid testDate format. Expected YYYY-MM-DD." }, 400);
      }
      updates.test_date = testDate;
    }
    if (typeof mathConfidence === "number") {
      updates.math_confidence = Math.max(0, Math.min(3, Math.round(mathConfidence)));
    }
    if (typeof readingConfidence === "number") {
      updates.reading_confidence = Math.max(0, Math.min(3, Math.round(readingConfidence)));
    }
    if (typeof studyHoursPerWeek === "string") {
      updates.study_hours_per_week = studyHoursPerWeek;
    }
    if (hasCompletedOnboarding === true) {
      updates.has_completed_onboarding = true;
    }
    if (Object.keys(updates).length === 0) {
      return c.json({ error: "No valid fields to update" }, 400);
    }
    updates.updated_at = (/* @__PURE__ */ new Date()).toISOString();
    await supabase.from("user_profiles").update(updates).eq("user_id", user.id);
    return c.json({ success: true });
  } catch (error) {
    console.error("Error updating profile:", error);
    return c.json({ error: "Failed to update profile" }, 500);
  }
});
app.get("/api/logout", async (c) => {
  setCookie(c, "sb-access-token", "", {
    path: "/",
    sameSite: "Lax",
    secure: true,
    maxAge: 0
  });
  return c.json({ success: true }, 200);
});
var FREE_DAILY_TUTOR_LIMIT = 1e4;
var MATH_FORMATTING_RULES = `MATH FORMATTING (strict):
- Wrap every math expression, variable, number-with-unit, formula, or equation in LaTeX delimiters so the client can render them with KaTeX.
- Inline math uses single dollars: $x$, $d = rt$, $\\frac{a}{b}$, $x^2 - 5x + 6 = 0$.
- Display math (equations on their own line) uses double dollars: $$d = rt$$.
- Do NOT use plain parentheses like ( x ) or ( d = rt ) for math.
- Do NOT use \\( \u2026 \\) or \\[ \u2026 \\] \u2014 always use $ \u2026 $ or $$ \u2026 $$.
- Do NOT write the literal word "latex" anywhere in your reply.
- Do NOT wrap the whole reply in a code block or prefix it with a language tag.`;
async function getTutorUsage(supabase, userId, browserId) {
  const today = (/* @__PURE__ */ new Date()).toISOString().split("T")[0];
  let isPremium = false;
  if (userId) {
    const { data: sub } = await supabase.from("subscriptions").select("*").eq("user_id", userId).or("expires_at.is.null,expires_at.gt." + (/* @__PURE__ */ new Date()).toISOString()).maybeSingle();
    isPremium = sub?.tier === "premium";
  }
  let usage;
  if (userId) {
    const { data } = await supabase.from("tutor_usage").select("message_count").eq("user_id", userId).eq("date", today).maybeSingle();
    usage = data;
  } else if (browserId) {
    const { data } = await supabase.from("tutor_usage").select("message_count").eq("browser_id", browserId).eq("date", today).maybeSingle();
    usage = data;
  }
  return { count: usage?.message_count || 0, isPremium };
}
async function incrementTutorUsage(supabase, userId, browserId) {
  const today = (/* @__PURE__ */ new Date()).toISOString().split("T")[0];
  if (userId) {
    const { data: existing } = await supabase.from("tutor_usage").select("id, message_count").eq("user_id", userId).eq("date", today).maybeSingle();
    if (existing) {
      await supabase.from("tutor_usage").update({ message_count: existing.message_count + 1, updated_at: (/* @__PURE__ */ new Date()).toISOString() }).eq("id", existing.id);
      return existing.message_count + 1;
    } else {
      await supabase.from("tutor_usage").insert({ user_id: userId, date: today, message_count: 1 });
      return 1;
    }
  } else if (browserId) {
    const { data: existing } = await supabase.from("tutor_usage").select("id, message_count").eq("browser_id", browserId).eq("date", today).maybeSingle();
    if (existing) {
      await supabase.from("tutor_usage").update({ message_count: existing.message_count + 1, updated_at: (/* @__PURE__ */ new Date()).toISOString() }).eq("id", existing.id);
      return existing.message_count + 1;
    } else {
      await supabase.from("tutor_usage").insert({ browser_id: browserId, date: today, message_count: 1 });
      return 1;
    }
  }
  return 0;
}
app.get("/api/tutor/usage", optionalAuthMiddleware, async (c) => {
  const supabase = getSupabaseAdmin();
  const user = c.get("user");
  const userId = user?.id || null;
  const browserId = userId ? null : c.req.query("browserId") || null;
  const { count, isPremium } = await getTutorUsage(supabase, userId, browserId);
  return c.json({
    used: count,
    limit: FREE_DAILY_TUTOR_LIMIT,
    remaining: Math.max(0, FREE_DAILY_TUTOR_LIMIT - count),
    isPremium,
    unlimited: isPremium
  });
});
app.post("/api/tutor/chat", optionalAuthMiddleware, async (c) => {
  const supabase = getSupabaseAdmin();
  const user = c.get("user");
  const userId = user?.id || null;
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const rawMessages = body.messages;
  if (!Array.isArray(rawMessages) || rawMessages.length === 0) {
    return c.json({ error: "messages must be a non-empty array" }, 400);
  }
  const clientBrowserId = typeof body.browserId === "string" ? body.browserId : null;
  const browserId = userId ? null : clientBrowserId;
  const conversationId = typeof body.conversationId === "string" && body.conversationId.length > 0 ? body.conversationId : crypto.randomUUID();
  const messages = [];
  for (const m of rawMessages.slice(-20)) {
    if (typeof m !== "object" || m === null) continue;
    const o = m;
    if ((o.role === "user" || o.role === "assistant") && typeof o.content === "string") {
      messages.push({ role: o.role, content: o.content });
    }
  }
  if (messages.length === 0 || messages[messages.length - 1].role !== "user") {
    return c.json({ error: "Last message must have role 'user'" }, 400);
  }
  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }
  const { count, isPremium } = await getTutorUsage(supabase, userId, browserId);
  if (!isPremium && count >= FREE_DAILY_TUTOR_LIMIT) {
    return c.json(
      {
        error: "daily_limit_reached",
        message: "You've reached your free daily tutor limit. Upgrade to Pro for unlimited tutoring.",
        used: count,
        limit: FREE_DAILY_TUTOR_LIMIT
      },
      429
    );
  }
  await incrementTutorUsage(supabase, userId, browserId);
  c.header("Content-Type", "text/event-stream; charset=utf-8");
  c.header("Cache-Control", "no-cache, no-transform");
  c.header("X-Accel-Buffering", "no");
  c.header("X-Conversation-Id", conversationId);
  return stream(c, async (s) => {
    const write = async (event) => {
      await s.write(`data: ${JSON.stringify(event)}

`);
    };
    try {
      await runToolAgent({
        agent: tutorAgent,
        messages,
        apiKey: process.env.OPENAI_API_KEY,
        context: {
          userId,
          browserId,
          supabase,
          conversationId
        },
        emit: write
      });
    } catch (err) {
      await write({
        type: "error",
        message: err instanceof Error ? err.message : "Tutor failed"
      });
    }
  });
});
app.post("/api/tutor/explain-differently", authMiddleware, async (c) => {
  try {
    const user = c.get("user");
    const supabase = getSupabaseAdmin();
    const { data: sub } = await supabase.from("subscriptions").select("tier").eq("user_id", user.id).or("expires_at.is.null,expires_at.gt." + (/* @__PURE__ */ new Date()).toISOString()).maybeSingle();
    if (sub?.tier !== "premium") {
      return c.json({ error: "Pro subscription required" }, 403);
    }
    const body = await c.req.json();
    const { question, style } = body;
    if (!question || !style) {
      return c.json({ error: "Missing question or style" }, 400);
    }
    const stylePrompts = {
      simple: `Explain this SAT question in the simplest possible terms. Use short sentences, basic vocabulary, and break down each step as if teaching a beginner. Avoid jargon and technical terms.`,
      visual: `Explain this SAT question using visual descriptions and spatial thinking. Describe what the student should "see" mentally, use diagrams described in words (like "imagine a number line..." or "picture two overlapping circles..."), and create mental images to aid understanding.`,
      technical: `Explain this SAT question with precise, technical detail. Include the formal rules, principles, or formulas involved. Reference specific SAT conventions and test-taking strategies. Be thorough and academically rigorous.`,
      analogy: `Explain this SAT question using a real-world analogy or comparison. Connect the concept to something from everyday life (cooking, sports, gaming, social media, etc.) that makes the abstract idea concrete and relatable.`
    };
    const stylePrompt = stylePrompts[style] || stylePrompts.simple;
    const systemPrompt = `You are an expert SAT tutor providing an alternative explanation in a specific style.

${stylePrompt}

QUESTION CONTEXT:
${question.passage ? `Passage: ${question.passage}
` : ""}
Question: ${question.questionText}

Answer choices:
${question.choices?.map((c2, i) => `${String.fromCharCode(65 + i)}: ${c2}`).join("\n") || ""}

Student answered: ${question.studentAnswer}
Correct answer: ${question.correctAnswer}

Original explanation: ${question.explanation}

Provide a fresh explanation in the requested style. Keep it concise (3-5 sentences max) but clear. Focus on helping the student truly understand, not just memorize.

${MATH_FORMATTING_RULES}`;
    if (!process.env.OPENAI_API_KEY) {
      return c.json({ error: "AI service is not configured" }, 503);
    }
    const result = await fetchOpenAI(process.env.OPENAI_API_KEY, {
      model: "gpt-4o-mini",
      messages: [
        { role: "system", content: systemPrompt },
        { role: "user", content: `Please explain this question using the ${style} approach.` }
      ],
      max_tokens: 350,
      temperature: 0.7
    });
    if (result.error || !result.data) {
      return c.json({ error: result.error || "Failed to generate explanation" }, result.status);
    }
    const explanation = result.data.choices?.[0]?.message?.content;
    if (!explanation) {
      return c.json({ error: "No explanation generated" }, 500);
    }
    return c.json({ success: true, explanation });
  } catch (error) {
    console.error("Explain differently API error:", error);
    return c.json({ error: "Failed to process request" }, 500);
  }
});
var FREE_MONTHLY_CHAT_LIMIT = 1e4;
async function getChatUsage(supabase, userId, browserId) {
  const monthYear = (/* @__PURE__ */ new Date()).toISOString().slice(0, 7);
  let isPremium = false;
  if (userId) {
    const { data: sub } = await supabase.from("subscriptions").select("*").eq("user_id", userId).or("expires_at.is.null,expires_at.gt." + (/* @__PURE__ */ new Date()).toISOString()).maybeSingle();
    isPremium = sub?.tier === "premium";
  }
  let usage;
  if (userId) {
    const { data } = await supabase.from("chat_usage").select("message_count").eq("user_id", userId).eq("month_year", monthYear).maybeSingle();
    usage = data;
  } else if (browserId) {
    const { data } = await supabase.from("chat_usage").select("message_count").eq("browser_id", browserId).eq("month_year", monthYear).maybeSingle();
    usage = data;
  }
  return { count: usage?.message_count || 0, isPremium };
}
async function incrementChatUsage(supabase, userId, browserId) {
  const monthYear = (/* @__PURE__ */ new Date()).toISOString().slice(0, 7);
  if (userId) {
    const { data: existing } = await supabase.from("chat_usage").select("id, message_count").eq("user_id", userId).eq("month_year", monthYear).maybeSingle();
    if (existing) {
      await supabase.from("chat_usage").update({ message_count: existing.message_count + 1, updated_at: (/* @__PURE__ */ new Date()).toISOString() }).eq("id", existing.id);
    } else {
      await supabase.from("chat_usage").insert({ user_id: userId, month_year: monthYear, message_count: 1 });
    }
  } else if (browserId) {
    const { data: existing } = await supabase.from("chat_usage").select("id, message_count").eq("browser_id", browserId).eq("month_year", monthYear).maybeSingle();
    if (existing) {
      await supabase.from("chat_usage").update({ message_count: existing.message_count + 1, updated_at: (/* @__PURE__ */ new Date()).toISOString() }).eq("id", existing.id);
    } else {
      await supabase.from("chat_usage").insert({ browser_id: browserId, month_year: monthYear, message_count: 1 });
    }
  }
}
app.get("/api/chat/usage", optionalAuthMiddleware, async (c) => {
  const supabase = getSupabaseAdmin();
  const user = c.get("user");
  const userId = user?.id || null;
  const browserId = userId ? null : c.req.query("browserId") || null;
  const { count, isPremium } = await getChatUsage(supabase, userId, browserId);
  return c.json({
    used: count,
    limit: FREE_MONTHLY_CHAT_LIMIT,
    remaining: Math.max(0, FREE_MONTHLY_CHAT_LIMIT - count),
    isPremium,
    unlimited: isPremium
  });
});
app.post("/api/chat", optionalAuthMiddleware, async (c) => {
  try {
    const body = await c.req.json();
    const { messages, questionContext, browserId: clientBrowserId, stream: wantStream } = body;
    const supabase = getSupabaseAdmin();
    const user = c.get("user");
    const userId = user?.id || null;
    const browserId = userId ? null : clientBrowserId || null;
    if (!messages || !Array.isArray(messages)) {
      return c.json({ error: "Invalid messages format" }, 400);
    }
    const shouldStream = wantStream === true;
    const { count, isPremium } = await getChatUsage(supabase, userId, browserId);
    if (!isPremium && count >= FREE_MONTHLY_CHAT_LIMIT) {
      return c.json({
        error: "monthly_limit_reached",
        message: "You've reached your free monthly chat limit. Upgrade to Premium for unlimited tutoring.",
        used: count,
        limit: FREE_MONTHLY_CHAT_LIMIT
      }, 429);
    }
    if (messages.length > 10) {
      return c.json({ error: "Message limit exceeded" }, 429);
    }
    const qc = questionContext;
    const systemPrompt = `You are a helpful SAT tutor. A student just answered a question and has read the explanation, but wants additional help understanding it.

QUESTION DETAILS:
Section: ${qc.section || "SAT"}
Topic: ${qc.topic || "general"}
${qc.subtopic ? `Subtopic: ${qc.subtopic}` : ""}
Difficulty: ${qc.difficulty || "medium"}

${qc.passage ? `PASSAGE:
${qc.passage}
` : ""}
QUESTION: ${qc.questionText || ""}

ANSWER CHOICES:
${qc.choices ? qc.choices.map((c2, i) => `${String.fromCharCode(65 + i)}: ${c2}`).join("\n") : ""}

Student selected: ${qc.studentAnswer || ""}
Correct answer: ${qc.correctAnswer || ""}

EXPLANATION PROVIDED:
${qc.explanation || ""}

YOUR ROLE AS AN SAT TUTOR:
1. You have the complete question context, including any passage text, all answer choices, and the full explanation
2. Help students understand not just why the answer is correct, but how to approach similar questions
3. Use Socratic questioning to guide discovery rather than just restating the explanation
4. Connect concepts to broader SAT strategies and test-taking skills
5. Keep responses concise (2-3 sentences) and encouraging
6. If a student asks about the question, passage, or specific answer choices, you can reference them directly since you have full context
7. Focus on teaching the underlying concept and how it applies to the SAT

Remember: You can see everything about this question, so if a student asks "what does the passage say about X?" or "why is choice B wrong?", you can answer directly using the full context provided above.

${MATH_FORMATTING_RULES}`;
    const apiMessages = [
      { role: "system", content: systemPrompt },
      ...messages
    ];
    if (!process.env.OPENAI_API_KEY) {
      return c.json({ error: "AI service is not configured" }, 503);
    }
    if (shouldStream) {
      const started = await fetchOpenAIStream(process.env.OPENAI_API_KEY, {
        model: "gpt-4o-mini",
        messages: apiMessages,
        max_tokens: 300,
        temperature: 0.7
      });
      if (started.error || !started.stream) {
        return c.json(
          { error: started.error || "Failed to get response from AI" },
          started.status
        );
      }
      await incrementChatUsage(supabase, userId, browserId);
      c.header("Content-Type", "text/plain; charset=utf-8");
      c.header("Cache-Control", "no-cache, no-transform");
      c.header("X-Accel-Buffering", "no");
      return stream(c, async (s) => {
        for await (const chunk of started.stream) {
          await s.write(chunk);
        }
      });
    }
    const result = await fetchOpenAI(process.env.OPENAI_API_KEY, {
      model: "gpt-4o-mini",
      messages: apiMessages,
      max_tokens: 300,
      temperature: 0.7
    });
    if (result.error || !result.data) {
      return c.json({ error: result.error || "Failed to get response from AI" }, result.status);
    }
    const assistantMessage = result.data.choices?.[0]?.message?.content;
    if (!assistantMessage) {
      return c.json({ error: "No response from AI" }, 500);
    }
    await incrementChatUsage(supabase, userId, browserId);
    const newUsage = await getChatUsage(supabase, userId, browserId);
    return c.json({
      success: true,
      message: assistantMessage,
      usage: {
        used: newUsage.count,
        limit: FREE_MONTHLY_CHAT_LIMIT,
        remaining: Math.max(0, FREE_MONTHLY_CHAT_LIMIT - newUsage.count),
        isPremium: newUsage.isPremium
      }
    });
  } catch (error) {
    console.error("Chat API error:", error);
    return c.json({ error: "Failed to process chat request" }, 500);
  }
});
app.get("/api/user/progress", authMiddleware, async (c) => {
  const user = c.get("user");
  const supabase = getSupabaseAdmin();
  try {
    const { data: profile } = await supabase.from("user_profiles").select("*").eq("user_id", user.id).maybeSingle();
    const { data: skillScores } = await supabase.rpc("get_user_skill_summary", {
      p_user_id: user.id
    });
    const { data: sessions } = await supabase.from("user_sessions").select("id, session_type, started_at, completed_at, questions_total, questions_correct, metadata").eq("user_id", user.id).order("started_at", { ascending: false }).limit(50);
    const { data: diagnosticResult } = await supabase.from("user_diagnostic_results").select("*").eq("user_id", user.id).order("created_at", { ascending: false }).limit(1).maybeSingle();
    const topicProgress = {};
    const defaultTopics = [
      "algebra",
      "advanced_math",
      "problem_solving",
      "geometry",
      "information_ideas",
      "craft_structure",
      "expression",
      "conventions"
    ];
    defaultTopics.forEach((topic) => {
      topicProgress[topic] = {
        topic,
        questionsAttempted: 0,
        questionsCorrect: 0,
        lastPracticed: null,
        currentLevel: "foundation"
      };
    });
    if (skillScores) {
      skillScores.forEach((row) => {
        const accuracy = row.avg_score || 0;
        topicProgress[row.topic] = {
          topic: row.topic,
          questionsAttempted: row.total_attempted || 0,
          questionsCorrect: Math.round((row.total_attempted || 0) * accuracy),
          lastPracticed: null,
          currentLevel: accuracy >= 0.85 ? "advanced" : accuracy >= 0.7 ? "proficient" : accuracy >= 0.5 ? "developing" : "foundation"
        };
      });
    }
    const mathTopics = ["algebra", "advanced_math", "problem_solving", "geometry"];
    const rwTopics = ["information_ideas", "craft_structure", "expression", "conventions"];
    const calcScore = (topics) => {
      let total = 0;
      let count = 0;
      topics.forEach((t) => {
        const p = topicProgress[t];
        if (p && p.questionsAttempted > 0) {
          total += p.questionsCorrect / p.questionsAttempted;
          count++;
        }
      });
      const accuracy = count > 0 ? Math.min(1, Math.max(0, total / count)) : 0.5;
      return Math.round(200 + accuracy * 600);
    };
    return c.json({
      success: true,
      data: {
        topicProgress,
        currentStreak: profile?.streak_days || 0,
        longestStreak: profile?.streak_days || 0,
        lastPracticeDate: profile?.streak_last_date || null,
        estimatedMathScore: calcScore(mathTopics),
        estimatedRWScore: calcScore(rwTopics),
        sessions: (sessions || []).map((s) => ({
          id: `session_${s.id}`,
          date: s.started_at,
          type: s.session_type,
          questionsAttempted: s.questions_total || 0,
          questionsCorrect: s.questions_correct || 0,
          topics: safeParseTopics(s.metadata),
          timeSpentSeconds: 0
        })),
        diagnosticCompleted: profile?.has_completed_diagnostic === true,
        diagnosticDate: diagnosticResult?.created_at || null
      }
    });
  } catch (error) {
    console.error("Error fetching user progress:", error);
    return c.json({ error: "Failed to fetch progress" }, 500);
  }
});
app.post("/api/user/sessions", authMiddleware, async (c) => {
  const user = c.get("user");
  const supabase = getSupabaseAdmin();
  try {
    const body = await c.req.json();
    const { sessionType, attempts, timeSpentSeconds } = body;
    if (!sessionType || !attempts) {
      return c.json({ error: "Missing required fields" }, 400);
    }
    let { data: profile } = await supabase.from("user_profiles").select("*").eq("user_id", user.id).maybeSingle();
    if (!profile) {
      await supabase.from("user_profiles").insert({
        user_id: user.id,
        email: user.email,
        display_name: user.email.split("@")[0]
      });
      const { data: newProfile } = await supabase.from("user_profiles").select("*").eq("user_id", user.id).maybeSingle();
      profile = newProfile;
    }
    const questionsTotal = attempts.length;
    const questionsCorrect = attempts.filter((a) => a.isCorrect).length;
    const topics = [...new Set(attempts.map((a) => a.topic))];
    const { data: sessionData, error: sessionError } = await supabase.from("user_sessions").insert({
      user_id: user.id,
      session_type: sessionType,
      questions_total: questionsTotal,
      questions_correct: questionsCorrect,
      metadata: JSON.stringify({ topics, timeSpentSeconds })
    }).select("id").single();
    if (sessionError || !sessionData) {
      console.error("Error creating session:", sessionError);
      return c.json({ error: "Failed to create session" }, 500);
    }
    const sessionId = sessionData.id;
    const attemptRows = attempts.map((attempt) => ({
      session_id: sessionId,
      question_id: attempt.questionId || 0,
      selected_index: attempt.selectedIndex || 0,
      is_correct: attempt.isCorrect,
      time_spent_sec: attempt.timeSpentSec || 0,
      confidence: attempt.confidence || null
    }));
    if (attemptRows.length > 0) {
      await supabase.from("attempts").insert(attemptRows);
    }
    const topicStats = {};
    attempts.forEach((a) => {
      if (!topicStats[a.topic]) {
        topicStats[a.topic] = { total: 0, correct: 0 };
      }
      topicStats[a.topic].total++;
      if (a.isCorrect) topicStats[a.topic].correct++;
    });
    const skillScoreRows = Object.entries(topicStats).map(([topic, stats]) => ({
      user_id: user.id,
      session_id: sessionId,
      topic,
      score: stats.total > 0 ? stats.correct / stats.total : 0,
      questions_n: stats.total
    }));
    if (skillScoreRows.length > 0) {
      await supabase.from("user_skill_scores").insert(skillScoreRows);
    }
    const calculateStreak = (lastDate, currentStreak) => {
      if (!lastDate) return { streak: 1, shouldUpdate: true };
      const today = (/* @__PURE__ */ new Date()).toISOString().split("T")[0];
      const yesterday = new Date(Date.now() - 864e5).toISOString().split("T")[0];
      if (lastDate === today) return { streak: currentStreak, shouldUpdate: false };
      if (lastDate === yesterday) return { streak: currentStreak + 1, shouldUpdate: true };
      return { streak: 1, shouldUpdate: true };
    };
    const { streak, shouldUpdate } = calculateStreak(
      profile?.streak_last_date,
      profile?.streak_days || 0
    );
    if (shouldUpdate) {
      const today = (/* @__PURE__ */ new Date()).toISOString().split("T")[0];
      await supabase.from("user_profiles").update({ streak_days: streak, streak_last_date: today, updated_at: (/* @__PURE__ */ new Date()).toISOString() }).eq("user_id", user.id);
    }
    return c.json({
      success: true,
      data: {
        sessionId,
        questionsTotal,
        questionsCorrect,
        currentStreak: streak
      }
    });
  } catch (error) {
    console.error("Error recording session:", error);
    return c.json({ error: "Failed to record session" }, 500);
  }
});
app.post("/api/user/diagnostic", authMiddleware, async (c) => {
  const user = c.get("user");
  const supabase = getSupabaseAdmin();
  try {
    const body = await c.req.json();
    const { sessionId, skills, gaps, recommendedPlan, estimatedScore } = body;
    await supabase.from("user_profiles").update({ has_completed_diagnostic: true, updated_at: (/* @__PURE__ */ new Date()).toISOString() }).eq("user_id", user.id);
    await supabase.from("user_diagnostic_results").insert({
      user_id: user.id,
      session_id: sessionId || null,
      skills: JSON.stringify(skills || {}),
      gaps: JSON.stringify(gaps || []),
      recommended_plan: recommendedPlan || null,
      estimated_score: estimatedScore || null
    });
    return c.json({ success: true });
  } catch (error) {
    console.error("Error saving diagnostic:", error);
    return c.json({ error: "Failed to save diagnostic results" }, 500);
  }
});
app.get("/api/subscription", authMiddleware, async (c) => {
  const user = c.get("user");
  const supabase = getSupabaseAdmin();
  try {
    const { data: sub } = await supabase.from("subscriptions").select("*").eq("user_id", user.id).maybeSingle();
    if (!sub) {
      return c.json({
        tier: "free",
        isPremium: false,
        stripeCustomerId: null,
        stripeSubscriptionId: null,
        cancelAtPeriodEnd: false,
        expiresAt: null
      });
    }
    const isPremium = sub.tier === "premium" && (!sub.expires_at || new Date(sub.expires_at) > /* @__PURE__ */ new Date());
    return c.json({
      tier: sub.tier,
      isPremium,
      stripeCustomerId: sub.stripe_customer_id,
      stripeSubscriptionId: sub.stripe_subscription_id,
      cancelAtPeriodEnd: sub.cancel_at_period_end === true,
      expiresAt: sub.expires_at,
      startedAt: sub.started_at
    });
  } catch (error) {
    console.error("Error fetching subscription:", error);
    return c.json({ error: "Failed to fetch subscription" }, 500);
  }
});
app.post("/api/subscription/checkout", authMiddleware, async (c) => {
  const user = c.get("user");
  try {
    const stripe = new Stripe(process.env.STRIPE_SECRET_KEY);
    const body = await c.req.json();
    const { billingCycle, successUrl, cancelUrl } = body;
    const isYearly = billingCycle === "yearly";
    const priceId = isYearly ? STRIPE_YEARLY_PRICE_ID : STRIPE_MONTHLY_PRICE_ID;
    const session = await stripe.checkout.sessions.create({
      mode: "subscription",
      line_items: [
        {
          price: priceId,
          quantity: 1
        }
      ],
      subscription_data: {
        trial_period_days: 7
      },
      allow_promotion_codes: true,
      success_url: successUrl || `${c.req.header("origin")}/settings?success=true`,
      cancel_url: cancelUrl || `${c.req.header("origin")}/pricing?canceled=true`,
      client_reference_id: user.id,
      customer_email: user.email,
      metadata: {
        userId: user.id,
        userEmail: user.email,
        billingCycle: billingCycle || "monthly"
      }
    });
    return c.json({ url: session.url });
  } catch (error) {
    console.error("Error creating checkout session:", error);
    return c.json({ error: "Failed to create checkout session" }, 500);
  }
});
app.post("/api/subscription/portal", authMiddleware, async (c) => {
  const user = c.get("user");
  const supabase = getSupabaseAdmin();
  try {
    const stripe = new Stripe(process.env.STRIPE_SECRET_KEY);
    const { data: sub } = await supabase.from("subscriptions").select("stripe_customer_id").eq("user_id", user.id).maybeSingle();
    if (!sub?.stripe_customer_id) {
      return c.json({ error: "No subscription found" }, 404);
    }
    let returnUrl;
    try {
      const body = await c.req.json();
      returnUrl = body.returnUrl;
    } catch {
    }
    const session = await stripe.billingPortal.sessions.create({
      customer: sub.stripe_customer_id,
      return_url: returnUrl || `${c.req.header("origin")}/settings`
    });
    return c.json({ url: session.url });
  } catch (error) {
    console.error("Error creating portal session:", error);
    return c.json({ error: "Failed to create portal session" }, 500);
  }
});
app.post("/api/stripe/webhook", async (c) => {
  const supabase = getSupabaseAdmin();
  const body = await c.req.text();
  const sig = c.req.header("stripe-signature") || "";
  let event;
  try {
    const stripe = new Stripe(process.env.STRIPE_SECRET_KEY);
    event = stripe.webhooks.constructEvent(
      body,
      sig,
      process.env.STRIPE_WEBHOOK_SECRET
    );
  } catch (err) {
    console.error("Webhook signature verification failed:", err);
    return c.text("Invalid signature", 400);
  }
  try {
    switch (event.type) {
      case "checkout.session.completed": {
        const session = event.data.object;
        const userId = session.client_reference_id || session.metadata?.userId;
        if (!userId) {
          console.error("No user ID in checkout session:", session.id);
          return c.text("Missing user ID in checkout session", 500);
        }
        const expiresAt = new Date(Date.now() + 30 * 24 * 60 * 60 * 1e3).toISOString();
        const { data: existing } = await supabase.from("subscriptions").select("id").eq("user_id", userId).maybeSingle();
        if (existing) {
          await supabase.from("subscriptions").update({
            tier: "premium",
            stripe_customer_id: session.customer,
            stripe_subscription_id: session.subscription,
            started_at: (/* @__PURE__ */ new Date()).toISOString(),
            expires_at: expiresAt,
            cancel_at_period_end: false,
            updated_at: (/* @__PURE__ */ new Date()).toISOString()
          }).eq("user_id", userId);
        } else {
          await supabase.from("subscriptions").insert({
            user_id: userId,
            tier: "premium",
            stripe_customer_id: session.customer,
            stripe_subscription_id: session.subscription,
            started_at: (/* @__PURE__ */ new Date()).toISOString(),
            expires_at: expiresAt
          });
        }
        break;
      }
      case "customer.subscription.updated": {
        const subscription = event.data.object;
        const customerId = subscription.customer;
        const subData = event.data.object;
        const periodEnd = typeof subData.current_period_end === "number" ? subData.current_period_end : Math.floor(Date.now() / 1e3) + 30 * 86400;
        const expiresAt = new Date(periodEnd * 1e3).toISOString();
        const cancelAtPeriodEnd = subscription.cancel_at_period_end;
        const tier = subscription.status === "active" || subscription.status === "trialing" ? "premium" : "free";
        await supabase.from("subscriptions").update({
          tier,
          expires_at: expiresAt,
          cancel_at_period_end: cancelAtPeriodEnd,
          updated_at: (/* @__PURE__ */ new Date()).toISOString()
        }).eq("stripe_customer_id", customerId);
        break;
      }
      case "customer.subscription.deleted": {
        const subscription = event.data.object;
        const customerId = subscription.customer;
        const { data: updated } = await supabase.from("subscriptions").update({
          tier: "free",
          cancel_at_period_end: false,
          updated_at: (/* @__PURE__ */ new Date()).toISOString()
        }).eq("stripe_customer_id", customerId).select();
        if (!updated || updated.length === 0) {
          console.error("subscription.deleted: no matching row for customer", customerId);
          return c.text("No subscription found for customer", 500);
        }
        break;
      }
      case "invoice.payment_succeeded": {
        const invoice = event.data.object;
        if (invoice.billing_reason === "subscription_cycle") {
          const customerId = invoice.customer;
          const periodEnd = invoice.lines?.data?.[0]?.period?.end;
          const expiresAt = periodEnd ? new Date(periodEnd * 1e3).toISOString() : new Date(Date.now() + 365 * 24 * 60 * 60 * 1e3).toISOString();
          await supabase.from("subscriptions").update({ expires_at: expiresAt, updated_at: (/* @__PURE__ */ new Date()).toISOString() }).eq("stripe_customer_id", customerId);
        }
        break;
      }
      case "invoice.payment_failed": {
        const invoice = event.data.object;
        const customerId = invoice.customer;
        console.log(`Payment failed for customer ${customerId}`);
        break;
      }
    }
  } catch (error) {
    console.error("Error processing webhook:", error);
    return c.text("Webhook processing error", 500);
  }
  return c.text("ok", 200);
});
async function getOrCreateBrowserSession(supabase, browserId) {
  let { data: session } = await supabase.from("anon_sessions").select("*").eq("browser_id", browserId).maybeSingle();
  if (!session) {
    await supabase.from("anon_sessions").insert({
      browser_id: browserId,
      streak_days: 0
    });
    const { data: newSession } = await supabase.from("anon_sessions").select("*").eq("browser_id", browserId).maybeSingle();
    session = newSession;
  }
  return session;
}
app.get("/api/progress/:browserId", async (c) => {
  const browserId = c.req.param("browserId");
  const supabase = getSupabaseAdmin();
  try {
    const anonSession = await getOrCreateBrowserSession(supabase, browserId);
    if (!anonSession) {
      return c.json({ error: "Failed to get session" }, 500);
    }
    const { data: skillScores } = await supabase.rpc("get_anon_skill_summary", {
      p_anon_session_id: anonSession.id
    });
    const { data: sessions } = await supabase.from("sessions").select("id, session_type, started_at, completed_at, questions_total, questions_correct, score_math, score_reading, metadata").eq("anon_session_id", anonSession.id).order("started_at", { ascending: false }).limit(50);
    const { data: diagnosticResult } = await supabase.from("diagnostic_results").select("*").eq("anon_session_id", anonSession.id).order("created_at", { ascending: false }).limit(1).maybeSingle();
    const topicProgress = {};
    const defaultTopics = [
      "algebra",
      "advanced_math",
      "problem_solving",
      "geometry",
      "information_ideas",
      "craft_structure",
      "expression",
      "conventions"
    ];
    defaultTopics.forEach((topic) => {
      topicProgress[topic] = {
        topic,
        questionsAttempted: 0,
        questionsCorrect: 0,
        lastPracticed: null,
        currentLevel: "foundation"
      };
    });
    if (skillScores) {
      skillScores.forEach((row) => {
        const accuracy = row.avg_score || 0;
        topicProgress[row.topic] = {
          topic: row.topic,
          questionsAttempted: row.total_attempted || 0,
          questionsCorrect: Math.round((row.total_attempted || 0) * accuracy),
          lastPracticed: null,
          currentLevel: accuracy >= 0.85 ? "advanced" : accuracy >= 0.7 ? "proficient" : accuracy >= 0.5 ? "developing" : "foundation"
        };
      });
    }
    const mathTopics = ["algebra", "advanced_math", "problem_solving", "geometry"];
    const rwTopics = ["information_ideas", "craft_structure", "expression", "conventions"];
    const calcScore = (topics) => {
      let total = 0;
      let count = 0;
      topics.forEach((t) => {
        const p = topicProgress[t];
        if (p && p.questionsAttempted > 0) {
          total += p.questionsCorrect / p.questionsAttempted;
          count++;
        }
      });
      const accuracy = count > 0 ? Math.min(1, Math.max(0, total / count)) : 0.5;
      return Math.round(200 + accuracy * 600);
    };
    return c.json({
      success: true,
      data: {
        topicProgress,
        currentStreak: anonSession.streak_days || 0,
        longestStreak: anonSession.streak_days || 0,
        lastPracticeDate: anonSession.streak_last_date || null,
        estimatedMathScore: calcScore(mathTopics),
        estimatedRWScore: calcScore(rwTopics),
        sessions: (sessions || []).map((s) => ({
          id: `session_${s.id}`,
          date: s.started_at,
          type: s.session_type,
          questionsAttempted: s.questions_total || 0,
          questionsCorrect: s.questions_correct || 0,
          topics: safeParseTopics(s.metadata),
          timeSpentSeconds: 0
        })),
        diagnosticCompleted: !!diagnosticResult,
        diagnosticDate: diagnosticResult?.created_at || null
      }
    });
  } catch (error) {
    console.error("Error fetching progress:", error);
    return c.json({ error: "Failed to fetch progress" }, 500);
  }
});
app.post("/api/anonymous/sessions", async (c) => {
  const supabase = getSupabaseAdmin();
  try {
    const body = await c.req.json();
    const { browserId, sessionType, attempts, timeSpentSeconds } = body;
    if (!browserId || !sessionType || !attempts) {
      return c.json({ error: "Missing required fields" }, 400);
    }
    const anonSession = await getOrCreateBrowserSession(supabase, browserId);
    if (!anonSession) {
      return c.json({ error: "Failed to get session" }, 500);
    }
    const questionsTotal = attempts.length;
    const questionsCorrect = attempts.filter((a) => a.isCorrect).length;
    const topics = [...new Set(attempts.map((a) => a.topic))];
    const { data: sessionData, error: sessionError } = await supabase.from("sessions").insert({
      anon_session_id: anonSession.id,
      session_type: sessionType,
      questions_total: questionsTotal,
      questions_correct: questionsCorrect,
      metadata: JSON.stringify({ topics, timeSpentSeconds })
    }).select("id").single();
    if (sessionError || !sessionData) {
      console.error("Error creating session:", sessionError);
      return c.json({ error: "Failed to create session" }, 500);
    }
    const sessionId = sessionData.id;
    const attemptRows = attempts.map((attempt) => ({
      session_id: sessionId,
      question_id: attempt.questionId || 0,
      selected_index: attempt.selectedIndex || 0,
      is_correct: attempt.isCorrect,
      time_spent_sec: attempt.timeSpentSec || 0,
      confidence: attempt.confidence || null
    }));
    if (attemptRows.length > 0) {
      await supabase.from("attempts").insert(attemptRows);
    }
    const topicStats = {};
    attempts.forEach((a) => {
      if (!topicStats[a.topic]) {
        topicStats[a.topic] = { total: 0, correct: 0 };
      }
      topicStats[a.topic].total++;
      if (a.isCorrect) topicStats[a.topic].correct++;
    });
    const skillScoreRows = Object.entries(topicStats).map(([topic, stats]) => ({
      anon_session_id: anonSession.id,
      session_id: sessionId,
      topic,
      score: stats.total > 0 ? stats.correct / stats.total : 0,
      questions_n: stats.total
    }));
    if (skillScoreRows.length > 0) {
      await supabase.from("skill_scores").insert(skillScoreRows);
    }
    const today = (/* @__PURE__ */ new Date()).toISOString().split("T")[0];
    const yesterday = new Date(Date.now() - 864e5).toISOString().split("T")[0];
    let streak = 1;
    if (anonSession.streak_last_date) {
      if (anonSession.streak_last_date === today) {
        streak = anonSession.streak_days;
      } else if (anonSession.streak_last_date === yesterday) {
        streak = anonSession.streak_days + 1;
      }
    }
    await supabase.from("anon_sessions").update({ streak_days: streak, streak_last_date: today, updated_at: (/* @__PURE__ */ new Date()).toISOString() }).eq("id", anonSession.id);
    return c.json({
      success: true,
      data: {
        sessionId,
        questionsTotal,
        questionsCorrect,
        currentStreak: streak
      }
    });
  } catch (error) {
    console.error("Error recording session:", error);
    return c.json({ error: "Failed to record session" }, 500);
  }
});
app.post("/api/anonymous/diagnostic", async (c) => {
  const supabase = getSupabaseAdmin();
  try {
    const body = await c.req.json();
    const { browserId, skills, estimatedScore } = body;
    if (!browserId) {
      return c.json({ error: "Missing browser ID" }, 400);
    }
    const anonSession = await getOrCreateBrowserSession(supabase, browserId);
    if (!anonSession) {
      return c.json({ error: "Failed to get session" }, 500);
    }
    await supabase.from("diagnostic_results").insert({
      anon_session_id: anonSession.id,
      skills: JSON.stringify(skills || {}),
      estimated_score: estimatedScore || null
    });
    return c.json({ success: true });
  } catch (error) {
    console.error("Error saving diagnostic:", error);
    return c.json({ error: "Failed to save diagnostic results" }, 500);
  }
});
app.delete("/api/progress/:browserId", async (c) => {
  const browserId = c.req.param("browserId");
  const supabase = getSupabaseAdmin();
  try {
    const { data: anonSession } = await supabase.from("anon_sessions").select("id").eq("browser_id", browserId).maybeSingle();
    if (anonSession) {
      const { data: sessionRows } = await supabase.from("sessions").select("id").eq("anon_session_id", anonSession.id);
      if (sessionRows && sessionRows.length > 0) {
        const sessionIds = sessionRows.map((s) => s.id);
        await supabase.from("attempts").delete().in("session_id", sessionIds);
      }
      await supabase.from("skill_scores").delete().eq("anon_session_id", anonSession.id);
      await supabase.from("diagnostic_results").delete().eq("anon_session_id", anonSession.id);
      await supabase.from("sessions").delete().eq("anon_session_id", anonSession.id);
      await supabase.from("anon_sessions").delete().eq("id", anonSession.id);
    }
    await supabase.from("chat_usage").delete().eq("browser_id", browserId);
    await supabase.from("tutor_usage").delete().eq("browser_id", browserId);
    return c.json({ success: true });
  } catch (error) {
    console.error("Error deleting progress:", error);
    return c.json({ error: "Failed to delete progress" }, 500);
  }
});
app.post("/api/agents/feedback", optionalAuthMiddleware, async (c) => {
  const user = c.get("user");
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const rating = Number(body.rating);
  if (rating !== 1 && rating !== -1) {
    return c.json({ error: "rating must be 1 or -1" }, 400);
  }
  const agentCallId = typeof body.agentCallId === "number" ? body.agentCallId : null;
  const tutorTurnId = typeof body.tutorTurnId === "number" ? body.tutorTurnId : null;
  if (agentCallId === null && tutorTurnId === null) {
    return c.json({ error: "agentCallId or tutorTurnId required" }, 400);
  }
  const freeText = typeof body.freeText === "string" ? body.freeText.slice(0, 2e3) : null;
  const supabase = getSupabaseAdmin();
  const { error } = await supabase.from("ai_agent_feedback").insert({
    agent_call_id: agentCallId,
    tutor_turn_id: tutorTurnId,
    user_id: user?.id ?? null,
    rating,
    free_text: freeText
  });
  if (error) {
    console.error("Failed to insert ai_agent_feedback:", error.message);
    return c.json({ error: "Failed to record feedback" }, 500);
  }
  return c.json({ success: true });
});
app.post("/api/agents/echo", optionalAuthMiddleware, async (c) => {
  const user = c.get("user");
  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  if (typeof body.message !== "string" || body.message.length === 0) {
    return c.json({ error: "message required" }, 400);
  }
  try {
    const supabase = getSupabaseAdmin();
    const result = await runAgent(
      echoAgent,
      { message: body.message },
      { userId: user?.id },
      process.env.OPENAI_API_KEY,
      supabase
    );
    return c.json({ success: true, ...result });
  } catch (err) {
    console.error("Echo agent error:", err);
    return c.json({ error: "Agent failed" }, 500);
  }
});
function parseDiagnosticianAttempts(raw) {
  if (!Array.isArray(raw) || raw.length === 0) return null;
  const out = [];
  for (const item of raw) {
    if (typeof item !== "object" || item === null) return null;
    const o = item;
    if (typeof o.questionId !== "string" || typeof o.domain !== "string" || typeof o.skill !== "string" || o.difficulty !== "E" && o.difficulty !== "M" && o.difficulty !== "H" || typeof o.selectedIndex !== "number" || typeof o.correctIndex !== "number" || typeof o.isCorrect !== "boolean" || o.confidence !== "guessing" && o.confidence !== "somewhat" && o.confidence !== "confident" || typeof o.timeSpent !== "number") {
      return null;
    }
    out.push({
      questionId: o.questionId,
      domain: o.domain,
      skill: o.skill,
      difficulty: o.difficulty,
      selectedIndex: o.selectedIndex,
      correctIndex: o.correctIndex,
      isCorrect: o.isCorrect,
      confidence: o.confidence,
      timeSpent: o.timeSpent
    });
  }
  return out;
}
app.post("/api/agents/diagnostician", optionalAuthMiddleware, async (c) => {
  const user = c.get("user");
  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const attempts = parseDiagnosticianAttempts(body.attempts);
  if (!attempts) {
    return c.json({ error: "attempts[] missing or malformed" }, 400);
  }
  const input = {
    attempts,
    testDate: typeof body.testDate === "string" ? body.testDate : void 0
  };
  const sessionId = typeof body.sessionId === "number" ? body.sessionId : void 0;
  const supabase = getSupabaseAdmin();
  try {
    const result = await runAgent(
      diagnosticianAgent,
      input,
      { userId: user?.id, sessionId },
      process.env.OPENAI_API_KEY,
      supabase
    );
    const { data: inserted, error: insertErr } = await supabase.from("ai_diagnoses").insert({
      user_id: user?.id ?? null,
      session_id: sessionId ?? null,
      weaknesses: result.output.weaknesses,
      strengths: result.output.strengths,
      estimated_math: result.output.estimated_math_score,
      estimated_rw: result.output.estimated_rw_score,
      calibration_score: result.output.calibration_score,
      top_focus: result.output.top_focus,
      summary: result.output.summary
    }).select("id").single();
    if (insertErr) {
      console.error("Failed to persist ai_diagnoses:", insertErr.message);
    }
    if (user?.id) {
      const { error: profileErr } = await supabase.from("user_profiles").update({
        estimated_math_score: result.output.estimated_math_score,
        estimated_rw_score: result.output.estimated_rw_score,
        has_completed_diagnostic: true,
        updated_at: (/* @__PURE__ */ new Date()).toISOString()
      }).eq("user_id", user.id);
      if (profileErr) {
        console.error("Failed to update user_profiles:", profileErr.message);
      }
    }
    return c.json({
      success: true,
      diagnosis_id: inserted?.id ?? null,
      diagnosis: result.output,
      model: result.model,
      promptTokens: result.promptTokens,
      completionTokens: result.completionTokens,
      latencyMs: result.latencyMs,
      agentCallId: result.agentCallId
    });
  } catch (err) {
    console.error("Diagnostician agent error:", err);
    return c.json({ error: "Diagnostician failed" }, 500);
  }
});
function parseCoachRecentAttempts(raw) {
  if (!Array.isArray(raw)) return null;
  const out = [];
  for (const item of raw) {
    if (typeof item !== "object" || item === null) return null;
    const o = item;
    if (typeof o.topic !== "string" || typeof o.skill !== "string" || typeof o.difficulty !== "string" || typeof o.isCorrect !== "boolean" || typeof o.timeSpent !== "number" || typeof o.confidence !== "string") {
      return null;
    }
    out.push({
      topic: o.topic,
      skill: o.skill,
      skillDisplay: typeof o.skillDisplay === "string" ? o.skillDisplay : void 0,
      difficulty: o.difficulty,
      isCorrect: o.isCorrect,
      timeSpent: o.timeSpent,
      confidence: o.confidence
    });
  }
  return out;
}
app.post("/api/agents/coach", optionalAuthMiddleware, async (c) => {
  const user = c.get("user");
  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const recentAttempts = parseCoachRecentAttempts(body.recentAttempts);
  if (!recentAttempts) {
    return c.json({ error: "recentAttempts[] missing or malformed" }, 400);
  }
  const cq = body.currentQuestion;
  if (typeof cq !== "object" || cq === null || typeof cq.topic !== "string" || typeof cq.skill !== "string" || typeof cq.difficulty !== "string") {
    return c.json({ error: "currentQuestion missing or malformed" }, 400);
  }
  const cqRec = cq;
  if (typeof body.sessionDuration !== "number" || typeof body.totalAttempts !== "number") {
    return c.json({ error: "sessionDuration and totalAttempts required (numbers)" }, 400);
  }
  const input = {
    recentAttempts,
    currentQuestion: {
      topic: cqRec.topic,
      skill: cqRec.skill,
      topicDisplay: typeof cq.topicDisplay === "string" ? cq.topicDisplay : void 0,
      skillDisplay: typeof cq.skillDisplay === "string" ? cq.skillDisplay : void 0,
      difficulty: cqRec.difficulty
    },
    sessionDuration: body.sessionDuration,
    totalAttempts: body.totalAttempts,
    sessionAccuracy: typeof body.sessionAccuracy === "number" ? body.sessionAccuracy : void 0,
    skillAccuracy: typeof body.skillAccuracy === "number" ? body.skillAccuracy : void 0
  };
  try {
    const supabase = getSupabaseAdmin();
    if (user?.id) {
      try {
        const { data: profile } = await supabase.from("user_profiles").select("display_name, target_score, test_date, streak_days, estimated_math_score, estimated_rw_score").eq("user_id", user.id).maybeSingle();
        if (profile) {
          const typedProfile = profile;
          const daysUntilTest = typedProfile.test_date ? Math.max(
            0,
            Math.ceil(
              (new Date(typedProfile.test_date).getTime() - Date.now()) / 864e5
            )
          ) : void 0;
          const currentPredictedScore = (typedProfile.estimated_math_score ?? 0) + (typedProfile.estimated_rw_score ?? 0);
          input.studentContext = {
            displayName: typedProfile.display_name,
            targetScore: typedProfile.target_score,
            currentPredictedScore: currentPredictedScore || void 0,
            testDate: typedProfile.test_date,
            daysUntilTest,
            streakDays: typedProfile.streak_days
          };
        }
      } catch (err) {
        console.error("[coach route] failed to fetch studentContext:", err);
      }
    }
    const result = await runAgent(
      coachAgent,
      input,
      { userId: user?.id },
      process.env.OPENAI_API_KEY,
      supabase
    );
    return c.json({
      success: true,
      coach: result.output,
      model: result.model,
      latencyMs: result.latencyMs,
      agentCallId: result.agentCallId
    });
  } catch (err) {
    console.error("Coach agent error:", err);
    return c.json({ error: "Coach failed" }, 500);
  }
});
app.post("/api/agents/explainer", optionalAuthMiddleware, async (c) => {
  const user = c.get("user");
  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const required = [
    "questionId",
    "stem",
    "correctAnswer",
    "studentAnswer",
    "officialRationale",
    "studentExplanation",
    "topic",
    "skill",
    "difficulty"
  ];
  for (const k of required) {
    if (typeof body[k] !== "string" || body[k].length === 0) {
      return c.json({ error: `${k} must be a non-empty string` }, 400);
    }
  }
  if (!Array.isArray(body.options) || !body.options.every((s) => typeof s === "string")) {
    return c.json({ error: "options must be string[]" }, 400);
  }
  const input = {
    questionId: body.questionId,
    stem: body.stem,
    passage: typeof body.passage === "string" ? body.passage : void 0,
    options: body.options,
    correctAnswer: body.correctAnswer,
    studentAnswer: body.studentAnswer,
    officialRationale: body.officialRationale,
    studentExplanation: body.studentExplanation,
    topic: body.topic,
    skill: body.skill,
    difficulty: body.difficulty
  };
  try {
    const supabase = getSupabaseAdmin();
    const extraContext = await fetchStudentContext(supabase, user?.id);
    const result = await runAgent(
      explainerAgent,
      input,
      { userId: user?.id, extraContext },
      process.env.OPENAI_API_KEY,
      supabase
    );
    return c.json({
      success: true,
      explainer: result.output,
      model: result.model,
      latencyMs: result.latencyMs,
      agentCallId: result.agentCallId
    });
  } catch (err) {
    console.error("Explainer agent error:", err);
    return c.json({ error: "Explainer failed" }, 500);
  }
});
function parseReviewerAttempts(raw) {
  if (!Array.isArray(raw)) return null;
  const out = [];
  for (const item of raw) {
    if (typeof item !== "object" || item === null) return null;
    const o = item;
    if (typeof o.questionId !== "string" || typeof o.topic !== "string" || typeof o.skill !== "string" || typeof o.difficulty !== "string" || typeof o.isCorrect !== "boolean" || typeof o.timeSpent !== "number" || typeof o.confidence !== "string") {
      return null;
    }
    out.push({
      questionId: o.questionId,
      topic: o.topic,
      skill: o.skill,
      difficulty: o.difficulty,
      isCorrect: o.isCorrect,
      timeSpent: o.timeSpent,
      confidence: o.confidence
    });
  }
  return out;
}
async function fetchPreviousContext(supabase, userId) {
  const fallback = {
    math: 400,
    rw: 400,
    calibration: 50,
    weaknesses: []
  };
  if (!userId) return fallback;
  const { data: latestReview } = await supabase.from("ai_session_reviews").select("estimated_math, estimated_rw, calibration_score").eq("user_id", userId).order("created_at", { ascending: false }).limit(1).maybeSingle();
  const { data: latestDiagnosis } = await supabase.from("ai_diagnoses").select("estimated_math, estimated_rw, calibration_score, weaknesses").eq("user_id", userId).order("created_at", { ascending: false }).limit(1).maybeSingle();
  const { data: profile } = await supabase.from("user_profiles").select("estimated_math_score, estimated_rw_score").eq("user_id", userId).maybeSingle();
  const weaknesses = (() => {
    const raw = latestDiagnosis?.weaknesses;
    if (!Array.isArray(raw)) return [];
    return raw.map((w) => typeof w === "object" && w !== null ? w.skill : null).filter((s) => typeof s === "string");
  })();
  const math = latestReview?.estimated_math ?? latestDiagnosis?.estimated_math ?? profile?.estimated_math_score ?? fallback.math;
  const rw = latestReview?.estimated_rw ?? latestDiagnosis?.estimated_rw ?? profile?.estimated_rw_score ?? fallback.rw;
  const calibration = latestReview?.calibration_score ?? latestDiagnosis?.calibration_score ?? fallback.calibration;
  return { math, rw, calibration, weaknesses };
}
app.post("/api/agents/reviewer", optionalAuthMiddleware, async (c) => {
  const user = c.get("user");
  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const sessionId = typeof body.sessionId === "number" ? body.sessionId : null;
  if (sessionId === null) {
    return c.json({ error: "sessionId (number) required" }, 400);
  }
  if (typeof body.session !== "object" || body.session === null) {
    return c.json({ error: "session metadata required" }, 400);
  }
  const sessionMeta = body.session;
  if (typeof sessionMeta.startedAt !== "string" || typeof sessionMeta.endedAt !== "string" || typeof sessionMeta.sessionType !== "string" || typeof sessionMeta.totalAttempts !== "number" || typeof sessionMeta.correctCount !== "number") {
    return c.json({ error: "session metadata malformed" }, 400);
  }
  const attempts = parseReviewerAttempts(body.attempts);
  if (!attempts || attempts.length === 0) {
    return c.json({ error: "attempts[] missing or empty" }, 400);
  }
  const supabase = getSupabaseAdmin();
  const previous = await fetchPreviousContext(supabase, user?.id);
  let reviewerStudentContext;
  if (user?.id) {
    try {
      const [profileRes, sessionsCountRes] = await Promise.all([
        supabase.from("user_profiles").select("display_name, target_score, test_date, streak_days").eq("user_id", user.id).maybeSingle(),
        supabase.from("user_sessions").select("id", { count: "exact", head: true }).eq("user_id", user.id).gte(
          "started_at",
          new Date(Date.now() - 7 * 24 * 60 * 60 * 1e3).toISOString()
        )
      ]);
      const profile = profileRes.data;
      const daysUntilTest = profile?.test_date ? Math.max(0, Math.ceil((new Date(profile.test_date).getTime() - Date.now()) / 864e5)) : void 0;
      reviewerStudentContext = {
        displayName: profile?.display_name,
        targetScore: profile?.target_score,
        testDate: profile?.test_date,
        daysUntilTest,
        streakDays: profile?.streak_days,
        sessionsThisWeek: sessionsCountRes.count ?? void 0
      };
    } catch (err) {
      console.error("[reviewer route] failed to fetch student context:", err);
    }
  }
  const input = {
    session: {
      startedAt: sessionMeta.startedAt,
      endedAt: sessionMeta.endedAt,
      sessionType: sessionMeta.sessionType,
      topic: typeof sessionMeta.topic === "string" ? sessionMeta.topic : void 0,
      totalAttempts: sessionMeta.totalAttempts,
      correctCount: sessionMeta.correctCount
    },
    attempts,
    previousScores: {
      math: previous.math,
      rw: previous.rw,
      calibration: previous.calibration
    },
    previousWeaknesses: previous.weaknesses.length > 0 ? previous.weaknesses : void 0,
    studentContext: reviewerStudentContext
  };
  try {
    const result = await runAgent(
      reviewerAgent,
      input,
      { userId: user?.id, sessionId },
      process.env.OPENAI_API_KEY,
      supabase
    );
    const { data: inserted, error: insertErr } = await supabase.from("ai_session_reviews").insert({
      session_id: sessionId,
      user_id: user?.id ?? null,
      highlights: result.output.highlights,
      patterns: result.output.patterns,
      calibration_score: result.output.new_calibration,
      estimated_math: result.output.new_math,
      estimated_rw: result.output.new_rw,
      next_session_focus: result.output.next_session_focus,
      summary: result.output.summary
    }).select("id").single();
    if (insertErr) {
      console.error("Failed to persist ai_session_reviews:", insertErr.message);
    }
    if (user?.id) {
      const { error: profileErr } = await supabase.from("user_profiles").update({
        estimated_math_score: result.output.new_math,
        estimated_rw_score: result.output.new_rw,
        updated_at: (/* @__PURE__ */ new Date()).toISOString()
      }).eq("user_id", user.id);
      if (profileErr) {
        console.error("Failed to update user_profiles after review:", profileErr.message);
      }
    }
    return c.json({
      success: true,
      review_id: inserted?.id ?? null,
      review: result.output,
      previous: {
        math: previous.math,
        rw: previous.rw,
        calibration: previous.calibration
      },
      model: result.model,
      promptTokens: result.promptTokens,
      completionTokens: result.completionTokens,
      latencyMs: result.latencyMs,
      agentCallId: result.agentCallId
    });
  } catch (err) {
    console.error("Reviewer agent error:", err);
    return c.json({ error: "Reviewer failed" }, 500);
  }
});
app.post("/api/reviewer/dismiss", optionalAuthMiddleware, async (c) => {
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const reviewId = Number(body.review_id);
  const pattern = typeof body.pattern === "string" ? body.pattern : "";
  if (!Number.isFinite(reviewId) || !pattern) {
    return c.json({ error: "review_id (number) and pattern (string) required" }, 400);
  }
  const supabase = getSupabaseAdmin();
  const { data: row, error: readErr } = await supabase.from("ai_session_reviews").select("dismissed_patterns").eq("id", reviewId).maybeSingle();
  if (readErr || !row) {
    return c.json({ error: "Review not found" }, 404);
  }
  const current = Array.isArray(row.dismissed_patterns) ? row.dismissed_patterns : [];
  if (current.includes(pattern)) {
    return c.json({ success: true, already: true });
  }
  const next = [...current, pattern];
  const { error: updErr } = await supabase.from("ai_session_reviews").update({ dismissed_patterns: next }).eq("id", reviewId);
  if (updErr) {
    return c.json({ error: updErr.message }, 500);
  }
  return c.json({ success: true });
});
app.get("/api/reviewer/recent-insights", optionalAuthMiddleware, async (c) => {
  const user = c.get("user");
  if (!user?.id) {
    return c.json({ insights: [] });
  }
  const supabase = getSupabaseAdmin();
  const { data, error } = await supabase.from("ai_session_reviews").select("id, patterns, dismissed_patterns, created_at, estimated_math, estimated_rw, summary").eq("user_id", user.id).order("created_at", { ascending: false }).limit(5);
  if (error) {
    return c.json({ error: error.message }, 500);
  }
  const insights = [];
  for (const row of data ?? []) {
    const dismissed = new Set(Array.isArray(row.dismissed_patterns) ? row.dismissed_patterns : []);
    const patterns = Array.isArray(row.patterns) ? row.patterns : [];
    for (const p of patterns) {
      if (typeof p !== "object" || p === null) continue;
      const obj = p;
      if (typeof obj.pattern !== "string" || dismissed.has(obj.pattern)) continue;
      insights.push({
        review_id: row.id,
        pattern: obj.pattern,
        severity: typeof obj.severity === "string" ? obj.severity : "low",
        type: typeof obj.type === "string" ? obj.type : "topic_weakness",
        evidence: typeof obj.evidence === "string" ? obj.evidence : "",
        created_at: row.created_at
      });
      if (insights.length >= 3) break;
    }
    if (insights.length >= 3) break;
  }
  return c.json({ insights });
});
function parseWeakSkills(raw) {
  if (!Array.isArray(raw)) return null;
  const out = [];
  for (const item of raw) {
    if (typeof item !== "object" || item === null) return null;
    const o = item;
    if (typeof o.skill !== "string" || typeof o.severity !== "string" || o.severity !== "high" && o.severity !== "medium" && o.severity !== "low" || typeof o.verified !== "boolean") {
      return null;
    }
    out.push({
      skill: o.skill,
      severity: o.severity,
      verified: o.verified
    });
  }
  return out;
}
async function fetchLatestWeaknesses(supabase, userId) {
  const { data: latest } = await supabase.from("ai_diagnoses").select("id, weaknesses").eq("user_id", userId).order("created_at", { ascending: false }).limit(1).maybeSingle();
  if (!latest || !Array.isArray(latest.weaknesses)) return [];
  const { data: verifications } = await supabase.from("ai_weakness_verifications").select("skill, user_response").eq("diagnosis_id", latest.id);
  const verifiedSet = new Set(
    (verifications ?? []).filter((v) => v.user_response === "confirmed").map((v) => v.skill)
  );
  const out = [];
  for (const w of latest.weaknesses) {
    if (typeof w !== "object" || w === null) continue;
    const obj = w;
    if (typeof obj.skill !== "string") continue;
    const sev = obj.severity;
    const severity = sev === "high" || sev === "medium" || sev === "low" ? sev : "medium";
    out.push({
      skill: obj.skill,
      severity,
      verified: verifiedSet.has(obj.skill)
    });
  }
  return out;
}
function nextMondayISO(from = /* @__PURE__ */ new Date()) {
  const d = new Date(from);
  const day = d.getDay();
  const offset = day === 0 ? 1 : day === 1 ? 0 : 8 - day;
  d.setDate(d.getDate() + offset);
  return d.toISOString().slice(0, 10);
}
app.post("/api/agents/planner", authMiddleware, async (c) => {
  const user = c.get("user");
  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const supabase = getSupabaseAdmin();
  const { data: profile } = await supabase.from("user_profiles").select("test_date, study_hours_per_week").eq("user_id", user.id).maybeSingle();
  const testDate = typeof body.testDate === "string" && body.testDate.length > 0 ? body.testDate : profile?.test_date;
  const hoursPerWeekRaw = typeof body.hoursPerWeek === "number" ? body.hoursPerWeek : Number(profile?.study_hours_per_week);
  const hoursPerWeek = Number.isFinite(hoursPerWeekRaw) ? Math.max(1, Math.min(40, hoursPerWeekRaw)) : null;
  const weekStartDate = typeof body.weekStartDate === "string" && body.weekStartDate.length > 0 ? body.weekStartDate : nextMondayISO();
  if (!testDate) {
    return c.json({ error: "testDate required (in body or on profile)" }, 400);
  }
  if (hoursPerWeek === null) {
    return c.json({ error: "hoursPerWeek (1-40) required" }, 400);
  }
  const bodyWeak = parseWeakSkills(body.weakSkills);
  const weakSkills = bodyWeak ?? await fetchLatestWeaknesses(supabase, user.id);
  const { data: priorPlan } = await supabase.from("ai_study_plans").select("original_plan_json, plan_json").eq("user_id", user.id).order("created_at", { ascending: false }).limit(1).maybeSingle();
  const previousPlanEdits = [];
  if (priorPlan) {
    try {
      const orig = priorPlan.original_plan_json;
      const edited = priorPlan.plan_json;
      const origDayBySkill = {};
      for (const day of orig?.week ?? []) {
        for (const s of day.sessions ?? []) {
          if (!(s.focusSkill in origDayBySkill)) origDayBySkill[s.focusSkill] = day.day;
        }
      }
      for (const day of edited?.week ?? []) {
        for (const s of day.sessions ?? []) {
          const origDay = origDayBySkill[s.focusSkill];
          if (origDay && origDay !== day.day) {
            previousPlanEdits.push({
              originalSuggestion: `${s.focusSkill} on ${origDay}`,
              userEdit: `${s.focusSkill} on ${day.day}`
            });
          }
        }
      }
    } catch {
    }
  }
  const input = {
    weakSkills,
    testDate,
    hoursPerWeek,
    weekStartDate,
    previousPlanEdits: previousPlanEdits.length > 0 ? previousPlanEdits : void 0
  };
  try {
    const result = await runAgent(
      plannerAgent,
      input,
      { userId: user.id },
      process.env.OPENAI_API_KEY,
      supabase
    );
    await supabase.from("ai_study_plans").update({ active: false, updated_at: (/* @__PURE__ */ new Date()).toISOString() }).eq("user_id", user.id).eq("active", true);
    const { data: inserted, error: insertErr } = await supabase.from("ai_study_plans").insert({
      user_id: user.id,
      week_start: weekStartDate,
      plan_json: result.output,
      original_plan_json: result.output,
      generated_by: "planner",
      active: true
    }).select("id, week_start, plan_json, original_plan_json, active, created_at").single();
    if (insertErr || !inserted) {
      console.error("Failed to persist ai_study_plans:", insertErr?.message);
      return c.json({ error: "Plan generated but failed to save" }, 500);
    }
    return c.json({
      success: true,
      plan_id: inserted.id,
      plan: result.output,
      week_start: inserted.week_start,
      meta: {
        hoursAllocated: result.output.totalHoursAllocated,
        hoursBudget: hoursPerWeek
      },
      model: result.model,
      promptTokens: result.promptTokens,
      completionTokens: result.completionTokens,
      latencyMs: result.latencyMs,
      agentCallId: result.agentCallId
    });
  } catch (err) {
    console.error("Planner agent error:", err);
    return c.json({ error: "Planner failed" }, 500);
  }
});
app.get("/api/user/baseline-score", authMiddleware, async (c) => {
  const user = c.get("user");
  const supabase = getSupabaseAdmin();
  const { data, error } = await supabase.from("ai_diagnoses").select("estimated_math, estimated_rw, created_at").eq("user_id", user.id).order("created_at", { ascending: true }).limit(1).maybeSingle();
  if (error) return c.json({ error: error.message }, 500);
  if (!data) return c.json({ error: "no_diagnosis" }, 404);
  return c.json({
    baselineMath: data.estimated_math,
    baselineRw: data.estimated_rw,
    diagnosisDate: data.created_at
  });
});
app.get("/api/plan/active", authMiddleware, async (c) => {
  const user = c.get("user");
  const supabase = getSupabaseAdmin();
  const { data, error } = await supabase.from("ai_study_plans").select("id, week_start, plan_json, original_plan_json, active, created_at, updated_at").eq("user_id", user.id).eq("active", true).order("created_at", { ascending: false }).limit(1).maybeSingle();
  if (error) return c.json({ error: error.message }, 500);
  return c.json({ plan: data ?? null });
});
app.post("/api/plan/save", authMiddleware, async (c) => {
  const user = c.get("user");
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const planId = Number(body.plan_id);
  if (!Number.isFinite(planId)) {
    return c.json({ error: "plan_id (number) required" }, 400);
  }
  if (typeof body.plan_json !== "object" || body.plan_json === null) {
    return c.json({ error: "plan_json (object) required" }, 400);
  }
  const supabase = getSupabaseAdmin();
  const { data: row, error: readErr } = await supabase.from("ai_study_plans").select("id, user_id, active").eq("id", planId).maybeSingle();
  if (readErr || !row) return c.json({ error: "Plan not found" }, 404);
  if (row.user_id !== user.id) return c.json({ error: "Forbidden" }, 403);
  const { error: updErr } = await supabase.from("ai_study_plans").update({ plan_json: body.plan_json, updated_at: (/* @__PURE__ */ new Date()).toISOString() }).eq("id", planId);
  if (updErr) return c.json({ error: updErr.message }, 500);
  return c.json({ success: true });
});
app.post("/api/agents/concept", optionalAuthMiddleware, async (c) => {
  const user = c.get("user");
  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const required = [
    "questionId",
    "stem",
    "correctAnswer",
    "topic",
    "skill",
    "difficulty"
  ];
  for (const k of required) {
    if (typeof body[k] !== "string" || body[k].length === 0) {
      return c.json({ error: `${k} must be a non-empty string` }, 400);
    }
  }
  if (!Array.isArray(body.options) || !body.options.every((s) => typeof s === "string")) {
    return c.json({ error: "options must be string[]" }, 400);
  }
  const input = {
    questionId: body.questionId,
    stem: body.stem,
    passage: typeof body.passage === "string" ? body.passage : void 0,
    options: body.options,
    correctAnswer: body.correctAnswer,
    studentAnswer: typeof body.studentAnswer === "string" ? body.studentAnswer : void 0,
    topic: body.topic,
    skill: body.skill,
    difficulty: body.difficulty,
    officialRationale: typeof body.officialRationale === "string" ? body.officialRationale : void 0
  };
  try {
    const supabase = getSupabaseAdmin();
    const extraContext = await fetchStudentContext(supabase, user?.id);
    const result = await runAgent(
      conceptAgent,
      input,
      { userId: user?.id, extraContext },
      process.env.OPENAI_API_KEY,
      supabase
    );
    return c.json({
      success: true,
      concept: result.output,
      model: result.model,
      latencyMs: result.latencyMs,
      agentCallId: result.agentCallId
    });
  } catch (err) {
    console.error("Concept agent error:", err);
    return c.json({ error: "Concept failed" }, 500);
  }
});
function parseNextPracticeRecent(raw) {
  if (!Array.isArray(raw)) return null;
  const out = [];
  for (const item of raw) {
    if (typeof item !== "object" || item === null) return null;
    const o = item;
    if (typeof o.topic !== "string" || typeof o.skill !== "string" || typeof o.difficulty !== "string" || typeof o.isCorrect !== "boolean") {
      return null;
    }
    out.push({
      topic: o.topic,
      skill: o.skill,
      difficulty: o.difficulty,
      isCorrect: o.isCorrect
    });
  }
  return out;
}
app.post("/api/agents/next-practice", optionalAuthMiddleware, async (c) => {
  const user = c.get("user");
  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const requiredStrings = [
    "questionId",
    "topic",
    "skill",
    "difficulty"
  ];
  for (const k of requiredStrings) {
    if (typeof body[k] !== "string" || body[k].length === 0) {
      return c.json({ error: `${k} must be a non-empty string` }, 400);
    }
  }
  if (typeof body.isCorrect !== "boolean") {
    return c.json({ error: "isCorrect must be boolean" }, 400);
  }
  const recent = parseNextPracticeRecent(body.recentAttempts ?? []);
  if (!recent) {
    return c.json({ error: "recentAttempts malformed" }, 400);
  }
  const input = {
    questionId: body.questionId,
    topic: body.topic,
    skill: body.skill,
    difficulty: body.difficulty,
    isCorrect: body.isCorrect,
    recentAttempts: recent
  };
  try {
    const supabase = getSupabaseAdmin();
    const extraContext = await fetchStudentContext(supabase, user?.id);
    const result = await runAgent(
      nextPracticeAgent,
      input,
      { userId: user?.id, extraContext },
      process.env.OPENAI_API_KEY,
      supabase
    );
    return c.json({
      success: true,
      nextPractice: result.output,
      model: result.model,
      latencyMs: result.latencyMs,
      agentCallId: result.agentCallId
    });
  } catch (err) {
    console.error("NextPractice agent error:", err);
    return c.json({ error: "NextPractice failed" }, 500);
  }
});
app.post("/api/diagnostician/verify", optionalAuthMiddleware, async (c) => {
  let body;
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }
  const diagnosisId = Number(body.diagnosis_id);
  const skill = typeof body.skill === "string" ? body.skill : "";
  const response = body.response;
  if (!Number.isFinite(diagnosisId) || !skill || response !== "confirmed" && response !== "misread" && response !== "maybe") {
    return c.json({ error: "diagnosis_id (number), skill (string), response ('confirmed'|'misread'|'maybe') required" }, 400);
  }
  const supabase = getSupabaseAdmin();
  const { error } = await supabase.from("ai_weakness_verifications").insert({
    diagnosis_id: diagnosisId,
    skill,
    user_response: response
  });
  if (error) {
    console.error("Failed to insert ai_weakness_verifications:", error.message);
    return c.json({ error: "Failed to save verification" }, 500);
  }
  return c.json({ success: true });
});
app.get("/api/admin/agent-calls", async (c) => {
  const supabase = getSupabaseAdmin();
  const agent = c.req.query("agent");
  let q = supabase.from("ai_agent_calls").select("*").order("created_at", { ascending: false }).limit(100);
  if (agent && agent !== "all") q = q.eq("agent", agent);
  const { data, error } = await q;
  if (error) return c.json({ error: error.message }, 500);
  return c.json({ rows: data ?? [] });
});
app.get("/api/admin/tutor-turns", async (c) => {
  const supabase = getSupabaseAdmin();
  const { data, error } = await supabase.from("ai_tutor_turns").select(
    "id, conversation_id, role, content, tool_calls, model, prompt_tokens, completion_tokens, latency_ms, created_at, user_id, error"
  ).order("created_at", { ascending: false }).limit(100);
  if (error) return c.json({ error: error.message }, 500);
  const rows = (data ?? []).map((r) => ({
    ...r,
    content: typeof r.content === "string" && r.content.length > 200 ? r.content.slice(0, 200) + "\u2026" : r.content
  }));
  const startOfToday = /* @__PURE__ */ new Date();
  startOfToday.setHours(0, 0, 0, 0);
  const { count: toolCallsToday } = await supabase.from("ai_tutor_turns").select("id", { count: "exact", head: true }).gte("created_at", startOfToday.toISOString()).not("tool_calls", "is", null);
  return c.json({ rows, toolCallsToday: toolCallsToday ?? 0 });
});
var worker_default = app;

// api/[[...route]].ts
var route_default = handle(worker_default);
export {
  route_default as default
};
