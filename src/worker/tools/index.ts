import type { AnyToolDef, ToolDef, ToolContext } from "../agents/tool_agent";
import { SLUG_TO_SKILL } from "../../react-app/lib/sat-taxonomy";
import { tavilySearch } from "./tavily";

// Tutor tools — the agent calls these to learn about the student. Each tool
// must: (a) validate args, (b) refuse gracefully for anonymous users when
// auth is required, (c) never throw past the runner (runner catches, but
// cleaner errors mean cleaner tool results).
//
// Data boundaries:
// - user_profiles, user_sessions, ai_diagnoses, ai_agent_calls, attempts →
//   require `userId` (auth).
// - sat_questions → public, no auth needed.

function requireUser(ctx: ToolContext): string {
  if (!ctx.userId) {
    throw new Error(
      "This tool requires a signed-in student. Ask them to sign in to pull their history."
    );
  }
  return ctx.userId;
}

function asInt(v: unknown, field: string, min: number, max: number): number {
  const n = typeof v === "number" ? v : Number(v);
  if (!Number.isFinite(n) || n < min || n > max) {
    throw new Error(`${field} must be an integer between ${min} and ${max}`);
  }
  return Math.floor(n);
}

function asString(v: unknown, field: string): string {
  if (typeof v !== "string" || v.length === 0) {
    throw new Error(`${field} must be a non-empty string`);
  }
  return v;
}

// Converts the int question id stored in `attempts` back to the 8-char hex
// that `sat_questions.question_id` uses.
function intToHexId(n: number): string {
  return n.toString(16).padStart(8, "0");
}

// ─── getStudentProfile ──────────────────────────────────────────────────

const getStudentProfile: ToolDef<Record<string, never>> = {
  name: "getStudentProfile",
  description:
    "Get the student's name, predicted SAT scores, target score, test date, and streak. Call this at the start of a conversation if you don't already know the student.",
  parameters: { type: "object", properties: {}, additionalProperties: false },
  validate: () => ({}),
  execute: async (_args, ctx) => {
    const userId = requireUser(ctx);
    const { data, error } = await ctx.supabase
      .from("user_profiles")
      .select(
        "display_name, estimated_math_score, estimated_rw_score, target_score, test_date, streak_days, has_completed_diagnostic"
      )
      .eq("user_id", userId)
      .maybeSingle();
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
      hasCompletedDiagnostic: Boolean(data.has_completed_diagnostic),
    };
  },
};

// ─── getRecentSessions ───────────────────────────────────────────────────

const getRecentSessions: ToolDef<{ limit: number }> = {
  name: "getRecentSessions",
  description:
    "List the student's most recent practice or diagnostic sessions with accuracy and topics covered. Useful for 'how am I doing?' questions.",
  parameters: {
    type: "object",
    properties: {
      limit: {
        type: "integer",
        minimum: 1,
        maximum: 20,
        description: "How many recent sessions to return (1-20). Default 5.",
      },
    },
    additionalProperties: false,
  },
  validate: (raw) => {
    const o = (raw ?? {}) as Record<string, unknown>;
    return { limit: asInt(o.limit ?? 5, "limit", 1, 20) };
  },
  execute: async ({ limit }, ctx) => {
    const userId = requireUser(ctx);
    const { data, error } = await ctx.supabase
      .from("user_sessions")
      .select("id, session_type, started_at, completed_at, questions_total, questions_correct, metadata")
      .eq("user_id", userId)
      .order("started_at", { ascending: false })
      .limit(limit);
    if (error) throw new Error(error.message);
    return (data ?? []).map((r) => {
      let topics: string[] = [];
      try {
        const meta = typeof r.metadata === "string" ? JSON.parse(r.metadata) : r.metadata;
        if (meta && Array.isArray((meta as { topics?: unknown }).topics)) {
          topics = (meta as { topics: string[] }).topics.filter((t) => typeof t === "string");
        }
      } catch {
        /* malformed metadata — surface as empty topics */
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
        accuracyPct: total > 0 ? Math.round((correct / total) * 100) : null,
        topics,
      };
    });
  },
};

