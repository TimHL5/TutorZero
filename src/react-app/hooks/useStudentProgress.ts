import { useState, useEffect, useCallback, useRef } from "react";
import { useAuth } from "@/react-app/lib/AuthProvider";
import {
  SKILLS_BY_DOMAIN,
  DOMAINS_IN_ORDER,
  domainForSkill,
  skillSlugToDisplayName,
} from "@/react-app/lib/sat-taxonomy";

// Mastery thresholds (single source of truth — heatmap legend, prioritizer,
// and the planner prompt all reference these). Match the worker's level
// buckets so server-side level strings agree with client-side ones.
export const MASTERY_FOUNDATION = 0.5;
export const MASTERY_PROFICIENT = 0.7;
export const MASTERY_ADVANCED = 0.85;

export interface TopicProgress {
  /** Skill slug (e.g. "linear_equations_one_var"). The dictionary is keyed by
   * skill slug, so this duplicates the key for ergonomic Object.values use. */
  topic: string;
  questionsAttempted: number;
  questionsCorrect: number;
  lastPracticed: string | null;
  currentLevel: "foundation" | "developing" | "proficient" | "advanced";
}

/** Diagnostic-derived weakness as returned by /api/user/progress. */
export interface DiagnosticWeakness {
  skill: string;
  severity: "high" | "medium" | "low";
  verified: boolean;
}

export type PriorityTier = "diagnostic_unpracticed" | "low_mastery" | "unpracticed" | "maintenance";

export interface PriorityTopic {
  /** Skill slug — same identifier the planner's focusSkill uses. */
  topic: string;
  displayName: string;
  domain: string;
  domainDisplayName: string;
  attempted: number;
  correct: number;
  mastery: number | null;
  tier: PriorityTier;
  severity: "high" | "medium" | "low" | null;
  reason: string;
}

export interface SessionRecord {
  id: string;
  date: string;
  type: "diagnostic" | "practice";
  questionsAttempted: number;
  questionsCorrect: number;
  /** Subset of questionsAttempted that has per-skill identity recorded in
   * user_skill_scores. The history row renders a "(N skill-tracked)"
   * footnote when this is less than questionsAttempted, so the user can
   * see why the heatmap doesn't show every question of every old session. */
  skillTrackedAttempted?: number;
  skillTrackedCorrect?: number;
  topics: string[];
  timeSpentSeconds: number;
  /** From ai_session_reviews when present. Lets Score Trend plot the same
   * "estimated total score" the dashboard stat card uses, so the chart and
   * the headline number agree. */
  estimatedMathScore?: number | null;
  estimatedRWScore?: number | null;
}

export interface DomainProgress {
  attempted: number;
  correct: number;
}

/** Per-section snapshot — the deterministic, Bayesian-smoothed rollup the
 * server returns for the headline card. The score field is the same value
 * stored on `progress.estimatedMathScore` / `estimatedRWScore`; the rest is
 * here so the UI can show counts and raw accuracy alongside the score
 * without re-deriving them. */
export interface SectionBreakdown {
  score: number;
  attempted: number;
  correct: number;
  accuracy: number;
}

export interface StudentProgress {
  /** Keyed by **skill slug** (29 entries). Heatmap, suggestions, and the
   * planner all read from this. The legacy domain-keyed shape lived only
   * to match the user_skill_scores table — that table is now skill-aware
   * (see migration 007), so the in-memory layer follows. */
  topicProgress: Record<string, TopicProgress>;
  /** Domain-level rollup keyed by domain slug (8 entries). Used to surface
   * pre-migration practice on the heatmap (sessions before skill-level
   * tracking can't be split per-skill but their domain totals are kept). */
  domainProgress: Record<string, DomainProgress>;
  /** Diagnostic-flagged weak skills, mirrored from /api/user/progress so
   * getPriorityTopics doesn't need a second round-trip. */
  diagnosticWeaknesses: DiagnosticWeakness[];
  currentStreak: number;
  longestStreak: number;
  lastPracticeDate: string | null;
  estimatedMathScore: number;
  estimatedRWScore: number;
  /** Server-computed counts behind estimatedMathScore / estimatedRWScore.
   * Optional because the optimistic post-recordSession path doesn't
   * recompute these — the next server refresh fills them in. */
  sectionBreakdown?: { math: SectionBreakdown; rw: SectionBreakdown };
  sessions: SessionRecord[];
  diagnosticCompleted: boolean;
  diagnosticDate: string | null;
}

