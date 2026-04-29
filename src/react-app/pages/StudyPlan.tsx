import { useState, useCallback, useEffect, useMemo, useRef } from "react";
import { AppLayout } from "@/react-app/components/layout/AppLayout";
import { topicDisplayNames } from "@/data/questions";
import {
  DOMAINS_IN_ORDER,
  SKILLS_BY_DOMAIN,
  skillSlugToDisplayName,
} from "@/react-app/lib/sat-taxonomy";
import { cn } from "@/react-app/lib/utils";
import {
  Calendar,
  ChevronLeft,
  ChevronRight,
  CheckCircle,
  Circle,
  Plus,
  X,
  Sparkles,
  Loader2,
  Wand2,
} from "lucide-react";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { useStudentProgress } from "@/react-app/hooks/useStudentProgress";

interface StudyBlock {
  id: string;
  topic: string;
  duration: number; // minutes
  completed: boolean;
}

interface DayPlan {
  date: string; // YYYY-MM-DD — stored as string so we can serialize to localStorage
  blocks: StudyBlock[];
}

const DURATION_OPTIONS = [15, 20, 25, 30, 45, 60];

// Maps the onboarding/Settings study-intensity choice to a numeric weekly hour
// budget the planner agent expects. Keep aligned with Settings.tsx and
// Onboarding.tsx — those write the string label, the planner needs the number.
const STUDY_HOURS_BY_INTENSITY: Record<string, number> = {
  light: 3,
  moderate: 6,
  intensive: 10,
};

// Shape returned by /api/agents/planner and /api/plan/active. Loosely typed
// here so we can feature-detect missing fields rather than crash on parse,
// but the round-trip projection in projectPlanForSave needs access to the
// rich fields (sessionType, rationale, weekGoal, etc.) so they're declared
// here too.
type PlannerSessionType = "drill" | "review" | "mixed" | "timed_test";
type PlannerSession = {
  id?: string;
  durationMin?: number;
  focusSkill?: string;
  focusSkillDisplay?: string;
  sessionType?: PlannerSessionType;
  rationale?: string;
};
type PlannerDay = {
  day?: string;
  date?: string;
  sessions?: PlannerSession[];
};
type PlannerOutput = {
  week?: PlannerDay[];
  totalHoursAllocated?: number;
  coverage?: Record<string, number>;
  weekGoal?: string;
};

// Convert a planner-agent week to the local DayPlan shape. Defensive: any
// missing field falls back to a safe value so a partially-malformed response
// doesn't blank the whole UI.
function plannerToDayPlan(week: PlannerDay[], fallbackStartIso: string): DayPlan[] {
  return week.slice(0, 7).map((d, i) => {
    const dateIso = (typeof d.date === "string" && /^\d{4}-\d{2}-\d{2}$/.test(d.date))
      ? d.date
      : (() => {
          const fb = new Date(fallbackStartIso + "T00:00:00");
          fb.setDate(fb.getDate() + i);
          return isoDate(fb);
        })();
    const blocks: StudyBlock[] = (d.sessions ?? []).map((s, j) => ({
      id: typeof s.id === "string" && s.id.length > 0 ? s.id : `${dateIso}-${j}-${Math.random().toString(36).slice(2, 6)}`,
      topic: typeof s.focusSkill === "string" && s.focusSkill.length > 0 ? s.focusSkill : "algebra",
      duration: typeof s.durationMin === "number" && s.durationMin > 0 ? s.durationMin : 25,
      completed: false,
    }));
    return { date: dateIso, blocks };
  });
}

function isoDate(d: Date): string {
  return d.toISOString().split("T")[0];
}

function blockId(dateIso: string): string {
  return `${dateIso}-${Date.now().toString(36)}-${Math.random().toString(36).slice(2, 6)}`;
}

const WEEKDAY_NAMES = ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"];

// Project the editable DayPlan[] back into PlannerOutput shape so /api/plan/save
// can replace plan_json without losing the rich agent-emitted fields. When a
// block matches a session.id from the original plan, that session's metadata
// (focusSkillDisplay, sessionType, rationale) is preserved; manually-added
// blocks fill defaults so the JSON parses on the next planner round-trip.
function projectPlanForSave(weekPlan: DayPlan[], original: PlannerOutput | null): PlannerOutput {
  const sessionLookup: Record<string, PlannerSession> = {};
  for (const day of original?.week ?? []) {
    for (const sess of day.sessions ?? []) {
      if (typeof sess.id === "string") sessionLookup[sess.id] = sess;
    }
  }
  const week: PlannerDay[] = weekPlan.map((day) => {
    const dayDate = new Date(day.date + "T00:00:00");
    const dayName = WEEKDAY_NAMES[dayDate.getDay()];
    const sessions: PlannerSession[] = day.blocks.map((block) => {
      const orig = sessionLookup[block.id];
      return {
        id: block.id,
        durationMin: block.duration,
        focusSkill: block.topic,
        focusSkillDisplay: orig?.focusSkillDisplay ?? block.topic,
        sessionType: orig?.sessionType ?? "drill",
        rationale: orig?.rationale ?? "",
      };
    });
    return { day: dayName, date: day.date, sessions };
  });
  // Recompute coverage + total so the saved json stays internally consistent.
  let totalMinutes = 0;
  const coverage: Record<string, number> = {};
  for (const day of week) {
    for (const sess of day.sessions ?? []) {
      const dur = sess.durationMin ?? 0;
      const focus = sess.focusSkill ?? "";
      totalMinutes += dur;
      if (focus) coverage[focus] = (coverage[focus] ?? 0) + dur;
    }
  }
  return {
    week,
    totalHoursAllocated: Math.round((totalMinutes / 60) * 10) / 10,
    coverage,
    weekGoal: original?.weekGoal ?? "",
  };
}

