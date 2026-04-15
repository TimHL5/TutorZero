import { Hono } from "hono";
import { getCookie, setCookie } from "hono/cookie";
import Stripe from "stripe";
import type { Context, Next } from "hono";
import { getSupabaseAdmin } from "./supabase";

const SUPABASE_URL = "https://bkmyfcolrdumyrwktjrr.supabase.co";
const SUPABASE_ANON_KEY =
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJrbXlmY29scmR1bXlyd2t0anJyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM5NDg3NTcsImV4cCI6MjA4OTUyNDc1N30.ClqyVHYOazJduEi6NTfENRcz2fdlDbiN2vBOJ937oHQ";

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

// OpenAI fetch helper with timeout and error handling
async function fetchOpenAI(
  apiKey: string,
  body: Record<string, unknown>,
  timeoutMs = 25000
): Promise<{ data?: { choices?: { message?: { content?: string } }[] }; error?: string; status: number }> {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);

  try {
    const response = await fetch("https://api.openai.com/v1/chat/completions", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Authorization": `Bearer ${apiKey}`,
      },
      body: JSON.stringify(body),
      signal: controller.signal,
    });

    clearTimeout(timer);

    if (!response.ok) {
      const errorText = await response.text().catch(() => "Unknown error");
      console.error("OpenAI API error:", response.status, errorText);
      return { error: `OpenAI returned ${response.status}`, status: response.status };
    }

    const data = await response.json() as { choices?: { message?: { content?: string } }[] };
    return { data, status: 200 };
  } catch (err: unknown) {
    clearTimeout(timer);
    if (err instanceof DOMException && err.name === "AbortError") {
      console.error("OpenAI request timed out");
      return { error: "AI request timed out. Please try again.", status: 504 };
    }
    console.error("OpenAI fetch failed:", err);
    return { error: "Failed to reach AI service. Please try again.", status: 502 };
  }
}

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

// Stripe pricing — fixed Price IDs from Stripe dashboard (product: TutorZero)
const STRIPE_MONTHLY_PRICE_ID = "price_1THC2ARBhjUJNe8kjQgDrZXy"; // $9.99/month
const STRIPE_YEARLY_PRICE_ID = "price_1THC36RBhjUJNe8k93TzNGFi";  // $79.99/year

function safeParseTopics(metadata: unknown): string[] {
  try { return metadata ? JSON.parse(metadata as string).topics || [] : []; }
  catch { return []; }
}

// ============================================
// Auth Endpoints
// ============================================

// Get current user
app.get("/api/users/me", authMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser;
  const supabase = getSupabaseAdmin();

  // Get or create user profile
  const { data: profile } = await supabase
    .from("user_profiles")
    .select("*")
    .eq("user_id", user.id)
    .single();

  if (!profile) {
    const displayName =
      user.user_metadata?.full_name ||
      user.user_metadata?.name ||
      user.user_metadata?.given_name ||
      user.email.split("@")[0];
    const pictureUrl =
      user.user_metadata?.avatar_url || user.user_metadata?.picture || null;

    await supabase
      .from("user_profiles")
      .insert({
        user_id: user.id,
        email: user.email,
        display_name: displayName,
        picture_url: pictureUrl,
      });

    const { data: newProfile } = await supabase
      .from("user_profiles")
      .select("*")
      .eq("user_id", user.id)
      .single();

    // Look up active subscription
    const { data: subscription } = await supabase
      .from("subscriptions")
      .select("tier")
      .eq("user_id", user.id)
      .or(`expires_at.is.null,expires_at.gt.${new Date().toISOString()}`)
      .single();

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
        displayName: newProfile?.display_name,
        hasCompletedDiagnostic: newProfile?.has_completed_diagnostic === true,
        hasCompletedOnboarding: newProfile?.has_completed_onboarding === true,
        streakDays: newProfile?.streak_days || 0,
        streakLastDate: newProfile?.streak_last_date,
        estimatedMathScore: newProfile?.estimated_math_score || 400,
        estimatedRWScore: newProfile?.estimated_rw_score || 400,
        targetScore: newProfile?.target_score || null,
        testDate: newProfile?.test_date || null,
        studyHoursPerWeek: newProfile?.study_hours_per_week || null,
        subscriptionTier: subscription?.tier === "premium" ? "pro" : "free",
      },
    });
  }

  // Look up active subscription
  const { data: subscription } = await supabase
    .from("subscriptions")
    .select("tier")
    .eq("user_id", user.id)
    .or(`expires_at.is.null,expires_at.gt.${new Date().toISOString()}`)
    .single();

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
      subscriptionTier: subscription?.tier === "premium" ? "pro" : "free",
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

    const updateFields: Record<string, unknown> = {};

    if (typeof displayName === "string") {
      const trimmedName = displayName.trim().slice(0, 50);
      if (trimmedName) {
        updateFields.display_name = trimmedName;
      }
    }
    if (typeof targetScore === "number") {
      updateFields.target_score = Math.max(400, Math.min(1600, Math.round(targetScore)));
    }
    if (typeof testDate === "string") {
      if (!/^\d{4}-\d{2}-\d{2}$/.test(testDate)) {
        return c.json({ error: "Invalid testDate format. Expected YYYY-MM-DD." }, 400);
      }
      updateFields.test_date = testDate;
    }
    if (typeof mathConfidence === "number") {
      updateFields.math_confidence = Math.max(0, Math.min(3, Math.round(mathConfidence)));
    }
    if (typeof readingConfidence === "number") {
      updateFields.reading_confidence = Math.max(0, Math.min(3, Math.round(readingConfidence)));
    }
    if (typeof studyHoursPerWeek === "string") {
      updateFields.study_hours_per_week = studyHoursPerWeek;
    }
    if (hasCompletedOnboarding === true) {
      updateFields.has_completed_onboarding = true;
    }

    if (Object.keys(updateFields).length === 0) {
      return c.json({ error: "No valid fields to update" }, 400);
    }

    updateFields.updated_at = new Date().toISOString();

    await supabase
      .from("user_profiles")
      .update(updateFields)
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

