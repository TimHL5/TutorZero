import { Hono } from "hono";
import { getCookie, setCookie } from "hono/cookie";
import { stream } from "hono/streaming";
import Stripe from "stripe";
import type { Context, Next } from "hono";
import { getSupabaseAdmin } from "./supabase";
import { fetchOpenAI, fetchOpenAIStream } from "./openai";
import { runAgent } from "./agents/runner";
import { echoAgent } from "./agents/echo";
import {
  diagnosticianAgent,
  type DiagnosticianInput,
  type DiagnosticianAttempt,
  type ConfidenceLevel,
  type DifficultyCode,
} from "./agents/diagnostician";
import {
  coachAgent,
  type CoachInput,
  type CoachRecentAttempt,
} from "./agents/coach";
import {
  explainerAgent,
  type ExplainerInput,
} from "./agents/explainer";
import {
  conceptAgent,
  type ConceptInput,
} from "./agents/concept";
import {
  nextPracticeAgent,
  type NextPracticeInput,
  type NextPracticeRecentAttempt,
} from "./agents/next_practice";
import {
  reviewerAgent,
  type ReviewerInput,
  type ReviewerAttempt,
  type SessionType as ReviewerSessionType,
} from "./agents/reviewer";
import {
  plannerAgent,
  type PlannerInput,
  type PlannerWeakSkill,
  type PlannerSeverity,
  type PlannerOutput,
  type PlannerPracticeRow,
} from "./agents/planner";
import { DOMAINS_IN_ORDER, SKILLS_BY_DOMAIN } from "../react-app/lib/sat-taxonomy";
import { tutorAgent } from "./agents/tutor";
import { runToolAgent } from "./agents/tool_runner";
import type { ChatMessage, StreamEvent } from "./agents/tool_agent";
import type { SupabaseClient } from "@supabase/supabase-js";

const SUPABASE_URL = "https://bkmyfcolrdumyrwktjrr.supabase.co";
const SUPABASE_ANON_KEY =
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJrbXlmY29scmR1bXlyd2t0anJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM5NDg3NTcsImV4cCI6MjA4OTUyNDc1N30.ClqyVHYOazJduEi6NTfENRcz2fdlDbiN2vBOJ937oHQ";

interface TopicProgressEntry {
  topic: string;
  questionsAttempted: number;
  questionsCorrect: number;
  lastPracticed: string | null;
  currentLevel: string;
}

interface SkillScoreRow {
  topic: string;
  avg_score: number | null;
  total_attempted: number | null;
}

interface SessionRow {
  id: number | string;
  started_at: string;
  session_type: string;
  questions_total: number | null;
  questions_correct: number | null;
  metadata: unknown;
  completed_at: string | null;
}

interface SupabaseUser {
  id: string;
  email: string;
  user_metadata?: {
    full_name?: string;
    name?: string;
    given_name?: string;
    avatar_url?: string;
    picture?: string;
  };
}

type AppEnv = {
  Variables: {
    user: SupabaseUser;
  };
};

const app = new Hono<AppEnv>();

// Supabase auth middleware - validates JWT from cookie
// Soft auth: extracts user if token present, but allows anonymous access
async function optionalAuthMiddleware(c: Context<AppEnv>, next: Next) {
  const token = getCookie(c, "sb-access-token");
  if (token) {
    try {
      const response = await fetch(`${SUPABASE_URL}/auth/v1/user`, {
        headers: {
          Authorization: `Bearer ${token}`,
          apikey: SUPABASE_ANON_KEY,
        },
      });
      if (response.ok) {
        const user = (await response.json()) as SupabaseUser;
        c.set("user", user);
      }
    } catch {
      // Token invalid — continue as anonymous
    }
  }
  await next();
}

async function authMiddleware(c: Context<AppEnv>, next: Next) {
  const token = getCookie(c, "sb-access-token");
  if (!token) {
    return c.json({ error: "Unauthorized" }, 401);
  }

  try {
    const response = await fetch(`${SUPABASE_URL}/auth/v1/user`, {
      headers: {
        Authorization: `Bearer ${token}`,
        apikey: SUPABASE_ANON_KEY,
      },
    });

    if (!response.ok) {
      return c.json({ error: "Unauthorized" }, 401);
    }

    const user = (await response.json()) as SupabaseUser;
    c.set("user", user);
    await next();
  } catch {
    return c.json({ error: "Unauthorized" }, 401);
  }
}

// Compact student context for agent personalization. Pulls display_name and
// the top-3 current weaknesses (from latest diagnosis) so agents can address
// the student by name and cite their known weak areas. Returns undefined for
// anonymous users; returns {} and swallows errors so a logging failure never
// blocks an agent response.
async function fetchStudentContext(
  supabase: SupabaseClient,
  userId: string | undefined
): Promise<Record<string, unknown> | undefined> {
  if (!userId) return undefined;
  try {
    // Four parallel reads → one stitched RAG block: profile, latest
    // diagnosis, latest review, and per-skill mastery.
    const [profileRes, diagnosisRes, reviewRes, skillRes] = await Promise.all([
      supabase
        .from("user_profiles")
        .select("display_name, estimated_math_score, estimated_rw_score, target_score, test_date, streak_days, study_hours_per_week")
        .eq("user_id", userId)
        .maybeSingle(),
      supabase
        .from("ai_diagnoses")
        .select("weaknesses, top_focus, calibration_score, summary")
        .eq("user_id", userId)
        .order("created_at", { ascending: false })
        .limit(1)
        .maybeSingle(),
      supabase
        .from("ai_session_reviews")
        .select("calibration_score, estimated_math, estimated_rw, summary, patterns, next_session_focus")
        .eq("user_id", userId)
        .order("created_at", { ascending: false })
        .limit(1)
        .maybeSingle(),
      supabase.rpc("get_user_skill_summary", { p_user_id: userId }),
    ]);

    const profile = profileRes.data as
      | {
          display_name?: string;
          estimated_math_score?: number;
          estimated_rw_score?: number;
          target_score?: number;
          test_date?: string;
          streak_days?: number;
          study_hours_per_week?: string;
        }
      | null;
    const diagnosis = diagnosisRes.data as
      | { weaknesses?: Array<{ skill_display?: string; skill?: string; severity?: string }>; top_focus?: string; calibration_score?: number; summary?: string }
      | null;
    const review = reviewRes.data as
      | {
          calibration_score?: number;
          estimated_math?: number;
          estimated_rw?: number;
          summary?: string;
          patterns?: Array<{ pattern?: string; severity?: string; type?: string; evidence?: string }>;
          next_session_focus?: Array<{ skill?: string; display?: string; reason?: string }>;
        }
      | null;

    const weakAreas = Array.isArray(diagnosis?.weaknesses)
      ? diagnosis!.weaknesses
          .slice(0, 3)
          .map((w) => w.skill_display || w.skill)
          .filter((x): x is string => typeof x === "string" && x.length > 0)
      : [];

    // Skill-level mastery — top-3 weakest + top-3 strongest. Filter to real
    // skill slugs (not domain rows) and require ≥3 attempts so a single
    // accidental answer can't dominate the picture.
    const skillRows = (Array.isArray(skillRes.data) ? skillRes.data : []) as Array<{
      topic?: string;
      total_attempted?: number;
      avg_score?: number;
    }>;
    const SKILL_SLUGS = new Set([
      "linear_equations_one_var", "linear_functions", "linear_equations_two_var",
      "systems_of_linear_equations", "linear_inequalities",
      "equivalent_expressions", "nonlinear_equations", "nonlinear_functions",
      "ratios_rates_proportions", "percentages", "one_variable_data",
      "two_variable_data", "probability", "inference_statistics",
      "evaluating_statistical_claims", "area_and_volume",
      "lines_angles_triangles", "right_triangles_trigonometry", "circles",
      "central_ideas_details", "command_of_evidence", "inferences",
      "cross_text_connections", "text_structure_purpose", "words_in_context",
      "rhetorical_synthesis", "transitions", "boundaries", "form_structure_sense",
    ]);
    const skillMastery = skillRows
      .filter((r) => typeof r.topic === "string" && SKILL_SLUGS.has(r.topic))
      .filter((r) => (r.total_attempted ?? 0) >= 3);
    const sortedAsc = [...skillMastery].sort(
      (a, b) => (a.avg_score ?? 0) - (b.avg_score ?? 0)
    );
    const fmtSkill = (r: { topic?: string; avg_score?: number; total_attempted?: number }) =>
      `${r.topic} ${Math.round((r.avg_score ?? 0) * 100)}% (n=${r.total_attempted})`;
    const weakestSkills = sortedAsc.slice(0, 3).map(fmtSkill);
    const strongestSkills = sortedAsc.slice(-3).reverse().map(fmtSkill);

    let daysToTest: number | undefined;
    if (profile?.test_date) {
      const t = new Date(profile.test_date).getTime();
      const now = Date.now();
      if (!Number.isNaN(t) && t > now) {
        daysToTest = Math.ceil((t - now) / (1000 * 60 * 60 * 24));
      }
    }

    const reviewPatterns = Array.isArray(review?.patterns)
      ? review!.patterns
          .slice(0, 2)
          .map((p) => (typeof p?.pattern === "string" ? p.pattern : null))
          .filter((s): s is string => typeof s === "string" && s.length > 0)
      : [];

    const ctx: Record<string, unknown> = {};
    if (profile?.display_name) ctx.student_name = profile.display_name;
    if (profile?.estimated_math_score) ctx.estimated_math_score = profile.estimated_math_score;
    if (profile?.estimated_rw_score) ctx.estimated_rw_score = profile.estimated_rw_score;
    if (profile?.target_score) ctx.target_score = profile.target_score;
    if (profile?.test_date) ctx.test_date = profile.test_date;
    if (typeof daysToTest === "number") ctx.days_to_test = daysToTest;
    if (profile?.streak_days) ctx.current_streak_days = profile.streak_days;
    if (profile?.study_hours_per_week) ctx.study_hours_per_week = profile.study_hours_per_week;
    if (weakAreas.length > 0) ctx.diagnostic_weaknesses = weakAreas;
    if (diagnosis?.top_focus) ctx.primary_focus = diagnosis.top_focus;
    if (typeof review?.calibration_score === "number") ctx.recent_calibration_score = review.calibration_score;
    if (review?.summary) ctx.last_session_summary = review.summary;
    if (reviewPatterns.length > 0) ctx.recent_patterns = reviewPatterns;
    if (weakestSkills.length > 0) ctx.weakest_skills_now = weakestSkills;
    if (strongestSkills.length > 0) ctx.strongest_skills_now = strongestSkills;
    return Object.keys(ctx).length > 0 ? ctx : undefined;
  } catch (err) {
    console.error("[fetchStudentContext] failed:", err);
    return undefined;
  }
}

// Stripe pricing — fixed Price IDs from Stripe dashboard (product: TutorZero)
const STRIPE_MONTHLY_PRICE_ID = "price_1THC2ARBhjUJNe8kjQgDrZXy"; // $9.99/month
const STRIPE_YEARLY_PRICE_ID = "price_1THC36RBhjUJNe8k93TzNGFi";  // $79.99/year

function safeParseTopics(metadata: unknown): string[] {
  try { return metadata ? JSON.parse(metadata as string).topics || [] : []; }
  catch { return []; }
}

function safeParseTimeSpent(metadata: unknown): number {
  try {
    if (!metadata) return 0;
    const parsed = JSON.parse(metadata as string);
    return typeof parsed?.timeSpentSeconds === "number" ? parsed.timeSpentSeconds : 0;
  } catch { return 0; }
}

// Normalize env var names at module load so route handlers can read a
// single canonical name. .env.local uses TutorZero's legacy names
// (OPENAI_KEY, SUPABASE_ID, SUPABASE_SECRET_KEY); the worker code reads the
// Vercel/Supabase official names. Aliasing here lets local dev + production
// both work without renaming secrets.
if (!process.env.OPENAI_API_KEY && process.env.OPENAI_KEY) {
  process.env.OPENAI_API_KEY = process.env.OPENAI_KEY;
}
if (!process.env.SUPABASE_SERVICE_ROLE_KEY && process.env.SUPABASE_SECRET_KEY) {
  process.env.SUPABASE_SERVICE_ROLE_KEY = process.env.SUPABASE_SECRET_KEY;
}
if (!process.env.SUPABASE_URL && process.env.SUPABASE_ID) {
  process.env.SUPABASE_URL = `https://${process.env.SUPABASE_ID}.supabase.co`;
}

// ============================================
// Auth Endpoints
// ============================================