// Empty 7-day skeleton starting from `startDate`. Other weeks are intentionally
// empty until the user explicitly fills them in (via the planner agent or by
// adding topics manually). The earlier seeded rotation made past/future weeks
// look populated even when the user had never generated anything for them.
function generateEmptyWeek(startDate: Date): DayPlan[] {
  const days: DayPlan[] = [];
  for (let i = 0; i < 7; i++) {
    const d = new Date(startDate);
    d.setDate(d.getDate() + i);
    days.push({ date: isoDate(d), blocks: [] });
  }
  return days;
}

function weekStorageKey(userId: string | undefined, weekStartIso: string): string {
  return `studyPlan:${userId ?? "anon"}:${weekStartIso}`;
}

function loadWeekFromStorage(userId: string | undefined, weekStartIso: string): DayPlan[] | null {
  try {
    const raw = localStorage.getItem(weekStorageKey(userId, weekStartIso));
    if (!raw) return null;
    const parsed = JSON.parse(raw) as DayPlan[];
    if (!Array.isArray(parsed) || parsed.length !== 7) return null;
    return parsed;
  } catch {
    return null;
  }
}

function saveWeekToStorage(userId: string | undefined, weekStartIso: string, plan: DayPlan[]) {
  try {
    localStorage.setItem(weekStorageKey(userId, weekStartIso), JSON.stringify(plan));
  } catch {
    // localStorage full or unavailable — silently no-op
  }
}