// ─── getWeakAreas ────────────────────────────────────────────────────────

const getWeakAreas: ToolDef<Record<string, never>> = {
  name: "getWeakAreas",
  description:
    "Return the student's current weak areas. Prefers their most recent diagnosis; falls back to skill scores if no diagnosis exists.",
  parameters: { type: "object", properties: {}, additionalProperties: false },
  validate: () => ({}),
  execute: async (_args, ctx) => {
    const userId = requireUser(ctx);

    const { data: diagRow } = await ctx.supabase
      .from("ai_diagnoses")
      .select("weaknesses, top_focus, created_at")
      .eq("user_id", userId)
      .order("created_at", { ascending: false })
      .limit(1)
      .maybeSingle();

    if (diagRow?.weaknesses && Array.isArray(diagRow.weaknesses) && diagRow.weaknesses.length > 0) {
      return {
        source: "diagnosis" as const,
        generatedAt: diagRow.created_at,
        topFocus: diagRow.top_focus ?? null,
        weaknesses: diagRow.weaknesses,
      };
    }

    // Fallback: derive from skill scores.
    const { data: skillRows } = await ctx.supabase.rpc("get_user_skill_summary", {
      p_user_id: userId,
    });
    if (!skillRows || !Array.isArray(skillRows) || skillRows.length === 0) {
      return { source: "none" as const, weaknesses: [] };
    }
    const weak = (skillRows as Array<{ topic: string; avg_score: number | null; total_attempted: number | null }>)
      .filter((r) => (r.avg_score ?? 1) < 0.7 && (r.total_attempted ?? 0) >= 3)
      .sort((a, b) => (a.avg_score ?? 0) - (b.avg_score ?? 0))
      .slice(0, 5)
      .map((r) => ({
        skill: r.topic,
        avgScore: r.avg_score,
        attempts: r.total_attempted,
      }));
    return { source: "skill_scores" as const, weaknesses: weak };
  },
};

// ─── getRecentMistakes ───────────────────────────────────────────────────

const getRecentMistakes: ToolDef<{ limit: number }> = {
  name: "getRecentMistakes",
  description:
    "Return the student's most recent wrong answers with topic, skill, and difficulty. Use this when the student asks about mistakes or says they're struggling.",
  parameters: {
    type: "object",
    properties: {
      limit: {
        type: "integer",
        minimum: 1,
        maximum: 10,
        description: "How many recent mistakes to return (1-10). Default 5.",
      },
    },
    additionalProperties: false,
  },
  validate: (raw) => {
    const o = (raw ?? {}) as Record<string, unknown>;
    return { limit: asInt(o.limit ?? 5, "limit", 1, 10) };
  },
  execute: async ({ limit }, ctx) => {
    const userId = requireUser(ctx);

    // Get recent user_session ids for this user.
    const { data: sessionRows } = await ctx.supabase
      .from("user_sessions")
      .select("id")
      .eq("user_id", userId)
      .order("started_at", { ascending: false })
      .limit(20);

    const sessionIds = (sessionRows ?? []).map((r) => r.id as number);
    if (sessionIds.length === 0) return { mistakes: [] };

    const { data: attemptRows, error: attemptErr } = await ctx.supabase
      .from("attempts")
      .select("question_id, selected_index, time_spent_sec, confidence, created_at, session_id")
      .in("session_id", sessionIds)
      .eq("is_correct", false)
      .order("created_at", { ascending: false })
      .limit(limit);
    if (attemptErr) throw new Error(attemptErr.message);
    const attempts = attemptRows ?? [];
    if (attempts.length === 0) return { mistakes: [] };

    const hexIds = attempts.map((a) => intToHexId(a.question_id as number));
    const { data: questionRows } = await ctx.supabase
      .from("sat_questions")
      .select("question_id, domain, skill_desc, difficulty, stem_html, correct_answer")
      .in("question_id", hexIds);
    const byHex = new Map((questionRows ?? []).map((q) => [q.question_id as string, q]));

    return {
      mistakes: attempts.map((a) => {
        const hex = intToHexId(a.question_id as number);
        const q = byHex.get(hex);
        return {
          questionId: hex,
          topic: q?.domain ?? null,
          skill: q?.skill_desc ?? null,
          difficulty: q?.difficulty ?? null,
          stemPreview: q?.stem_html ? stripHtml(q.stem_html as string).slice(0, 120) : null,
          selectedIndex: a.selected_index,
          correctAnswer: q?.correct_answer?.[0] ?? null,
          timeSpentSec: a.time_spent_sec,
          confidence: a.confidence,
          attemptedAt: a.created_at,
        };
      }),
    };
  },
};