// Get current user
app.get("/api/users/me", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
  const supabase = getSupabaseAdmin();

  // Get or create user profile
  let { data: profile } = await supabase
    .from("user_profiles")
    .select("*")
    .eq("user_id", user.id)
    .maybeSingle();

  if (!profile) {
    const displayName =
      user.user_metadata?.full_name ||
      user.user_metadata?.name ||
      user.user_metadata?.given_name ||
      user.email.split("@")[0];
    const pictureUrl =
      user.user_metadata?.avatar_url || user.user_metadata?.picture || null;

    await supabase.from("user_profiles").insert({
      user_id: user.id,
      email: user.email,
      display_name: displayName,
      picture_url: pictureUrl,
    });

    const { data: newProfile } = await supabase
      .from("user_profiles")
      .select("*")
      .eq("user_id", user.id)
      .maybeSingle();
    profile = newProfile;
  }

  // Look up active subscription
  const { data: _subscription } = await supabase
    .from("subscriptions")
    .select("tier")
    .eq("user_id", user.id)
    .or("expires_at.is.null,expires_at.gt." + new Date().toISOString())
    .maybeSingle();

  return c.json({
    id: user.id,
    email: user.email,
    google_user_data: {
      given_name:
        user.user_metadata?.full_name ||
        user.user_metadata?.name ||
        user.user_metadata?.given_name,
      picture:
        user.user_metadata?.avatar_url || user.user_metadata?.picture,
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
      subscriptionTier: "pro",
    },
  });
});

// Update user profile
app.patch("/api/user/profile", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
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
      hasCompletedOnboarding,
    } = body;

    const updates: Record<string, unknown> = {};

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

    updates.updated_at = new Date().toISOString();

    await supabase
      .from("user_profiles")
      .update(updates)
      .eq("user_id", user.id);

    return c.json({ success: true });
  } catch (error) {
    console.error("Error updating profile:", error);
    return c.json({ error: "Failed to update profile" }, 500);
  }
});

// Logout
app.get("/api/logout", async (c) => {
  setCookie(c, "sb-access-token", "", {
    path: "/",
    sameSite: "Lax",
    secure: true,
    maxAge: 0,
  });

  return c.json({ success: true }, 200);
});

// ============================================
// AI Tutor API (general SAT tutoring)
// ============================================

// Bumped to 10000 for the demo — paywall enforcement code stays in place so
// the infrastructure can be re-enabled without code surgery.
const FREE_DAILY_TUTOR_LIMIT = 10000;

const MATH_FORMATTING_RULES = `MATH FORMATTING (strict):
- Wrap every math expression, variable, number-with-unit, formula, or equation in LaTeX delimiters so the client can render them with KaTeX.
- Inline math uses single dollars: $x$, $d = rt$, $\\frac{a}{b}$, $x^2 - 5x + 6 = 0$.
- Display math (equations on their own line) uses double dollars: $$d = rt$$.
- Do NOT use plain parentheses like ( x ) or ( d = rt ) for math.
- Do NOT use \\( … \\) or \\[ … \\] — always use $ … $ or $$ … $$.
- Do NOT write the literal word "latex" anywhere in your reply.
- Do NOT wrap the whole reply in a code block or prefix it with a language tag.`;

async function getTutorUsage(supabase: SupabaseClient, userId: string | null, browserId: string | null): Promise<{ count: number; isPremium: boolean }> {
  const today = new Date().toISOString().split('T')[0];

  let isPremium = false;
  if (userId) {
    const { data: sub } = await supabase
      .from("subscriptions")
      .select("*")
      .eq("user_id", userId)
      .or("expires_at.is.null,expires_at.gt." + new Date().toISOString())
      .maybeSingle();
    isPremium = sub?.tier === 'premium';
  }

  let usage;
  if (userId) {
    const { data } = await supabase
      .from("tutor_usage")
      .select("message_count")
      .eq("user_id", userId)
      .eq("date", today)
      .maybeSingle();
    usage = data;
  } else if (browserId) {
    const { data } = await supabase
      .from("tutor_usage")
      .select("message_count")
      .eq("browser_id", browserId)
      .eq("date", today)
      .maybeSingle();
    usage = data;
  }

  return { count: (usage?.message_count as number) || 0, isPremium };
}

async function incrementTutorUsage(supabase: SupabaseClient, userId: string | null, browserId: string | null): Promise<number> {
  const today = new Date().toISOString().split('T')[0];

  if (userId) {
    const { data: existing } = await supabase
      .from("tutor_usage")
      .select("id, message_count")
      .eq("user_id", userId)
      .eq("date", today)
      .maybeSingle();

    if (existing) {
      await supabase
        .from("tutor_usage")
        .update({ message_count: existing.message_count + 1, updated_at: new Date().toISOString() })
        .eq("id", existing.id);
      return existing.message_count + 1;
    } else {
      await supabase.from("tutor_usage").insert({ user_id: userId, date: today, message_count: 1 });
      return 1;
    }
  } else if (browserId) {
    const { data: existing } = await supabase
      .from("tutor_usage")
      .select("id, message_count")
      .eq("browser_id", browserId)
      .eq("date", today)
      .maybeSingle();

    if (existing) {
      await supabase
        .from("tutor_usage")
        .update({ message_count: existing.message_count + 1, updated_at: new Date().toISOString() })
        .eq("id", existing.id);
      return existing.message_count + 1;
    } else {
      await supabase.from("tutor_usage").insert({ browser_id: browserId, date: today, message_count: 1 });
      return 1;
    }
  }
  return 0;
}

// Get tutor usage status
app.get("/api/tutor/usage", optionalAuthMiddleware, async (c) => {
  const supabase = getSupabaseAdmin();
  const user = c.get("user") as SupabaseUser | undefined;
  const userId = user?.id || null;
  const browserId = userId ? null : (c.req.query("browserId") || null);

  const { count, isPremium } = await getTutorUsage(supabase, userId, browserId);

  return c.json({
    used: count,
    limit: FREE_DAILY_TUTOR_LIMIT,
    remaining: Math.max(0, FREE_DAILY_TUTOR_LIMIT - count),
    isPremium,
    unlimited: isPremium
  });
});

// AI Tutor chat — multi-turn, tool-calling agent with SSE streaming.
// Framed as Server-Sent Events: each frame is `data: {json}\n\n` where json
// matches StreamEvent from tool_agent.ts. The client parses these to update
// the message, show tool-call pills, and finalize on "done" or "error".
app.post("/api/tutor/chat", optionalAuthMiddleware, async (c) => {
  const supabase = getSupabaseAdmin();
  const user = c.get("user") as SupabaseUser | undefined;
  const userId = user?.id || null;

  let body: {
    messages?: unknown;
    browserId?: unknown;
    conversationId?: unknown;
  };
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
  const conversationId =
    typeof body.conversationId === "string" && body.conversationId.length > 0
      ? body.conversationId
      : crypto.randomUUID();

  // Normalize messages to the ChatMessage shape; only keep user/assistant
  // turns from the client (system is injected by the runner, tool turns are
  // never sent by the client).
  const messages: ChatMessage[] = [];
  for (const m of rawMessages.slice(-20)) {
    if (typeof m !== "object" || m === null) continue;
    const o = m as { role?: unknown; content?: unknown };
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
        limit: FREE_DAILY_TUTOR_LIMIT,
      },
      429
    );
  }

  // Usage is incremented optimistically here — a user disconnecting mid-stream
  // still consumed a quota unit since OpenAI has already accepted the request.
  await incrementTutorUsage(supabase, userId, browserId);

  c.header("Content-Type", "text/event-stream; charset=utf-8");
  c.header("Cache-Control", "no-cache, no-transform");
  c.header("X-Accel-Buffering", "no");
  c.header("X-Conversation-Id", conversationId);

  return stream(c, async (s) => {
    const write = async (event: StreamEvent) => {
      await s.write(`data: ${JSON.stringify(event)}\n\n`);
    };
    try {
      await runToolAgent({
        agent: tutorAgent,
        messages,
        apiKey: process.env.OPENAI_API_KEY as string,
        context: {
          userId,
          browserId,
          supabase,
          conversationId,
        },
        emit: write,
      });
    } catch (err) {
      await write({
        type: "error",
        message: err instanceof Error ? err.message : "Tutor failed",
      });
    }
  });
});

// ============================================
// Explain Differently API (Pro feature)
// ============================================

app.post("/api/tutor/explain-differently", authMiddleware, async (c) => {
  try {
    const user = c.get("user") as SupabaseUser;
    const supabase = getSupabaseAdmin();

    // Verify premium subscription
    const { data: sub } = await supabase
      .from("subscriptions")
      .select("tier")
      .eq("user_id", user.id)
      .or("expires_at.is.null,expires_at.gt." + new Date().toISOString())
      .maybeSingle();

    if (sub?.tier !== "premium") {
      return c.json({ error: "Pro subscription required" }, 403);
    }

    const body = await c.req.json();
    const { question, style } = body;

    if (!question || !style) {
      return c.json({ error: "Missing question or style" }, 400);
    }

    const stylePrompts: Record<string, string> = {
      simple: `Explain this SAT question in the simplest possible terms. Use short sentences, basic vocabulary, and break down each step as if teaching a beginner. Avoid jargon and technical terms.`,
      visual: `Explain this SAT question using visual descriptions and spatial thinking. Describe what the student should "see" mentally, use diagrams described in words (like "imagine a number line..." or "picture two overlapping circles..."), and create mental images to aid understanding.`,
      technical: `Explain this SAT question with precise, technical detail. Include the formal rules, principles, or formulas involved. Reference specific SAT conventions and test-taking strategies. Be thorough and academically rigorous.`,
      analogy: `Explain this SAT question using a real-world analogy or comparison. Connect the concept to something from everyday life (cooking, sports, gaming, social media, etc.) that makes the abstract idea concrete and relatable.`,
    };

    const stylePrompt = stylePrompts[style] || stylePrompts.simple;

    const systemPrompt = `You are an expert SAT tutor providing an alternative explanation in a specific style.

${stylePrompt}

QUESTION CONTEXT:
${question.passage ? `Passage: ${question.passage}\n` : ""}
Question: ${question.questionText}

Answer choices:
${question.choices?.map((c: string, i: number) => `${String.fromCharCode(65 + i)}: ${c}`).join('\n') || ""}

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
      temperature: 0.7,
    });

    if (result.error || !result.data) {
      return c.json({ error: result.error || "Failed to generate explanation" }, result.status as 500);
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

// ============================================
// AI Chat API (for explanation chat)
// ============================================

// Bumped to 10000 for the demo — same reasoning as FREE_DAILY_TUTOR_LIMIT.
const FREE_MONTHLY_CHAT_LIMIT = 10000;

async function getChatUsage(supabase: SupabaseClient, userId: string | null, browserId: string | null): Promise<{ count: number; isPremium: boolean }> {
  const monthYear = new Date().toISOString().slice(0, 7); // "2024-01"

  // Check premium status if user is logged in
  let isPremium = false;
  if (userId) {
    const { data: sub } = await supabase
      .from("subscriptions")
      .select("*")
      .eq("user_id", userId)
      .or("expires_at.is.null,expires_at.gt." + new Date().toISOString())
      .maybeSingle();
    isPremium = sub?.tier === 'premium';
  }

  // Get usage count
  let usage;
  if (userId) {
    const { data } = await supabase
      .from("chat_usage")
      .select("message_count")
      .eq("user_id", userId)
      .eq("month_year", monthYear)
      .maybeSingle();
    usage = data;
  } else if (browserId) {
    const { data } = await supabase
      .from("chat_usage")
      .select("message_count")
      .eq("browser_id", browserId)
      .eq("month_year", monthYear)
      .maybeSingle();
    usage = data;
  }

  return { count: (usage?.message_count as number) || 0, isPremium };
}

async function incrementChatUsage(supabase: SupabaseClient, userId: string | null, browserId: string | null): Promise<void> {
  const monthYear = new Date().toISOString().slice(0, 7);

  if (userId) {
    const { data: existing } = await supabase
      .from("chat_usage")
      .select("id, message_count")
      .eq("user_id", userId)
      .eq("month_year", monthYear)
      .maybeSingle();

    if (existing) {
      await supabase
        .from("chat_usage")
        .update({ message_count: existing.message_count + 1, updated_at: new Date().toISOString() })
        .eq("id", existing.id);
    } else {
      await supabase.from("chat_usage").insert({ user_id: userId, month_year: monthYear, message_count: 1 });
    }
  } else if (browserId) {
    const { data: existing } = await supabase
      .from("chat_usage")
      .select("id, message_count")
      .eq("browser_id", browserId)
      .eq("month_year", monthYear)
      .maybeSingle();

    if (existing) {
      await supabase
        .from("chat_usage")
        .update({ message_count: existing.message_count + 1, updated_at: new Date().toISOString() })
        .eq("id", existing.id);
    } else {
      await supabase.from("chat_usage").insert({ browser_id: browserId, month_year: monthYear, message_count: 1 });
    }
  }
}

// Get chat usage status
app.get("/api/chat/usage", optionalAuthMiddleware, async (c) => {
  const supabase = getSupabaseAdmin();
  const user = c.get("user") as SupabaseUser | undefined;
  const userId = user?.id || null;
  const browserId = userId ? null : (c.req.query("browserId") || null);

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
    const user = c.get("user") as SupabaseUser | undefined;
    const userId = user?.id || null;
    const browserId = userId ? null : (clientBrowserId || null);

    if (!messages || !Array.isArray(messages)) {
      return c.json({ error: "Invalid messages format" }, 400);
    }

    const shouldStream = wantStream === true;

    // Check monthly usage limit
    const { count, isPremium } = await getChatUsage(supabase, userId, browserId);

    if (!isPremium && count >= FREE_MONTHLY_CHAT_LIMIT) {
      return c.json({
        error: "monthly_limit_reached",
        message: "You've reached your free monthly chat limit. Upgrade to Premium for unlimited tutoring.",
        used: count,
        limit: FREE_MONTHLY_CHAT_LIMIT
      }, 429);
    }

    // Rate limiting: check message count (max 5 per question)
    if (messages.length > 10) {
      return c.json({ error: "Message limit exceeded" }, 429);
    }

    // Build system prompt with question context
    const qc = questionContext as { section?: string; topic?: string; subtopic?: string; difficulty?: string; passage?: string; questionText?: string; choices?: string[]; studentAnswer?: string; correctAnswer?: string; explanation?: string };
    const systemPrompt = `You are a helpful SAT tutor. A student just answered a question and has read the explanation, but wants additional help understanding it.

QUESTION DETAILS:
Section: ${qc.section || "SAT"}
Topic: ${qc.topic || "general"}
${qc.subtopic ? `Subtopic: ${qc.subtopic}` : ""}
Difficulty: ${qc.difficulty || "medium"}

${qc.passage ? `PASSAGE:\n${qc.passage}\n` : ""}
QUESTION: ${qc.questionText || ""}

ANSWER CHOICES:
${qc.choices ? qc.choices.map((c: string, i: number) => `${String.fromCharCode(65 + i)}: ${c}`).join('\n') : ""}

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
        temperature: 0.7,
      });

      if (started.error || !started.stream) {
        return c.json(
          { error: started.error || "Failed to get response from AI" },
          started.status as 500
        );
      }

      await incrementChatUsage(supabase, userId, browserId);

      c.header("Content-Type", "text/plain; charset=utf-8");
      c.header("Cache-Control", "no-cache, no-transform");
      c.header("X-Accel-Buffering", "no");
      return stream(c, async (s) => {
        for await (const chunk of started.stream!) {
          await s.write(chunk);
        }
      });
    }

    const result = await fetchOpenAI(process.env.OPENAI_API_KEY, {
      model: "gpt-4o-mini",
      messages: apiMessages,
      max_tokens: 300,
      temperature: 0.7,
    });

    if (result.error || !result.data) {
      return c.json({ error: result.error || "Failed to get response from AI" }, result.status as 500);
    }

    const assistantMessage = result.data.choices?.[0]?.message?.content;

    if (!assistantMessage) {
      return c.json({ error: "No response from AI" }, 500);
    }

    // Increment usage after successful response
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