// Build the 29-skill default seed from the canonical taxonomy. Every skill
// starts at zero; rows hydrate from /api/user/progress when the user
// authenticates.
const ALL_SKILL_SLUGS: string[] = DOMAINS_IN_ORDER.flatMap((d) =>
  (SKILLS_BY_DOMAIN[d.slug] ?? []).map((s) => s.slug)
);
const DEFAULT_TOPICS: Record<string, TopicProgress> = Object.fromEntries(
  ALL_SKILL_SLUGS.map((slug) => [
    slug,
    {
      topic: slug,
      questionsAttempted: 0,
      questionsCorrect: 0,
      lastPracticed: null,
      currentLevel: "foundation" as const,
    },
  ])
);

const MATH_SKILL_SLUGS: string[] = (["algebra", "advanced_math", "problem_solving", "geometry"] as const)
  .flatMap((d) => (SKILLS_BY_DOMAIN[d] ?? []).map((s) => s.slug));
const RW_SKILL_SLUGS: string[] = (["information_ideas", "craft_structure", "expression", "conventions"] as const)
  .flatMap((d) => (SKILLS_BY_DOMAIN[d] ?? []).map((s) => s.slug));

const DEFAULT_DOMAIN_PROGRESS: Record<string, DomainProgress> = Object.fromEntries(
  DOMAINS_IN_ORDER.map((d) => [d.slug, { attempted: 0, correct: 0 }])
);

const DEFAULT_PROGRESS: StudentProgress = {
  topicProgress: DEFAULT_TOPICS,
  domainProgress: DEFAULT_DOMAIN_PROGRESS,
  diagnosticWeaknesses: [],
  currentStreak: 0,
  longestStreak: 0,
  lastPracticeDate: null,
  estimatedMathScore: 400,
  estimatedRWScore: 400,
  sessions: [],
  diagnosticCompleted: false,
  diagnosticDate: null
};

const STORAGE_KEY = "sat_prep_progress";
const BROWSER_ID_KEY = "sat_prep_browser_id";

function generateBrowserId(): string {
  return `browser_${Date.now()}_${Math.random().toString(36).substring(2, 15)}`;
}

function getBrowserId(): string {
  let browserId = localStorage.getItem(BROWSER_ID_KEY);
  if (!browserId) {
    browserId = generateBrowserId();
    localStorage.setItem(BROWSER_ID_KEY, browserId);
  }
  return browserId;
}

function calculateLevel(accuracy: number): TopicProgress["currentLevel"] {
  if (accuracy >= 0.85) return "advanced";
  if (accuracy >= 0.7) return "proficient";
  if (accuracy >= 0.5) return "developing";
  return "foundation";
}

function calculateScoreFromAccuracy(accuracy: number): number {
  return Math.round(200 + Math.min(1, Math.max(0, accuracy)) * 600);
}