// ─── getQuestionDetails ──────────────────────────────────────────────────

const getQuestionDetails: ToolDef<{ questionId: string }> = {
  name: "getQuestionDetails",
  description:
    "Fetch the full stem, options, correct answer, and rationale for a specific question. Pass the 8-character hex questionId from a prior tool result.",
  parameters: {
    type: "object",
    properties: {
      questionId: {
        type: "string",
        description: "8-character hex question id, e.g. '002dba45'.",
        pattern: "^[0-9a-fA-F]{8}$",
      },
    },
    required: ["questionId"],
    additionalProperties: false,
  },
  validate: (raw) => {
    const o = (raw ?? {}) as Record<string, unknown>;
    const id = asString(o.questionId, "questionId");
    if (!/^[0-9a-fA-F]{8}$/.test(id)) {
      throw new Error("questionId must be an 8-character hex string");
    }
    return { questionId: id.toLowerCase() };
  },
  execute: async ({ questionId }, ctx) => {
    const { data, error } = await ctx.supabase
      .from("sat_questions")
      .select(
        "question_id, domain, skill_desc, difficulty, stimulus_html, stem_html, answer_options, correct_answer, rationale_html"
      )
      .eq("question_id", questionId)
      .maybeSingle();
    if (error) throw new Error(error.message);
    if (!data) return { found: false, questionId };

    const options = Array.isArray(data.answer_options)
      ? (data.answer_options as Array<{ content?: string }>).map((o) => o?.content ?? "")
      : [];
    return {
      found: true,
      questionId: data.question_id,
      topic: data.domain,
      skill: data.skill_desc,
      difficulty: data.difficulty,
      passage: data.stimulus_html ? stripHtml(data.stimulus_html as string) : null,
      stem: data.stem_html ? stripHtml(data.stem_html as string) : null,
      options,
      correctAnswer: Array.isArray(data.correct_answer) ? data.correct_answer[0] : null,
      rationale: data.rationale_html ? stripHtml(data.rationale_html as string) : null,
    };
  },
};

// ─── getRecentExplainerMisconceptions ────────────────────────────────────

const getRecentExplainerMisconceptions: ToolDef<{ limit: number }> = {
  name: "getRecentExplainerMisconceptions",
  description:
    "Return the misconception classifications that the Explainer agent has produced for this student recently. Useful to spot recurring error patterns.",
  parameters: {
    type: "object",
    properties: {
      limit: {
        type: "integer",
        minimum: 1,
        maximum: 10,
        description: "How many recent explainer calls to return (1-10). Default 5.",
      },
    },
    additionalProperties: false,
  },
  validate: (raw) => {
    const o = (raw ?? {}) as Record<string, unknown>;
    return { limit: asInt(o.limit ?? 5, "limit", 1, 10) };
  },
  execute: async ({ limit }, ctx) => {
    const userId = requireUser(ctx);
    const { data, error } = await ctx.supabase
      .from("ai_agent_calls")
      .select("input_json, output_json, created_at")
      .eq("user_id", userId)
      .eq("agent", "explainer")
      .is("error", null)
      .order("created_at", { ascending: false })
      .limit(limit);
    if (error) throw new Error(error.message);

    return (data ?? []).map((r) => {
      const input = r.input_json as { questionId?: string; skill?: string; topic?: string } | null;
      const output = r.output_json as
        | { misconception_type?: string; specific_fix?: string; follow_up_practice?: string }
        | null;
      return {
        questionId: input?.questionId ?? null,
        topic: input?.topic ?? null,
        skill: input?.skill ?? null,
        misconceptionType: output?.misconception_type ?? null,
        specificFix: output?.specific_fix ?? null,
        followUpPractice: output?.follow_up_practice ?? null,
        at: r.created_at,
      };
    });
  },
};