// ============================================
// User Progress API (authenticated)
// ============================================

// Get user's progress
app.get("/api/user/progress", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
  const supabase = getSupabaseAdmin();

  try {
    const { data: profile } = await supabase
      .from("user_profiles")
      .select("*")
      .eq("user_id", user.id)
      .maybeSingle();

    // Get all skill scores for this user (using RPC function)
    const { data: skillScores } = await supabase.rpc("get_user_skill_summary", {
      p_user_id: user.id,
    });

    // Get recent sessions
    const { data: sessions } = await supabase
      .from("user_sessions")
      .select("id, session_type, started_at, completed_at, questions_total, questions_correct, metadata")
      .eq("user_id", user.id)
      .order("started_at", { ascending: false })
      .limit(50);

    // Per-session estimated scores from the Reviewer agent. Score Trend
    // plots these so the chart, the stat card, and the trajectory all
    // speak the same definition of "your estimated score" instead of one
    // showing accuracy and the other showing weighted mastery.
    const sessionIds = (sessions ?? []).map((s: SessionRow) => s.id);
    const reviewsBySessionId: Record<number, { math: number; rw: number }> = {};
    if (sessionIds.length > 0) {
      const { data: reviews } = await supabase
        .from("ai_session_reviews")
        .select("session_id, estimated_math, estimated_rw")
        .in("session_id", sessionIds);
      for (const r of reviews ?? []) {
        if (r.session_id != null && r.estimated_math != null && r.estimated_rw != null) {
          reviewsBySessionId[r.session_id as number] = {
            math: r.estimated_math as number,
            rw: r.estimated_rw as number,
          };
        }
      }
    }

    // Per-session skill-tracked subset. The history list shows total
    // questions from user_sessions (now reconciled to attempts via migration
    // 008), but a subset of those questions may not have skill identity
    // recorded — typically because the original write predates migration
    // 007. Surfacing the skill-tracked count lets the UI render an honest
    // "X of Y skill-tracked" footnote rather than silently mismatching the
    // heatmap.
    const skillTrackedBySessionId: Record<number, { attempted: number; correct: number }> = {};
    if (sessionIds.length > 0) {
      const { data: trackedRows } = await supabase
        .from("user_skill_scores")
        .select("session_id, questions_n, score")
        .eq("user_id", user.id)
        .not("skill", "is", null)
        .in("session_id", sessionIds);
      for (const r of trackedRows ?? []) {
        const sid = r.session_id as number | null;
        if (sid == null) continue;
        const cur = skillTrackedBySessionId[sid] ?? { attempted: 0, correct: 0 };
        const qn = (r.questions_n as number | null) ?? 0;
        const sc = (r.score as number | null) ?? 0;
        cur.attempted += qn;
        cur.correct += Math.round(qn * sc);
        skillTrackedBySessionId[sid] = cur;
      }
    }

    // Per-session CUMULATIVE deterministic score — same Bayesian-smoothed,
    // volume-weighted formula the headline card uses (calcSection above),
    // snapshotted at each session boundary. Score Trend chart, score-change
    // pill, trajectory, and headline all read from this map so they can
    // never disagree by source-of-truth, only by chronology.
    //
    // Attribution by session_id, NOT by user_skill_scores.created_at: the
    // diagnostician backfill (and migration 008) inserted rows retroactively,
    // so a row's created_at no longer tracks when the practice happened.
    // Each row's session_id points at the right session, which has the
    // correct started_at for ordering.
    const cumulativeBySessionId: Record<number, { math: number; rw: number; total: number }> = {};
    if (sessionIds.length > 0) {
      const { data: allSkillRows } = await supabase
        .from("user_skill_scores")
        .select("session_id, topic, questions_n, score")
        .eq("user_id", user.id);

      const skillRowsBySessionId = new Map<number, Array<{ topic: string; qn: number; sc: number }>>();
      for (const r of (allSkillRows ?? []) as Array<{ session_id: number | null; topic: string; questions_n: number | null; score: number | null }>) {
        if (typeof r.session_id !== "number") continue;
        const arr = skillRowsBySessionId.get(r.session_id) ?? [];
        arr.push({ topic: r.topic, qn: r.questions_n ?? 0, sc: r.score ?? 0 });
        skillRowsBySessionId.set(r.session_id, arr);
      }

      const PRIOR_N = 5;
      const PRIOR_P = 0.5;
      const sectionScore = (
        domains: Record<string, { attempted: number; correct: number }>,
        list: string[]
      ): number => {
        let weightedSmoothed = 0;
        let totalWeight = 0;
        for (const d of list) {
          const c = domains[d];
          if (!c || c.attempted <= 0) continue;
          const smoothed = (c.correct + PRIOR_N * PRIOR_P) / (c.attempted + PRIOR_N);
          weightedSmoothed += smoothed * c.attempted;
          totalWeight += c.attempted;
        }
        if (totalWeight === 0) return 200;
        const proficiency = Math.min(1, Math.max(0, weightedSmoothed / totalWeight));
        return Math.round(200 + proficiency * 600);
      };

      const MATH_DOMS = ["algebra", "advanced_math", "problem_solving", "geometry"];
      const RW_DOMS = ["information_ideas", "craft_structure", "expression", "conventions"];

      // Walk sessions oldest → newest; absorb that session's skill rows
      // into the running cumDomains, then snapshot. Each session_id maps
      // to "your score after this session's attempts were graded."
      const cumDomains: Record<string, { attempted: number; correct: number }> = {};
      const sessionsByStartTime = (sessions ?? [])
        .filter((s): s is SessionRow & { id: number } => typeof s.id === "number" && !!s.started_at)
        .sort((a, b) => new Date(a.started_at as string).getTime() - new Date(b.started_at as string).getTime());

      for (const sess of sessionsByStartTime) {
        const rows = skillRowsBySessionId.get(sess.id) ?? [];
        for (const r of rows) {
          const cur = cumDomains[r.topic] ?? { attempted: 0, correct: 0 };
          cur.attempted += r.qn;
          cur.correct += Math.round(r.qn * r.sc);
          cumDomains[r.topic] = cur;
        }
        const mScore = sectionScore(cumDomains, MATH_DOMS);
        const rScore = sectionScore(cumDomains, RW_DOMS);
        cumulativeBySessionId[sess.id] = { math: mScore, rw: rScore, total: mScore + rScore };
      }
    }

    // Get latest diagnostic result
    const { data: diagnosticResult } = await supabase
      .from("user_diagnostic_results")
      .select("*")
      .eq("user_id", user.id)
      .order("created_at", { ascending: false })
      .limit(1)
      .maybeSingle();

    // Build topic progress at SKILL granularity. The new RPC groups
    // user_skill_scores rows by (domain, skill); legacy rows (skill IS NULL)
    // Skill-level rollup: only post-migration sessions populate this (the
    // skill column on user_skill_scores went live with migration 007).
    // Historical sessions still show up in the domainProgress rollup below
    // and on the dashboard's section scores; the heatmap surfaces both.
    const { data: skillRowsBySkill } = await supabase.rpc("get_user_skill_summary_by_skill", {
      p_user_id: user.id,
    });

    const topicProgress: Record<string, TopicProgressEntry> = {};
    if (Array.isArray(skillRowsBySkill)) {
      type SkillRow = { domain: string; skill: string; total_attempted: number | null; avg_score: number | null; last_practiced: string | null };
      (skillRowsBySkill as SkillRow[]).forEach((row) => {
        if (!row.skill) return;
        const accuracy = row.avg_score ?? 0;
        const attempted = row.total_attempted ?? 0;
        topicProgress[row.skill] = {
          topic: row.skill,
          questionsAttempted: attempted,
          questionsCorrect: Math.round(attempted * accuracy),
          lastPracticed: row.last_practiced,
          currentLevel: accuracy >= 0.85 ? "advanced" :
                       accuracy >= 0.7 ? "proficient" :
                       accuracy >= 0.5 ? "developing" : "foundation"
        };
      });
    }

    // Domain rollups still drive estimatedMathScore / estimatedRWScore so
    // legacy attempts (recorded pre-migration with skill=NULL) keep
    // contributing to the headline number. Pulled from the original
    // get_user_skill_summary RPC which sums every row regardless of
    // whether the new skill column is set.
    const domainProgress: Record<string, { attempted: number; correct: number }> = {};
    const defaultDomains = [
      "algebra", "advanced_math", "problem_solving", "geometry",
      "information_ideas", "craft_structure", "expression", "conventions"
    ];
    defaultDomains.forEach((d) => {
      domainProgress[d] = { attempted: 0, correct: 0 };
    });
    if (skillScores) {
      skillScores.forEach((row: SkillScoreRow) => {
        const accuracy = row.avg_score || 0;
        const attempted = row.total_attempted || 0;
        domainProgress[row.topic] = {
          attempted,
          correct: Math.round(attempted * accuracy),
        };
      });
    }

    const mathDomains = ["algebra", "advanced_math", "problem_solving", "geometry"];
    const rwDomains = ["information_ideas", "craft_structure", "expression", "conventions"];

    // Per-section score derived from real practice + diagnostic attempts.
    //
    // Inputs per domain in the section:
    //   - attempted, correct (from get_user_skill_summary, which sums every
    //     user_skill_scores row regardless of skill granularity, so legacy
    //     rows still contribute).
    //
    // Formula:
    //   - Bayesian smoothing per domain. Treat each domain's accuracy as if
    //     it had also seen `prior_n` "neutral" questions at the section's
    //     baseline rate. A domain with 2 attempts at 100% no longer pins
    //     the section to the ceiling; one with 200 attempts barely shifts.
    //   - Volume-weighted aggregation across the 4 domains in the section,
    //     so a heavily-practiced domain dominates a sparsely-practiced one.
    //   - Linear projection onto the 200–800 SAT band: score = 200 + 600·p.
    //   - When the section has zero attempts AND a profile score exists
    //     (Diagnostician/Reviewer LLM-set), prefer that over the 0.5 default.
    //
    // Returns the score plus the underlying counts so the UI can show
    // "X / Y in Math · 73%" without recomputing client-side.
    const PRIOR_N = 5;
    const PRIOR_P = 0.5;
    const calcSection = (
      domains: string[],
      profileFallback: number | null
    ): { score: number; attempted: number; correct: number; accuracy: number } => {
      let attempted = 0;
      let correct = 0;
      let weightedSmoothed = 0;
      let totalWeight = 0;
      for (const d of domains) {
        const p = domainProgress[d];
        if (!p || p.attempted <= 0) continue;
        attempted += p.attempted;
        correct += p.correct;
        const smoothed = (p.correct + PRIOR_N * PRIOR_P) / (p.attempted + PRIOR_N);
        weightedSmoothed += smoothed * p.attempted;
        totalWeight += p.attempted;
      }
      if (totalWeight === 0) {
        return {
          score: profileFallback ?? 400,
          attempted: 0,
          correct: 0,
          accuracy: 0,
        };
      }
      const proficiency = Math.min(1, Math.max(0, weightedSmoothed / totalWeight));
      return {
        score: Math.round(200 + proficiency * 600),
        attempted,
        correct,
        accuracy: correct / attempted,
      };
    };

    const profileMath = (profile?.estimated_math_score as number | undefined) ?? null;
    const profileRW = (profile?.estimated_rw_score as number | undefined) ?? null;
    const mathSection = calcSection(mathDomains, profileMath);
    const rwSection = calcSection(rwDomains, profileRW);

    // Diagnostic-flagged weak skills, surfaced alongside topicProgress so the
    // frontend prioritizer doesn't need a second round-trip.
    const diagnosticWeaknesses = await fetchLatestWeaknesses(supabase, user.id);

    return c.json({
      success: true,
      data: {
        topicProgress,
        // Domain-level rollup so the UI can show "X attempted, Y correct"
        // for the 8 SAT domains even when no skill-level rows exist
        // (legacy sessions written before migration 007 had no skill
        // column). The heatmap surfaces this above each domain's skill
        // grid as a "before skill tracking" footnote.
        domainProgress,
        diagnosticWeaknesses,
        currentStreak: profile?.streak_days || 0,
        longestStreak: profile?.streak_days || 0,
        lastPracticeDate: profile?.streak_last_date || null,
        estimatedMathScore: mathSection.score,
        estimatedRWScore: rwSection.score,
        // Section breakdown (raw counts + accuracy) so the headline card
        // can render "Math 540 · 41/57 (72%)" without re-deriving anything.
        sectionBreakdown: {
          math: mathSection,
          rw: rwSection,
        },
        sessions: (sessions || []).map((s: SessionRow) => {
          const review = reviewsBySessionId[s.id as number];
          const tracked = skillTrackedBySessionId[s.id as number];
          const cum = cumulativeBySessionId[s.id as number];
          return {
            id: `session_${s.id}`,
            date: s.started_at,
            type: s.session_type,
            questionsAttempted: s.questions_total || 0,
            questionsCorrect: s.questions_correct || 0,
            skillTrackedAttempted: tracked?.attempted ?? 0,
            skillTrackedCorrect: tracked?.correct ?? 0,
            topics: safeParseTopics(s.metadata),
            timeSpentSeconds: safeParseTimeSpent(s.metadata),
            // estimated*Score retains the per-session Reviewer LLM snapshot
            // for backwards-compat callers, but the chart now prefers the
            // cumulative deterministic score below — same formula as the
            // headline card, so the bars and the headline always agree.
            estimatedMathScore: review?.math ?? null,
            estimatedRWScore: review?.rw ?? null,
            cumulativeMathScore: cum?.math ?? null,
            cumulativeRWScore: cum?.rw ?? null,
          };
        }),
        diagnosticCompleted: profile?.has_completed_diagnostic === true,
        diagnosticDate: diagnosticResult?.created_at || null
      }
    });
  } catch (error) {
    console.error("Error fetching user progress:", error);
    return c.json({ error: "Failed to fetch progress" }, 500);
  }
});