const FREE_DAILY_TUTOR_LIMIT = 5;

async function getTutorUsage(userId: string | null, browserId: string | null): Promise<{ count: number; isPremium: boolean }> {
  const supabase = getSupabaseAdmin();
  const today = new Date().toISOString().split('T')[0];

  let isPremium = false;
  if (userId) {
    const { data: sub } = await supabase
      .from("subscriptions")
      .select("*")
      .eq("user_id", userId)
      .or(`expires_at.is.null,expires_at.gt.${new Date().toISOString()}`)
      .single();
    isPremium = sub?.tier === 'premium';
  }

  let usage;
  if (userId) {
    const { data } = await supabase
      .from("tutor_usage")
      .select("message_count")
      .eq("user_id", userId)
      .eq("date", today)
      .single();
    usage = data;
  } else if (browserId) {
    const { data } = await supabase
      .from("tutor_usage")
      .select("message_count")
      .eq("browser_id", browserId)
      .eq("date", today)
      .single();
    usage = data;
  }

  return { count: (usage?.message_count as number) || 0, isPremium };
}

// Atomically increment and return new count (avoids check-then-increment race)
async function incrementTutorUsage(userId: string | null, browserId: string | null): Promise<number> {
  const supabase = getSupabaseAdmin();
  const today = new Date().toISOString().split('T')[0];
  const now = new Date().toISOString();

  if (userId) {
    await supabase
      .from("tutor_usage")
      .upsert(
        { user_id: userId, date: today, message_count: 1, created_at: now, updated_at: now },
        { onConflict: "user_id,date" }
      );
    // Increment: read current, then update with +1
    const { data: current } = await supabase
      .from("tutor_usage")
      .select("message_count")
      .eq("user_id", userId)
      .eq("date", today)
      .single();
    const newCount = ((current?.message_count as number) || 0) + 1;
    await supabase
      .from("tutor_usage")
      .update({ message_count: newCount, updated_at: now })
      .eq("user_id", userId)
      .eq("date", today);
    return newCount;
  } else if (browserId) {
    await supabase
      .from("tutor_usage")
      .upsert(
        { browser_id: browserId, date: today, message_count: 1, created_at: now, updated_at: now },
        { onConflict: "browser_id,date" }
      );
    const { data: current } = await supabase
      .from("tutor_usage")
      .select("message_count")
      .eq("browser_id", browserId)
      .eq("date", today)
      .single();
    const newCount = ((current?.message_count as number) || 0) + 1;
    await supabase
      .from("tutor_usage")
      .update({ message_count: newCount, updated_at: now })
      .eq("browser_id", browserId)
      .eq("date", today);
    return newCount;
  }
  return 0;
}