// ─── searchWeb ───────────────────────────────────────────────────────────
// Always-on Tavily-backed web search. Used for real-world info the database
// can't supply: SAT test dates, score release schedules, College Board policy
// changes, external study resources, general knowledge that helps learning.

const SEARCH_FOCUS_VALUES = [
  "sat_logistics",
  "study_resources",
  "general_knowledge",
  "news",
] as const;
type SearchFocus = (typeof SEARCH_FOCUS_VALUES)[number];

const FOCUS_DOMAINS: Record<SearchFocus, string[] | undefined> = {
  sat_logistics: ["collegeboard.org", "satsuite.collegeboard.org"],
  study_resources: [
    "khanacademy.org",
    "collegeboard.org",
    "satsuite.collegeboard.org",
  ],
  general_knowledge: undefined,
  news: undefined,
};

const searchWeb: ToolDef<{ query: string; focus?: SearchFocus }> = {
  name: "searchWeb",
  description:
    "Search the web for current, real-world information. Use for: SAT test dates, registration deadlines, score release dates, College Board policy changes, recent news about the SAT, study resources, specific external references the student asks about. You can also use this for general knowledge the student needs beyond SAT context (historical events, scientific facts, etc.) as long as it helps them learn. Prefer authoritative sources.",
  parameters: {
    type: "object",
    properties: {
      query: {
        type: "string",
        description: "The search query, typically 3-10 words.",
      },
      focus: {
        type: "string",
        enum: SEARCH_FOCUS_VALUES,
        description:
          "Optional: biases the domain allowlist. 'sat_logistics' restricts to College Board; 'study_resources' adds Khan Academy; 'general_knowledge' and 'news' use the open web.",
      },
    },
    required: ["query"],
    additionalProperties: false,
  },
  validate: (raw) => {
    const o = (raw ?? {}) as Record<string, unknown>;
    const query = asString(o.query, "query");
    let focus: SearchFocus | undefined;
    if (o.focus !== undefined && o.focus !== null) {
      const f = String(o.focus);
      if (!SEARCH_FOCUS_VALUES.includes(f as SearchFocus)) {
        throw new Error(
          `focus must be one of ${SEARCH_FOCUS_VALUES.join(", ")}`
        );
      }
      focus = f as SearchFocus;
    }
    return { query, focus };
  },
  execute: async ({ query, focus }) => {
    const includeDomains = focus ? FOCUS_DOMAINS[focus] : undefined;
    const resp = await tavilySearch(query, {
      searchDepth: "basic",
      maxResults: 5,
      includeDomains,
    });
    return {
      query: resp.query,
      answer: resp.answer ?? null,
      sources: resp.results.map((r) => ({
        title: r.title,
        url: r.url,
        snippet: (r.content ?? "").slice(0, 400),
      })),
    };
  },
};

// ─── findSimilarQuestionsInBank ──────────────────────────────────────────

type Difficulty = "E" | "M" | "H";
const VALID_DIFFICULTIES = new Set<Difficulty>(["E", "M", "H"]);

interface FindSimilarArgs {
  skillSlug?: string;
  domain?: string;
  difficulty?: Difficulty;
  limit: number;
}

