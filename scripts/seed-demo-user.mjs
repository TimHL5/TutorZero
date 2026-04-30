#!/usr/bin/env node
// Seed a demo account with realistic data so every Progress / Dashboard /
// Study Plan card has something to render.
//
// Wipes the user's prior practice data first (idempotent re-run), then writes:
//   user_profiles  → diagnostic done, streak, target, test date, headline scores
//   user_sessions  → 1 diagnostic + 8 practice sessions across the last ~3 weeks
//   attempts       → 15-20 per session (drives Calibration card)
//   user_skill_scores → per-(session, topic, skill) rows incl. weighted_correct
//   ai_session_reviews → highlights + patterns + estimated_math/rw per session
//   ai_diagnoses   → diagnostic findings (drives Diagnostic Results card)
//   ai_weakness_verifications → 3 HAI feedback rows
//   user_diagnostic_results → legacy diagnostic snapshot (worker still reads it)
//   ai_study_plans → active plan for the current week
//   subscriptions  → free tier
//
// Usage:
//   node scripts/seed-demo-user.mjs                   # default lidjw@bc.edu
//   node scripts/seed-demo-user.mjs other@example.com # any email already in auth.users
//
// Reads SUPABASE_ID + SUPABASE_SECRET_KEY (or SUPABASE_URL + SUPABASE_SERVICE_ROLE_KEY)
// from .env.local.

import { readFileSync } from "node:fs";
import { fileURLToPath } from "node:url";
import { dirname, resolve } from "node:path";
import { createClient } from "@supabase/supabase-js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const REPO_ROOT = resolve(__dirname, "..");

// ─── Env loading ────────────────────────────────────────────────────────────
function loadEnvFile(path) {
  try {
    const raw = readFileSync(path, "utf8");
    for (const line of raw.split("\n")) {
      const m = line.match(/^\s*([A-Z_][A-Z0-9_]*)\s*=\s*(.*?)\s*$/);
      if (!m) continue;
      let v = m[2];
      if ((v.startsWith('"') && v.endsWith('"')) || (v.startsWith("'") && v.endsWith("'"))) {
        v = v.slice(1, -1);
      }
      if (!process.env[m[1]]) process.env[m[1]] = v;
    }
  } catch {
    // ignore
  }
}
loadEnvFile(resolve(REPO_ROOT, ".env.local"));

const SUPABASE_URL =
  process.env.SUPABASE_URL ??
  (process.env.SUPABASE_ID ? `https://${process.env.SUPABASE_ID}.supabase.co` : null);
const SUPABASE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY ?? process.env.SUPABASE_SECRET_KEY;

if (!SUPABASE_URL || !SUPABASE_KEY) {
  console.error("ERROR: missing SUPABASE_URL/SUPABASE_ID and SUPABASE_SERVICE_ROLE_KEY/SUPABASE_SECRET_KEY in .env.local");
  process.exit(1);
}

const sb = createClient(SUPABASE_URL, SUPABASE_KEY, {
  auth: { persistSession: false, autoRefreshToken: false },
});

const EMAIL = process.argv[2] ?? "lidjw@bc.edu";

// ─── Helpers ────────────────────────────────────────────────────────────────
const DAY = 24 * 60 * 60 * 1000;
const today = new Date();
const dayOffset = (n) => new Date(today.getTime() - n * DAY);
const iso = (d) => d.toISOString();
const isoDate = (d) => d.toISOString().slice(0, 10);

function pickConfidence(isCorrect, accuracyTarget) {
  // High accuracy → mostly "confident"; low → mix of "guessing" + "somewhat".
  // Always emit some of each so the Calibration card has all 3 buckets.
  const r = Math.random();
  if (isCorrect) {
    if (accuracyTarget >= 0.8) return r < 0.7 ? "confident" : r < 0.9 ? "somewhat" : "guessing";
    if (accuracyTarget >= 0.65) return r < 0.5 ? "somewhat" : r < 0.85 ? "confident" : "guessing";
    return r < 0.55 ? "somewhat" : r < 0.8 ? "guessing" : "confident";
  }
  // Wrong: mostly "guessing"/"somewhat"; a few "confident" to drive misconceptions.
  if (r < 0.55) return "guessing";
  if (r < 0.9) return "somewhat";
  return "confident";
}

function weightForAttempt(isCorrect, confidence) {
  // Mirror the worker's per-attempt weighting (worker:1564-1568).
  if (!isCorrect) return 0;
  return confidence === "guessing" ? 0.5 : 1.0;
}