// Confidence calibration: per-bucket actual accuracy vs. canonical "expected"
// for each self-rating. Drives the Confidence Calibration card on /progress.
// Expected anchors: guessing≈25% (random across 4 options), somewhat=60%,
// confident=90%. The narrative is whether `actual` matches `expected`.
app.get("/api/user/calibration", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
  const supabase = getSupabaseAdmin();

  // Scope attempts to this user via the session join. attempts has no user_id
  // column — `session_id` → user_sessions is the only path.
  const { data: sessions } = await supabase
    .from("user_sessions")
    .select("id")
    .eq("user_id", user.id);
  const sessionIds = (sessions ?? []).map((s) => s.id);
  const buckets = {
    guessing: { n: 0, c: 0 },
    somewhat: { n: 0, c: 0 },
    confident: { n: 0, c: 0 },
  };
  if (sessionIds.length > 0) {
    const { data: rows, error } = await supabase
      .from("attempts")
      .select("confidence, is_correct")
      .in("session_id", sessionIds)
      .not("confidence", "is", null);
    if (error) {
      console.error("calibration query failed:", error.message);
      return c.json({ error: error.message }, 500);
    }
    for (const r of rows ?? []) {
      const b = (buckets as Record<string, { n: number; c: number }>)[
        r.confidence as string
      ];
      if (!b) continue;
      b.n += 1;
      if (r.is_correct) b.c += 1;
    }
  }
  const fmt = (b: { n: number; c: number }, expected: number, label: string) => ({
    confidence: label,
    expected,
    actual: b.n > 0 ? Math.round((b.c / b.n) * 100) : null,
    n: b.n,
  });
  return c.json({
    success: true,
    data: [
      fmt(buckets.guessing, 25, "Guessing"),
      fmt(buckets.somewhat, 60, "Somewhat sure"),
      fmt(buckets.confident, 90, "Confident"),
    ],
  });
});