const findSimilarQuestionsInBank: ToolDef<FindSimilarArgs> = {
  name: "findSimilarQuestionsInBank",
  description:
    "Find real SAT practice questions in the question bank matching a specific skill and difficulty. Use to offer the student concrete practice, cite examples, or show what a question type looks like.",
  parameters: {
    type: "object",
    properties: {
      skillSlug: {
        type: "string",
        description:
          "Skill slug, e.g. 'linear_equations_one_var'. Maps to skill_desc.",
      },
      domain: {
        type: "string",
        description: "Domain name, e.g. 'Algebra' or 'Advanced Math'.",
      },
      difficulty: {
        type: "string",
        enum: ["E", "M", "H"],
        description: "Difficulty: E (easy), M (medium), H (hard).",
      },
      limit: {
        type: "integer",
        minimum: 1,
        maximum: 5,
        description: "How many questions to return (1-5). Default 3.",
      },
    },
    additionalProperties: false,
  },
  validate: (raw) => {
    const o = (raw ?? {}) as Record<string, unknown>;
    const out: FindSimilarArgs = { limit: asInt(o.limit ?? 3, "limit", 1, 5) };
    if (o.skillSlug !== undefined && o.skillSlug !== null && o.skillSlug !== "") {
      out.skillSlug = asString(o.skillSlug, "skillSlug");
    }
    if (o.domain !== undefined && o.domain !== null && o.domain !== "") {
      out.domain = asString(o.domain, "domain");
    }
    if (o.difficulty !== undefined && o.difficulty !== null && o.difficulty !== "") {
      const d = String(o.difficulty).toUpperCase();
      if (!VALID_DIFFICULTIES.has(d as Difficulty)) {
        throw new Error("difficulty must be 'E', 'M', or 'H'");
      }
      out.difficulty = d as Difficulty;
    }
    return out;
  },
  execute: async ({ skillSlug, domain, difficulty, limit }, ctx) => {
    let query = ctx.supabase
      .from("sat_questions")
      .select("question_id, domain, skill_desc, difficulty, stem_html")
      .limit(limit);

    if (skillSlug) {
      const skillDesc = SLUG_TO_SKILL[skillSlug];
      if (skillDesc) {
        // ILIKE with a wildcard tolerates the trailing-space quirks in the
        // source data (some skill_desc values have a trailing space).
        query = query.ilike("skill_desc", `${skillDesc}%`);
      }
    }
    if (domain) query = query.eq("domain", domain);
    if (difficulty) query = query.eq("difficulty", difficulty);

    const { data, error } = await query;
    if (error) throw new Error(error.message);

    return {
      questions: (data ?? []).map((q) => ({
        questionId: q.question_id as string,
        topic: (q.domain as string | null) ?? null,
        skill: (q.skill_desc as string | null) ?? null,
        difficulty: (q.difficulty as string | null) ?? null,
        stemPreview: q.stem_html
          ? stripHtml(q.stem_html as string).slice(0, 150)
          : null,
        practiceUrl: `/practice/session?question=${q.question_id}`,
      })),
    };
  },
};

// ─── getStudyPlan ────────────────────────────────────────────────────────

interface PlanSession {
  id?: unknown;
  durationMin?: unknown;
  focusSkill?: unknown;
  focusSkillDisplay?: unknown;
  sessionType?: unknown;
  rationale?: unknown;
}
interface PlanDay {
  day?: unknown;
  date?: unknown;
  sessions?: unknown;
}
interface PlanJson {
  week?: unknown;
  totalHoursAllocated?: unknown;
  weekGoal?: unknown;
  coverage?: unknown;
}

function todayWeekdayLower(): string {
  return new Date()
    .toLocaleDateString("en-US", { weekday: "long" })
    .toLowerCase();
}

