// AIPlan — /plan route. AI-generated weekly study plan with HTML5 drag-drop
// reordering and a save-changes flow. Distinct from the legacy /study-plan
// page, which is a static template.

import { useCallback, useEffect, useMemo, useState } from "react";
import { useNavigate } from "react-router";
import { AppLayout } from "@/react-app/components/layout/AppLayout";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { topicDisplayNames } from "@/data/questions";
import { Button } from "@/react-app/components/ui/button";
import { cn } from "@/react-app/lib/utils";
import {
  Calendar,
  Clock,
  Loader2,
  Sparkles,
  GripVertical,
  Target,
  Save,
  RefreshCw,
  PlayCircle,
} from "lucide-react";

type SessionType = "drill" | "review" | "mixed" | "timed_test";

interface PlanSession {
  id: string;
  durationMin: number;
  focusSkill: string;
  focusSkillDisplay: string;
  sessionType: SessionType;
  rationale: string;
}

interface PlanDay {
  day: string;
  date: string;
  sessions: PlanSession[];
}

interface PlannerOutput {
  week: PlanDay[];
  totalHoursAllocated: number;
  coverage: Record<string, number>;
  weekGoal: string;
}

interface ActivePlan {
  id: number;
  week_start: string;
  plan_json: PlannerOutput;
  original_plan_json: PlannerOutput;
  active: boolean;
  updated_at?: string;
}

const DAYS_IN_ORDER = [
  "monday",
  "tuesday",
  "wednesday",
  "thursday",
  "friday",
  "saturday",
  "sunday",
];

function formatDay(d: string): string {
  return d.charAt(0).toUpperCase() + d.slice(1);
}

function sessionBadge(t: SessionType): { label: string; className: string } {
  switch (t) {
    case "drill":
      return { label: "Drill", className: "bg-tz-blue/10 text-tz-blue" };
    case "review":
      return { label: "Review", className: "bg-tz-green/10 text-tz-green" };
    case "timed_test":
      return { label: "Timed test", className: "bg-tz-orange/10 text-tz-orange" };
    case "mixed":
    default:
      return { label: "Mixed", className: "bg-tz-gray-100 text-tz-gray-700" };
  }
}