// ─── Demo session blueprint ─────────────────────────────────────────────────
// Each session: { daysAgo, type, durationMin, items: [{topic, skill, count, accuracyTarget}] }
// Designed so the cumulative deterministic score climbs from ~1000 (post-diag)
// to ~1300 across 8 weeks of practice, with focused sessions per domain.
const SESSIONS = [
  {
    daysAgo: 28, type: "diagnostic", durationMin: 35,
    items: [
      { topic: "algebra", skill: "linear_equations_one_var", count: 3, accuracyTarget: 0.5 },
      { topic: "advanced_math", skill: "nonlinear_functions", count: 2, accuracyTarget: 0.4 },
      { topic: "problem_solving", skill: "percentages", count: 2, accuracyTarget: 0.5 },
      { topic: "geometry", skill: "circles", count: 2, accuracyTarget: 0.5 },
      { topic: "information_ideas", skill: "inferences", count: 3, accuracyTarget: 0.5 },
      { topic: "craft_structure", skill: "words_in_context", count: 3, accuracyTarget: 0.6 },
      { topic: "expression", skill: "transitions", count: 2, accuracyTarget: 0.5 },
      { topic: "conventions", skill: "boundaries", count: 3, accuracyTarget: 0.6 },
    ],
  },
  {
    daysAgo: 21, type: "practice", durationMin: 25,
    items: [
      { topic: "algebra", skill: "linear_equations_one_var", count: 6, accuracyTarget: 0.65 },
      { topic: "algebra", skill: "linear_functions", count: 4, accuracyTarget: 0.7 },
    ],
  },
  {
    daysAgo: 17, type: "practice", durationMin: 30,
    items: [
      { topic: "advanced_math", skill: "nonlinear_functions", count: 5, accuracyTarget: 0.7 },
      { topic: "advanced_math", skill: "equivalent_expressions", count: 5, accuracyTarget: 0.7 },
    ],
  },
  {
    daysAgo: 14, type: "practice", durationMin: 30,
    items: [
      { topic: "information_ideas", skill: "inferences", count: 5, accuracyTarget: 0.75 },
      { topic: "craft_structure", skill: "text_structure_purpose", count: 5, accuracyTarget: 0.75 },
    ],
  },
  {
    daysAgo: 10, type: "practice", durationMin: 30,
    items: [
      { topic: "geometry", skill: "circles", count: 5, accuracyTarget: 0.75 },
      { topic: "problem_solving", skill: "percentages", count: 5, accuracyTarget: 0.78 },
    ],
  },
  {
    daysAgo: 7, type: "practice", durationMin: 30,
    items: [
      { topic: "expression", skill: "transitions", count: 5, accuracyTarget: 0.8 },
      { topic: "conventions", skill: "boundaries", count: 5, accuracyTarget: 0.85 },
    ],
  },
  {
    daysAgo: 5, type: "practice", durationMin: 35,
    items: [
      { topic: "algebra", skill: "linear_equations_one_var", count: 4, accuracyTarget: 0.85 },
      { topic: "advanced_math", skill: "nonlinear_functions", count: 4, accuracyTarget: 0.82 },
      { topic: "geometry", skill: "lines_angles_triangles", count: 4, accuracyTarget: 0.78 },
    ],
  },
  {
    daysAgo: 3, type: "practice", durationMin: 30,
    items: [
      { topic: "information_ideas", skill: "command_of_evidence", count: 5, accuracyTarget: 0.85 },
      { topic: "craft_structure", skill: "words_in_context", count: 5, accuracyTarget: 0.85 },
    ],
  },
  {
    daysAgo: 1, type: "practice", durationMin: 40,
    items: [
      { topic: "algebra", skill: "linear_functions", count: 4, accuracyTarget: 0.9 },
      { topic: "problem_solving", skill: "ratios_rates_proportions", count: 4, accuracyTarget: 0.85 },
      { topic: "expression", skill: "rhetorical_synthesis", count: 4, accuracyTarget: 0.88 },
      { topic: "conventions", skill: "form_structure_sense", count: 4, accuracyTarget: 0.9 },
    ],
  },
];