// Record a practice session (authenticated)
app.post("/api/user/sessions", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
  const supabase = getSupabaseAdmin();

  try {
    const body = await c.req.json();
    const { sessionType, attempts, timeSpentSeconds } = body;

    if (!sessionType || !attempts) {
      return c.json({ error: "Missing required fields" }, 400);
    }

    // Get or create profile
    let { data: profile } = await supabase
      .from("user_profiles")
      .select("*")
      .eq("user_id", user.id)
      .maybeSingle();

    if (!profile) {
      await supabase.from("user_profiles").insert({
        user_id: user.id,
        email: user.email,
        display_name: user.email.split('@')[0],
      });

      const { data: newProfile } = await supabase
        .from("user_profiles")
        .select("*")
        .eq("user_id", user.id)
        .maybeSingle();
      profile = newProfile;
    }

    // Calculate totals
    const questionsTotal = attempts.length;
    const questionsCorrect = attempts.filter((a: { isCorrect: boolean }) => a.isCorrect).length;
    const topics = [...new Set(attempts.map((a: { topic: string }) => a.topic))];

    // Create session record and get the ID back
    const { data: sessionData, error: sessionError } = await supabase
      .from("user_sessions")
      .insert({
        user_id: user.id,
        session_type: sessionType,
        questions_total: questionsTotal,
        questions_correct: questionsCorrect,
        metadata: JSON.stringify({ topics, timeSpentSeconds }),
      })
      .select("id")
      .single();

    if (sessionError || !sessionData) {
      console.error("Error creating session:", sessionError);
      return c.json({ error: "Failed to create session" }, 500);
    }

    const sessionId = sessionData.id;

    // Record attempts (array insert)
    const attemptRows = attempts.map((attempt: { questionId?: number; selectedIndex?: number; isCorrect: boolean; timeSpentSec?: number; confidence?: string }) => ({
      session_id: sessionId,
      question_id: attempt.questionId || 0,
      selected_index: attempt.selectedIndex || 0,
      is_correct: attempt.isCorrect,
      time_spent_sec: attempt.timeSpentSec || 0,
      confidence: attempt.confidence || null,
    }));
    if (attemptRows.length > 0) {
      await supabase.from("attempts").insert(attemptRows);
    }

    // Reconcile the user_sessions denormalization with what we actually just
    // inserted. The body fields questions_total / questions_correct are
    // accepted from the client without any cross-check, so a buggy or seeded
    // payload could silently drift from `attempts`. Recompute from attemptRows
    // — the row of truth — and write back. Migration 008 backfilled legacy
    // sessions; this UPDATE keeps every future session honest by construction.
    const realAttempted = attemptRows.length;
    const realCorrect   = attemptRows.filter((r: { is_correct: boolean }) => r.is_correct).length;
    if (realAttempted > 0) {
      await supabase
        .from("user_sessions")
        .update({
          questions_total: realAttempted,
          questions_correct: realCorrect,
          updated_at: new Date().toISOString(),
        })
        .eq("id", sessionId);
    }

    // Aggregate by (topic=domain, skill=skill_slug). The skill column was
    // added in migration 007 so the heatmap's get_user_skill_summary_by_skill
    // RPC can read skill-level rows; the legacy get_user_skill_summary RPC
    // continues to roll up by topic for section-score calculations. One row
    // per (domain, skill) tuple — never duplicate as separate domain and
    // skill rows, which would double-count in the domain rollup.
    const tupleStats: Record<string, { topic: string; skill: string | null; total: number; correct: number }> = {};
    attempts.forEach((a: { topic?: string; skill?: string | null; isCorrect: boolean }) => {
      const topic = typeof a.topic === "string" && a.topic.length > 0 ? a.topic : null;
      const skill = typeof a.skill === "string" && a.skill.length > 0 ? a.skill : null;
      if (!topic) return; // domain is required to bucket; skip malformed rows.
      const key = `${topic}::${skill ?? ""}`;
      if (!tupleStats[key]) tupleStats[key] = { topic, skill, total: 0, correct: 0 };
      tupleStats[key].total++;
      if (a.isCorrect) tupleStats[key].correct++;
    });

    const skillScoreRows = Object.values(tupleStats).map((s) => ({
      user_id: user.id,
      session_id: sessionId,
      topic: s.topic,
      skill: s.skill,
      score: s.total > 0 ? s.correct / s.total : 0,
      questions_n: s.total,
    }));
    if (skillScoreRows.length > 0) {
      await supabase.from("user_skill_scores").insert(skillScoreRows);
    }

    // Update streak
    const calculateStreak = (lastDate: string | null, currentStreak: number) => {
      if (!lastDate) return { streak: 1, shouldUpdate: true };
      const today = new Date().toISOString().split('T')[0];
      const yesterday = new Date(Date.now() - 86400000).toISOString().split('T')[0];
      if (lastDate === today) return { streak: currentStreak, shouldUpdate: false };
      if (lastDate === yesterday) return { streak: currentStreak + 1, shouldUpdate: true };
      return { streak: 1, shouldUpdate: true };
    };

    const { streak, shouldUpdate } = calculateStreak(
      profile?.streak_last_date as string | null,
      (profile?.streak_days as number) || 0
    );

    if (shouldUpdate) {
      const today = new Date().toISOString().split('T')[0];
      await supabase
        .from("user_profiles")
        .update({ streak_days: streak, streak_last_date: today, updated_at: new Date().toISOString() })
        .eq("user_id", user.id);
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

// Save diagnostic results (authenticated)
app.post("/api/user/diagnostic", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
  const supabase = getSupabaseAdmin();

  try {
    const body = await c.req.json();
    const { sessionId, skills, gaps, recommendedPlan, estimatedScore } = body;

    // Update user profile to mark diagnostic complete
    await supabase
      .from("user_profiles")
      .update({ has_completed_diagnostic: true, updated_at: new Date().toISOString() })
      .eq("user_id", user.id);

    await supabase.from("user_diagnostic_results").insert({
      user_id: user.id,
      session_id: sessionId || null,
      skills: JSON.stringify(skills || {}),
      gaps: JSON.stringify(gaps || []),
      recommended_plan: recommendedPlan || null,
      estimated_score: estimatedScore || null,
    });

    return c.json({ success: true });
  } catch (error) {
    console.error("Error saving diagnostic:", error);
    return c.json({ error: "Failed to save diagnostic results" }, 500);
  }
});

// ============================================
// Stripe Subscription API
// ============================================

// Get subscription status (authenticated)
app.get("/api/subscription", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
  const supabase = getSupabaseAdmin();

  try {
    const { data: sub } = await supabase
      .from("subscriptions")
      .select("*")
      .eq("user_id", user.id)
      .maybeSingle();

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

    const isPremium = sub.tier === 'premium' &&
      (!sub.expires_at || new Date(sub.expires_at as string) > new Date());

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

// Create Stripe checkout session (authenticated)
app.post("/api/subscription/checkout", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;

  try {
    const stripe = new Stripe(process.env.STRIPE_SECRET_KEY!);
    const body = await c.req.json();
    const { billingCycle, successUrl, cancelUrl } = body;

    const isYearly = billingCycle === "yearly";
    const priceId = isYearly ? STRIPE_YEARLY_PRICE_ID : STRIPE_MONTHLY_PRICE_ID;

    // Create checkout session with 7-day free trial
    const session = await stripe.checkout.sessions.create({
      mode: "subscription",
      line_items: [
        {
          price: priceId,
          quantity: 1,
        },
      ],
      subscription_data: {
        trial_period_days: 7,
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
      },
    });

    return c.json({ url: session.url });
  } catch (error) {
    console.error("Error creating checkout session:", error);
    return c.json({ error: "Failed to create checkout session" }, 500);
  }
});

// Create Stripe customer portal session (authenticated)
app.post("/api/subscription/portal", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
  const supabase = getSupabaseAdmin();

  try {
    const stripe = new Stripe(process.env.STRIPE_SECRET_KEY!);

    // Get user's subscription with Stripe customer ID
    const { data: sub } = await supabase
      .from("subscriptions")
      .select("stripe_customer_id")
      .eq("user_id", user.id)
      .maybeSingle();

    if (!sub?.stripe_customer_id) {
      return c.json({ error: "No subscription found" }, 404);
    }

    let returnUrl: string | undefined;
    try {
      const body = await c.req.json();
      returnUrl = body.returnUrl;
    } catch {
      // Body may be empty — use default
    }

    // Create portal session
    const session = await stripe.billingPortal.sessions.create({
      customer: sub.stripe_customer_id as string,
      return_url: returnUrl || `${c.req.header("origin")}/settings`,
    });

    return c.json({ url: session.url });
  } catch (error) {
    console.error("Error creating portal session:", error);
    return c.json({ error: "Failed to create portal session" }, 500);
  }
});

// Stripe webhook handler
app.post("/api/stripe/webhook", async (c) => {
  const supabase = getSupabaseAdmin();
  const body = await c.req.text();
  const sig = c.req.header("stripe-signature") || "";

  let event: Stripe.Event;
  try {
    const stripe = new Stripe(process.env.STRIPE_SECRET_KEY!);
    event = stripe.webhooks.constructEvent(
      body,
      sig,
      process.env.STRIPE_WEBHOOK_SECRET!
    );
  } catch (err) {
    console.error("Webhook signature verification failed:", err);
    return c.text("Invalid signature", 400);
  }

  try {
    switch (event.type) {
      case "checkout.session.completed": {
        const session = event.data.object as Stripe.Checkout.Session;
        const userId = session.client_reference_id || session.metadata?.userId;

        if (!userId) {
          console.error("No user ID in checkout session:", session.id);
          return c.text("Missing user ID in checkout session", 500);
        }

        // Set expiration to 1 month from now (will be updated by subscription.updated webhook)
        const expiresAt = new Date(Date.now() + 30 * 24 * 60 * 60 * 1000).toISOString();

        // Upsert subscription record
        const { data: existing } = await supabase
          .from("subscriptions")
          .select("id")
          .eq("user_id", userId)
          .maybeSingle();

        if (existing) {
          await supabase
            .from("subscriptions")
            .update({
              tier: "premium",
              stripe_customer_id: session.customer as string,
              stripe_subscription_id: session.subscription as string,
              started_at: new Date().toISOString(),
              expires_at: expiresAt,
              cancel_at_period_end: false,
              updated_at: new Date().toISOString(),
            })
            .eq("user_id", userId);
        } else {
          await supabase.from("subscriptions").insert({
            user_id: userId,
            tier: "premium",
            stripe_customer_id: session.customer as string,
            stripe_subscription_id: session.subscription as string,
            started_at: new Date().toISOString(),
            expires_at: expiresAt,
          });
        }
        break;
      }

      case "customer.subscription.updated": {
        const subscription = event.data.object as Stripe.Subscription;
        const customerId = subscription.customer as string;

        // current_period_end exists on Stripe webhook payload but not in SDK types
        const subData = event.data.object as unknown as Record<string, unknown>;
        const periodEnd = typeof subData.current_period_end === "number" ? subData.current_period_end : Math.floor(Date.now() / 1000) + 30 * 86400;
        const expiresAt = new Date(periodEnd * 1000).toISOString();
        const cancelAtPeriodEnd = subscription.cancel_at_period_end;
        const tier = (subscription.status === "active" || subscription.status === "trialing") ? "premium" : "free";

        await supabase
          .from("subscriptions")
          .update({
            tier,
            expires_at: expiresAt,
            cancel_at_period_end: cancelAtPeriodEnd,
            updated_at: new Date().toISOString(),
          })
          .eq("stripe_customer_id", customerId);
        break;
      }

      case "customer.subscription.deleted": {
        const subscription = event.data.object as Stripe.Subscription;
        const customerId = subscription.customer as string;

        const { data: updated } = await supabase
          .from("subscriptions")
          .update({
            tier: "free",
            cancel_at_period_end: false,
            updated_at: new Date().toISOString(),
          })
          .eq("stripe_customer_id", customerId)
          .select();

        if (!updated || updated.length === 0) {
          console.error("subscription.deleted: no matching row for customer", customerId);
          return c.text("No subscription found for customer", 500);
        }
        break;
      }

      case "invoice.payment_succeeded": {
        const invoice = event.data.object as Stripe.Invoice;
        if (invoice.billing_reason === "subscription_cycle") {
          const customerId = invoice.customer as string;

          // Use the subscription's actual period end from Stripe
          const periodEnd = invoice.lines?.data?.[0]?.period?.end;
          const expiresAt = periodEnd
            ? new Date(periodEnd * 1000).toISOString()
            : new Date(Date.now() + 365 * 24 * 60 * 60 * 1000).toISOString();

          await supabase
            .from("subscriptions")
            .update({ expires_at: expiresAt, updated_at: new Date().toISOString() })
            .eq("stripe_customer_id", customerId);
        }
        break;
      }

      case "invoice.payment_failed": {
        const invoice = event.data.object as Stripe.Invoice;
        const customerId = invoice.customer as string;

        // Mark subscription as potentially lapsing
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

// ============================================
// Anonymous Progress API
// ============================================

// Helper to get or create browser session
async function getOrCreateBrowserSession(supabase: SupabaseClient, browserId: string) {
  let { data: session } = await supabase
    .from("anon_sessions")
    .select("*")
    .eq("browser_id", browserId)
    .maybeSingle();

  if (!session) {
    await supabase.from("anon_sessions").insert({
      browser_id: browserId,
      streak_days: 0,
    });

    const { data: newSession } = await supabase
      .from("anon_sessions")
      .select("*")
      .eq("browser_id", browserId)
      .maybeSingle();
    session = newSession;
  }

  return session;
}

// Get student progress (anonymous)
app.get("/api/progress/:browserId", async (c) => {
  const browserId = c.req.param("browserId");
  const supabase = getSupabaseAdmin();

  try {
    const anonSession = await getOrCreateBrowserSession(supabase, browserId);
    if (!anonSession) {
      return c.json({ error: "Failed to get session" }, 500);
    }

    // Get skill scores using RPC function
    const { data: skillScores } = await supabase.rpc("get_anon_skill_summary", {
      p_anon_session_id: anonSession.id,
    });

    // Get recent sessions
    const { data: sessions } = await supabase
      .from("sessions")
      .select("id, session_type, started_at, completed_at, questions_total, questions_correct, score_math, score_reading, metadata")
      .eq("anon_session_id", anonSession.id)
      .order("started_at", { ascending: false })
      .limit(50);

    // Get latest diagnostic result
    const { data: diagnosticResult } = await supabase
      .from("diagnostic_results")
      .select("*")
      .eq("anon_session_id", anonSession.id)
      .order("created_at", { ascending: false })
      .limit(1)
      .maybeSingle();

    const topicProgress: Record<string, TopicProgressEntry> = {};
    const defaultTopics = [
      "algebra", "advanced_math", "problem_solving", "geometry",
      "information_ideas", "craft_structure", "expression", "conventions"
    ];

    defaultTopics.forEach(topic => {
      topicProgress[topic] = {
        topic,
        questionsAttempted: 0,
        questionsCorrect: 0,
        lastPracticed: null,
        currentLevel: "foundation"
      };
    });

    if (skillScores) {
      skillScores.forEach((row: SkillScoreRow) => {
        const accuracy = row.avg_score || 0;
        topicProgress[row.topic] = {
          topic: row.topic,
          questionsAttempted: row.total_attempted || 0,
          questionsCorrect: Math.round((row.total_attempted || 0) * accuracy),
          lastPracticed: null,
          currentLevel: accuracy >= 0.85 ? "advanced" :
                       accuracy >= 0.7 ? "proficient" :
                       accuracy >= 0.5 ? "developing" : "foundation"
        };
      });
    }

    const mathTopics = ["algebra", "advanced_math", "problem_solving", "geometry"];
    const rwTopics = ["information_ideas", "craft_structure", "expression", "conventions"];

    const calcScore = (topics: string[]) => {
      let total = 0;
      let count = 0;
      topics.forEach(t => {
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
        sessions: (sessions || []).map((s: SessionRow) => ({
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

// Record a practice session (anonymous)
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

    // Calculate totals
    const questionsTotal = attempts.length;
    const questionsCorrect = attempts.filter((a: { isCorrect: boolean }) => a.isCorrect).length;
    const topics = [...new Set(attempts.map((a: { topic: string }) => a.topic))];

    // Create session record and get the ID back
    const { data: sessionData, error: sessionError } = await supabase
      .from("sessions")
      .insert({
        anon_session_id: anonSession.id,
        session_type: sessionType,
        questions_total: questionsTotal,
        questions_correct: questionsCorrect,
        metadata: JSON.stringify({ topics, timeSpentSeconds }),
      })
      .select("id")
      .single();

    if (sessionError || !sessionData) {
      console.error("Error creating session:", sessionError);
      return c.json({ error: "Failed to create session" }, 500);
    }

    const sessionId = sessionData.id;

    // Record attempts (array insert)
    const attemptRows = attempts.map((attempt: { questionId?: number; selectedIndex?: number; isCorrect: boolean; timeSpentSec?: number; confidence?: string }) => ({
      session_id: sessionId,
      question_id: attempt.questionId || 0,
      selected_index: attempt.selectedIndex || 0,
      is_correct: attempt.isCorrect,
      time_spent_sec: attempt.timeSpentSec || 0,
      confidence: attempt.confidence || null,
    }));
    if (attemptRows.length > 0) {
      await supabase.from("attempts").insert(attemptRows);
    }

    // Update skill scores per topic
    const topicStats: Record<string, { total: number; correct: number }> = {};
    attempts.forEach((a: { topic: string; isCorrect: boolean }) => {
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
      questions_n: stats.total,
    }));
    if (skillScoreRows.length > 0) {
      await supabase.from("skill_scores").insert(skillScoreRows);
    }

    // Update streak
    const today = new Date().toISOString().split('T')[0];
    const yesterday = new Date(Date.now() - 86400000).toISOString().split('T')[0];
    let streak = 1;

    if (anonSession.streak_last_date) {
      if (anonSession.streak_last_date === today) {
        streak = anonSession.streak_days as number;
      } else if (anonSession.streak_last_date === yesterday) {
        streak = (anonSession.streak_days as number) + 1;
      }
    }

    await supabase
      .from("anon_sessions")
      .update({ streak_days: streak, streak_last_date: today, updated_at: new Date().toISOString() })
      .eq("id", anonSession.id);

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

// Save diagnostic results (anonymous)
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
      estimated_score: estimatedScore || null,
    });

    return c.json({ success: true });
  } catch (error) {
    console.error("Error saving diagnostic:", error);
    return c.json({ error: "Failed to save diagnostic results" }, 500);
  }
});

// Delete progress (anonymous)
app.delete("/api/progress/:browserId", async (c) => {
  const browserId = c.req.param("browserId");
  const supabase = getSupabaseAdmin();

  try {
    const { data: anonSession } = await supabase
      .from("anon_sessions")
      .select("id")
      .eq("browser_id", browserId)
      .maybeSingle();

    if (anonSession) {
      // Get session IDs for this anon session to delete linked attempts
      const { data: sessionRows } = await supabase
        .from("sessions")
        .select("id")
        .eq("anon_session_id", anonSession.id);

      if (sessionRows && sessionRows.length > 0) {
        const sessionIds = sessionRows.map((s: { id: number }) => s.id);
        await supabase.from("attempts").delete().in("session_id", sessionIds);
      }

      await supabase.from("skill_scores").delete().eq("anon_session_id", anonSession.id);
      await supabase.from("diagnostic_results").delete().eq("anon_session_id", anonSession.id);
      await supabase.from("sessions").delete().eq("anon_session_id", anonSession.id);
      await supabase.from("anon_sessions").delete().eq("id", anonSession.id);
    }

    // Clean up usage tracking for this browser
    await supabase.from("chat_usage").delete().eq("browser_id", browserId);
    await supabase.from("tutor_usage").delete().eq("browser_id", browserId);

    return c.json({ success: true });
  } catch (error) {
    console.error("Error deleting progress:", error);
    return c.json({ error: "Failed to delete progress" }, 500);
  }
});

// ===========================================================================
// AI Agents — typed framework with structured output + per-call logging.
// Every call lands in ai_agent_calls (success or failure).
// ===========================================================================

// Feedback — thumbs up/down on a specific agent call or tutor turn. Must
// provide exactly one of agentCallId / tutorTurnId. Rating is ±1.
app.post("/api/agents/feedback", optionalAuthMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser | undefined;

  let body: {
    agentCallId?: unknown;
    tutorTurnId?: unknown;
    rating?: unknown;
    freeText?: unknown;
  };
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
  const freeText = typeof body.freeText === "string" ? body.freeText.slice(0, 2000) : null;

  const supabase = getSupabaseAdmin();
  const { error } = await supabase.from("ai_agent_feedback").insert({
    agent_call_id: agentCallId,
    tutor_turn_id: tutorTurnId,
    user_id: user?.id ?? null,
    rating,
    free_text: freeText,
  });
  if (error) {
    console.error("Failed to insert ai_agent_feedback:", error.message);
    return c.json({ error: "Failed to record feedback" }, 500);
  }
  return c.json({ success: true });
});

app.post("/api/agents/echo", optionalAuthMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser | undefined;

  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }

  let body: { message?: unknown };
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

// Parse + validate raw attempt rows posted from the diagnostic page.
// Anything invalid returns null so the route can 400 cleanly.
function parseDiagnosticianAttempts(raw: unknown): DiagnosticianAttempt[] | null {
  if (!Array.isArray(raw) || raw.length === 0) return null;
  const out: DiagnosticianAttempt[] = [];
  for (const item of raw) {
    if (typeof item !== "object" || item === null) return null;
    const o = item as Record<string, unknown>;
    if (
      typeof o.questionId !== "string" ||
      typeof o.domain !== "string" ||
      typeof o.skill !== "string" ||
      (o.difficulty !== "E" && o.difficulty !== "M" && o.difficulty !== "H") ||
      typeof o.selectedIndex !== "number" ||
      typeof o.correctIndex !== "number" ||
      typeof o.isCorrect !== "boolean" ||
      (o.confidence !== "guessing" && o.confidence !== "somewhat" && o.confidence !== "confident") ||
      typeof o.timeSpent !== "number"
    ) {
      return null;
    }
    out.push({
      questionId: o.questionId,
      domain: o.domain,
      skill: o.skill,
      difficulty: o.difficulty as DifficultyCode,
      selectedIndex: o.selectedIndex,
      correctIndex: o.correctIndex,
      isCorrect: o.isCorrect,
      confidence: o.confidence as ConfidenceLevel,
      timeSpent: o.timeSpent,
    });
  }
  return out;
}

app.post("/api/agents/diagnostician", optionalAuthMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser | undefined;

  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }

  let body: { attempts?: unknown; testDate?: unknown; sessionId?: unknown };
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }

  const attempts = parseDiagnosticianAttempts(body.attempts);
  if (!attempts) {
    return c.json({ error: "attempts[] missing or malformed" }, 400);
  }

  const input: DiagnosticianInput = {
    attempts,
    testDate: typeof body.testDate === "string" ? body.testDate : undefined,
  };
  const sessionId = typeof body.sessionId === "number" ? body.sessionId : undefined;

  const supabase = getSupabaseAdmin();

  try {
    const extraContext = await fetchStudentContext(supabase, user?.id);
    const result = await runAgent(
      diagnosticianAgent,
      input,
      { userId: user?.id, sessionId, extraContext },
      process.env.OPENAI_API_KEY,
      supabase
    );

    // Persist the diagnosis. Insert is a new row every time — history is preserved
    // so we can show score trajectory across repeat diagnostics.
    const { data: inserted, error: insertErr } = await supabase
      .from("ai_diagnoses")
      .insert({
        user_id: user?.id ?? null,
        session_id: sessionId ?? null,
        weaknesses: result.output.weaknesses,
        strengths: result.output.strengths,
        estimated_math: result.output.estimated_math_score,
        estimated_rw: result.output.estimated_rw_score,
        calibration_score: result.output.calibration_score,
        top_focus: result.output.top_focus,
        summary: result.output.summary,
      })
      .select("id")
      .single();

    if (insertErr) {
      console.error("Failed to persist ai_diagnoses:", insertErr.message);
    }

    // Update the user's profile with the initial predicted scores so Dashboard
    // and downstream agents read a single source of truth.
    if (user?.id) {
      const { error: profileErr } = await supabase
        .from("user_profiles")
        .update({
          estimated_math_score: result.output.estimated_math_score,
          estimated_rw_score: result.output.estimated_rw_score,
          has_completed_diagnostic: true,
          updated_at: new Date().toISOString(),
        })
        .eq("user_id", user.id);
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
      agentCallId: result.agentCallId,
    });
  } catch (err) {
    console.error("Diagnostician agent error:", err);
    return c.json({ error: "Diagnostician failed" }, 500);
  }
});

// ─── Coach ──────────────────────────────────────────────────────────────

function parseCoachRecentAttempts(raw: unknown): CoachRecentAttempt[] | null {
  if (!Array.isArray(raw)) return null;
  const out: CoachRecentAttempt[] = [];
  for (const item of raw) {
    if (typeof item !== "object" || item === null) return null;
    const o = item as Record<string, unknown>;
    if (
      typeof o.topic !== "string" ||
      typeof o.skill !== "string" ||
      typeof o.difficulty !== "string" ||
      typeof o.isCorrect !== "boolean" ||
      typeof o.timeSpent !== "number" ||
      typeof o.confidence !== "string"
    ) {
      return null;
    }
    out.push({
      topic: o.topic,
      skill: o.skill,
      skillDisplay: typeof o.skillDisplay === "string" ? o.skillDisplay : undefined,
      difficulty: o.difficulty,
      isCorrect: o.isCorrect,
      timeSpent: o.timeSpent,
      confidence: o.confidence,
    });
  }
  return out;
}

app.post("/api/agents/coach", optionalAuthMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser | undefined;

  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }

  let body: {
    recentAttempts?: unknown;
    currentQuestion?: unknown;
    sessionDuration?: unknown;
    totalAttempts?: unknown;
  };
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
  if (
    typeof cq !== "object" ||
    cq === null ||
    typeof (cq as Record<string, unknown>).topic !== "string" ||
    typeof (cq as Record<string, unknown>).skill !== "string" ||
    typeof (cq as Record<string, unknown>).difficulty !== "string"
  ) {
    return c.json({ error: "currentQuestion missing or malformed" }, 400);
  }
  const cqRec = cq as Record<string, string>;

  if (typeof body.sessionDuration !== "number" || typeof body.totalAttempts !== "number") {
    return c.json({ error: "sessionDuration and totalAttempts required (numbers)" }, 400);
  }

  const input: CoachInput = {
    recentAttempts,
    currentQuestion: {
      topic: cqRec.topic,
      skill: cqRec.skill,
      topicDisplay:
        typeof (cq as Record<string, unknown>).topicDisplay === "string"
          ? ((cq as Record<string, unknown>).topicDisplay as string)
          : undefined,
      skillDisplay:
        typeof (cq as Record<string, unknown>).skillDisplay === "string"
          ? ((cq as Record<string, unknown>).skillDisplay as string)
          : undefined,
      difficulty: cqRec.difficulty,
    },
    sessionDuration: body.sessionDuration,
    totalAttempts: body.totalAttempts,
    sessionAccuracy:
      typeof (body as Record<string, unknown>).sessionAccuracy === "number"
        ? ((body as Record<string, unknown>).sessionAccuracy as number)
        : undefined,
    skillAccuracy:
      typeof (body as Record<string, unknown>).skillAccuracy === "number"
        ? ((body as Record<string, unknown>).skillAccuracy as number)
        : undefined,
  };

  try {
    const supabase = getSupabaseAdmin();
    // Build typed studentContext (vs the older opaque extraContext shim).
    // Anon users → undefined, message will fall through generic-but-still-numbered.
    if (user?.id) {
      try {
        const { data: profile } = await supabase
          .from("user_profiles")
          .select("display_name, target_score, test_date, streak_days, estimated_math_score, estimated_rw_score")
          .eq("user_id", user.id)
          .maybeSingle();
        if (profile) {
          const typedProfile = profile as {
            display_name?: string;
            target_score?: number;
            test_date?: string;
            streak_days?: number;
            estimated_math_score?: number;
            estimated_rw_score?: number;
          };
          const daysUntilTest = typedProfile.test_date
            ? Math.max(
                0,
                Math.ceil(
                  (new Date(typedProfile.test_date).getTime() - Date.now()) /
                    86_400_000
                )
              )
            : undefined;
          const currentPredictedScore =
            (typedProfile.estimated_math_score ?? 0) +
            (typedProfile.estimated_rw_score ?? 0);
          input.studentContext = {
            displayName: typedProfile.display_name,
            targetScore: typedProfile.target_score,
            currentPredictedScore: currentPredictedScore || undefined,
            testDate: typedProfile.test_date,
            daysUntilTest,
            streakDays: typedProfile.streak_days,
          };
        }
      } catch (err) {
        console.error("[coach route] failed to fetch studentContext:", err);
      }
    }
    const extraContext = await fetchStudentContext(supabase, user?.id);
    const result = await runAgent(
      coachAgent,
      input,
      { userId: user?.id, extraContext },
      process.env.OPENAI_API_KEY,
      supabase
    );
    return c.json({
      success: true,
      coach: result.output,
      model: result.model,
      latencyMs: result.latencyMs,
      agentCallId: result.agentCallId,
    });
  } catch (err) {
    console.error("Coach agent error:", err);
    return c.json({ error: "Coach failed" }, 500);
  }
});

// ─── Explainer ──────────────────────────────────────────────────────────

app.post("/api/agents/explainer", optionalAuthMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser | undefined;

  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }

  let body: Record<string, unknown>;
  try {
    body = (await c.req.json()) as Record<string, unknown>;
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }

  const required: Array<keyof ExplainerInput> = [
    "questionId", "stem", "correctAnswer", "studentAnswer",
    "officialRationale", "studentExplanation", "topic", "skill", "difficulty",
  ];
  for (const k of required) {
    if (typeof body[k] !== "string" || (body[k] as string).length === 0) {
      return c.json({ error: `${k} must be a non-empty string` }, 400);
    }
  }
  if (!Array.isArray(body.options) || !body.options.every((s) => typeof s === "string")) {
    return c.json({ error: "options must be string[]" }, 400);
  }

  const input: ExplainerInput = {
    questionId: body.questionId as string,
    stem: body.stem as string,
    passage: typeof body.passage === "string" ? body.passage : undefined,
    options: body.options as string[],
    correctAnswer: body.correctAnswer as string,
    studentAnswer: body.studentAnswer as string,
    officialRationale: body.officialRationale as string,
    studentExplanation: body.studentExplanation as string,
    topic: body.topic as string,
    skill: body.skill as string,
    difficulty: body.difficulty as string,
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
      agentCallId: result.agentCallId,
    });
  } catch (err) {
    console.error("Explainer agent error:", err);
    return c.json({ error: "Explainer failed" }, 500);
  }
});