export default function StudyPlan() {
  const { user } = useAuth();
  const { progress, getPriorityTopics } = useStudentProgress();
  const [weekOffset, setWeekOffset] = useState(0);
  const [weekStartIso, setWeekStartIso] = useState(() => isoDate(new Date()));
  // Always start empty. Per-user storage rehydrates in the effect below once
  // userId is known; reading any anon-keyed entry on first render would leak
  // a logged-out user's plan into a freshly authed session.
  const [weekPlan, setWeekPlan] = useState<DayPlan[]>(() => generateEmptyWeek(new Date()));
  const [draggedBlock, setDraggedBlock] = useState<{ dayIndex: number; blockIndex: number } | null>(null);
  const [dragOverDay, setDragOverDay] = useState<number | null>(null);
  const [pickerDay, setPickerDay] = useState<number | null>(null);
  const [generating, setGenerating] = useState(false);
  const [genError, setGenError] = useState<string | null>(null);
  const [autoLoadDone, setAutoLoadDone] = useState(false);
  // Ephemeral save status. Drives the inline toast in the header so users
  // see explicit confirmation that their edits / fresh generation persisted.
  // Auto-clears 2 s after each transition (success state); error state
  // sticks until the next save attempt.
  const [saveStatus, setSaveStatus] = useState<
    "idle" | "saving" | "saved" | "generated" | "error"
  >("idle");
  const saveStatusTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const setSaveStatusEphemeral = useCallback(
    (s: "saving" | "saved" | "generated" | "error") => {
      setSaveStatus(s);
      if (saveStatusTimerRef.current) clearTimeout(saveStatusTimerRef.current);
      if (s === "saved" || s === "generated") {
        saveStatusTimerRef.current = setTimeout(() => setSaveStatus("idle"), 2000);
      }
    },
    []
  );
  // ai_study_plans.id of the active plan we're editing. Captured from
  // /api/agents/planner (on generate) and from /api/plan/active (on hydrate).
  // null = no server-side plan; debounced save effect skips while null.
  const [planId, setPlanId] = useState<number | null>(null);
  // Cache the rich PlannerOutput so edits can round-trip through
  // /api/plan/save without losing totalHoursAllocated / coverage / weekGoal.
  const lastFullPlanRef = useRef<PlannerOutput | null>(null);
  const saveTimerRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const lastSavedKeyRef = useRef<string | null>(null);
  // Pending plan_json that beforeunload should flush via sendBeacon.
  const pendingSavePayloadRef = useRef<string | null>(null);

  const profile = user?.profile;
  const userId = user?.id;
  const testDate = profile?.testDate ? new Date(profile.testDate) : null;
  const estimatedMath = profile?.estimatedMathScore ?? progress.estimatedMathScore;
  const estimatedRW = profile?.estimatedRWScore ?? progress.estimatedRWScore;
  const currentScore = estimatedMath + estimatedRW;
  const targetScore = profile?.targetScore || 1400;

  // Refresh week from storage when user/week changes (handles login transitions).
  useEffect(() => {
    const stored = loadWeekFromStorage(userId, weekStartIso);
    if (stored) setWeekPlan(stored);
  }, [userId, weekStartIso]);

  // Persist whenever the week plan changes.
  useEffect(() => {
    saveWeekToStorage(userId, weekStartIso, weekPlan);
  }, [userId, weekStartIso, weekPlan]);

  // Server-side persistence for plan edits — drag/drop, mark-complete, add,
  // remove, duration changes. Debounced 800 ms so a flurry of clicks
  // collapses into a single POST. Skipped while planId is null (no plan
  // generated yet) and while the just-set weekPlan still matches what the
  // server already has (lastSavedKeyRef short-circuit).
  useEffect(() => {
    if (!planId) return;
    const key = JSON.stringify(weekPlan);
    if (lastSavedKeyRef.current === key) return;

    const projection = projectPlanForSave(weekPlan, lastFullPlanRef.current);
    const payload = JSON.stringify({ plan_id: planId, plan_json: projection });
    pendingSavePayloadRef.current = payload;

    if (saveTimerRef.current) clearTimeout(saveTimerRef.current);
    saveTimerRef.current = setTimeout(async () => {
      setSaveStatusEphemeral("saving");
      try {
        const res = await fetch("/api/plan/save", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          credentials: "include",
          body: payload,
        });
        if (res.ok) {
          lastSavedKeyRef.current = key;
          pendingSavePayloadRef.current = null;
          setSaveStatusEphemeral("saved");
          // Tell sibling pages (Dashboard) to re-fetch the active plan.
          window.dispatchEvent(new CustomEvent("tutorzero:plan-updated"));
        } else {
          setSaveStatusEphemeral("error");
        }
      } catch {
        // Network blip — leave pendingSavePayloadRef set so the next edit
        // (or beforeunload) retries. localStorage already has the edit.
        setSaveStatusEphemeral("error");
      }
    }, 800);

    return () => {
      if (saveTimerRef.current) clearTimeout(saveTimerRef.current);
    };
  }, [weekPlan, planId]);

  // beforeunload flush — if the user closes the tab mid-debounce, post the
  // pending payload synchronously via sendBeacon. Without this, edits made
  // less than 800 ms before navigation get lost.
  useEffect(() => {
    const handler = () => {
      const payload = pendingSavePayloadRef.current;
      if (!payload) return;
      try {
        navigator.sendBeacon("/api/plan/save", new Blob([payload], { type: "application/json" }));
      } catch {
        // sendBeacon can't be retried; the user is closing the page anyway.
      }
    };
    window.addEventListener("beforeunload", handler);
    return () => window.removeEventListener("beforeunload", handler);
  }, []);

  // Generate a plan for the current calendar week (the week containing today).
  // Always anchors to "this week" — if the user has navigated to a different
  // week and clicks the button, snap back to today's week first so the
  // generated plan lands where the button copy promises.
  //
  // The planner agent pulls the user's latest diagnostic weaknesses
  // server-side via fetchLatestWeaknesses(); we only send testDate, hours,
  // and weekStartDate. Result replaces just the current week and persists to
  // localStorage; other weeks remain empty until the user fills them in.
  const generateForThisWeek = useCallback(async () => {
    if (!user) {
      setGenError("Sign in to generate a personalized plan from your diagnostic.");
      return;
    }
    if (!profile?.testDate) {
      setGenError("Add your SAT test date in Settings first.");
      return;
    }
    const intensity = profile?.studyHoursPerWeek ?? "moderate";
    const hoursPerWeek = STUDY_HOURS_BY_INTENSITY[intensity] ?? 6;
    const todayIso = isoDate(new Date());

    // Snap to "this week" so the result is visible immediately without the
    // user having to navigate back manually.
    if (weekOffset !== 0 || weekStartIso !== todayIso) {
      setWeekOffset(0);
      setWeekStartIso(todayIso);
    }

    setGenerating(true);
    setGenError(null);
    const ctl = new AbortController();
    const timer = setTimeout(() => ctl.abort(), 90_000);
    try {
      const res = await fetch("/api/agents/planner", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({
          testDate: profile.testDate,
          hoursPerWeek,
          weekStartDate: todayIso,
        }),
        signal: ctl.signal,
      });
      const json = await res.json().catch(() => null);
      if (!res.ok) {
        setGenError(json?.error ?? "Plan generation failed");
        return;
      }
      const planOut = json?.plan as PlannerOutput | undefined;
      const week = planOut?.week;
      if (Array.isArray(week) && week.length > 0) {
        const days = plannerToDayPlan(week, todayIso);
        if (days.length === 7) {
          setWeekPlan(days);
          setWeekStartIso(days[0].date);
          saveWeekToStorage(userId, days[0].date, days);
          // Snapshot the rich plan + capture plan_id so subsequent edits
          // can round-trip through /api/plan/save without losing the
          // agent-generated metadata fields. lastSavedKeyRef seeds with
          // the just-generated plan so the debounced save doesn't fire
          // immediately on the first weekPlan effect tick.
          lastFullPlanRef.current = planOut ?? null;
          if (typeof json?.plan_id === "number") setPlanId(json.plan_id);
          lastSavedKeyRef.current = JSON.stringify(days);
          // The /api/agents/planner handler already inserted the row with
          // active=true, so this notification simply tells the Dashboard to
          // pick the new plan up.
          setSaveStatusEphemeral("generated");
          window.dispatchEvent(new CustomEvent("tutorzero:plan-updated"));
        }
      }
    } catch (e) {
      if (e instanceof DOMException && e.name === "AbortError") {
        setGenError("Plan generation took too long. Please try again.");
      } else {
        setGenError(e instanceof Error ? e.message : "Plan generation failed");
      }
    } finally {
      clearTimeout(timer);
      setGenerating(false);
    }
  }, [user, profile?.testDate, profile?.studyHoursPerWeek, userId, weekOffset, weekStartIso]);

  // First-visit hydration. For authed users with a previously saved server
  // plan, hydrate it so a returning user doesn't have to re-click the
  // button. Otherwise leave the week empty — generation is explicit, only
  // when the user clicks "Generate plan for this week". The server is always
  // the source of truth; localStorage is only a fallback when the fetch
  // fails (offline, transient 5xx). Previously a stale localStorage entry
  // could short-circuit the server fetch and trap the user in an empty week.
  useEffect(() => {
    if (autoLoadDone) return;
    if (!user || !userId) return;

    let cancelled = false;
    (async () => {
      try {
        const res = await fetch("/api/plan/active", { credentials: "include" });
        if (cancelled) return;
        const json = res.ok ? await res.json().catch(() => null) : null;
        const plan = json?.plan;
        const planJson = plan?.plan_json as PlannerOutput | undefined;
        const week = planJson?.week as PlannerDay[] | undefined;
        const planWeekStart = typeof plan?.week_start === "string" ? plan.week_start : null;
        if (Array.isArray(week) && week.length === 7 && planWeekStart) {
          // Restore the plan as long as it isn't strictly in the past (more
          // than 7 days behind today). The previous strict-containment check
          // hid plans whose week_start was a few days in the future, even
          // though the dashboard happily surfaced them — so the user saw a
          // pre-populated dashboard sitting on top of an empty plan page,
          // which is confusing. Anchoring the visible week to the plan's
          // week_start makes both pages tell the same story.
          const startMs = new Date(planWeekStart + "T00:00:00").getTime();
          const todayMs = new Date(isoDate(new Date()) + "T00:00:00").getTime();
          const dayMs = 86_400_000;
          const isStale = todayMs >= startMs + 7 * dayMs;
          if (!isStale) {
            const days = plannerToDayPlan(week, planWeekStart);
            setWeekPlan(days);
            if (days[0]?.date) setWeekStartIso(days[0].date);
            lastFullPlanRef.current = planJson ?? null;
            if (typeof plan?.id === "number") setPlanId(plan.id);
            lastSavedKeyRef.current = JSON.stringify(days);
          } else {
            // Plan exists but is stale (>7 days old). Fall back to local
            // cache for the visible week so the user keeps any manual edits.
            const stored = loadWeekFromStorage(userId, weekStartIso);
            if (stored) setWeekPlan(stored);
          }
        } else {
          // Server returned no plan. Fall back to localStorage if present.
          const stored = loadWeekFromStorage(userId, weekStartIso);
          if (stored) setWeekPlan(stored);
        }
      } catch {
        // network error → fall back to localStorage so navigation still works
        const stored = loadWeekFromStorage(userId, weekStartIso);
        if (stored && !cancelled) setWeekPlan(stored);
      }
      if (!cancelled) setAutoLoadDone(true);
    })();
    return () => {
      cancelled = true;
    };
  }, [user, userId, weekStartIso, autoLoadDone]);

  const today = new Date();
  const daysUntilTest = testDate
    ? Math.ceil((testDate.getTime() - today.getTime()) / (1000 * 60 * 60 * 24))
    : 60;

  const weekTotalMinutes = weekPlan.reduce(
    (sum, day) => sum + day.blocks.reduce((daySum, block) => daySum + block.duration, 0),
    0
  );
  const weekCompletedMinutes = weekPlan.reduce(
    (sum, day) =>
      sum + day.blocks.filter((b) => b.completed).reduce((daySum, block) => daySum + block.duration, 0),
    0
  );

  // Suggested topics — same prioritizer the planner agent reads, so the
  // chips, the heatmap, and the generated plan all surface the same skills
  // for the same reasons. Tier ordering: diagnostic-flagged unpracticed →
  // low-mastery practiced → unpracticed-not-flagged → maintenance.
  const suggestedTopics = useMemo(() => {
    return getPriorityTopics(5).map((p) => ({
      slug: p.topic,
      label: p.displayName,
      accuracy: p.mastery !== null ? Math.round(p.mastery * 100) : null,
      attempted: p.attempted,
      reason: p.reason,
    }));
  }, [getPriorityTopics]);

  const formatDate = (dateIso: string) => {
    const d = new Date(dateIso + "T00:00:00");
    return d.toLocaleDateString("en-US", { weekday: "short", month: "short", day: "numeric" });
  };
  const isToday = (dateIso: string) => dateIso === isoDate(new Date());
  const todayDayIndex = useMemo(() => {
    const todayIso = isoDate(new Date());
    return weekPlan.findIndex((d) => d.date === todayIso);
  }, [weekPlan]);

  // Drag handlers
  const handleDragStart = useCallback((dayIndex: number, blockIndex: number) => {
    setDraggedBlock({ dayIndex, blockIndex });
  }, []);

  const handleDragOver = useCallback((e: React.DragEvent, dayIndex: number) => {
    e.preventDefault();
    setDragOverDay(dayIndex);
  }, []);

  const handleDragLeave = useCallback(() => {
    setDragOverDay(null);
  }, []);

  const handleDrop = useCallback(
    (targetDayIndex: number) => {
      if (!draggedBlock || draggedBlock.dayIndex === targetDayIndex) {
        setDraggedBlock(null);
        setDragOverDay(null);
        return;
      }
      setWeekPlan((prev) => {
        const newPlan = prev.map((day) => ({ ...day, blocks: [...day.blocks] }));
        const block = newPlan[draggedBlock.dayIndex].blocks[draggedBlock.blockIndex];
        newPlan[draggedBlock.dayIndex].blocks.splice(draggedBlock.blockIndex, 1);
        newPlan[targetDayIndex].blocks.push({
          ...block,
          id: blockId(newPlan[targetDayIndex].date),
          completed: false,
        });
        return newPlan;
      });
      setDraggedBlock(null);
      setDragOverDay(null);
    },
    [draggedBlock]
  );

  const handleDragEnd = useCallback(() => {
    setDraggedBlock(null);
    setDragOverDay(null);
  }, []);

  const toggleBlockCompletion = useCallback((dayIndex: number, blockIndex: number) => {
    setWeekPlan((prev) =>
      prev.map((day, dIdx) => {
        if (dIdx !== dayIndex) return day;
        return {
          ...day,
          blocks: day.blocks.map((block, bIdx) =>
            bIdx === blockIndex ? { ...block, completed: !block.completed } : block
          ),
        };
      })
    );
  }, []);

  const removeBlock = useCallback((dayIndex: number, blockIndex: number) => {
    setWeekPlan((prev) =>
      prev.map((day, dIdx) => {
        if (dIdx !== dayIndex) return day;
        return { ...day, blocks: day.blocks.filter((_, bIdx) => bIdx !== blockIndex) };
      })
    );
  }, []);

  const addBlock = useCallback(
    (dayIndex: number, topic: string, duration: number = 25) => {
      setWeekPlan((prev) =>
        prev.map((day, dIdx) => {
          if (dIdx !== dayIndex) return day;
          return {
            ...day,
            blocks: [
              ...day.blocks,
              { id: blockId(day.date), topic, duration, completed: false },
            ],
          };
        })
      );
      setPickerDay(null);
    },
    []
  );

  const addSuggestionToToday = useCallback(
    (topic: string) => {
      const idx = todayDayIndex >= 0 ? todayDayIndex : 0;
      addBlock(idx, topic, 25);
    },
    [todayDayIndex, addBlock]
  );

  const updateBlockDuration = useCallback(
    (dayIndex: number, blockIndex: number, duration: number) => {
      setWeekPlan((prev) =>
        prev.map((day, dIdx) => {
          if (dIdx !== dayIndex) return day;
          return {
            ...day,
            blocks: day.blocks.map((block, bIdx) =>
              bIdx === blockIndex ? { ...block, duration } : block
            ),
          };
        })
      );
    },
    []
  );

  // Navigate weeks. Loads the corresponding stored plan or generates a fresh
  // template if none exists for that week.
  const navigateWeek = useCallback(
    (direction: number) => {
      const newOffset = weekOffset + direction;
      const newStart = new Date();
      newStart.setDate(newStart.getDate() + newOffset * 7);
      const newStartIso = isoDate(newStart);
      setWeekOffset(newOffset);
      setWeekStartIso(newStartIso);
      const stored = loadWeekFromStorage(userId, newStartIso);
      const nextWeekPlan = stored ?? generateEmptyWeek(newStart);
      setWeekPlan(nextWeekPlan);
      // Clear server-save context — only the current-week plan has a
      // server row. Edits on other weeks stay localStorage-only until
      // the user generates a plan for that week.
      setPlanId(null);
      lastFullPlanRef.current = null;
      lastSavedKeyRef.current = JSON.stringify(nextWeekPlan);
    },
    [weekOffset, userId]
  );

  return (
    <AppLayout>
      <div className="max-w-6xl mx-auto px-4 lg:px-8 py-6 lg:py-8">
        {/* Header */}
        <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-4 mb-8">
          <div>
            <h1 className="text-h1 text-tz-navy mb-2">Your Study Plan</h1>
            <p className="text-body text-tz-gray-600">
              Drag tasks between days, click <Plus className="inline w-3.5 h-3.5" /> to add a topic, hover a task to remove it.
            </p>
          </div>
          <div className="bg-tz-navy text-white rounded-xl px-6 py-4">
            <div className="flex items-center gap-4">
              <Calendar className="w-6 h-6 text-tz-light-blue" />
              <div>
                <div className="text-h2 text-white">{daysUntilTest} days</div>
                <div className="text-small text-blue-200">until your SAT</div>
              </div>
            </div>
          </div>
        </div>

        {/* Score Progress */}
        <div className="bg-white rounded-xl border border-tz-gray-200 p-6 mb-6">
          <div className="flex items-center justify-between mb-4">
            <h2 className="text-h3 text-tz-navy">Score Progress</h2>
            <div className="flex items-center gap-6 text-small">
              <span className="text-tz-gray-400">Current: <strong className="text-tz-navy">{currentScore}</strong></span>
              <span className="text-tz-gray-400">Target: <strong className="text-tz-green">{targetScore}</strong></span>
            </div>
          </div>
          <div className="h-3 bg-tz-gray-100 rounded-full overflow-hidden">
            <div
              className="h-full bg-gradient-to-r from-tz-blue to-tz-light-blue rounded-full transition-all duration-500"
              style={{ width: `${Math.max(0, Math.min(100, ((currentScore - 400) / Math.max(1, targetScore - 400)) * 100))}%` }}
            />
          </div>
          <div className="flex justify-between mt-2 text-small text-tz-gray-400">
            <span>400</span>
            <span>{Math.max(0, Math.round(((currentScore - 400) / Math.max(1, targetScore - 400)) * 100))}% to goal</span>
            <span>{targetScore}</span>
          </div>
        </div>

        {/* Generated from your diagnostic */}
        <div className="bg-tz-blue/5 border border-tz-blue/20 rounded-xl p-5 mb-6">
          <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3 mb-3">
            <div className="flex items-center gap-2">
              <Wand2 className="w-5 h-5 text-tz-blue" />
              <h2 className="text-h3 text-tz-navy">Personalized plan</h2>
              {/* Inline save status — small, ephemeral, lives next to the
                  title so users see explicit save confirmation without
                  having to navigate away. */}
              {saveStatus !== "idle" && (
                <span
                  className={cn(
                    "inline-flex items-center gap-1 text-xs px-2 py-0.5 rounded-full transition-opacity",
                    saveStatus === "saving" && "bg-tz-gray-100 text-tz-gray-600",
                    saveStatus === "saved" && "bg-tz-green/15 text-tz-green",
                    saveStatus === "generated" && "bg-tz-blue/15 text-tz-blue",
                    saveStatus === "error" && "bg-red-100 text-red-700"
                  )}
                >
                  {saveStatus === "saving" && <Loader2 className="w-3 h-3 animate-spin" />}
                  {saveStatus === "saving"
                    ? "Saving…"
                    : saveStatus === "saved"
                    ? "Plan saved"
                    : saveStatus === "generated"
                    ? "Plan generated and saved"
                    : "Save failed — please try again"}
                </span>
              )}
            </div>
            <button
              onClick={generateForThisWeek}
              disabled={generating}
              className="inline-flex items-center justify-center gap-1.5 bg-tz-blue hover:bg-tz-navy disabled:bg-tz-gray-300 disabled:cursor-not-allowed text-white text-small font-medium rounded-lg px-3 py-2 transition-colors"
            >
              {generating ? (
                <>
                  <Loader2 className="w-4 h-4 animate-spin" />
                  Generating…
                </>
              ) : (
                <>
                  <Wand2 className="w-4 h-4" />
                  Generate plan for this week
                </>
              )}
            </button>
          </div>
          <p className="text-small text-tz-gray-600">
            {user && profile?.testDate
              ? "AI builds a 7-day plan from your latest diagnostic, target score, and study intensity. Other weeks stay empty until you generate or add tasks yourself."
              : user
              ? "Add your SAT test date in Settings, then we can build a plan from your latest diagnostic."
              : "Sign in to get a plan tailored to your diagnostic results, target score, and weekly hours."}
          </p>
          {genError && (
            <div className="mt-3 text-small text-red-600 bg-red-50 border border-red-200 rounded px-3 py-2">
              {genError}
            </div>
          )}
        </div>

        {/* Suggested for you */}
        <div className="bg-tz-blue/5 border border-tz-blue/20 rounded-xl p-5 mb-8">
          <div className="flex items-center gap-2 mb-3">
            <Sparkles className="w-5 h-5 text-tz-blue" />
            <h2 className="text-h3 text-tz-navy">Suggested for you</h2>
          </div>
          <p className="text-small text-tz-gray-600 mb-4">
            Based on {progress.sessions.length > 0 ? "your recent practice" : "your onboarding answers"}.
            Click any topic to add a 25-minute block to today.
          </p>
          <div className="flex flex-wrap gap-2">
            {suggestedTopics.map((s) => (
              <button
                key={s.slug}
                onClick={() => addSuggestionToToday(s.slug)}
                className="group flex items-center gap-2 bg-white border border-tz-blue/30 hover:border-tz-blue hover:bg-tz-blue/10 text-tz-navy text-small font-medium rounded-full pl-3 pr-2 py-1.5 transition-colors"
              >
                <span>{s.label}</span>
                <span className="text-xs text-tz-gray-400">·</span>
                <span className="text-xs text-tz-gray-500">{s.reason}</span>
                <span className="ml-1 inline-flex items-center justify-center w-5 h-5 rounded-full bg-tz-blue text-white group-hover:bg-tz-navy transition-colors">
                  <Plus className="w-3 h-3" />
                </span>
              </button>
            ))}
          </div>
        </div>

        {/* Week Navigation */}
        <div className="flex items-center justify-between mb-6">
          <button
            onClick={() => navigateWeek(-1)}
            className="p-2 rounded-lg hover:bg-tz-gray-100 transition-colors"
            aria-label="Previous week"
          >
            <ChevronLeft className="w-5 h-5 text-tz-gray-600" />
          </button>
          <div className="text-center">
            <h2 className="text-h3 text-tz-navy">
              {formatDate(weekPlan[0].date)} – {formatDate(weekPlan[6].date)}
            </h2>
            <div className="text-small text-tz-gray-400 mt-1">
              {weekCompletedMinutes}/{weekTotalMinutes} min completed this week
            </div>
          </div>
          <button
            onClick={() => navigateWeek(1)}
            className="p-2 rounded-lg hover:bg-tz-gray-100 transition-colors"
            aria-label="Next week"
          >
            <ChevronRight className="w-5 h-5 text-tz-gray-600" />
          </button>
        </div>

        {/* Weekly Agenda — vertical list, one day per row.
            Replaces the prior 7-column grid that crammed topic names into ~90px
            and forced single-letter truncation. Each day now has full-width
            rows for tasks so labels like "Information and Ideas" render in
            full. Drag-and-drop between days still works (the day row is the
            drop target). */}
        <div className="space-y-3">
          {weekPlan.map((day, dayIndex) => {
            const dayDate = new Date(day.date + "T00:00:00");
            const weekday = dayDate.toLocaleDateString("en-US", { weekday: "long" });
            const monthDay = dayDate.toLocaleDateString("en-US", { month: "short", day: "numeric" });
            const isCurrentDay = isToday(day.date);
            const dayMinutes = day.blocks.reduce((s, b) => s + b.duration, 0);
            const dayDoneMinutes = day.blocks
              .filter((b) => b.completed)
              .reduce((s, b) => s + b.duration, 0);
            const isDayDropTarget =
              dragOverDay === dayIndex && draggedBlock && draggedBlock.dayIndex !== dayIndex;
            return (
              <div
                key={dayIndex}
                onDragOver={(e) => handleDragOver(e, dayIndex)}
                onDragLeave={handleDragLeave}
                onDrop={() => handleDrop(dayIndex)}
                className={cn(
                  "bg-white rounded-xl border transition-all duration-200",
                  isCurrentDay ? "border-tz-blue ring-1 ring-tz-blue" : "border-tz-gray-200",
                  isDayDropTarget && "border-tz-blue bg-blue-50 ring-2 ring-tz-blue/30",
                  draggedBlock?.dayIndex === dayIndex && "opacity-90"
                )}
              >
                <div className="flex flex-col sm:flex-row">
                  {/* Day header — left rail on sm+, top strip on mobile */}
                  <div
                    className={cn(
                      "px-4 sm:px-5 py-3 sm:py-4 sm:w-44 sm:border-r border-b sm:border-b-0",
                      isCurrentDay ? "border-tz-blue/20" : "border-tz-gray-100",
                      "flex sm:flex-col sm:justify-between items-baseline sm:items-start gap-2"
                    )}
                  >
                    <div>
                      <div className="flex items-center gap-2">
                        <span
                          className={cn(
                            "text-h3",
                            isCurrentDay ? "text-tz-blue" : "text-tz-navy"
                          )}
                        >
                          {weekday}
                        </span>
                        {isCurrentDay && (
                          <span className="text-label uppercase tracking-wide bg-tz-blue text-white rounded-full px-2 py-0.5">
                            Today
                          </span>
                        )}
                      </div>
                      <div className="text-small text-tz-gray-500">{monthDay}</div>
                    </div>
                    <div className="text-small text-tz-gray-400 sm:mt-2">
                      {day.blocks.length === 0
                        ? "Rest day"
                        : `${dayDoneMinutes}/${dayMinutes} min`}
                    </div>
                  </div>

                  {/* Tasks column — full-width topic names */}
                  <div className="flex-1 p-3 sm:p-4 space-y-2">
                    {day.blocks.map((block, blockIndex) => (
                      <div
                        key={block.id}
                        draggable
                        onDragStart={() => handleDragStart(dayIndex, blockIndex)}
                        onDragEnd={handleDragEnd}
                        className={cn(
                          "group flex items-center gap-3 rounded-lg px-3 py-2.5 cursor-grab active:cursor-grabbing transition-all border",
                          block.completed
                            ? "bg-green-50 border-green-200"
                            : "bg-tz-off-white border-transparent hover:border-tz-gray-200 hover:shadow-sm",
                          draggedBlock?.dayIndex === dayIndex &&
                            draggedBlock?.blockIndex === blockIndex &&
                            "opacity-50 scale-[0.98]"
                        )}
                      >
                        <button
                          onClick={() => toggleBlockCompletion(dayIndex, blockIndex)}
                          className="flex-shrink-0 hover:scale-110 transition-transform"
                          aria-label={block.completed ? "Mark incomplete" : "Mark complete"}
                        >
                          {block.completed ? (
                            <CheckCircle className="w-5 h-5 text-tz-green" />
                          ) : (
                            <Circle className="w-5 h-5 text-tz-gray-300 hover:text-tz-blue" />
                          )}
                        </button>

                        <span
                          className={cn(
                            "flex-1 text-body font-medium leading-snug break-words min-w-0",
                            block.completed ? "text-green-700 line-through" : "text-tz-navy"
                          )}
                        >
                          {topicDisplayNames[block.topic] || block.topic}
                        </span>

                        <select
                          value={block.duration}
                          onChange={(e) =>
                            updateBlockDuration(dayIndex, blockIndex, Number(e.target.value))
                          }
                          onClick={(e) => e.stopPropagation()}
                          className="flex-shrink-0 text-small text-tz-gray-600 bg-white border border-tz-gray-200 rounded px-2 py-1 focus:outline-none focus:ring-1 focus:ring-tz-blue cursor-pointer"
                          aria-label="Duration"
                        >
                          {DURATION_OPTIONS.map((d) => (
                            <option key={d} value={d}>
                              {d} min
                            </option>
                          ))}
                        </select>

                        <button
                          onClick={(e) => {
                            e.stopPropagation();
                            removeBlock(dayIndex, blockIndex);
                          }}
                          className="flex-shrink-0 opacity-0 group-hover:opacity-100 focus:opacity-100 transition-opacity rounded-full w-7 h-7 flex items-center justify-center hover:bg-red-50"
                          aria-label="Remove task"
                        >
                          <X className="w-4 h-4 text-tz-gray-500 hover:text-red-500" />
                        </button>
                      </div>
                    ))}

                    {/* Drop zone hint */}
                    {isDayDropTarget && (
                      <div className="h-12 border-2 border-dashed border-tz-blue/50 rounded-lg flex items-center justify-center text-small text-tz-blue/70">
                        <Plus className="w-4 h-4 mr-1" /> Drop here
                      </div>
                    )}

                    {/* Empty state */}
                    {day.blocks.length === 0 && !isDayDropTarget && (
                      <div className="text-small text-tz-gray-400 italic px-1 py-2">
                        Nothing scheduled. Add a topic below or take a break.
                      </div>
                    )}

                    {/* Add picker / button — every SAT skill is selectable
                        (29 in total, grouped by domain). Clicking the domain
                        header schedules a mixed-domain block; clicking a
                        specific skill drills into that single skill. */}
                    {pickerDay === dayIndex ? (
                      <div className="bg-white border border-tz-blue/30 rounded-lg p-3 max-h-[420px] overflow-y-auto">
                        <div className="flex items-center justify-between mb-2 sticky top-0 bg-white pb-1.5">
                          <span className="text-label text-tz-gray-500 uppercase tracking-wide">
                            Pick a skill
                          </span>
                          <button
                            onClick={() => setPickerDay(null)}
                            className="text-tz-gray-400 hover:text-tz-gray-600"
                            aria-label="Close picker"
                          >
                            <X className="w-4 h-4" />
                          </button>
                        </div>
                        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                          {(["math", "reading", "writing"] as const).map((section) => {
                            const sectionDomains = DOMAINS_IN_ORDER.filter(
                              (d) => d.section === section
                            );
                            return (
                              <div key={section} className="space-y-3">
                                <div className="text-label text-tz-gray-400 uppercase tracking-wide">
                                  {section === "reading"
                                    ? "Reading"
                                    : section === "writing"
                                    ? "Writing"
                                    : "Math"}
                                </div>
                                {sectionDomains.map((d) => {
                                  const skills = SKILLS_BY_DOMAIN[d.slug] ?? [];
                                  return (
                                    <div key={d.slug}>
                                      <button
                                        onClick={() => addBlock(dayIndex, d.slug, 25)}
                                        className="w-full text-left px-2 py-1 rounded text-small font-semibold text-tz-navy hover:bg-tz-blue/10 transition-colors"
                                        title="Add a mixed-skill block from this domain"
                                      >
                                        {d.displayName}
                                      </button>
                                      <div className="space-y-0.5 mt-0.5 ml-2 border-l border-tz-gray-100 pl-2">
                                        {skills.map((s) => (
                                          <button
                                            key={s.slug}
                                            onClick={() => addBlock(dayIndex, s.slug, 25)}
                                            className="w-full text-left px-2 py-1 rounded text-xs text-tz-gray-600 hover:text-tz-navy hover:bg-tz-blue/5 transition-colors"
                                          >
                                            {skillSlugToDisplayName(s.slug)}
                                          </button>
                                        ))}
                                      </div>
                                    </div>
                                  );
                                })}
                              </div>
                            );
                          })}
                        </div>
                      </div>
                    ) : (
                      <button
                        onClick={() => setPickerDay(dayIndex)}
                        className="w-full flex items-center justify-center gap-1.5 py-2 rounded-lg text-small text-tz-gray-500 hover:text-tz-blue hover:bg-tz-blue/5 border border-dashed border-tz-gray-200 hover:border-tz-blue/40 transition-colors"
                      >
                        <Plus className="w-4 h-4" />
                        Add a topic
                      </button>
                    )}
                  </div>
                </div>
              </div>
            );
          })}
        </div>

        {/* Legend */}
        <div className="mt-6 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-small text-tz-gray-400">
          <div className="flex items-center gap-2">
            <Circle className="w-4 h-4" />
            <span>Click to mark complete</span>
          </div>
          <div className="flex items-center gap-2">
            <Plus className="w-4 h-4" />
            <span>Add a topic to any day</span>
          </div>
          <div className="flex items-center gap-2">
            <X className="w-4 h-4" />
            <span>Hover to remove</span>
          </div>
          <div>Drag a task between days to reschedule</div>
        </div>
      </div>
    </AppLayout>
  );
}