// ─── Lookup user_id by email via supabase auth admin ────────────────────────
async function findUserId(email) {
  // listUsers paginates; default first page is enough for a small dev DB.
  const { data, error } = await sb.auth.admin.listUsers({ page: 1, perPage: 1000 });
  if (error) throw new Error(`listUsers failed: ${error.message}`);
  const match = data?.users?.find((u) => u.email?.toLowerCase() === email.toLowerCase());
  if (!match) throw new Error(`No auth.users row with email=${email}`);
  return match.id;
}

// ─── Wipe prior demo data (idempotent) ──────────────────────────────────────
async function wipeUser(userId) {
  // Order matters: child tables first.
  const { data: priorSessions } = await sb
    .from("user_sessions").select("id").eq("user_id", userId);
  const sessionIds = (priorSessions ?? []).map((s) => s.id);

  if (sessionIds.length > 0) {
    await sb.from("attempts").delete().in("session_id", sessionIds);
    await sb.from("ai_session_reviews").delete().in("session_id", sessionIds);
  }
  await sb.from("user_skill_scores").delete().eq("user_id", userId);
  await sb.from("user_diagnostic_results").delete().eq("user_id", userId);
  await sb.from("user_sessions").delete().eq("user_id", userId);
  // ai_diagnoses cascades to ai_weakness_verifications via FK ON DELETE CASCADE
  await sb.from("ai_diagnoses").delete().eq("user_id", userId);
  await sb.from("ai_study_plans").delete().eq("user_id", userId);

  console.log(`  wiped prior data (${sessionIds.length} sessions)`);
}

// ─── Seed user_profiles ─────────────────────────────────────────────────────
async function seedProfile(userId) {
  const futureTestDate = isoDate(new Date(today.getTime() + 60 * DAY));
  // Upsert (the row may already exist from auth signup hooks).
  const { data: existing } = await sb
    .from("user_profiles").select("id").eq("user_id", userId).maybeSingle();

  const payload = {
    user_id: userId,
    email: EMAIL,
    display_name: EMAIL.split("@")[0],
    has_completed_diagnostic: true,
    has_completed_onboarding: true,
    streak_days: 5,
    streak_last_date: isoDate(dayOffset(1)),
    estimated_math_score: 580,
    estimated_rw_score: 620,
    target_score: 1450,
    test_date: futureTestDate,
    math_confidence: 3,
    reading_confidence: 4,
    study_hours_per_week: "8",
    updated_at: iso(today),
  };

  if (existing) {
    await sb.from("user_profiles").update(payload).eq("user_id", userId);
  } else {
    await sb.from("user_profiles").insert(payload);
  }
  console.log("  user_profiles upserted");
}