// ─── Reviewer ──────────────────────────────────────────────────────────────
// Runs after every practice/diagnostic session. Updates the user's predicted
// scores on user_profiles (auth users only), persists the full review to
// ai_session_reviews so the summary page and dashboard can read it back.

function parseReviewerAttempts(raw: unknown): ReviewerAttempt[] | null {
  if (!Array.isArray(raw)) return null;
  const out: ReviewerAttempt[] = [];
  for (const item of raw) {
    if (typeof item !== "object" || item === null) return null;
    const o = item as Record<string, unknown>;
    if (
      typeof o.questionId !== "string" ||
      typeof o.topic !== "string" ||
      typeof o.skill !== "string" ||
      typeof o.difficulty !== "string" ||
      typeof o.isCorrect !== "boolean" ||
      typeof o.timeSpent !== "number" ||
      typeof o.confidence !== "string"
    ) {
      return null;
    }
    out.push({
      questionId: o.questionId,
      topic: o.topic,
      skill: o.skill,
      difficulty: o.difficulty,
      isCorrect: o.isCorrect,
      timeSpent: o.timeSpent,
      confidence: o.confidence,
    });
  }
  return out;
}

interface PreviousScoresFromDB {
  math: number;
  rw: number;
  calibration: number;
  weaknesses: string[];
}