const getStudyPlan: ToolDef<Record<string, never>> = {
  name: "getStudyPlan",
  description:
    "Get the student's active weekly study plan, including today's focus skill and this week's sessions. Use when the student asks 'what should I work on today' or 'what's my plan'.",
  parameters: { type: "object", properties: {}, additionalProperties: false },
  validate: () => ({}),
  execute: async (_args, ctx) => {
    const userId = requireUser(ctx);
    const { data, error } = await ctx.supabase
      .from("ai_study_plans")
      .select("week_start, plan_json, created_at")
      .eq("user_id", userId)
      .eq("active", true)
      .order("created_at", { ascending: false })
      .limit(1)
      .maybeSingle();
    if (error) throw new Error(error.message);
    if (!data) return { hasActivePlan: false as const };

    const planRaw = data.plan_json as PlanJson | null;
    const weekArr = Array.isArray(planRaw?.week) ? (planRaw!.week as PlanDay[]) : [];
    const today = todayWeekdayLower();

    const todayEntry = weekArr.find(
      (d) => typeof d?.day === "string" && (d.day as string).toLowerCase() === today
    );
    const todaysFocus = todayEntry
      ? {
          day: String(todayEntry.day),
          sessions: Array.isArray(todayEntry.sessions)
            ? (todayEntry.sessions as PlanSession[]).map((s) => ({
                skill: typeof s.focusSkillDisplay === "string" ? s.focusSkillDisplay : null,
                skillSlug: typeof s.focusSkill === "string" ? s.focusSkill : null,
                durationMin: typeof s.durationMin === "number" ? s.durationMin : null,
                sessionType: typeof s.sessionType === "string" ? s.sessionType : null,
                rationale: typeof s.rationale === "string" ? s.rationale : null,
              }))
            : [],
        }
      : null;

    return {
      hasActivePlan: true as const,
      weekStart: data.week_start as string,
      weekGoal:
        typeof planRaw?.weekGoal === "string" ? (planRaw.weekGoal as string) : null,
      totalHoursAllocated:
        typeof planRaw?.totalHoursAllocated === "number"
          ? (planRaw.totalHoursAllocated as number)
          : null,
      todaysFocus,
      thisWeek: planRaw,
    };
  },
};

// ─── getDiagnosticResults ────────────────────────────────────────────────

const getDiagnosticResults: ToolDef<Record<string, never>> = {
  name: "getDiagnosticResults",
  description:
    "Get the student's most recent diagnostic results, including predicted scores, calibration score, top weaknesses, and the summary. Use when the student asks about their diagnosis or baseline.",
  parameters: { type: "object", properties: {}, additionalProperties: false },
  validate: () => ({}),
  execute: async (_args, ctx) => {
    const userId = requireUser(ctx);
    const { data, error } = await ctx.supabase
      .from("ai_diagnoses")
      .select(
        "estimated_math, estimated_rw, calibration_score, top_focus, summary, weaknesses, strengths, created_at"
      )
      .eq("user_id", userId)
      .order("created_at", { ascending: false })
      .limit(1)
      .maybeSingle();
    if (error) throw new Error(error.message);
    if (!data) return { hasDiagnosis: false as const };

    return {
      hasDiagnosis: true as const,
      estimatedMath: data.estimated_math ?? null,
      estimatedRw: data.estimated_rw ?? null,
      calibrationScore: data.calibration_score ?? null,
      topFocus: data.top_focus ?? null,
      summary: data.summary ?? null,
      weaknesses: Array.isArray(data.weaknesses) ? data.weaknesses : [],
      strengths: Array.isArray(data.strengths) ? data.strengths : [],
      createdAt: data.created_at,
    };
  },
};

// ─── calculateScoreProjection ────────────────────────────────────────────
// Pure math. No DB, no LLM. Deterministic so the tutor can say the same
// number twice. Model: ~30-50 pts per section per 40 focused hours, with
// diminishing returns above ~700.

function projectSection(
  current: number,
  hoursPerWeek: number,
  weeksUntilTest: number
): number {
  // Diminishing-returns factor: 0.8 at 400, ~0 at 800, scales smoothly.
  const factor = Math.max(0, 0.8 - (current - 400) / 800);
  const raw = hoursPerWeek * weeksUntilTest * factor;
  const capped = Math.min(100, raw);
  const projected = Math.min(800, Math.max(current, Math.round(current + capped)));
  return projected;
}

interface ProjectionArgs {
  currentMath: number;
  currentRw: number;
  hoursPerWeek: number;
  weeksUntilTest: number;
}