// ─── Seed sessions + attempts + skill_scores + reviews ──────────────────────
async function seedSessions(userId) {
  const insertedSessions = [];
  let questionIdCounter = 100000;

  for (const blueprint of SESSIONS) {
    const startedAt = dayOffset(blueprint.daysAgo);
    // Set started_at to a daytime hour so the chart's date labels look natural.
    startedAt.setUTCHours(15, 0, 0, 0);
    const completedAt = new Date(startedAt.getTime() + blueprint.durationMin * 60 * 1000);

    const totalQ = blueprint.items.reduce((s, i) => s + i.count, 0);
    // Compute per-item correct counts deterministically (rounded so totals add up).
    const itemsWithCorrect = blueprint.items.map((i) => ({
      ...i,
      correct: Math.round(i.count * i.accuracyTarget),
    }));
    const totalCorrect = itemsWithCorrect.reduce((s, i) => s + i.correct, 0);

    const topicList = [...new Set(blueprint.items.map((i) => i.topic))];
    const metadata = JSON.stringify({
      topics: topicList,
      timeSpentSeconds: blueprint.durationMin * 60,
    });

    const { data: sessionRow, error: sessErr } = await sb
      .from("user_sessions")
      .insert({
        user_id: userId,
        session_type: blueprint.type,
        started_at: iso(startedAt),
        completed_at: iso(completedAt),
        questions_total: totalQ,
        questions_correct: totalCorrect,
        metadata,
      })
      .select("id")
      .single();
    if (sessErr) throw new Error(`user_sessions insert: ${sessErr.message}`);
    const sessionId = sessionRow.id;
    insertedSessions.push({ id: sessionId, blueprint, totalQ, totalCorrect });

    // ── attempts ──
    const attemptRows = [];
    let attemptOffsetSec = 0;
    for (const item of itemsWithCorrect) {
      for (let k = 0; k < item.count; k++) {
        const isCorrect = k < item.correct;
        const confidence = pickConfidence(isCorrect, item.accuracyTarget);
        const timeSpent = 30 + Math.floor(Math.random() * 60); // 30-90s per q
        attemptOffsetSec += timeSpent;
        attemptRows.push({
          session_id: sessionId,
          question_id: questionIdCounter++,
          selected_index: isCorrect ? 1 : (1 + (k % 3)) % 4,
          is_correct: isCorrect,
          time_spent_sec: timeSpent,
          confidence,
        });
      }
    }
    const { error: attErr } = await sb.from("attempts").insert(attemptRows);
    if (attErr) throw new Error(`attempts insert: ${attErr.message}`);

    // ── user_skill_scores: one row per (topic, skill) ──
    // Aggregate weighted_correct from the attempts we just wrote so the
    // confidence-weighted column matches the per-attempt weights.
    const tupleStats = new Map();
    let attemptIdx = 0;
    for (const item of itemsWithCorrect) {
      for (let k = 0; k < item.count; k++) {
        const a = attemptRows[attemptIdx++];
        const key = `${item.topic}::${item.skill}`;
        const cur = tupleStats.get(key) ?? { topic: item.topic, skill: item.skill, total: 0, correct: 0, wc: 0 };
        cur.total++;
        if (a.is_correct) {
          cur.correct++;
          cur.wc += weightForAttempt(true, a.confidence);
        }
        tupleStats.set(key, cur);
      }
    }
    const skillRows = Array.from(tupleStats.values()).map((s) => ({
      user_id: userId,
      session_id: sessionId,
      topic: s.topic,
      skill: s.skill,
      score: s.total > 0 ? s.correct / s.total : 0,
      questions_n: s.total,
      weighted_correct: s.wc,
    }));
    if (skillRows.length > 0) {
      const { error: skillErr } = await sb.from("user_skill_scores").insert(skillRows);
      if (skillErr) throw new Error(`user_skill_scores insert: ${skillErr.message}`);
    }
  }
  console.log(`  inserted ${insertedSessions.length} sessions + attempts + skill_scores`);
  return insertedSessions;
}

// ─── Seed ai_session_reviews ───────────────────────────────────────────────
async function seedSessionReviews(userId, sessions) {
  // Trend the per-session reviewer-estimated scores upward to mirror the chart.
  const reviewRows = sessions.map((s, idx) => {
    const progress = idx / Math.max(1, sessions.length - 1);
    const math = Math.round(500 + progress * 100);
    const rw = Math.round(540 + progress * 90);
    const calibration = Math.round(55 + progress * 30);

    const acc = s.totalCorrect / Math.max(1, s.totalQ);
    const startedAt = dayOffset(s.blueprint.daysAgo);

    const highlights = idx === 0
      ? [
          "Strong starting point on Reading & Writing — Conventions felt confident.",
          "Math pacing was steady; no rushed answers.",
          "You finished the diagnostic without skipping anything.",
        ]
      : acc >= 0.8
      ? [
          "Crisp accuracy on the focus skills today — keep this volume up.",
          "Confidence calibration is improving — fewer 'confident-but-wrong' answers.",
          "You're spending less time per question without losing accuracy.",
        ]
      : [
          "Solid effort on this set; accuracy is up vs. your last similar session.",
          "Pacing on the harder questions stayed consistent.",
          "You used your confidence ratings honestly — no over-claiming.",
        ];

    const patterns = idx === 0
      ? [
          {
            pattern: "Linear equations were the slowest math skill (avg 95s/q vs 60s baseline).",
            evidence: "3 of 5 questions took >90s; 2 of those were wrong.",
            severity: "medium",
            type: "topic_weakness",
          },
          {
            pattern: "Slight overconfidence on Reading inferences.",
            evidence: "Marked 'confident' on 2/3 wrong inference questions.",
            severity: "medium",
            type: "calibration",
          },
        ]
      : [
          {
            pattern: idx % 2 === 0
              ? "Pacing on focus skill is now within target."
              : "Calibration is tightening — guess accuracy lines up with expected ~25%.",
            evidence: idx % 2 === 0
              ? `Avg time/question dropped to ${50 + Math.round(progress * 10)}s.`
              : "Guessing bucket actual ≈ 28%, somewhat ≈ 62%, confident ≈ 85%.",
            severity: "low",
            type: idx % 2 === 0 ? "improvement" : "calibration",
          },
        ];

    const next = {
      topic: s.blueprint.items[0].topic,
      skill: s.blueprint.items[0].skill,
      reason: "Build on this session's gains with a slightly harder mixed set.",
    };

    return {
      session_id: s.id,
      user_id: userId,
      highlights,
      patterns,
      calibration_score: calibration,
      estimated_math: math,
      estimated_rw: rw,
      next_session_focus: next,
      summary: idx === 0
        ? "Diagnostic complete. Top focus: linear equations and inference questions."
        : `Session ${idx} of ${sessions.length - 1}: focus skills trending up; carry the streak forward.`,
      created_at: iso(new Date(startedAt.getTime() + 30 * 60 * 1000)),
    };
  });

  const { error } = await sb.from("ai_session_reviews").insert(reviewRows);
  if (error) throw new Error(`ai_session_reviews insert: ${error.message}`);
  console.log(`  inserted ${reviewRows.length} ai_session_reviews`);
}

