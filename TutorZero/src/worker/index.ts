import { Hono } from "hono";
import { getCookie, setCookie } from "hono/cookie";
import Stripe from "stripe";
import type { Context, Next } from "hono";

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
  Bindings: Env & {
    STRIPE_SECRET_KEY: string;
    STRIPE_WEBHOOK_SECRET: string;
    OPENAI_API_KEY: string;
  };
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
  const db = c.env.DB;

  // Get or create user profile
  let profile = await db
    .prepare("SELECT * FROM user_profiles WHERE user_id = ?")
    .bind(user.id)
    .first();

  if (!profile) {
    const displayName =
      user.user_metadata?.full_name ||
      user.user_metadata?.name ||
      user.user_metadata?.given_name ||
      user.email.split("@")[0];
    const pictureUrl =
      user.user_metadata?.avatar_url || user.user_metadata?.picture || null;

    await db
      .prepare(
        `INSERT INTO user_profiles (user_id, email, display_name, picture_url, created_at, updated_at)
       VALUES (?, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
      )
      .bind(user.id, user.email, displayName, pictureUrl)
      .run();

    profile = await db
      .prepare("SELECT * FROM user_profiles WHERE user_id = ?")
      .bind(user.id)
      .first();
  }

  // Look up active subscription
  const subscription = await db.prepare(
    "SELECT tier FROM subscriptions WHERE user_id = ? AND (expires_at IS NULL OR expires_at > CURRENT_TIMESTAMP)"
  ).bind(user.id).first();

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
      hasCompletedDiagnostic: profile?.has_completed_diagnostic === 1,
      hasCompletedOnboarding: profile?.has_completed_onboarding === 1,
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
  const db = c.env.DB;

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

    const setClauses: string[] = [];
    const values: unknown[] = [];

    if (typeof displayName === "string") {
      const trimmedName = displayName.trim().slice(0, 50);
      if (trimmedName) {
        setClauses.push("display_name = ?");
        values.push(trimmedName);
      }
    }
    if (typeof targetScore === "number") {
      setClauses.push("target_score = ?");
      values.push(Math.max(400, Math.min(1600, Math.round(targetScore))));
    }
    if (typeof testDate === "string") {
      if (!/^\d{4}-\d{2}-\d{2}$/.test(testDate)) {
        return c.json({ error: "Invalid testDate format. Expected YYYY-MM-DD." }, 400);
      }
      setClauses.push("test_date = ?");
      values.push(testDate);
    }
    if (typeof mathConfidence === "number") {
      setClauses.push("math_confidence = ?");
      values.push(Math.max(0, Math.min(3, Math.round(mathConfidence))));
    }
    if (typeof readingConfidence === "number") {
      setClauses.push("reading_confidence = ?");
      values.push(Math.max(0, Math.min(3, Math.round(readingConfidence))));
    }
    if (typeof studyHoursPerWeek === "string") {
      setClauses.push("study_hours_per_week = ?");
      values.push(studyHoursPerWeek);
    }
    if (hasCompletedOnboarding === true) {
      setClauses.push("has_completed_onboarding = 1");
    }

    if (setClauses.length === 0) {
      return c.json({ error: "No valid fields to update" }, 400);
    }

    setClauses.push("updated_at = CURRENT_TIMESTAMP");
    values.push(user.id);

    await db
      .prepare(
        `UPDATE user_profiles SET ${setClauses.join(", ")} WHERE user_id = ?`
      )
      .bind(...values)
      .run();

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

async function getTutorUsage(db: D1Database, userId: string | null, browserId: string | null): Promise<{ count: number; isPremium: boolean }> {
  const today = new Date().toISOString().split('T')[0];
  
  let isPremium = false;
  if (userId) {
    const sub = await db.prepare(
      "SELECT * FROM subscriptions WHERE user_id = ? AND (expires_at IS NULL OR expires_at > CURRENT_TIMESTAMP)"
    ).bind(userId).first();
    isPremium = sub?.tier === 'premium';
  }
  
  let usage;
  if (userId) {
    usage = await db.prepare(
      "SELECT message_count FROM tutor_usage WHERE user_id = ? AND date = ?"
    ).bind(userId, today).first();
  } else if (browserId) {
    usage = await db.prepare(
      "SELECT message_count FROM tutor_usage WHERE browser_id = ? AND date = ?"
    ).bind(browserId, today).first();
  }
  
  return { count: (usage?.message_count as number) || 0, isPremium };
}

// Atomically increment and return new count (avoids check-then-increment race)
async function incrementTutorUsage(db: D1Database, userId: string | null, browserId: string | null): Promise<number> {
  const today = new Date().toISOString().split('T')[0];

  if (userId) {
    await db.prepare(
      "INSERT INTO tutor_usage (user_id, date, message_count, created_at, updated_at) VALUES (?, ?, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) ON CONFLICT(user_id, date) DO UPDATE SET message_count = message_count + 1, updated_at = CURRENT_TIMESTAMP"
    ).bind(userId, today).run();
    const row = await db.prepare("SELECT message_count FROM tutor_usage WHERE user_id = ? AND date = ?").bind(userId, today).first();
    return (row?.message_count as number) || 1;
  } else if (browserId) {
    await db.prepare(
      "INSERT INTO tutor_usage (browser_id, date, message_count, created_at, updated_at) VALUES (?, ?, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) ON CONFLICT(browser_id, date) DO UPDATE SET message_count = message_count + 1, updated_at = CURRENT_TIMESTAMP"
    ).bind(browserId, today).run();
    const row = await db.prepare("SELECT message_count FROM tutor_usage WHERE browser_id = ? AND date = ?").bind(browserId, today).first();
    return (row?.message_count as number) || 1;
  }
  return 0;
}

// Get tutor usage status
app.get("/api/tutor/usage", optionalAuthMiddleware, async (c) => {
  const db = c.env.DB;
  const user = c.get("user") as SupabaseUser | undefined;
  const userId = user?.id || null;
  const browserId = userId ? null : (c.req.query("browserId") || null);

  const { count, isPremium } = await getTutorUsage(db, userId, browserId);
  
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
    const db = c.env.DB;
    const user = c.get("user") as SupabaseUser | undefined;
    const userId = user?.id || null;
    const browserId = userId ? null : (clientBrowserId || null);

    if (!messages || !Array.isArray(messages)) {
      return c.json({ error: "Invalid messages format" }, 400);
    }

    // Check daily usage limit
    const { count, isPremium } = await getTutorUsage(db, userId, browserId);
    
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

    if (!c.env.OPENAI_API_KEY) {
      return c.json({ error: "AI service is not configured" }, 503);
    }

    const result = await fetchOpenAI(c.env.OPENAI_API_KEY, {
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
    await incrementTutorUsage(db, userId, browserId);
    const newUsage = await getTutorUsage(db, userId, browserId);

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
    const db = c.env.DB;

    // Verify premium subscription
    const sub = await db.prepare(
      "SELECT tier FROM subscriptions WHERE user_id = ? AND (expires_at IS NULL OR expires_at > CURRENT_TIMESTAMP)"
    ).bind(user.id).first();

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

Provide a fresh explanation in the requested style. Keep it concise (3-5 sentences max) but clear. Focus on helping the student truly understand, not just memorize.`;

    if (!c.env.OPENAI_API_KEY) {
      return c.json({ error: "AI service is not configured" }, 503);
    }

    const result = await fetchOpenAI(c.env.OPENAI_API_KEY, {
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

async function getChatUsage(db: D1Database, userId: string | null, browserId: string | null): Promise<{ count: number; isPremium: boolean }> {
  const monthYear = new Date().toISOString().slice(0, 7); // "2024-01"
  
  // Check premium status if user is logged in
  let isPremium = false;
  if (userId) {
    const sub = await db.prepare(
      "SELECT * FROM subscriptions WHERE user_id = ? AND (expires_at IS NULL OR expires_at > CURRENT_TIMESTAMP)"
    ).bind(userId).first();
    isPremium = sub?.tier === 'premium';
  }
  
  // Get usage count
  let usage;
  if (userId) {
    usage = await db.prepare(
      "SELECT message_count FROM chat_usage WHERE user_id = ? AND month_year = ?"
    ).bind(userId, monthYear).first();
  } else if (browserId) {
    usage = await db.prepare(
      "SELECT message_count FROM chat_usage WHERE browser_id = ? AND month_year = ?"
    ).bind(browserId, monthYear).first();
  }
  
  return { count: (usage?.message_count as number) || 0, isPremium };
}

async function incrementChatUsage(db: D1Database, userId: string | null, browserId: string | null): Promise<void> {
  const monthYear = new Date().toISOString().slice(0, 7);
  
  if (userId) {
    const existing = await db.prepare(
      "SELECT id FROM chat_usage WHERE user_id = ? AND month_year = ?"
    ).bind(userId, monthYear).first();
    
    if (existing) {
      await db.prepare(
        "UPDATE chat_usage SET message_count = message_count + 1, updated_at = CURRENT_TIMESTAMP WHERE id = ?"
      ).bind(existing.id).run();
    } else {
      await db.prepare(
        "INSERT INTO chat_usage (user_id, month_year, message_count, created_at, updated_at) VALUES (?, ?, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)"
      ).bind(userId, monthYear).run();
    }
  } else if (browserId) {
    const existing = await db.prepare(
      "SELECT id FROM chat_usage WHERE browser_id = ? AND month_year = ?"
    ).bind(browserId, monthYear).first();
    
    if (existing) {
      await db.prepare(
        "UPDATE chat_usage SET message_count = message_count + 1, updated_at = CURRENT_TIMESTAMP WHERE id = ?"
      ).bind(existing.id).run();
    } else {
      await db.prepare(
        "INSERT INTO chat_usage (browser_id, month_year, message_count, created_at, updated_at) VALUES (?, ?, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)"
      ).bind(browserId, monthYear).run();
    }
  }
}

// Get chat usage status
app.get("/api/chat/usage", optionalAuthMiddleware, async (c) => {
  const db = c.env.DB;
  const user = c.get("user") as SupabaseUser | undefined;
  const userId = user?.id || null;
  const browserId = userId ? null : (c.req.query("browserId") || null);

  const { count, isPremium } = await getChatUsage(db, userId, browserId);
  
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
    const db = c.env.DB;
    const user = c.get("user") as SupabaseUser | undefined;
    const userId = user?.id || null;
    const browserId = userId ? null : (clientBrowserId || null);

    if (!messages || !Array.isArray(messages)) {
      return c.json({ error: "Invalid messages format" }, 400);
    }

    // Check monthly usage limit
    const { count, isPremium } = await getChatUsage(db, userId, browserId);
    
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

Remember: You can see everything about this question, so if a student asks "what does the passage say about X?" or "why is choice B wrong?", you can answer directly using the full context provided above.`;

    const apiMessages = [
      { role: "system", content: systemPrompt },
      ...messages
    ];

    if (!c.env.OPENAI_API_KEY) {
      return c.json({ error: "AI service is not configured" }, 503);
    }

    const result = await fetchOpenAI(c.env.OPENAI_API_KEY, {
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
    await incrementChatUsage(db, userId, browserId);
    const newUsage = await getChatUsage(db, userId, browserId);

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
  const db = c.env.DB;

  try {
    const profile = await db.prepare(
      "SELECT * FROM user_profiles WHERE user_id = ?"
    ).bind(user.id).first();

    // Get all skill scores for this user
    const skillScores = await db.prepare(
      `SELECT topic, 
              SUM(questions_n) as total_attempted,
              SUM(score * questions_n) / SUM(questions_n) as avg_score
       FROM user_skill_scores 
       WHERE user_id = ?
       GROUP BY topic`
    ).bind(user.id).all();

    // Get recent sessions
    const sessions = await db.prepare(
      `SELECT id, session_type, started_at, completed_at, 
              questions_total, questions_correct, metadata
       FROM user_sessions 
       WHERE user_id = ?
       ORDER BY started_at DESC
       LIMIT 50`
    ).bind(user.id).all();

    // Get latest diagnostic result
    const diagnosticResult = await db.prepare(
      `SELECT * FROM user_diagnostic_results 
       WHERE user_id = ?
       ORDER BY created_at DESC LIMIT 1`
    ).bind(user.id).first();

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

    if (skillScores.results) {
      skillScores.results.forEach((row: any) => {
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
        sessions: (sessions.results || []).map((s: any) => ({
          id: `session_${s.id}`,
          date: s.started_at,
          type: s.session_type,
          questionsAttempted: s.questions_total || 0,
          questionsCorrect: s.questions_correct || 0,
          topics: safeParseTopics(s.metadata),
          timeSpentSeconds: 0
        })),
        diagnosticCompleted: profile?.has_completed_diagnostic === 1,
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
  const db = c.env.DB;
  
  try {
    const body = await c.req.json();
    const { sessionType, attempts, timeSpentSeconds } = body;

    if (!sessionType || !attempts) {
      return c.json({ error: "Missing required fields" }, 400);
    }

    // Get or create profile
    let profile = await db.prepare(
      "SELECT * FROM user_profiles WHERE user_id = ?"
    ).bind(user.id).first();

    if (!profile) {
      await db.prepare(
        `INSERT INTO user_profiles (user_id, email, display_name, created_at, updated_at) 
         VALUES (?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
      ).bind(user.id, user.email, user.email.split('@')[0]).run();
      
      profile = await db.prepare(
        "SELECT * FROM user_profiles WHERE user_id = ?"
      ).bind(user.id).first();
    }

    // Calculate totals
    const questionsTotal = attempts.length;
    const questionsCorrect = attempts.filter((a: { isCorrect: boolean }) => a.isCorrect).length;
    const topics = [...new Set(attempts.map((a: { topic: string }) => a.topic))];

    // Create session record
    const sessionResult = await db.prepare(
      `INSERT INTO user_sessions (
        user_id, session_type, started_at, completed_at,
        questions_total, questions_correct, metadata, created_at, updated_at
      ) VALUES (?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
    ).bind(
      user.id,
      sessionType,
      questionsTotal,
      questionsCorrect,
      JSON.stringify({ topics, timeSpentSeconds })
    ).run();

    const sessionId = sessionResult.meta.last_row_id;

    // Record attempts (batched)
    const attemptStmts = attempts.map((attempt: { questionId?: number; selectedIndex?: number; isCorrect: boolean; timeSpentSec?: number; confidence?: string }) =>
      db.prepare(
        `INSERT INTO attempts (
          session_id, question_id, selected_index, is_correct, time_spent_sec, confidence, created_at, updated_at
        ) VALUES (?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
      ).bind(
        sessionId,
        attempt.questionId || 0,
        attempt.selectedIndex || 0,
        attempt.isCorrect ? 1 : 0,
        attempt.timeSpentSec || 0,
        attempt.confidence || null
      )
    );
    if (attemptStmts.length > 0) {
      await db.batch(attemptStmts);
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
      await db.prepare(
        `INSERT INTO user_skill_scores (
          user_id, session_id, topic, score, questions_n, created_at, updated_at
        ) VALUES (?, ?, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
      ).bind(user.id, sessionId, topic, score, stats.total).run();
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
      await db.prepare(
        `UPDATE user_profiles SET streak_days = ?, streak_last_date = ?, updated_at = CURRENT_TIMESTAMP WHERE user_id = ?`
      ).bind(streak, today, user.id).run();
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
  const db = c.env.DB;
  
  try {
    const body = await c.req.json();
    const { sessionId, skills, gaps, recommendedPlan, estimatedScore } = body;

    // Update user profile to mark diagnostic complete
    await db.prepare(
      `UPDATE user_profiles SET has_completed_diagnostic = 1, updated_at = CURRENT_TIMESTAMP WHERE user_id = ?`
    ).bind(user.id).run();

    await db.prepare(
      `INSERT INTO user_diagnostic_results (
        user_id, session_id, skills, gaps, recommended_plan, estimated_score, created_at, updated_at
      ) VALUES (?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
    ).bind(
      user.id,
      sessionId || null,
      JSON.stringify(skills || {}),
      JSON.stringify(gaps || []),
      recommendedPlan || null,
      estimatedScore || null
    ).run();

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
  const db = c.env.DB;

  try {
    const sub = await db.prepare(
      "SELECT * FROM subscriptions WHERE user_id = ?"
    ).bind(user.id).first();

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
      cancelAtPeriodEnd: sub.cancel_at_period_end === 1,
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
    const stripe = new Stripe(c.env.STRIPE_SECRET_KEY);
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
  const db = c.env.DB;
  
  try {
    const stripe = new Stripe(c.env.STRIPE_SECRET_KEY);
    
    // Get user's subscription with Stripe customer ID
    const sub = await db.prepare(
      "SELECT stripe_customer_id FROM subscriptions WHERE user_id = ?"
    ).bind(user.id).first();

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
  const db = c.env.DB;
  const body = await c.req.text();
  const sig = c.req.header("stripe-signature") || "";

  let event: Stripe.Event;
  try {
    const stripe = new Stripe(c.env.STRIPE_SECRET_KEY);
    event = stripe.webhooks.constructEvent(
      body,
      sig,
      c.env.STRIPE_WEBHOOK_SECRET
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
        const existing = await db.prepare(
          "SELECT id FROM subscriptions WHERE user_id = ?"
        ).bind(userId).first();

        if (existing) {
          await db.prepare(
            `UPDATE subscriptions SET 
              tier = 'premium',
              stripe_customer_id = ?,
              stripe_subscription_id = ?,
              started_at = CURRENT_TIMESTAMP,
              expires_at = ?,
              cancel_at_period_end = 0,
              updated_at = CURRENT_TIMESTAMP
            WHERE user_id = ?`
          ).bind(
            session.customer as string,
            session.subscription as string,
            expiresAt,
            userId
          ).run();
        } else {
          await db.prepare(
            `INSERT INTO subscriptions (
              user_id, tier, stripe_customer_id, stripe_subscription_id,
              started_at, expires_at, created_at, updated_at
            ) VALUES (?, 'premium', ?, ?, CURRENT_TIMESTAMP, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
          ).bind(
            userId,
            session.customer as string,
            session.subscription as string,
            expiresAt
          ).run();
        }
        break;
      }

      case "customer.subscription.updated": {
        const subscription = event.data.object as Stripe.Subscription;
        const customerId = subscription.customer as string;

        // current_period_end exists on Stripe webhook payload but not in SDK types
        const subData = event.data.object as Record<string, unknown>;
        const periodEnd = typeof subData.current_period_end === "number" ? subData.current_period_end : Math.floor(Date.now() / 1000) + 30 * 86400;
        const expiresAt = new Date(periodEnd * 1000).toISOString();
        const cancelAtPeriodEnd = subscription.cancel_at_period_end ? 1 : 0;
        const tier = (subscription.status === "active" || subscription.status === "trialing") ? "premium" : "free";

        await db.prepare(
          `UPDATE subscriptions SET 
            tier = ?,
            expires_at = ?,
            cancel_at_period_end = ?,
            updated_at = CURRENT_TIMESTAMP
          WHERE stripe_customer_id = ?`
        ).bind(tier, expiresAt, cancelAtPeriodEnd, customerId).run();
        break;
      }

      case "customer.subscription.deleted": {
        const subscription = event.data.object as Stripe.Subscription;
        const customerId = subscription.customer as string;

        await db.prepare(
          `UPDATE subscriptions SET 
            tier = 'free',
            cancel_at_period_end = 0,
            updated_at = CURRENT_TIMESTAMP
          WHERE stripe_customer_id = ?`
        ).bind(customerId).run();
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

          await db.prepare(
            `UPDATE subscriptions SET
              expires_at = ?,
              updated_at = CURRENT_TIMESTAMP
            WHERE stripe_customer_id = ?`
          ).bind(expiresAt, customerId).run();
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
async function getOrCreateBrowserSession(db: D1Database, browserId: string) {
  let session = await db.prepare(
    "SELECT * FROM anon_sessions WHERE browser_id = ?"
  ).bind(browserId).first();

  if (!session) {
    await db.prepare(
      "INSERT INTO anon_sessions (browser_id, streak_days, created_at, updated_at) VALUES (?, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)"
    ).bind(browserId).run();
    
    session = await db.prepare(
      "SELECT * FROM anon_sessions WHERE browser_id = ?"
    ).bind(browserId).first();
  }

  return session;
}

// Get student progress (anonymous)
app.get("/api/progress/:browserId", async (c) => {
  const browserId = c.req.param("browserId");
  const db = c.env.DB;

  try {
    const anonSession = await getOrCreateBrowserSession(db, browserId);
    if (!anonSession) {
      return c.json({ error: "Failed to get session" }, 500);
    }

    const skillScores = await db.prepare(
      `SELECT topic, 
              SUM(questions_n) as total_attempted,
              SUM(score * questions_n) / SUM(questions_n) as avg_score
       FROM skill_scores 
       WHERE anon_session_id = ?
       GROUP BY topic`
    ).bind(anonSession.id).all();

    const sessions = await db.prepare(
      `SELECT id, session_type, started_at, completed_at, 
              questions_total, questions_correct, score_math, score_reading, metadata
       FROM sessions 
       WHERE anon_session_id = ?
       ORDER BY started_at DESC
       LIMIT 50`
    ).bind(anonSession.id).all();

    const diagnosticResult = await db.prepare(
      `SELECT * FROM diagnostic_results 
       WHERE anon_session_id = ?
       ORDER BY created_at DESC LIMIT 1`
    ).bind(anonSession.id).first();

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

    if (skillScores.results) {
      skillScores.results.forEach((row: any) => {
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
        sessions: (sessions.results || []).map((s: any) => ({
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
  const db = c.env.DB;
  
  try {
    const body = await c.req.json();
    const { browserId, sessionType, attempts, timeSpentSeconds } = body;

    if (!browserId || !sessionType || !attempts) {
      return c.json({ error: "Missing required fields" }, 400);
    }

    const anonSession = await getOrCreateBrowserSession(db, browserId);
    if (!anonSession) {
      return c.json({ error: "Failed to get session" }, 500);
    }

    // Calculate totals
    const questionsTotal = attempts.length;
    const questionsCorrect = attempts.filter((a: { isCorrect: boolean }) => a.isCorrect).length;
    const topics = [...new Set(attempts.map((a: { topic: string }) => a.topic))];

    // Create session record
    const sessionResult = await db.prepare(
      `INSERT INTO sessions (
        anon_session_id, session_type, started_at, completed_at,
        questions_total, questions_correct, metadata, created_at, updated_at
      ) VALUES (?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
    ).bind(
      anonSession.id,
      sessionType,
      questionsTotal,
      questionsCorrect,
      JSON.stringify({ topics, timeSpentSeconds })
    ).run();

    const sessionId = sessionResult.meta.last_row_id;

    // Record attempts (batched)
    const anonAttemptStmts = attempts.map((attempt: { questionId?: number; selectedIndex?: number; isCorrect: boolean; timeSpentSec?: number; confidence?: string }) =>
      db.prepare(
        `INSERT INTO attempts (
          session_id, question_id, selected_index, is_correct, time_spent_sec, confidence, created_at, updated_at
        ) VALUES (?, ?, ?, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
      ).bind(
        sessionId,
        attempt.questionId || 0,
        attempt.selectedIndex || 0,
        attempt.isCorrect ? 1 : 0,
        attempt.timeSpentSec || 0,
        attempt.confidence || null
      )
    );
    if (anonAttemptStmts.length > 0) {
      await db.batch(anonAttemptStmts);
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
      await db.prepare(
        `INSERT INTO skill_scores (
          anon_session_id, session_id, topic, score, questions_n, created_at, updated_at
        ) VALUES (?, ?, ?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
      ).bind(anonSession.id, sessionId, topic, score, stats.total).run();
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

    await db.prepare(
      `UPDATE anon_sessions SET streak_days = ?, streak_last_date = ?, updated_at = CURRENT_TIMESTAMP WHERE id = ?`
    ).bind(streak, today, anonSession.id).run();

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
  const db = c.env.DB;
  
  try {
    const body = await c.req.json();
    const { browserId, skills, estimatedScore } = body;

    if (!browserId) {
      return c.json({ error: "Missing browser ID" }, 400);
    }

    const anonSession = await getOrCreateBrowserSession(db, browserId);
    if (!anonSession) {
      return c.json({ error: "Failed to get session" }, 500);
    }

    await db.prepare(
      `INSERT INTO diagnostic_results (
        anon_session_id, skills, estimated_score, created_at, updated_at
      ) VALUES (?, ?, ?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)`
    ).bind(
      anonSession.id,
      JSON.stringify(skills || {}),
      estimatedScore || null
    ).run();

    return c.json({ success: true });
  } catch (error) {
    console.error("Error saving diagnostic:", error);
    return c.json({ error: "Failed to save diagnostic results" }, 500);
  }
});

// Delete progress (anonymous)
app.delete("/api/progress/:browserId", async (c) => {
  const browserId = c.req.param("browserId");
  const db = c.env.DB;

  try {
    const anonSession = await db.prepare(
      "SELECT id FROM anon_sessions WHERE browser_id = ?"
    ).bind(browserId).first();

    if (anonSession) {
      await db.prepare("DELETE FROM skill_scores WHERE anon_session_id = ?").bind(anonSession.id).run();
      await db.prepare("DELETE FROM diagnostic_results WHERE anon_session_id = ?").bind(anonSession.id).run();
      await db.prepare("DELETE FROM sessions WHERE anon_session_id = ?").bind(anonSession.id).run();
      await db.prepare("DELETE FROM anon_sessions WHERE id = ?").bind(anonSession.id).run();
    }

    return c.json({ success: true });
  } catch (error) {
    console.error("Error deleting progress:", error);
    return c.json({ error: "Failed to delete progress" }, 500);
  }
});

export default app;