const calculateScoreProjection: ToolDef<ProjectionArgs> = {
  name: "calculateScoreProjection",
  description:
    "Calculate a realistic score projection based on the student's current scores, study time, and weeks until test. Uses a simple model — explain to the student it's a guide, not a guarantee.",
  parameters: {
    type: "object",
    properties: {
      currentMath: { type: "integer", minimum: 200, maximum: 800 },
      currentRw: { type: "integer", minimum: 200, maximum: 800 },
      hoursPerWeek: { type: "number", minimum: 1, maximum: 40 },
      weeksUntilTest: { type: "number", minimum: 0, maximum: 52 },
    },
    required: ["currentMath", "currentRw", "hoursPerWeek", "weeksUntilTest"],
    additionalProperties: false,
  },
  validate: (raw) => {
    const o = (raw ?? {}) as Record<string, unknown>;
    const currentMath = asInt(o.currentMath, "currentMath", 200, 800);
    const currentRw = asInt(o.currentRw, "currentRw", 200, 800);
    const hoursPerWeek = Number(o.hoursPerWeek);
    if (!Number.isFinite(hoursPerWeek) || hoursPerWeek < 1 || hoursPerWeek > 40) {
      throw new Error("hoursPerWeek must be a number between 1 and 40");
    }
    const weeksUntilTest = Number(o.weeksUntilTest);
    if (
      !Number.isFinite(weeksUntilTest) ||
      weeksUntilTest < 0 ||
      weeksUntilTest > 52
    ) {
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
      confidenceNote:
        "This assumes focused practice on weak areas. Actual gains vary.",
    };
  },
};

// ─── suggestPracticeSession ──────────────────────────────────────────────
// Signals that the UI should render a "Start practice" button. The tool
// runner intercepts the result and emits a `suggested_action` SSE event
// alongside the normal tool_result — so the model still sees the data AND
// the user sees a button.

const TOPIC_SLUGS = new Set([
  "algebra",
  "advanced_math",
  "problem_solving",
  "geometry",
  "information_ideas",
  "craft_structure",
  "expression",
  "conventions",
]);

interface SuggestSessionArgs {
  skillSlug?: string;
  topicSlug?: string;
  label: string;
  rationale: string;
}

const suggestPracticeSession: ToolDef<SuggestSessionArgs> = {
  name: "suggestPracticeSession",
  description:
    "Suggest that the student start a specific practice session right now. The UI will render a button the student can click to begin. Use when you've identified a concrete next step during the conversation — don't just describe what they should do, offer it. Call this AFTER you've explained why, not before.",
  parameters: {
    type: "object",
    properties: {
      skillSlug: {
        type: "string",
        description: "Optional skill slug, e.g. 'linear_equations_one_var'.",
      },
      topicSlug: {
        type: "string",
        enum: Array.from(TOPIC_SLUGS),
        description: "Optional domain slug when a specific skill isn't appropriate.",
      },
      label: {
        type: "string",
        description:
          "Button text shown to the student, e.g. 'Start 20 min on Linear equations'.",
      },
      rationale: {
        type: "string",
        description: "One sentence explaining why this session now.",
      },
    },
    required: ["label", "rationale"],
    additionalProperties: false,
  },
  validate: (raw) => {
    const o = (raw ?? {}) as Record<string, unknown>;
    const out: SuggestSessionArgs = {
      label: asString(o.label, "label"),
      rationale: asString(o.rationale, "rationale"),
    };
    if (o.skillSlug !== undefined && o.skillSlug !== null && o.skillSlug !== "") {
      out.skillSlug = asString(o.skillSlug, "skillSlug");
    }
    if (o.topicSlug !== undefined && o.topicSlug !== null && o.topicSlug !== "") {
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
    // /practice/session accepts ?skills=<csv> (plural) and ?topic=<slug>.
    // Singular ?skill= is only honored on /practice (setup), not the
    // session runner — so we must emit ?skills= here.
    let url = "/practice";
    if (skillSlug) {
      url = `/practice/session?skills=${encodeURIComponent(skillSlug)}`;
    } else if (topicSlug) {
      url = `/practice/session?topic=${encodeURIComponent(topicSlug)}`;
    }
    return { suggestion: { label, rationale, url } };
  },
};

// ─── getConfidenceCalibration ─────────────────────────────────────────────
// Mirrors the /api/user/calibration aggregator. Tutor uses this to coach the
// student about over/underconfidence ("you say you're confident but actually
// score X%"). Buckets: guessing / somewhat / confident.

const SKILL_SLUG_LIST = [
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
];
const SKILL_SLUG_SET = new Set(SKILL_SLUG_LIST);

const getConfidenceCalibration: ToolDef<Record<string, never>> = {
  name: "getConfidenceCalibration",
  description:
    "Return the student's confidence calibration: per-bucket actual accuracy (Guessing, Somewhat sure, Confident) vs. the expected accuracy each label implies. Use when the student asks how well-calibrated they are, or when you want to call out over/underconfidence in a topic.",
  parameters: { type: "object", properties: {}, additionalProperties: false },
  validate: () => ({}),
  execute: async (_args, ctx) => {
    const userId = requireUser(ctx);
    const { data: sessions } = await ctx.supabase
      .from("user_sessions")
      .select("id")
      .eq("user_id", userId);
    const sessionIds = (sessions ?? []).map((s) => s.id as number);
    const buckets = {
      guessing: { n: 0, c: 0 },
      somewhat: { n: 0, c: 0 },
      confident: { n: 0, c: 0 },
    };
    if (sessionIds.length > 0) {
      const { data: rows, error } = await ctx.supabase
        .from("attempts")
        .select("confidence, is_correct")
        .in("session_id", sessionIds)
        .not("confidence", "is", null);
      if (error) throw new Error(error.message);
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
      bucket: label,
      sampleSize: b.n,
      expectedAccuracyPct: expected,
      actualAccuracyPct: b.n > 0 ? Math.round((b.c / b.n) * 100) : null,
      gapVsExpected: b.n > 0 ? Math.round((b.c / b.n) * 100) - expected : null,
    });
    return {
      buckets: [
        fmt(buckets.guessing, 25, "Guessing"),
        fmt(buckets.somewhat, 60, "Somewhat sure"),
        fmt(buckets.confident, 90, "Confident"),
      ],
    };
  },
};