// ─── Seed ai_diagnoses + ai_weakness_verifications ─────────────────────────
async function seedDiagnosis(userId, diagSessionId) {
  const weaknesses = [
    {
      skill: "linear_equations_one_var",
      skill_display: "Linear Equations (One Variable)",
      severity: "high",
      evidence: "1/3 correct on the diagnostic; both wrong answers were marked 'confident', suggesting a misconception in setup.",
      confidence_miscalibration: "overconfident",
      sample_question_ids: ["100000", "100001", "100002"],
    },
    {
      skill: "nonlinear_functions",
      skill_display: "Nonlinear Functions",
      severity: "high",
      evidence: "0/2 correct; spent >120s on each. Likely struggling to recognize quadratic vs exponential forms.",
      confidence_miscalibration: "none",
      sample_question_ids: ["100003", "100004"],
    },
    {
      skill: "inferences",
      skill_display: "Inferences",
      severity: "medium",
      evidence: "1/3 correct; pacing was fast (~35s/q). Possible careless eliminations.",
      confidence_miscalibration: "overconfident",
      sample_question_ids: ["100012"],
    },
  ];

  const strengths = [
    {
      skill: "boundaries",
      skill_display: "Boundaries (Punctuation)",
      evidence: "3/3 correct on punctuation; consistent pacing and confidence ratings.",
    },
    {
      skill: "words_in_context",
      skill_display: "Words in Context",
      evidence: "Strong vocabulary inference — confident-correct on 2/3.",
    },
  ];

  const { data: diag, error } = await sb
    .from("ai_diagnoses")
    .insert({
      user_id: userId,
      session_id: diagSessionId,
      weaknesses,
      strengths,
      estimated_math: 480,
      estimated_rw: 540,
      calibration_score: 62,
      top_focus: "linear_equations_one_var",
      summary:
        "Math fundamentals (linear + nonlinear setup) are the highest-leverage gap. Reading/Writing is closer to target — focus practice on Math first, then re-balance.",
      created_at: iso(dayOffset(28)),
    })
    .select("id")
    .single();
  if (error) throw new Error(`ai_diagnoses insert: ${error.message}`);
  console.log("  ai_diagnoses inserted");

  // HAI feedback: student confirmed all three weaknesses in different ways.
  const verifications = weaknesses.map((w, i) => ({
    diagnosis_id: diag.id,
    skill: w.skill,
    user_response: i === 0 ? "confirmed" : i === 1 ? "confirmed" : "maybe",
  }));
  const { error: verErr } = await sb.from("ai_weakness_verifications").insert(verifications);
  if (verErr) throw new Error(`ai_weakness_verifications insert: ${verErr.message}`);
  console.log(`  inserted ${verifications.length} ai_weakness_verifications`);

  // Legacy user_diagnostic_results row — the worker still surfaces diagnosticDate
  // from its created_at via /api/user/progress.
  await sb.from("user_diagnostic_results").insert({
    user_id: userId,
    session_id: diagSessionId,
    skills: JSON.stringify({
      linear_equations_one_var: 0.33,
      nonlinear_functions: 0.0,
      inferences: 0.33,
      boundaries: 1.0,
      words_in_context: 0.67,
    }),
    gaps: JSON.stringify(weaknesses.map((w) => w.skill)),
    recommended_plan: "Focus the next 2 weeks on Math (linear + nonlinear), then rotate back to Reading inference drills.",
    estimated_score: 1020,
    created_at: iso(dayOffset(28)),
  });
  console.log("  user_diagnostic_results inserted");
}