export function useStudentProgress() {
  const { user, isPending: authPending } = useAuth();
  const [progress, setProgress] = useState<StudentProgress>(DEFAULT_PROGRESS);
  const [isLoaded, setIsLoaded] = useState(false);
  const [isSyncing, setIsSyncing] = useState(false);
  const browserId = useRef<string>("");

  // Determine if user is authenticated
  const isAuthenticated = !!user;

  // Load progress based on auth state
  useEffect(() => {
    if (authPending) return; // Wait for auth to settle
    
    browserId.current = getBrowserId();
    
    // First load from localStorage for instant UI
    try {
      const stored = localStorage.getItem(STORAGE_KEY);
      if (stored) {
        const parsed = JSON.parse(stored);
        const incoming = (parsed.topicProgress ?? {}) as Record<string, TopicProgress>;
        const filtered: Record<string, TopicProgress> = { ...DEFAULT_TOPICS };
        for (const [k, v] of Object.entries(incoming)) {
          if (k in DEFAULT_TOPICS) filtered[k] = v;
        }
        const incomingDomain = (parsed.domainProgress ?? {}) as Record<string, DomainProgress>;
        const filteredDomain: Record<string, DomainProgress> = { ...DEFAULT_DOMAIN_PROGRESS };
        for (const [k, v] of Object.entries(incomingDomain)) {
          if (k in DEFAULT_DOMAIN_PROGRESS) filteredDomain[k] = v;
        }
        setProgress({
          ...DEFAULT_PROGRESS,
          ...parsed,
          topicProgress: filtered,
          domainProgress: filteredDomain,
          diagnosticWeaknesses: Array.isArray(parsed.diagnosticWeaknesses)
            ? parsed.diagnosticWeaknesses
            : [],
        });
      }
    } catch (e) {
      console.error("Failed to load progress from localStorage:", e);
    }
    setIsLoaded(true);

    // Then fetch from server
    fetchProgressFromServer();
  }, [authPending, user]);

  // Fetch progress from server (authenticated or anonymous)
  const fetchProgressFromServer = useCallback(async () => {
    if (authPending) return;
    
    try {
      let response: Response;
      
      if (isAuthenticated) {
        // Use authenticated endpoint
        response = await fetch("/api/user/progress", {
          credentials: "include"
        });
      } else {
        // Use anonymous endpoint
        if (!browserId.current) return;
        response = await fetch(`/api/progress/${browserId.current}`);
      }
      
      if (response.ok) {
        const result = await response.json();
        if (result.success && result.data) {
          // Filter incoming topicProgress to known skill slugs only — older
          // (anon) endpoints return domain-keyed entries that would otherwise
          // contaminate skill-level views.
          const incoming = (result.data.topicProgress ?? {}) as Record<string, TopicProgress>;
          const filteredTopicProgress: Record<string, TopicProgress> = { ...DEFAULT_TOPICS };
          for (const [k, v] of Object.entries(incoming)) {
            if (k in DEFAULT_TOPICS) filteredTopicProgress[k] = v;
          }
          // Filter domainProgress similarly to keep keyspace clean.
          const incomingDomain = (result.data.domainProgress ?? {}) as Record<string, DomainProgress>;
          const filteredDomainProgress: Record<string, DomainProgress> = { ...DEFAULT_DOMAIN_PROGRESS };
          for (const [k, v] of Object.entries(incomingDomain)) {
            if (k in DEFAULT_DOMAIN_PROGRESS) filteredDomainProgress[k] = v;
          }
          const sectionBreakdown = result.data.sectionBreakdown && typeof result.data.sectionBreakdown === "object"
            ? (result.data.sectionBreakdown as { math: SectionBreakdown; rw: SectionBreakdown })
            : undefined;
          const serverProgress: StudentProgress = {
            topicProgress: filteredTopicProgress,
            domainProgress: filteredDomainProgress,
            sectionBreakdown,
            diagnosticWeaknesses: Array.isArray(result.data.diagnosticWeaknesses)
              ? (result.data.diagnosticWeaknesses as DiagnosticWeakness[])
              : [],
            currentStreak: result.data.currentStreak || 0,
            longestStreak: result.data.longestStreak || 0,
            lastPracticeDate: result.data.lastPracticeDate,
            estimatedMathScore: result.data.estimatedMathScore || 400,
            estimatedRWScore: result.data.estimatedRWScore || 400,
            sessions: result.data.sessions || [],
            diagnosticCompleted: result.data.diagnosticCompleted || false,
            diagnosticDate: result.data.diagnosticDate
          };
          
          setProgress(serverProgress);
          // Update localStorage with server data
          localStorage.setItem(STORAGE_KEY, JSON.stringify(serverProgress));
        }
      }
    } catch (e) {
      console.error("Failed to fetch progress from server:", e);
    }
  }, [authPending, isAuthenticated]);

  // Save to localStorage when progress changes
  useEffect(() => {
    if (isLoaded) {
      try {
        localStorage.setItem(STORAGE_KEY, JSON.stringify(progress));
      } catch (e) {
        console.error("Failed to save progress to localStorage:", e);
      }
    }
  }, [progress, isLoaded]);

  // Record a practice session - saves to both localStorage and server
  const recordSession = useCallback(async (
    type: "diagnostic" | "practice",
    attempts: Array<{
      topic: string;
      skill?: string;
      isCorrect: boolean;
      questionId?: number;
      selectedIndex?: number;
      timeSpentSec?: number;
      confidence?: string;
    }>,
    timeSpentSeconds: number
  ) => {
    const today = new Date().toISOString();
    const topics = [...new Set(attempts.map(a => a.topic))];

    // Create session record
    const session: SessionRecord = {
      id: `session_${Date.now()}`,
      date: today,
      type,
      questionsAttempted: attempts.length,
      questionsCorrect: attempts.filter(a => a.isCorrect).length,
      topics,
      timeSpentSeconds
    };

    // Update local state immediately. Increment the skill-level entry — the
    // attempt's `skill` field carries the granular slug; the legacy `topic`
    // field is the domain rollup. Attempts without a skill (older clients)
    // are dropped from the in-memory skill view but still bump the domain
    // counter so the heatmap's domain footnote stays accurate.
    const newDomainProgress: Record<string, DomainProgress> = {
      ...progress.domainProgress,
    };
    attempts.forEach((attempt) => {
      const domainSlug = attempt.topic;
      if (!domainSlug || !(domainSlug in newDomainProgress)) return;
      const prev = newDomainProgress[domainSlug];
      newDomainProgress[domainSlug] = {
        attempted: prev.attempted + 1,
        correct: prev.correct + (attempt.isCorrect ? 1 : 0),
      };
    });

    const newTopicProgress = { ...progress.topicProgress };
    attempts.forEach(attempt => {
      const skillSlug = typeof attempt.skill === "string" && attempt.skill.length > 0
        ? attempt.skill
        : null;
      if (!skillSlug) return;
      const entry = newTopicProgress[skillSlug] ?? {
        topic: skillSlug,
        questionsAttempted: 0,
        questionsCorrect: 0,
        lastPracticed: null,
        currentLevel: "foundation" as const,
      };
      entry.questionsAttempted++;
      if (attempt.isCorrect) entry.questionsCorrect++;
      entry.lastPracticed = today;
      const acc = entry.questionsAttempted > 0
        ? entry.questionsCorrect / entry.questionsAttempted
        : 0;
      entry.currentLevel = calculateLevel(acc);
      newTopicProgress[skillSlug] = entry;
    });

    // Section score — same Bayesian-smoothed, volume-weighted formula the
    // server uses (worker:1159 calcSection), but rolled up from skill-level
    // entries instead of domain rollups since this runs before the server
    // refresh. Domain-grouped: each domain's accuracy is smoothed toward
    // 0.5 with a 5-question prior, then domains are averaged weighted by
    // sample size. Falls back to the previously-displayed score (so a
    // session with zero new attempts doesn't blink the headline).
    const PRIOR_N = 5;
    const PRIOR_P = 0.5;
    const calcSectionScore = (skillSlugs: string[], fallback: number) => {
      // Group skills by their domain and aggregate attempts.
      const domainStats: Record<string, { attempted: number; correct: number }> = {};
      for (const slug of skillSlugs) {
        const t = newTopicProgress[slug];
        if (!t || t.questionsAttempted === 0) continue;
        const dom = domainForSkill(slug);
        if (!dom) continue;
        const cur = domainStats[dom] ?? { attempted: 0, correct: 0 };
        cur.attempted += t.questionsAttempted;
        cur.correct += t.questionsCorrect;
        domainStats[dom] = cur;
      }
      let weightedSmoothed = 0;
      let totalWeight = 0;
      for (const { attempted, correct } of Object.values(domainStats)) {
        const smoothed = (correct + PRIOR_N * PRIOR_P) / (attempted + PRIOR_N);
        weightedSmoothed += smoothed * attempted;
        totalWeight += attempted;
      }
      if (totalWeight === 0) return fallback;
      const proficiency = Math.min(1, Math.max(0, weightedSmoothed / totalWeight));
      return calculateScoreFromAccuracy(proficiency);
    };

    // Update streak
    const todayDate = new Date().toISOString().split('T')[0];
    const yesterday = new Date(Date.now() - 86400000).toISOString().split('T')[0];
    let newStreak = progress.currentStreak;
    
    if (progress.lastPracticeDate !== todayDate) {
      if (progress.lastPracticeDate === yesterday) {
        newStreak = progress.currentStreak + 1;
      } else {
        newStreak = 1;
      }
    }

    const updatedProgress: StudentProgress = {
      ...progress,
      topicProgress: newTopicProgress,
      domainProgress: newDomainProgress,
      sessions: [session, ...progress.sessions].slice(0, 50),
      estimatedMathScore: calcSectionScore(MATH_SKILL_SLUGS, progress.estimatedMathScore),
      estimatedRWScore: calcSectionScore(RW_SKILL_SLUGS, progress.estimatedRWScore),
      diagnosticCompleted: type === "diagnostic" ? true : progress.diagnosticCompleted,
      diagnosticDate: type === "diagnostic" ? today : progress.diagnosticDate,
      currentStreak: newStreak,
      longestStreak: Math.max(newStreak, progress.longestStreak),
      lastPracticeDate: todayDate
    };

    setProgress(updatedProgress);

    // Sync to server in background. Capture the server-issued session ID so
    // callers (Practice.tsx) can fan it out to downstream agents like Reviewer.
    setIsSyncing(true);
    let serverSessionId: number | null = null;
    try {
      if (isAuthenticated) {
        const res = await fetch("/api/user/sessions", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          credentials: "include",
          body: JSON.stringify({
            sessionType: type,
            attempts,
            timeSpentSeconds
          })
        });
        if (res.ok) {
          const json = await res.json().catch(() => null);
          const id = json?.data?.sessionId;
          if (typeof id === "number") serverSessionId = id;
        }

        // If this is a diagnostic, also update the user profile
        if (type === "diagnostic") {
          await fetch("/api/user/diagnostic", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            credentials: "include",
            body: JSON.stringify({
              skills: updatedProgress.topicProgress,
              estimatedScore: updatedProgress.estimatedMathScore + updatedProgress.estimatedRWScore
            })
          });
        }
      } else {
        const res = await fetch("/api/anonymous/sessions", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            browserId: browserId.current,
            sessionType: type,
            attempts,
            timeSpentSeconds
          })
        });
        if (res.ok) {
          const json = await res.json().catch(() => null);
          const id = json?.data?.sessionId;
          if (typeof id === "number") serverSessionId = id;
        }

        // If this is a diagnostic, also save diagnostic results
        if (type === "diagnostic") {
          await fetch("/api/anonymous/diagnostic", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              browserId: browserId.current,
              skills: updatedProgress.topicProgress,
              estimatedScore: updatedProgress.estimatedMathScore + updatedProgress.estimatedRWScore
            })
          });
        }
      }
    } catch (e) {
      console.error("Failed to sync session to server:", e);
    } finally {
      setIsSyncing(false);
    }

    return { sessionId: serverSessionId };
  }, [progress, isAuthenticated]);

  // Mark diagnostic as complete
  const markDiagnosticComplete = useCallback(async () => {
    const today = new Date().toISOString();
    
    setProgress(prev => ({
      ...prev,
      diagnosticCompleted: true,
      diagnosticDate: today
    }));

    // Sync to server
    try {
      if (isAuthenticated) {
        // Use authenticated endpoint
        await fetch("/api/user/diagnostic", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          credentials: "include",
          body: JSON.stringify({
            skills: progress.topicProgress,
            estimatedScore: progress.estimatedMathScore + progress.estimatedRWScore
          })
        });
      } else {
        // Use anonymous endpoint
        await fetch("/api/anonymous/diagnostic", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            browserId: browserId.current,
            skills: progress.topicProgress,
            estimatedScore: progress.estimatedMathScore + progress.estimatedRWScore
          })
        });
      }
    } catch (e) {
      console.error("Failed to sync diagnostic to server:", e);
    }
  }, [progress.topicProgress, progress.estimatedMathScore, progress.estimatedRWScore, isAuthenticated]);

  // Get overall stats
  const getOverallStats = useCallback(() => {
    const topics = Object.values(progress.topicProgress);
    const totalAttempted = topics.reduce((sum, t) => sum + t.questionsAttempted, 0);
    const totalCorrect = topics.reduce((sum, t) => sum + t.questionsCorrect, 0);
    const overallAccuracy = totalAttempted > 0 ? totalCorrect / totalAttempted : 0;
    
    return {
      totalAttempted,
      totalCorrect,
      overallAccuracy,
      totalSessions: progress.sessions.length,
      totalTimeMinutes: Math.round(
        progress.sessions.reduce((sum, s) => sum + s.timeSpentSeconds, 0) / 60
      )
    };
  }, [progress]);

  // Tiered priority list — the canonical "what should this student work on
  // next" answer for both the StudyPlan suggestion chips and the planner
  // agent. Ordering, in priority sequence:
  //   1. Diagnostic-flagged weak skills (high → medium) the student has
  //      NOT practiced yet. These are the highest-signal gaps.
  //   2. Practiced skills with mastery < MASTERY_PROFICIENT (0.70),
  //      sorted ascending so the weakest surface first.
  //   3. Skills the student has never practiced AND the diagnostic
  //      didn't flag. Filling in unknown territory.
  //   4. Practiced skills 0.70 ≤ mastery < 0.85 — maintenance for proficient
  //      skills, only if (1)-(3) don't fill `count`.
  const getPriorityTopics = useCallback((count: number = 5): PriorityTopic[] => {
    const out: PriorityTopic[] = [];
    const seen = new Set<string>();

    const buildEntry = (
      slug: string,
      tier: PriorityTier,
      severity: PriorityTopic["severity"],
      reason: string
    ): PriorityTopic => {
      const data = progress.topicProgress[slug];
      const attempted = data?.questionsAttempted ?? 0;
      const correct = data?.questionsCorrect ?? 0;
      const mastery = attempted > 0 ? correct / attempted : null;
      const domain = domainForSkill(slug);
      const domainDisplay = DOMAINS_IN_ORDER.find((d) => d.slug === domain)?.displayName ?? domain;
      return {
        topic: slug,
        displayName: skillSlugToDisplayName(slug),
        domain,
        domainDisplayName: domainDisplay,
        attempted,
        correct,
        mastery,
        tier,
        severity,
        reason,
      };
    };

    const push = (entry: PriorityTopic) => {
      if (seen.has(entry.topic) || out.length >= count) return;
      seen.add(entry.topic);
      out.push(entry);
    };

    // Tier 1: diagnostic-weak unpracticed
    const weaknessesBySeverity = [...progress.diagnosticWeaknesses].sort((a, b) => {
      const order = { high: 0, medium: 1, low: 2 } as const;
      return (order[a.severity] ?? 2) - (order[b.severity] ?? 2);
    });
    for (const w of weaknessesBySeverity) {
      const data = progress.topicProgress[w.skill];
      if ((data?.questionsAttempted ?? 0) === 0) {
        push(buildEntry(w.skill, "diagnostic_unpracticed", w.severity, `Diagnostic-flagged · ${w.severity}`));
      }
    }

    // Tier 2: practiced, mastery < proficient (0.70)
    const practiced = ALL_SKILL_SLUGS
      .map((slug) => ({ slug, data: progress.topicProgress[slug] }))
      .filter((p) => (p.data?.questionsAttempted ?? 0) > 0)
      .map((p) => ({
        slug: p.slug,
        mastery: (p.data!.questionsCorrect / p.data!.questionsAttempted),
      }))
      .sort((a, b) => a.mastery - b.mastery);
    for (const p of practiced) {
      if (p.mastery < MASTERY_PROFICIENT) {
        push(buildEntry(p.slug, "low_mastery", null, `${Math.round(p.mastery * 100)}% mastery — needs work`));
      }
    }

    // Tier 3: unpracticed and not flagged by diagnostic. Math-first ordering
    // so a balanced distribution surfaces (mirrors the planner's bias).
    const flaggedSet = new Set(progress.diagnosticWeaknesses.map((w) => w.skill));
    for (const slug of ALL_SKILL_SLUGS) {
      const data = progress.topicProgress[slug];
      if ((data?.questionsAttempted ?? 0) === 0 && !flaggedSet.has(slug)) {
        push(buildEntry(slug, "unpracticed", null, "Not yet practiced"));
      }
    }

    // Tier 4: proficient maintenance, only if there's room.
    for (const p of practiced) {
      if (p.mastery >= MASTERY_PROFICIENT && p.mastery < MASTERY_ADVANCED) {
        push(buildEntry(p.slug, "maintenance", null, `${Math.round(p.mastery * 100)}% — keep sharp`));
      }
    }

    return out.slice(0, count);
  }, [progress.topicProgress, progress.diagnosticWeaknesses]);

  // Backwards-compat alias for any caller that hasn't migrated yet. Returns
  // PriorityTopic shape, which is a superset of the old TopicProgress fields
  // most callers consume (questionsAttempted/Correct, topic).
  const getWeakestTopics = useCallback(
    (count: number = 3) => {
      return getPriorityTopics(count).map((p) => ({
        topic: p.topic,
        questionsAttempted: p.attempted,
        questionsCorrect: p.correct,
        lastPracticed: progress.topicProgress[p.topic]?.lastPracticed ?? null,
        currentLevel: calculateLevel(p.mastery ?? 0),
      }));
    },
    [getPriorityTopics, progress.topicProgress]
  );

  // Reset all progress
  const resetProgress = useCallback(async () => {
    setProgress(DEFAULT_PROGRESS);
    localStorage.removeItem(STORAGE_KEY);

    // Reset on server (only for anonymous users)
    if (!isAuthenticated) {
      try {
        await fetch(`/api/progress/${browserId.current}`, {
          method: "DELETE"
        });
      } catch (e) {
        console.error("Failed to reset progress on server:", e);
      }
    }
  }, [isAuthenticated]);

  return {
    progress,
    isLoaded: isLoaded && !authPending,
    isSyncing,
    isAuthenticated,
    recordSession,
    markDiagnosticComplete,
    getOverallStats,
    getWeakestTopics,
    getPriorityTopics,
    resetProgress,
    refreshFromServer: fetchProgressFromServer
  };
}