// ─── getMasteryDistribution ──────────────────────────────────────────────
// Skill-level accuracy across the whole question history, sorted weakest
// first so the tutor can recommend specific drills with concrete numbers.

const getMasteryDistribution: ToolDef<{ limit: number }> = {
  name: "getMasteryDistribution",
  description:
    "Return the student's per-skill mastery (accuracy and attempt count) across all sessions, sorted weakest first. Use when planning what to drill, or when the student asks 'where am I weakest?' with a concrete answer.",
  parameters: {
    type: "object",
    properties: {
      limit: {
        type: "integer",
        minimum: 1,
        maximum: 30,
        description: "How many skills to return (1-30). Default 10.",
      },
    },
    additionalProperties: false,
  },
  validate: (raw) => {
    const o = (raw ?? {}) as Record<string, unknown>;
    return { limit: asInt(o.limit ?? 10, "limit", 1, 30) };
  },
  execute: async ({ limit }, ctx) => {
    const userId = requireUser(ctx);
    const { data, error } = await ctx.supabase.rpc("get_user_skill_summary", {
      p_user_id: userId,
    });
    if (error) throw new Error(error.message);
    const rows = (Array.isArray(data) ? data : []) as Array<{
      topic?: string;
      total_attempted?: number;
      avg_score?: number;
    }>;
    const skills = rows
      .filter((r) => typeof r.topic === "string" && SKILL_SLUG_SET.has(r.topic))
      .filter((r) => (r.total_attempted ?? 0) > 0)
      .sort((a, b) => (a.avg_score ?? 0) - (b.avg_score ?? 0))
      .slice(0, limit)
      .map((r) => ({
        skillSlug: r.topic,
        accuracyPct: Math.round((r.avg_score ?? 0) * 100),
        attempts: r.total_attempted,
      }));
    return { skills };
  },
};

// ─── Shared ──────────────────────────────────────────────────────────────

function stripHtml(html: string): string {
  return html.replace(/<[^>]+>/g, "").replace(/\s+/g, " ").trim();
}

export const tutorTools: AnyToolDef[] = [
  getStudentProfile,
  getRecentSessions,
  getWeakAreas,
  getRecentMistakes,
  getQuestionDetails,
  getRecentExplainerMisconceptions,
  getConfidenceCalibration,
  getMasteryDistribution,
  searchWeb,
  findSimilarQuestionsInBank,
  getStudyPlan,
  getDiagnosticResults,
  calculateScoreProjection,
  suggestPracticeSession,
];