// ─── Seed ai_study_plans ───────────────────────────────────────────────────
async function seedStudyPlan(userId) {
  // Anchor week_start at the most-recent Monday so the dashboard's "this week"
  // queries find the active plan.
  const monday = new Date(today);
  const dow = monday.getUTCDay() === 0 ? 7 : monday.getUTCDay();
  monday.setUTCDate(monday.getUTCDate() - (dow - 1));
  monday.setUTCHours(0, 0, 0, 0);

  const dayDate = (i) => isoDate(new Date(monday.getTime() + i * DAY));
  const session = (id, durationMin, focusSkill, focusSkillDisplay, sessionType, rationale) => ({
    id, durationMin, focusSkill, focusSkillDisplay, sessionType, rationale,
  });

  const plan = {
    week: [
      { day: "monday", date: dayDate(0), sessions: [
        session("mon_1", 45, "linear_equations_one_var", "Linear Equations (One Variable)", "drill",
          "High-priority weakness from diagnostic; needs volume on setup mechanics."),
      ]},
      { day: "tuesday", date: dayDate(1), sessions: [
        session("tue_1", 30, "nonlinear_functions", "Nonlinear Functions", "drill",
          "Second math weakness — focus on recognizing quadratic vs exponential forms."),
        session("tue_2", 20, "inferences", "Inferences", "review",
          "Light reading review to maintain momentum."),
      ]},
      { day: "wednesday", date: dayDate(2), sessions: [
        session("wed_1", 30, "circles", "Circles", "drill",
          "Geometry — circles are a common SAT topic; you've practiced them once."),
      ]},
      { day: "thursday", date: dayDate(3), sessions: [
        session("thu_1", 45, "linear_equations_one_var", "Linear Equations (One Variable)", "mixed",
          "Mixed practice to test transfer of Monday's drill."),
      ]},
      { day: "friday", date: dayDate(4), sessions: [
        session("fri_1", 30, "command_of_evidence", "Command of Evidence", "drill",
          "Build on this week's reading momentum."),
      ]},
      { day: "saturday", date: dayDate(5), sessions: [
        session("sat_1", 60, "linear_equations_one_var", "Linear Equations (One Variable)", "timed_test",
          "Timed test — measure pacing under conditions."),
      ]},
      { day: "sunday", date: dayDate(6), sessions: [] },
    ],
    totalHoursAllocated: (45 + 30 + 20 + 30 + 45 + 30 + 60) / 60,
    coverage: {
      linear_equations_one_var: 150,
      nonlinear_functions: 30,
      inferences: 20,
      circles: 30,
      command_of_evidence: 30,
    },
    weekGoal: "Close the linear-equations gap with daily reps; layer in nonlinear and reading review.",
  };

  await sb.from("ai_study_plans").insert({
    user_id: userId,
    week_start: isoDate(monday),
    plan_json: plan,
    original_plan_json: plan,
    generated_by: "planner",
    active: true,
  });
  console.log(`  ai_study_plans inserted (week_start=${isoDate(monday)})`);
}

// ─── Seed subscriptions ────────────────────────────────────────────────────
async function seedSubscription(userId) {
  const { data: existing } = await sb
    .from("subscriptions").select("id").eq("user_id", userId).maybeSingle();
  if (existing) {
    console.log("  subscription already present, skipping");
    return;
  }
  await sb.from("subscriptions").insert({
    user_id: userId,
    tier: "free",
    cancel_at_period_end: false,
    started_at: iso(dayOffset(28)),
  });
  console.log("  subscriptions inserted (free tier)");
}

// ─── Main ──────────────────────────────────────────────────────────────────
async function main() {
  console.log(`Seeding demo data for ${EMAIL}...`);
  const userId = await findUserId(EMAIL);
  console.log(`  user_id=${userId}`);

  await wipeUser(userId);
  await seedProfile(userId);
  const sessions = await seedSessions(userId);
  await seedSessionReviews(userId, sessions);
  const diagSession = sessions.find((s) => s.blueprint.type === "diagnostic");
  await seedDiagnosis(userId, diagSession?.id ?? null);
  await seedStudyPlan(userId);
  await seedSubscription(userId);

  console.log("\nDone. Refresh /dashboard, /progress, and /study-plan to see the demo data.");
}

main().catch((err) => {
  console.error("\nSeed failed:", err.message);
  process.exit(1);
});