// Pulls the freshest baseline for the Reviewer's prompt: prefer the latest
// review (covers repeat sessions), fall back to the most recent diagnosis,
// fall back to the profile's defaults. Never returns NaN.
async function fetchPreviousContext(
  supabase: SupabaseClient,
  userId: string | undefined
): Promise<PreviousScoresFromDB> {
  const fallback: PreviousScoresFromDB = {
    math: 400,
    rw: 400,
    calibration: 50,
    weaknesses: [],
  };
  if (!userId) return fallback;

  const { data: latestReview } = await supabase
    .from("ai_session_reviews")
    .select("estimated_math, estimated_rw, calibration_score")
    .eq("user_id", userId)
    .order("created_at", { ascending: false })
    .limit(1)
    .maybeSingle();

  const { data: latestDiagnosis } = await supabase
    .from("ai_diagnoses")
    .select("estimated_math, estimated_rw, calibration_score, weaknesses")
    .eq("user_id", userId)
    .order("created_at", { ascending: false })
    .limit(1)
    .maybeSingle();

  const { data: profile } = await supabase
    .from("user_profiles")
    .select("estimated_math_score, estimated_rw_score")
    .eq("user_id", userId)
    .maybeSingle();

  const weaknesses: string[] = (() => {
    const raw = latestDiagnosis?.weaknesses;
    if (!Array.isArray(raw)) return [];
    return raw
      .map((w: unknown) => (typeof w === "object" && w !== null ? (w as { skill?: unknown }).skill : null))
      .filter((s): s is string => typeof s === "string");
  })();

  const math =
    (latestReview?.estimated_math as number | undefined) ??
    (latestDiagnosis?.estimated_math as number | undefined) ??
    (profile?.estimated_math_score as number | undefined) ??
    fallback.math;
  const rw =
    (latestReview?.estimated_rw as number | undefined) ??
    (latestDiagnosis?.estimated_rw as number | undefined) ??
    (profile?.estimated_rw_score as number | undefined) ??
    fallback.rw;
  const calibration =
    (latestReview?.calibration_score as number | undefined) ??
    (latestDiagnosis?.calibration_score as number | undefined) ??
    fallback.calibration;

  return { math, rw, calibration, weaknesses };
}

app.post("/api/agents/reviewer", optionalAuthMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser | undefined;

  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }

  let body: {
    sessionId?: unknown;
    session?: unknown;
    attempts?: unknown;
  };
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
  const sessionMeta = body.session as Record<string, unknown>;
  if (
    typeof sessionMeta.startedAt !== "string" ||
    typeof sessionMeta.endedAt !== "string" ||
    typeof sessionMeta.sessionType !== "string" ||
    typeof sessionMeta.totalAttempts !== "number" ||
    typeof sessionMeta.correctCount !== "number"
  ) {
    return c.json({ error: "session metadata malformed" }, 400);
  }

  const attempts = parseReviewerAttempts(body.attempts);
  if (!attempts || attempts.length === 0) {
    return c.json({ error: "attempts[] missing or empty" }, 400);
  }

  const supabase = getSupabaseAdmin();
  const previous = await fetchPreviousContext(supabase, user?.id);

  // Reviewer-only student context for the motivator voice. Skipped cleanly
  // for anon users so the summary still works (just without the arc tie-in).
  let reviewerStudentContext:
    | {
        displayName?: string;
        targetScore?: number;
        testDate?: string;
        daysUntilTest?: number;
        streakDays?: number;
        sessionsThisWeek?: number;
      }
    | undefined;
  if (user?.id) {
    try {
      const [profileRes, sessionsCountRes] = await Promise.all([
        supabase
          .from("user_profiles")
          .select("display_name, target_score, test_date, streak_days")
          .eq("user_id", user.id)
          .maybeSingle(),
        supabase
          .from("user_sessions")
          .select("id", { count: "exact", head: true })
          .eq("user_id", user.id)
          .gte(
            "started_at",
            new Date(Date.now() - 7 * 24 * 60 * 60 * 1000).toISOString()
          ),
      ]);
      const profile = profileRes.data as
        | { display_name?: string; target_score?: number; test_date?: string; streak_days?: number }
        | null;
      const daysUntilTest =
        profile?.test_date
          ? Math.max(0, Math.ceil((new Date(profile.test_date).getTime() - Date.now()) / 86_400_000))
          : undefined;
      reviewerStudentContext = {
        displayName: profile?.display_name,
        targetScore: profile?.target_score,
        testDate: profile?.test_date,
        daysUntilTest,
        streakDays: profile?.streak_days,
        sessionsThisWeek: sessionsCountRes.count ?? undefined,
      };
    } catch (err) {
      console.error("[reviewer route] failed to fetch student context:", err);
    }
  }

  const input: ReviewerInput = {
    session: {
      startedAt: sessionMeta.startedAt,
      endedAt: sessionMeta.endedAt,
      sessionType: sessionMeta.sessionType as ReviewerSessionType,
      topic: typeof sessionMeta.topic === "string" ? sessionMeta.topic : undefined,
      totalAttempts: sessionMeta.totalAttempts,
      correctCount: sessionMeta.correctCount,
    },
    attempts,
    previousScores: {
      math: previous.math,
      rw: previous.rw,
      calibration: previous.calibration,
    },
    previousWeaknesses: previous.weaknesses.length > 0 ? previous.weaknesses : undefined,
    studentContext: reviewerStudentContext,
  };

  try {
    const result = await runAgent(
      reviewerAgent,
      input,
      { userId: user?.id, sessionId },
      process.env.OPENAI_API_KEY,
      supabase
    );

    // Persist the review. Insert is a new row every session — history is the
    // point. dismissed_patterns starts empty and grows via /api/reviewer/dismiss.
    const { data: inserted, error: insertErr } = await supabase
      .from("ai_session_reviews")
      .insert({
        session_id: sessionId,
        user_id: user?.id ?? null,
        highlights: result.output.highlights,
        patterns: result.output.patterns,
        calibration_score: result.output.new_calibration,
        estimated_math: result.output.new_math,
        estimated_rw: result.output.new_rw,
        next_session_focus: result.output.next_session_focus,
        summary: result.output.summary,
      })
      .select("id")
      .single();

    if (insertErr) {
      console.error("Failed to persist ai_session_reviews:", insertErr.message);
    }

    // Auth users: update predicted scores on the profile so Dashboard reads the
    // single source of truth on next load. Anonymous users have no profile row;
    // their scores live in localStorage and get refreshed by useStudentProgress.
    if (user?.id) {
      const { error: profileErr } = await supabase
        .from("user_profiles")
        .update({
          estimated_math_score: result.output.new_math,
          estimated_rw_score: result.output.new_rw,
          updated_at: new Date().toISOString(),
        })
        .eq("user_id", user.id);
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
        calibration: previous.calibration,
      },
      model: result.model,
      promptTokens: result.promptTokens,
      completionTokens: result.completionTokens,
      latencyMs: result.latencyMs,
      agentCallId: result.agentCallId,
    });
  } catch (err) {
    console.error("Reviewer agent error:", err);
    return c.json({ error: "Reviewer failed" }, 500);
  }
});

// Dismiss a pattern from a specific review so it doesn't resurface in the
// dashboard's recent insights. Append-only — once dismissed, stays dismissed.
app.post("/api/reviewer/dismiss", optionalAuthMiddleware, async (c) => {
  let body: { review_id?: unknown; pattern?: unknown };
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
  const { data: row, error: readErr } = await supabase
    .from("ai_session_reviews")
    .select("dismissed_patterns")
    .eq("id", reviewId)
    .maybeSingle();
  if (readErr || !row) {
    return c.json({ error: "Review not found" }, 404);
  }

  const current = Array.isArray(row.dismissed_patterns) ? row.dismissed_patterns : [];
  if (current.includes(pattern)) {
    return c.json({ success: true, already: true });
  }
  const next = [...current, pattern];
  const { error: updErr } = await supabase
    .from("ai_session_reviews")
    .update({ dismissed_patterns: next })
    .eq("id", reviewId);
  if (updErr) {
    return c.json({ error: updErr.message }, 500);
  }
  return c.json({ success: true });
});

// Latest non-dismissed patterns for a user — drives Dashboard "Recent insights".
app.get("/api/reviewer/recent-insights", optionalAuthMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser | undefined;
  if (!user?.id) {
    return c.json({ insights: [] });
  }
  const supabase = getSupabaseAdmin();
  const { data, error } = await supabase
    .from("ai_session_reviews")
    .select("id, patterns, dismissed_patterns, created_at, estimated_math, estimated_rw, summary")
    .eq("user_id", user.id)
    .order("created_at", { ascending: false })
    .limit(5);
  if (error) {
    return c.json({ error: error.message }, 500);
  }
  const insights: Array<{
    review_id: number;
    pattern: string;
    severity: string;
    type: string;
    evidence: string;
    created_at: string;
  }> = [];
  for (const row of data ?? []) {
    const dismissed = new Set(Array.isArray(row.dismissed_patterns) ? row.dismissed_patterns : []);
    const patterns = Array.isArray(row.patterns) ? row.patterns : [];
    for (const p of patterns) {
      if (typeof p !== "object" || p === null) continue;
      const obj = p as Record<string, unknown>;
      if (typeof obj.pattern !== "string" || dismissed.has(obj.pattern)) continue;
      insights.push({
        review_id: row.id as number,
        pattern: obj.pattern,
        severity: typeof obj.severity === "string" ? obj.severity : "low",
        type: typeof obj.type === "string" ? obj.type : "topic_weakness",
        evidence: typeof obj.evidence === "string" ? obj.evidence : "",
        created_at: row.created_at as string,
      });
      if (insights.length >= 3) break;
    }
    if (insights.length >= 3) break;
  }
  return c.json({ insights });
});

// ─── Planner ───────────────────────────────────────────────────────────────
// Generates a weekly study plan from the student's diagnosed weaknesses,
// test_date, and study_hours_per_week. Persists to ai_study_plans, marking
// any prior active plan inactive so /api/plan/active always returns the
// freshest one. The original_plan_json is preserved across edits so the UI
// can show "vs original" diffs and so next week's Planner can compare.

function parseWeakSkills(raw: unknown): PlannerWeakSkill[] | null {
  if (!Array.isArray(raw)) return null;
  const out: PlannerWeakSkill[] = [];
  for (const item of raw) {
    if (typeof item !== "object" || item === null) return null;
    const o = item as Record<string, unknown>;
    if (
      typeof o.skill !== "string" ||
      typeof o.severity !== "string" ||
      (o.severity !== "high" && o.severity !== "medium" && o.severity !== "low") ||
      typeof o.verified !== "boolean"
    ) {
      return null;
    }
    out.push({
      skill: o.skill,
      severity: o.severity as PlannerSeverity,
      verified: o.verified,
    });
  }
  return out;
}

// Pull verified-or-otherwise weaknesses from the latest diagnosis. Falls back
// to an empty list when no diagnosis exists yet — the agent will then choose
// a balanced mix per its system prompt.
async function fetchLatestWeaknesses(
  supabase: SupabaseClient,
  userId: string
): Promise<PlannerWeakSkill[]> {
  const { data: latest } = await supabase
    .from("ai_diagnoses")
    .select("id, weaknesses")
    .eq("user_id", userId)
    .order("created_at", { ascending: false })
    .limit(1)
    .maybeSingle();
  if (!latest || !Array.isArray(latest.weaknesses)) return [];

  // verifications live in ai_weakness_verifications (added by the
  // diagnostician/verify route). Treat "confirmed" as verified.
  const { data: verifications } = await supabase
    .from("ai_weakness_verifications")
    .select("skill, user_response")
    .eq("diagnosis_id", latest.id);
  const verifiedSet = new Set<string>(
    (verifications ?? [])
      .filter((v: { user_response?: string }) => v.user_response === "confirmed")
      .map((v: { skill: string }) => v.skill)
  );

  const out: PlannerWeakSkill[] = [];
  for (const w of latest.weaknesses) {
    if (typeof w !== "object" || w === null) continue;
    const obj = w as Record<string, unknown>;
    if (typeof obj.skill !== "string") continue;
    const sev = obj.severity;
    const severity: PlannerSeverity =
      sev === "high" || sev === "medium" || sev === "low" ? sev : "medium";
    out.push({
      skill: obj.skill,
      severity,
      verified: verifiedSet.has(obj.skill),
    });
  }
  return out;
}

function nextMondayISO(from: Date = new Date()): string {
  const d = new Date(from);
  const day = d.getDay(); // 0=Sun..6=Sat
  const offset = day === 0 ? 1 : day === 1 ? 0 : 8 - day;
  d.setDate(d.getDate() + offset);
  return d.toISOString().slice(0, 10);
}