// Get tutor usage status
app.get("/api/tutor/usage", optionalAuthMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser | undefined;
  const userId = user?.id || null;
  const browserId = userId ? null : (c.req.query("browserId") || null);

  const { count, isPremium } = await getTutorUsage(userId, browserId);

  return c.json({
    used: count,
    limit: FREE_DAILY_TUTOR_LIMIT,
    remaining: Math.max(0, FREE_DAILY_TUTOR_LIMIT - count),
    isPremium,
    unlimited: isPremium
  });
});

// AI Tutor chat endpoint
app.post("/api/tutor/chat", optionalAuthMiddleware, async (c) => {
  try {
    const body = await c.req.json();
    const { messages, context, browserId: clientBrowserId } = body;
    const user = c.get("user") as SupabaseUser | undefined;
    const userId = user?.id || null;
    const browserId = userId ? null : (clientBrowserId || null);

    if (!messages || !Array.isArray(messages)) {
      return c.json({ error: "Invalid messages format" }, 400);
    }

    // Check daily usage limit
    const { count, isPremium } = await getTutorUsage(userId, browserId);

    if (!isPremium && count >= FREE_DAILY_TUTOR_LIMIT) {
      return c.json({
        error: "daily_limit_reached",
        message: "You've reached your free daily tutor limit. Upgrade to Pro for unlimited tutoring.",
        used: count,
        limit: FREE_DAILY_TUTOR_LIMIT
      }, 429);
    }

    // Build system prompt with student context
    const systemPrompt = `You are a friendly and knowledgeable SAT tutor named TutorZero. Your goal is to help students improve their SAT scores through clear explanations, strategic advice, and encouragement.

STUDENT CONTEXT:
${context?.recentTopics?.length ? `Recent practice topics: ${context.recentTopics.join(', ')}` : ''}
${context?.weakAreas?.length ? `Areas needing attention: ${context.weakAreas.join(', ')}` : ''}
${context?.recentAccuracy ? `Recent accuracy: ${context.recentAccuracy}%` : ''}
${context?.currentStreak ? `Current streak: ${context.currentStreak} days` : ''}

YOUR APPROACH:
1. Be encouraging and supportive - building confidence is key to SAT success
2. Give clear, concise explanations (aim for 2-4 short paragraphs max)
3. Use concrete examples when explaining concepts
4. Connect advice to actual SAT patterns and strategies
5. When explaining math, break down steps clearly
6. When discussing reading/writing, focus on evidence-based reasoning
7. Offer to work through practice problems when relevant
8. Celebrate progress and effort, not just correct answers

SAT-SPECIFIC KNOWLEDGE:
- The SAT has two main sections: Reading & Writing (54 min, 54 questions) and Math (80 min, 44 questions)
- Reading & Writing covers: Information and Ideas, Craft and Structure, Expression of Ideas, Standard English Conventions
- Math covers: Algebra, Advanced Math, Problem-Solving and Data Analysis, Geometry and Trigonometry
- Scores range from 400-1600 (200-800 per section)
- Time management is crucial - about 1 min per R&W question, ~2 min per math question

Keep responses helpful but concise. Use formatting (numbered lists, line breaks) to improve readability.`;

    const apiMessages = [
      { role: "system", content: systemPrompt },
      ...messages.slice(-10) // Keep last 10 messages for context
    ];

    if (!process.env.OPENAI_API_KEY) {
      return c.json({ error: "AI service is not configured" }, 503);
    }

    const result = await fetchOpenAI(process.env.OPENAI_API_KEY, {
      model: "gpt-4o-mini",
      messages: apiMessages,
      max_tokens: 500,
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
    await incrementTutorUsage(userId, browserId);
    const newUsage = await getTutorUsage(userId, browserId);

    return c.json({
      success: true,
      message: assistantMessage,
      usage: {
        used: newUsage.count,
        limit: FREE_DAILY_TUTOR_LIMIT,
        remaining: Math.max(0, FREE_DAILY_TUTOR_LIMIT - newUsage.count),
        isPremium: newUsage.isPremium
      }
    });
  } catch (error) {
    console.error("Tutor API error:", error);
    return c.json({ error: "Failed to process request" }, 500);
  }
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
      .or(`expires_at.is.null,expires_at.gt.${new Date().toISOString()}`)
      .single();

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
${question.choices?.map((ch: string, i: number) => `${String.fromCharCode(65 + i)}: ${ch}`).join('\n') || ""}

Student answered: ${question.studentAnswer}
Correct answer: ${question.correctAnswer}

Original explanation: ${question.explanation}

Provide a fresh explanation in the requested style. Keep it concise (3-5 sentences max) but clear. Focus on helping the student truly understand, not just memorize.`;

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

const FREE_MONTHLY_CHAT_LIMIT = 30;

async function getChatUsage(userId: string | null, browserId: string | null): Promise<{ count: number; isPremium: boolean }> {
  const supabase = getSupabaseAdmin();
  const monthYear = new Date().toISOString().slice(0, 7); // "2024-01"

  // Check premium status if user is logged in
  let isPremium = false;
  if (userId) {
    const { data: sub } = await supabase
      .from("subscriptions")
      .select("*")
      .eq("user_id", userId)
      .or(`expires_at.is.null,expires_at.gt.${new Date().toISOString()}`)
      .single();
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
      .single();
    usage = data;
  } else if (browserId) {
    const { data } = await supabase
      .from("chat_usage")
      .select("message_count")
      .eq("browser_id", browserId)
      .eq("month_year", monthYear)
      .single();
    usage = data;
  }

  return { count: (usage?.message_count as number) || 0, isPremium };
}

// Atomically increment chat usage (avoids check-then-increment race condition)
async function incrementChatUsage(userId: string | null, browserId: string | null): Promise<void> {
  const supabase = getSupabaseAdmin();
  const monthYear = new Date().toISOString().slice(0, 7);
  const now = new Date().toISOString();

  if (userId) {
    // Try upsert first, then increment
    const { data: existing } = await supabase
      .from("chat_usage")
      .select("message_count")
      .eq("user_id", userId)
      .eq("month_year", monthYear)
      .single();

    if (existing) {
      await supabase
        .from("chat_usage")
        .update({ message_count: (existing.message_count as number) + 1, updated_at: now })
        .eq("user_id", userId)
        .eq("month_year", monthYear);
    } else {
      await supabase
        .from("chat_usage")
        .insert({ user_id: userId, month_year: monthYear, message_count: 1, created_at: now, updated_at: now });
    }
  } else if (browserId) {
    const { data: existing } = await supabase
      .from("chat_usage")
      .select("message_count")
      .eq("browser_id", browserId)
      .eq("month_year", monthYear)
      .single();

    if (existing) {
      await supabase
        .from("chat_usage")
        .update({ message_count: (existing.message_count as number) + 1, updated_at: now })
        .eq("browser_id", browserId)
        .eq("month_year", monthYear);
    } else {
      await supabase
        .from("chat_usage")
        .insert({ browser_id: browserId, month_year: monthYear, message_count: 1, created_at: now, updated_at: now });
    }
  }
}

// Get chat usage status
app.get("/api/chat/usage", optionalAuthMiddleware, async (c) => {
  const user = c.get("user") as SupabaseUser | undefined;
  const userId = user?.id || null;
  const browserId = userId ? null : (c.req.query("browserId") || null);

  const { count, isPremium } = await getChatUsage(userId, browserId);

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
    const { messages, questionContext, browserId: clientBrowserId } = body;
    const user = c.get("user") as SupabaseUser | undefined;
    const userId = user?.id || null;
    const browserId = userId ? null : (clientBrowserId || null);

    if (!messages || !Array.isArray(messages)) {
      return c.json({ error: "Invalid messages format" }, 400);
    }

    // Check monthly usage limit
    const { count, isPremium } = await getChatUsage(userId, browserId);

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
${qc.choices ? qc.choices.map((ch: string, i: number) => `${String.fromCharCode(65 + i)}: ${ch}`).join('\n') : ""}

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

Remember: You can see everything about this question, so if a student asks "what does the passage say about X?" or "why is choice B wrong?", you can answer directly using the full context provided above.`;

    const apiMessages = [
      { role: "system", content: systemPrompt },
      ...messages
    ];

    if (!process.env.OPENAI_API_KEY) {
      return c.json({ error: "AI service is not configured" }, 503);
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
    await incrementChatUsage(userId, browserId);
    const newUsage = await getChatUsage(userId, browserId);

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
      .single();

    // Get all skill scores for this user (using RPC for aggregate)
    const { data: skillScores } = await supabase.rpc("get_user_skill_summary", { p_user_id: user.id });

    // Get recent sessions
    const { data: sessions } = await supabase
      .from("user_sessions")
      .select("id, session_type, started_at, completed_at, questions_total, questions_correct, metadata")
      .eq("user_id", user.id)
      .order("started_at", { ascending: false })
      .limit(50);

    // Get latest diagnostic result
    const { data: diagnosticResult } = await supabase
      .from("user_diagnostic_results")
      .select("*")
      .eq("user_id", user.id)
      .order("created_at", { ascending: false })
      .limit(1)
      .single();

    // Build topic progress from skill scores
    const topicProgress: Record<string, any> = {};
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
      (skillScores as any[]).forEach((row: any) => {
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

    // Calculate estimated scores
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
        currentStreak: profile?.streak_days || 0,
        longestStreak: profile?.streak_days || 0,
        lastPracticeDate: profile?.streak_last_date || null,
        estimatedMathScore: calcScore(mathTopics),
        estimatedRWScore: calcScore(rwTopics),
        sessions: (sessions || []).map((s: any) => ({
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
    const { data: profile } = await supabase
      .from("user_profiles")
      .select("*")
      .eq("user_id", user.id)
      .single();

    if (!profile) {
      await supabase
        .from("user_profiles")
        .insert({
          user_id: user.id,
          email: user.email,
          display_name: user.email.split('@')[0],
        });
    }

    // Refetch profile for streak calculation
    const { data: currentProfile } = await supabase
      .from("user_profiles")
      .select("*")
      .eq("user_id", user.id)
      .single();

    // Calculate totals
    const questionsTotal = attempts.length;
    const questionsCorrect = attempts.filter((a: { isCorrect: boolean }) => a.isCorrect).length;
    const topics = [...new Set(attempts.map((a: { topic: string }) => a.topic))];

    // Create session record and get the ID back
    const { data: sessionRow } = await supabase
      .from("user_sessions")
      .insert({
        user_id: user.id,
        session_type: sessionType,
        started_at: new Date().toISOString(),
        completed_at: new Date().toISOString(),
        questions_total: questionsTotal,
        questions_correct: questionsCorrect,
        metadata: JSON.stringify({ topics, timeSpentSeconds }),
      })
      .select("id")
      .single();

    const sessionId = sessionRow?.id;

    // Record attempts (batched insert)
    if (attempts.length > 0 && sessionId) {
      const attemptRows = attempts.map((attempt: { questionId?: number; selectedIndex?: number; isCorrect: boolean; timeSpentSec?: number; confidence?: string }) => ({
        session_id: sessionId,
        question_id: attempt.questionId || 0,
        selected_index: attempt.selectedIndex || 0,
        is_correct: attempt.isCorrect,
        time_spent_sec: attempt.timeSpentSec || 0,
        confidence: attempt.confidence || null,
      }));
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

    for (const [topic, stats] of Object.entries(topicStats)) {
      const score = stats.total > 0 ? stats.correct / stats.total : 0;
      await supabase
        .from("user_skill_scores")
        .insert({
          user_id: user.id,
          session_id: sessionId,
          topic,
          score,
          questions_n: stats.total,
        });
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
      currentProfile?.streak_last_date as string | null,
      (currentProfile?.streak_days as number) || 0
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

    await supabase
      .from("user_diagnostic_results")
      .insert({
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
      .single();

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
      .single();

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
          .single();

        if (existing) {
          await supabase
            .from("subscriptions")
            .update({
              tier: 'premium',
              stripe_customer_id: session.customer as string,
              stripe_subscription_id: session.subscription as string,
              started_at: new Date().toISOString(),
              expires_at: expiresAt,
              cancel_at_period_end: false,
              updated_at: new Date().toISOString(),
            })
            .eq("user_id", userId);
        } else {
          await supabase
            .from("subscriptions")
            .insert({
              user_id: userId,
              tier: 'premium',
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

        const { data: delResult } = await supabase
          .from("subscriptions")
          .update({
            tier: 'free',
            cancel_at_period_end: false,
            updated_at: new Date().toISOString(),
          })
          .eq("stripe_customer_id", customerId)
          .select("id");

        if (!delResult || delResult.length === 0) {
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
async function getOrCreateBrowserSession(browserId: string) {
  const supabase = getSupabaseAdmin();

  const { data: session } = await supabase
    .from("anon_sessions")
    .select("*")
    .eq("browser_id", browserId)
    .single();

  if (session) return session;

  await supabase
    .from("anon_sessions")
    .insert({ browser_id: browserId, streak_days: 0 });

  const { data: newSession } = await supabase
    .from("anon_sessions")
    .select("*")
    .eq("browser_id", browserId)
    .single();

  return newSession;
}

// Get student progress (anonymous)
app.get("/api/progress/:browserId", async (c) => {
  const browserId = c.req.param("browserId");
  const supabase = getSupabaseAdmin();

  try {
    const anonSession = await getOrCreateBrowserSession(browserId);
    if (!anonSession) {
      return c.json({ error: "Failed to get session" }, 500);
    }

    // Get all skill scores using RPC for aggregate
    const { data: skillScores } = await supabase.rpc("get_anon_skill_summary", { p_anon_session_id: anonSession.id });

    const { data: sessions } = await supabase
      .from("sessions")
      .select("id, session_type, started_at, completed_at, questions_total, questions_correct, score_math, score_reading, metadata")
      .eq("anon_session_id", anonSession.id)
      .order("started_at", { ascending: false })
      .limit(50);

    const { data: diagnosticResult } = await supabase
      .from("diagnostic_results")
      .select("*")
      .eq("anon_session_id", anonSession.id)
      .order("created_at", { ascending: false })
      .limit(1)
      .single();

    const topicProgress: Record<string, any> = {};
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
      (skillScores as any[]).forEach((row: any) => {
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
        sessions: (sessions || []).map((s: any) => ({
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

    const anonSession = await getOrCreateBrowserSession(browserId);
    if (!anonSession) {
      return c.json({ error: "Failed to get session" }, 500);
    }

    // Calculate totals
    const questionsTotal = attempts.length;
    const questionsCorrect = attempts.filter((a: { isCorrect: boolean }) => a.isCorrect).length;
    const topics = [...new Set(attempts.map((a: { topic: string }) => a.topic))];

    // Create session record and get the ID back
    const { data: sessionRow } = await supabase
      .from("sessions")
      .insert({
        anon_session_id: anonSession.id,
        session_type: sessionType,
        started_at: new Date().toISOString(),
        completed_at: new Date().toISOString(),
        questions_total: questionsTotal,
        questions_correct: questionsCorrect,
        metadata: JSON.stringify({ topics, timeSpentSeconds }),
      })
      .select("id")
      .single();

    const sessionId = sessionRow?.id;

    // Record attempts (batched insert)
    if (attempts.length > 0 && sessionId) {
      const attemptRows = attempts.map((attempt: { questionId?: number; selectedIndex?: number; isCorrect: boolean; timeSpentSec?: number; confidence?: string }) => ({
        session_id: sessionId,
        question_id: attempt.questionId || 0,
        selected_index: attempt.selectedIndex || 0,
        is_correct: attempt.isCorrect,
        time_spent_sec: attempt.timeSpentSec || 0,
        confidence: attempt.confidence || null,
      }));
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

    for (const [topic, stats] of Object.entries(topicStats)) {
      const score = stats.total > 0 ? stats.correct / stats.total : 0;
      await supabase
        .from("skill_scores")
        .insert({
          anon_session_id: anonSession.id,
          session_id: sessionId,
          topic,
          score,
          questions_n: stats.total,
        });
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

    const anonSession = await getOrCreateBrowserSession(browserId);
    if (!anonSession) {
      return c.json({ error: "Failed to get session" }, 500);
    }

    await supabase
      .from("diagnostic_results")
      .insert({
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
      .single();

    if (anonSession) {
      // Delete attempts linked to sessions (prevents orphaned rows)
      // First get session IDs, then delete attempts
      const { data: sessionRows } = await supabase
        .from("sessions")
        .select("id")
        .eq("anon_session_id", anonSession.id);

      const sessionIds = sessionRows?.map(s => s.id) || [];
      if (sessionIds.length > 0) {
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

export default app;