export default function AIPlan() {
  const navigate = useNavigate();
  const { user, isPending } = useAuth();
  const profile = user?.profile;

  const [plan, setPlan] = useState<ActivePlan | null>(null);
  const [draftWeek, setDraftWeek] = useState<PlanDay[] | null>(null);
  const [loading, setLoading] = useState(true);
  const [generating, setGenerating] = useState(false);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [dirty, setDirty] = useState(false);

  // Inputs for the "Generate plan" form when no active plan exists.
  const [testDate, setTestDate] = useState<string>(profile?.testDate ?? "");
  const [hours, setHours] = useState<number>(() => {
    const fromProfile = Number(profile?.studyHoursPerWeek);
    return Number.isFinite(fromProfile) && fromProfile > 0 ? fromProfile : 5;
  });

  const loadActive = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const res = await fetch("/api/plan/active", { credentials: "include" });
      if (!res.ok) {
        if (res.status === 401) {
          setError("Sign in to view your study plan.");
          setPlan(null);
        } else {
          setError(`Failed to load plan (${res.status})`);
        }
        return;
      }
      const json = await res.json();
      const fetched: ActivePlan | null = json?.plan ?? null;
      setPlan(fetched);
      setDraftWeek(fetched?.plan_json?.week ?? null);
      setDirty(false);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Failed to load plan");
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    if (!isPending) loadActive();
  }, [isPending, loadActive]);

  const generate = useCallback(async () => {
    if (!testDate) {
      setError("Pick a test date first.");
      return;
    }
    if (!Number.isFinite(hours) || hours <= 0) {
      setError("Hours per week must be positive.");
      return;
    }
    setGenerating(true);
    setError(null);
    try {
      const res = await fetch("/api/agents/planner", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ testDate, hoursPerWeek: hours }),
      });
      const json = await res.json().catch(() => null);
      if (!res.ok) {
        setError(json?.error ?? "Plan generation failed");
        return;
      }
      // Refetch the active plan so we have id + canonical state.
      await loadActive();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Plan generation failed");
    } finally {
      setGenerating(false);
    }
  }, [testDate, hours, loadActive]);

  const save = useCallback(async () => {
    if (!plan || !draftWeek) return;
    setSaving(true);
    setError(null);
    try {
      const next: PlannerOutput = {
        ...plan.plan_json,
        week: draftWeek,
      };
      const res = await fetch("/api/plan/save", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ plan_id: plan.id, plan_json: next }),
      });
      const json = await res.json().catch(() => null);
      if (!res.ok) {
        setError(json?.error ?? "Save failed");
        return;
      }
      setPlan({ ...plan, plan_json: next });
      setDirty(false);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Save failed");
    } finally {
      setSaving(false);
    }
  }, [plan, draftWeek]);

  // Native HTML5 drag-and-drop. dragSource holds the source day + session
  // index; on drop we splice out, push into the target day, and mark dirty.
  const [dragSource, setDragSource] = useState<{ dayIdx: number; sessIdx: number } | null>(null);

  const onDragStart = (dayIdx: number, sessIdx: number) =>
    setDragSource({ dayIdx, sessIdx });

  const onDragOver = (e: React.DragEvent<HTMLElement>) => e.preventDefault();

  const onDrop = (targetDayIdx: number) => {
    if (!dragSource || !draftWeek) return;
    if (dragSource.dayIdx === targetDayIdx) {
      setDragSource(null);
      return;
    }
    const next = draftWeek.map((d) => ({ ...d, sessions: [...d.sessions] }));
    const [moved] = next[dragSource.dayIdx].sessions.splice(dragSource.sessIdx, 1);
    next[targetDayIdx].sessions.push(moved);
    setDraftWeek(next);
    setDirty(true);
    setDragSource(null);
  };

  const removeSession = (dayIdx: number, sessIdx: number) => {
    if (!draftWeek) return;
    const next = draftWeek.map((d) => ({ ...d, sessions: [...d.sessions] }));
    next[dayIdx].sessions.splice(sessIdx, 1);
    setDraftWeek(next);
    setDirty(true);
  };

  const totals = useMemo(() => {
    if (!draftWeek) return { totalMin: 0, byDay: [] as number[] };
    const byDay = draftWeek.map((d) =>
      d.sessions.reduce((s, sess) => s + sess.durationMin, 0)
    );
    const totalMin = byDay.reduce((a, b) => a + b, 0);
    return { totalMin, byDay };
  }, [draftWeek]);

  const startSession = (sess: PlanSession) => {
    navigate(`/practice?skill=${encodeURIComponent(sess.focusSkill)}`);
  };

  // Empty state — no active plan yet. Show the generate-plan form.
  if (loading) {
    return (
      <AppLayout>
        <div className="flex items-center justify-center py-20">
          <Loader2 className="w-6 h-6 animate-spin text-tz-blue" />
        </div>
      </AppLayout>
    );
  }

  if (!plan || !draftWeek) {
    return (
      <AppLayout>
        <div className="max-w-2xl">
          <h2 className="text-xl sm:text-h2 text-tz-navy mb-2">Your study plan</h2>
          <p className="text-tz-gray-600 mb-6">
            Generate a personalized weekly plan based on your diagnosed weaknesses.
          </p>

          <div className="bg-white rounded-xl border border-tz-gray-200 p-6 space-y-4">
            <label className="block">
              <span className="text-sm font-medium text-tz-navy">Test date</span>
              <input
                type="date"
                value={testDate}
                onChange={(e) => setTestDate(e.target.value)}
                className="mt-1 block w-full rounded-md border border-tz-gray-300 px-3 py-2"
              />
            </label>
            <label className="block">
              <span className="text-sm font-medium text-tz-navy">
                Study hours per week ({hours})
              </span>
              <input
                type="range"
                min={1}
                max={20}
                value={hours}
                onChange={(e) => setHours(Number(e.target.value))}
                className="mt-1 block w-full"
              />
              <div className="flex justify-between text-xs text-tz-gray-500 mt-1">
                <span>1h</span>
                <span>20h</span>
              </div>
            </label>
            {error && (
              <div className="rounded-md border border-red-200 bg-red-50 p-3 text-sm text-red-700">
                {error}
              </div>
            )}
            <Button
              onClick={generate}
              disabled={generating}
              className="w-full sm:w-auto bg-tz-orange hover:bg-tz-orange/90 text-white"
            >
              {generating ? (
                <>
                  <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                  Generating…
                </>
              ) : (
                <>
                  <Sparkles className="w-4 h-4 mr-2" />
                  Generate plan
                </>
              )}
            </Button>
          </div>
        </div>
      </AppLayout>
    );
  }

  const totalBudgetMin =
    Number.isFinite(Number(profile?.studyHoursPerWeek))
      ? Number(profile?.studyHoursPerWeek) * 60
      : hours * 60;
  const totalAllocatedH = (totals.totalMin / 60).toFixed(1);
  const totalBudgetH = (totalBudgetMin / 60).toFixed(0);

  return (
    <AppLayout>
      <div className="max-w-6xl">
        <header className="flex items-start justify-between flex-wrap gap-3 mb-4">
          <div>
            <h2 className="text-xl sm:text-h2 text-tz-navy flex items-center gap-2">
              <Calendar className="w-5 h-5 text-tz-orange" />
              Week of {plan.week_start}
            </h2>
            <p className="text-sm text-tz-gray-600 mt-1">
              {plan.plan_json.weekGoal}
            </p>
          </div>
          <div className="flex items-center gap-2">
            <div className="text-sm text-tz-gray-600 mr-2 flex items-center gap-1">
              <Clock className="w-4 h-4" />
              <span className="tabular-nums">
                {totalAllocatedH}h
              </span>
              <span className="text-tz-gray-400">/ {totalBudgetH}h budget</span>
            </div>
            <Button
              variant="outline"
              onClick={save}
              disabled={!dirty || saving}
              className="gap-1"
            >
              {saving ? <Loader2 className="w-4 h-4 animate-spin" /> : <Save className="w-4 h-4" />}
              Save
            </Button>
            <Button
              variant="outline"
              onClick={generate}
              disabled={generating}
              className="gap-1"
            >
              {generating ? <Loader2 className="w-4 h-4 animate-spin" /> : <RefreshCw className="w-4 h-4" />}
              Regenerate
            </Button>
          </div>
        </header>

        {error && (
          <div className="mb-4 rounded-md border border-red-200 bg-red-50 p-3 text-sm text-red-700">
            {error}
          </div>
        )}

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-7 gap-3">
          {DAYS_IN_ORDER.map((dayName, dayIdx) => {
            const day = draftWeek.find((d) => d.day === dayName);
            const dayMin = day?.sessions.reduce((s, sess) => s + sess.durationMin, 0) ?? 0;
            const dayDate = day?.date ? new Date(day.date) : null;
            const overBudget = dayMin > 120;
            const realDayIdx = day ? draftWeek.indexOf(day) : dayIdx;
            return (
              <div
                key={dayName}
                onDragOver={onDragOver}
                onDrop={() => onDrop(realDayIdx)}
                className={cn(
                  "rounded-xl border bg-white p-3 min-h-[180px] flex flex-col",
                  overBudget ? "border-red-300" : "border-tz-gray-200"
                )}
              >
                <div className="mb-2">
                  <div className="text-xs uppercase tracking-wide text-tz-gray-500">
                    {formatDay(dayName)}
                  </div>
                  <div className="text-sm text-tz-gray-700 tabular-nums">
                    {dayDate
                      ? dayDate.toLocaleDateString("en-US", { month: "short", day: "numeric" })
                      : "—"}
                    <span className="text-tz-gray-400 ml-2">{dayMin}m</span>
                  </div>
                </div>
                <div className="flex-1 space-y-2">
                  {day && day.sessions.length > 0 ? (
                    day.sessions.map((sess, sessIdx) => {
                      const badge = sessionBadge(sess.sessionType);
                      return (
                        <article
                          key={sess.id}
                          draggable
                          onDragStart={() => onDragStart(realDayIdx, sessIdx)}
                          className="rounded-lg border border-tz-gray-200 bg-tz-gray-50 p-2 cursor-grab active:cursor-grabbing hover:border-tz-blue/40"
                        >
                          <div className="flex items-start gap-1.5">
                            <GripVertical className="w-3 h-3 text-tz-gray-400 mt-1 flex-shrink-0" />
                            <div className="min-w-0 flex-1">
                              <div className="flex items-center justify-between gap-1.5 flex-wrap">
                                <span className={cn("text-[10px] uppercase font-semibold rounded px-1.5 py-0.5", badge.className)}>
                                  {badge.label}
                                </span>
                                <span className="text-xs text-tz-gray-600 tabular-nums">
                                  {sess.durationMin}m
                                </span>
                              </div>
                              <div className="text-sm font-medium text-tz-navy mt-1 truncate">
                                {topicDisplayNames[sess.focusSkill] ?? sess.focusSkillDisplay}
                              </div>
                              <p className="text-[11px] text-tz-gray-500 leading-snug mt-1 line-clamp-3">
                                {sess.rationale}
                              </p>
                              <div className="flex items-center gap-1 mt-2">
                                <button
                                  onClick={() => startSession(sess)}
                                  className="text-[11px] inline-flex items-center gap-0.5 text-tz-blue hover:underline"
                                >
                                  <PlayCircle className="w-3 h-3" /> Start
                                </button>
                                <button
                                  onClick={() => removeSession(realDayIdx, sessIdx)}
                                  className="text-[11px] text-tz-gray-400 hover:text-red-500 ml-auto"
                                >
                                  Remove
                                </button>
                              </div>
                            </div>
                          </div>
                        </article>
                      );
                    })
                  ) : (
                    <div className="text-xs text-tz-gray-400 py-4 text-center border border-dashed border-tz-gray-200 rounded-lg">
                      Drop here
                    </div>
                  )}
                </div>
                {overBudget && (
                  <p className="text-[11px] text-red-600 mt-2">Over the 2-hour daily cap.</p>
                )}
              </div>
            );
          })}
        </div>

        <section className="mt-6 bg-white rounded-xl border border-tz-gray-200 p-4">
          <h3 className="text-sm font-semibold text-tz-navy flex items-center gap-1 mb-3">
            <Target className="w-4 h-4" /> Coverage by skill
          </h3>
          <div className="flex flex-wrap gap-2">
            {Object.entries(plan.plan_json.coverage).map(([skill, min]) => (
              <span
                key={skill}
                className="text-xs rounded-full bg-tz-gray-100 px-2.5 py-1 text-tz-gray-700"
              >
                {topicDisplayNames[skill] ?? skill} · {min}m
              </span>
            ))}
          </div>
        </section>
      </div>
    </AppLayout>
  );
}