app.post("/api/agents/planner", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;

  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }

  let body: {
    testDate?: unknown;
    hoursPerWeek?: unknown;
    weekStartDate?: unknown;
    weakSkills?: unknown;
  };
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }

  const supabase = getSupabaseAdmin();
  const { data: profile } = await supabase
    .from("user_profiles")
    .select("test_date, study_hours_per_week")
    .eq("user_id", user.id)
    .maybeSingle();

  // Body overrides profile so the page can let the student tweak inputs
  // without persisting them on the profile until they're happy.
  const testDate =
    typeof body.testDate === "string" && body.testDate.length > 0
      ? body.testDate
      : (profile?.test_date as string | undefined);
  const hoursPerWeekRaw =
    typeof body.hoursPerWeek === "number"
      ? body.hoursPerWeek
      : Number(profile?.study_hours_per_week as string | undefined);
  const hoursPerWeek = Number.isFinite(hoursPerWeekRaw) ? Math.max(1, Math.min(40, hoursPerWeekRaw)) : null;
  const weekStartDate =
    typeof body.weekStartDate === "string" && body.weekStartDate.length > 0
      ? body.weekStartDate
      : nextMondayISO();

  if (!testDate) {
    return c.json({ error: "testDate required (in body or on profile)" }, 400);
  }
  if (hoursPerWeek === null) {
    return c.json({ error: "hoursPerWeek (1-40) required" }, 400);
  }

  // Soft validation: if testDate is in the past, the plan still generates but
  // the agent gets a hint in the prompt. The route doesn't reject — students
  // sometimes plan post-test review weeks.

  const bodyWeak = parseWeakSkills(body.weakSkills);
  const weakSkills = bodyWeak ?? (await fetchLatestWeaknesses(supabase, user.id));

  // Practice summary at skill granularity, padded to all 29 skills so the
  // planner sees explicit `attempted=0` rows for unpracticed gaps. The shared
  // taxonomy is the source-of-truth slug list, so the planner's allocation
  // decisions match what the heatmap and StudyPlan suggestions show the user.
  // The RPC returns CB skill_desc strings; map them to slugs before bucketing
  // so two raw variants that collapse to the same slug merge cleanly.
  const { data: practiceRows } = await supabase.rpc("get_user_skill_summary_by_skill", {
    p_user_id: user.id,
  });
  type SkillBySkillRow = {
    domain: string;
    skill: string;
    total_attempted: number | null;
    avg_score: number | null;
    last_practiced: string | null;
  };
  const practicedMap = new Map<string, { attempted: number; mastery: number }>();
  if (Array.isArray(practiceRows)) {
    for (const row of practiceRows as SkillBySkillRow[]) {
      if (!row.skill) continue;
      practicedMap.set(row.skill, {
        attempted: row.total_attempted ?? 0,
        mastery: row.avg_score ?? 0,
      });
    }
  }
  const practiceSummary: PlannerPracticeRow[] = [];
  for (const domain of DOMAINS_IN_ORDER) {
    for (const skillMeta of SKILLS_BY_DOMAIN[domain.slug] ?? []) {
      const m = practicedMap.get(skillMeta.slug);
      practiceSummary.push({
        skill: skillMeta.slug,
        domain: domain.slug,
        attempted: m?.attempted ?? 0,
        mastery: m?.mastery ?? 0,
      });
    }
  }

  // Pull last week's edits so the Planner can bias toward the user's preferred
  // distribution. We compare original_plan_json vs plan_json on the most
  // recent plan and surface skill-level moves.
  const { data: priorPlan } = await supabase
    .from("ai_study_plans")
    .select("original_plan_json, plan_json")
    .eq("user_id", user.id)
    .order("created_at", { ascending: false })
    .limit(1)
    .maybeSingle();
  const previousPlanEdits: { originalSuggestion: string; userEdit: string }[] = [];
  if (priorPlan) {
    try {
      const orig = priorPlan.original_plan_json as PlannerOutput;
      const edited = priorPlan.plan_json as PlannerOutput;
      const origDayBySkill: Record<string, string> = {};
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
              userEdit: `${s.focusSkill} on ${day.day}`,
            });
          }
        }
      }
    } catch {
      // Malformed prior plan — ignore, generate fresh.
    }
  }

  const input: PlannerInput = {
    weakSkills,
    practiceSummary,
    testDate,
    hoursPerWeek,
    weekStartDate,
    previousPlanEdits: previousPlanEdits.length > 0 ? previousPlanEdits : undefined,
  };

  try {
    const result = await runAgent(
      plannerAgent,
      input,
      { userId: user.id },
      process.env.OPENAI_API_KEY,
      supabase
    );

    // Mark any prior active plan inactive so /api/plan/active returns the
    // freshest one. Done in a transactional pattern: flip first, then insert.
    await supabase
      .from("ai_study_plans")
      .update({ active: false, updated_at: new Date().toISOString() })
      .eq("user_id", user.id)
      .eq("active", true);

    const { data: inserted, error: insertErr } = await supabase
      .from("ai_study_plans")
      .insert({
        user_id: user.id,
        week_start: weekStartDate,
        plan_json: result.output,
        original_plan_json: result.output,
        generated_by: "planner",
        active: true,
      })
      .select("id, week_start, plan_json, original_plan_json, active, created_at")
      .single();

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
        hoursBudget: hoursPerWeek,
      },
      model: result.model,
      promptTokens: result.promptTokens,
      completionTokens: result.completionTokens,
      latencyMs: result.latencyMs,
      agentCallId: result.agentCallId,
    });
  } catch (err) {
    console.error("Planner agent error:", err);
    return c.json({ error: "Planner failed" }, 500);
  }
});

// Return the student's baseline score — the math/RW from their FIRST
// diagnosis. Used by Dashboard to show real "+X from start" deltas instead
// of the previous hardcoded 800. Returns 404 when no diagnosis exists.
app.get("/api/user/baseline-score", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
  const supabase = getSupabaseAdmin();
  const { data, error } = await supabase
    .from("ai_diagnoses")
    .select("estimated_math, estimated_rw, created_at")
    .eq("user_id", user.id)
    .order("created_at", { ascending: true })
    .limit(1)
    .maybeSingle();
  if (error) return c.json({ error: error.message }, 500);
  if (!data) return c.json({ error: "no_diagnosis" }, 404);
  return c.json({
    baselineMath: data.estimated_math,
    baselineRw: data.estimated_rw,
    diagnosisDate: data.created_at,
  });
});

// Return the user's current active plan (or null). Auth-only — anonymous
// users don't have plans.
app.get("/api/plan/active", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
  const supabase = getSupabaseAdmin();
  const { data, error } = await supabase
    .from("ai_study_plans")
    .select("id, week_start, plan_json, original_plan_json, active, created_at, updated_at")
    .eq("user_id", user.id)
    .eq("active", true)
    .order("created_at", { ascending: false })
    .limit(1)
    .maybeSingle();
  if (error) return c.json({ error: error.message }, 500);
  return c.json({ plan: data ?? null });
});

// Persist edits (drag-drop, reorder, duration tweaks). Replaces plan_json
// only — original_plan_json is immutable so we can compare against it for
// next-week's Planner edit-feedback loop.
app.post("/api/plan/save", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
  let body: { plan_id?: unknown; plan_json?: unknown };
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
  // Defensive: only update plans owned by this user.
  const { data: row, error: readErr } = await supabase
    .from("ai_study_plans")
    .select("id, user_id, active")
    .eq("id", planId)
    .maybeSingle();
  if (readErr || !row) return c.json({ error: "Plan not found" }, 404);
  if (row.user_id !== user.id) return c.json({ error: "Forbidden" }, 403);

  const { error: updErr } = await supabase
    .from("ai_study_plans")
    .update({ plan_json: body.plan_json, updated_at: new Date().toISOString() })
    .eq("id", planId);
  if (updErr) return c.json({ error: updErr.message }, 500);
  return c.json({ success: true });
});

// ─── Concept ────────────────────────────────────────────────────────────

app.post("/api/agents/concept", optionalAuthMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser | undefined;

  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }

  let body: Record<string, unknown>;
  try {
    body = (await c.req.json()) as Record<string, unknown>;
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }

  const required: Array<keyof ConceptInput> = [
    "questionId", "stem", "correctAnswer", "topic", "skill", "difficulty",
  ];
  for (const k of required) {
    if (typeof body[k] !== "string" || (body[k] as string).length === 0) {
      return c.json({ error: `${k} must be a non-empty string` }, 400);
    }
  }
  if (!Array.isArray(body.options) || !body.options.every((s) => typeof s === "string")) {
    return c.json({ error: "options must be string[]" }, 400);
  }

  const input: ConceptInput = {
    questionId: body.questionId as string,
    stem: body.stem as string,
    passage: typeof body.passage === "string" ? body.passage : undefined,
    options: body.options as string[],
    correctAnswer: body.correctAnswer as string,
    studentAnswer: typeof body.studentAnswer === "string" ? body.studentAnswer : undefined,
    topic: body.topic as string,
    skill: body.skill as string,
    difficulty: body.difficulty as string,
    officialRationale: typeof body.officialRationale === "string" ? body.officialRationale : undefined,
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
      agentCallId: result.agentCallId,
    });
  } catch (err) {
    console.error("Concept agent error:", err);
    return c.json({ error: "Concept failed" }, 500);
  }
});

// ─── NextPractice ───────────────────────────────────────────────────────

function parseNextPracticeRecent(raw: unknown): NextPracticeRecentAttempt[] | null {
  if (!Array.isArray(raw)) return null;
  const out: NextPracticeRecentAttempt[] = [];
  for (const item of raw) {
    if (typeof item !== "object" || item === null) return null;
    const o = item as Record<string, unknown>;
    if (
      typeof o.topic !== "string" ||
      typeof o.skill !== "string" ||
      typeof o.difficulty !== "string" ||
      typeof o.isCorrect !== "boolean"
    ) {
      return null;
    }
    out.push({
      topic: o.topic,
      skill: o.skill,
      difficulty: o.difficulty,
      isCorrect: o.isCorrect,
    });
  }
  return out;
}

app.post("/api/agents/next-practice", optionalAuthMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser | undefined;

  if (!process.env.OPENAI_API_KEY) {
    return c.json({ error: "AI service is not configured" }, 503);
  }

  let body: Record<string, unknown>;
  try {
    body = (await c.req.json()) as Record<string, unknown>;
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }

  const requiredStrings: Array<keyof NextPracticeInput> = [
    "questionId", "topic", "skill", "difficulty",
  ];
  for (const k of requiredStrings) {
    if (typeof body[k] !== "string" || (body[k] as string).length === 0) {
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

  const input: NextPracticeInput = {
    questionId: body.questionId as string,
    topic: body.topic as string,
    skill: body.skill as string,
    difficulty: body.difficulty as string,
    isCorrect: body.isCorrect,
    recentAttempts: recent,
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
      agentCallId: result.agentCallId,
    });
  } catch (err) {
    console.error("NextPractice agent error:", err);
    return c.json({ error: "NextPractice failed" }, 500);
  }
});

app.post("/api/diagnostician/verify", optionalAuthMiddleware, async (c) => {
  let body: { diagnosis_id?: unknown; skill?: unknown; response?: unknown };
  try {
    body = await c.req.json();
  } catch {
    return c.json({ error: "Invalid JSON" }, 400);
  }

  const diagnosisId = Number(body.diagnosis_id);
  const skill = typeof body.skill === "string" ? body.skill : "";
  const response = body.response;

  if (!Number.isFinite(diagnosisId) || !skill ||
      (response !== "confirmed" && response !== "misread" && response !== "maybe")) {
    return c.json({ error: "diagnosis_id (number), skill (string), response ('confirmed'|'misread'|'maybe') required" }, 400);
  }

  const supabase = getSupabaseAdmin();
  const { error } = await supabase.from("ai_weakness_verifications").insert({
    diagnosis_id: diagnosisId,
    skill,
    user_response: response,
  });

  if (error) {
    console.error("Failed to insert ai_weakness_verifications:", error.message);
    return c.json({ error: "Failed to save verification" }, 500);
  }

  return c.json({ success: true });
});

// DEMO ONLY — no auth guard. Remove or gate before exposing publicly.
app.get("/api/admin/agent-calls", async (c) => {
  const supabase = getSupabaseAdmin();
  const agent = c.req.query("agent");
  let q = supabase
    .from("ai_agent_calls")
    .select("*")
    .order("created_at", { ascending: false })
    .limit(100);
  if (agent && agent !== "all") q = q.eq("agent", agent);
  const { data, error } = await q;
  if (error) return c.json({ error: error.message }, 500);
  return c.json({ rows: data ?? [] });
});

// TODO post-demo: add auth guard. Returns the latest 100 ai_tutor_turns rows
// (across all conversations) so the admin page can group them by
// conversation_id. `content` is truncated to 200 chars to keep the payload
// small — full content is still in the DB for audits.
app.get("/api/admin/tutor-turns", async (c) => {
  const supabase = getSupabaseAdmin();
  const { data, error } = await supabase
    .from("ai_tutor_turns")
    .select(
      "id, conversation_id, role, content, tool_calls, model, prompt_tokens, completion_tokens, latency_ms, created_at, user_id, error"
    )
    .order("created_at", { ascending: false })
    .limit(100);
  if (error) return c.json({ error: error.message }, 500);
  const rows = (data ?? []).map((r) => ({
    ...r,
    content:
      typeof r.content === "string" && r.content.length > 200
        ? r.content.slice(0, 200) + "…"
        : r.content,
  }));
  // Today's tool-call count for the header stat.
  const startOfToday = new Date();
  startOfToday.setHours(0, 0, 0, 0);
  const { count: toolCallsToday } = await supabase
    .from("ai_tutor_turns")
    .select("id", { count: "exact", head: true })
    .gte("created_at", startOfToday.toISOString())
    .not("tool_calls", "is", null);
  return c.json({ rows, toolCallsToday: toolCallsToday ?? 0 });
});

export default app;
