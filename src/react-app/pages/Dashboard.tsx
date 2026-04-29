import { useEffect, useMemo, useState } from "react";
import { useNavigate } from "react-router";
import { AppLayout } from "@/react-app/components/layout/AppLayout";
import { useStudentProgress } from "@/react-app/hooks/useStudentProgress";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { getSkillCounts, topicDisplayNames, type SkillCounts } from "@/data/questions";
import {
  DOMAINS_IN_ORDER,
  SKILLS_BY_DOMAIN,
} from "@/react-app/lib/sat-taxonomy";
import { TrendingUp, TrendingDown, Minus, Target, Clock, Flame, AlertTriangle, Calculator, BookOpen, BarChart2, ChevronRight, Sparkles } from "lucide-react";
import { cn } from "@/react-app/lib/utils";

export default function Dashboard() {
  const navigate = useNavigate();
  const { user, isPending } = useAuth();
  const { progress, isLoaded, getWeakestTopics, refreshFromServer } = useStudentProgress();
  // Refetch on focus / visibility change so coming back from a practice
  // session immediately reflects new attempts. Without this, the dashboard
  // can sit on stale localStorage data that pre-dates the session.
  useEffect(() => {
    if (!user) return;
    const onFocus = () => refreshFromServer();
    const onVis = () => {
      if (document.visibilityState === "visible") refreshFromServer();
    };
    window.addEventListener("focus", onFocus);
    document.addEventListener("visibilitychange", onVis);
    return () => {
      window.removeEventListener("focus", onFocus);
      document.removeEventListener("visibilitychange", onVis);
    };
  }, [user, refreshFromServer]);

  // Live question counts for the "Browse all skills" card. Pulled from the
  // in-memory cache in questions.ts — no extra Supabase round-trip.
  const [counts, setCounts] = useState<SkillCounts | null>(null);
  useEffect(() => {
    let cancelled = false;
    getSkillCounts().then((c) => {
      if (!cancelled) setCounts(c);
    });
    return () => {
      cancelled = true;
    };
  }, []);

  // Recent insights — latest non-dismissed Reviewer patterns. Auth-only;
  // anonymous users get an empty array from the endpoint. Refreshed on mount;
  // no polling — the dashboard isn't a live feed.
  interface RecentInsight {
    review_id: number;
    pattern: string;
    severity: string;
    type: string;
    evidence: string;
    created_at: string;
  }
  const [recentInsights, setRecentInsights] = useState<RecentInsight[]>([]);
  useEffect(() => {
    let cancelled = false;
    fetch("/api/reviewer/recent-insights", { credentials: "include" })
      .then((r) => (r.ok ? r.json() : { insights: [] }))
      .then((j) => {
        if (cancelled) return;
        if (Array.isArray(j?.insights)) setRecentInsights(j.insights);
      })
      .catch(() => {
        // Silent fail — insights are nice-to-have, not required.
      });
    return () => {
      cancelled = true;
    };
  }, []);

  // Up-next from the active study plan: today's full session list (so users
  // can pick from multiple), plus a look-ahead to the next non-empty day if
  // today is empty. The "Start" button on each card jumps straight to the
  // practice runner pre-filtered to that skill.
  interface PlannedSession {
    durationMin: number;
    focusSkill: string;
    focusSkillDisplay: string;
    rationale: string;
    sessionType?: string;
    /** "Today" when this is on the current weekday, otherwise "Tuesday", etc. */
    dayLabel: string;
  }
  const [planSessions, setPlanSessions] = useState<PlannedSession[]>([]);
  // hasActivePlan === null  → still loading
  // hasActivePlan === true  → active plan exists (planSessions may still be empty if nothing within the next 7 days)
  // hasActivePlan === false → no active plan at all
  const [hasActivePlan, setHasActivePlan] = useState<boolean | null>(null);
  useEffect(() => {
    if (!user) {
      setHasActivePlan(null);
      return;
    }
    let cancelled = false;
    const fetchPlan = async () => {
      try {
        const r = await fetch("/api/plan/active", { credentials: "include" });
        if (!r.ok) {
          if (!cancelled) {
            setHasActivePlan(false);
            setPlanSessions([]);
          }
          return;
        }
        const j = await r.json();
        const week = j?.plan?.plan_json?.week as
          | Array<{ day?: string; sessions?: Array<{ durationMin?: number; focusSkill?: string; focusSkillDisplay?: string; rationale?: string; sessionType?: string }> }>
          | undefined;
        if (cancelled) return;

        // No plan row at all → distinct empty state.
        if (!j?.plan) {
          setHasActivePlan(false);
          setPlanSessions([]);
          return;
        }
        setHasActivePlan(true);

        if (!Array.isArray(week) || week.length === 0) {
          setPlanSessions([]);
          return;
        }

        const weekdayOrder = ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"];
        const todayName = new Date()
          .toLocaleDateString("en-US", { weekday: "long" })
          .toLowerCase();
        const todayIdx = weekdayOrder.indexOf(todayName);

        // Walk forward from today through the week; first day with sessions wins.
        let chosenDay: { day?: string; sessions?: Array<{ durationMin?: number; focusSkill?: string; focusSkillDisplay?: string; rationale?: string; sessionType?: string }> } | undefined;
        let chosenDayName = "";
        for (let i = 0; i < 7; i++) {
          const wd = weekdayOrder[(todayIdx + i) % 7];
          const day = week.find((d) => typeof d.day === "string" && d.day.toLowerCase() === wd);
          if (day && Array.isArray(day.sessions) && day.sessions.length > 0) {
            chosenDay = day;
            chosenDayName = wd;
            break;
          }
        }
        if (!chosenDay || !Array.isArray(chosenDay.sessions)) {
          setPlanSessions([]);
          return;
        }

        const dayLabel = chosenDayName === todayName
          ? "Today"
          : chosenDayName.charAt(0).toUpperCase() + chosenDayName.slice(1);

        setPlanSessions(
          chosenDay.sessions
            .filter((s) => typeof s?.focusSkill === "string" && s.focusSkill.length > 0)
            .map((s) => ({
              durationMin: typeof s.durationMin === "number" ? s.durationMin : 25,
              focusSkill: s.focusSkill as string,
              focusSkillDisplay: s.focusSkillDisplay ?? (s.focusSkill as string),
              rationale: s.rationale ?? "",
              sessionType: typeof s.sessionType === "string" ? s.sessionType : undefined,
              dayLabel,
            }))
        );
      } catch {
        // Transient error — keep last-known state, fallback card covers it.
      }
    };
    fetchPlan();
    // Refetch on tab/window focus and on a custom event the StudyPlan page
    // dispatches after every successful save. Without these, the dashboard
    // could show stale data after the user edits or generates a plan.
    const onFocus = () => fetchPlan();
    const onVis = () => {
      if (document.visibilityState === "visible") fetchPlan();
    };
    const onPlanUpdated = () => fetchPlan();
    window.addEventListener("focus", onFocus);
    document.addEventListener("visibilitychange", onVis);
    window.addEventListener("tutorzero:plan-updated", onPlanUpdated);
    return () => {
      cancelled = true;
      window.removeEventListener("focus", onFocus);
      document.removeEventListener("visibilitychange", onVis);
      window.removeEventListener("tutorzero:plan-updated", onPlanUpdated);
    };
  }, [user]);

  // Baseline score — the student's FIRST diagnosis. Used to show real
  // "+X from start" deltas. Auth-only; anon users see "Complete diagnostic".
  const [baselineTotal, setBaselineTotal] = useState<number | null>(null);
  useEffect(() => {
    if (!user) return;
    let cancelled = false;
    fetch("/api/user/baseline-score", { credentials: "include" })
      .then((r) => (r.ok ? r.json() : null))
      .then((j) => {
        if (cancelled || !j) return;
        const total = (j.baselineMath ?? 0) + (j.baselineRw ?? 0);
        if (total > 0) setBaselineTotal(total);
      })
      .catch(() => {
        /* no baseline yet — show "Complete diagnostic" subtext */
      });
    return () => {
      cancelled = true;
    };
  }, [user]);

  const domainsBySection = useMemo(() => {
    const groups: Record<"math" | "reading" | "writing", typeof DOMAINS_IN_ORDER> = {
      math: [],
      reading: [],
      writing: [],
    };
    for (const d of DOMAINS_IN_ORDER) groups[d.section].push(d);
    return groups;
  }, []);

  const goToDomain = (domainSlug: string) =>
    navigate(`/practice/session?topic=${encodeURIComponent(domainSlug)}`);
  const goToSkill = (skillSlug: string) =>
    navigate(`/practice/session?skills=${encodeURIComponent(skillSlug)}`);

  if (!isLoaded || isPending) {
    return (
      <AppLayout>
        <div className="animate-pulse space-y-6">
          <div className="h-8 w-48 sm:w-64 bg-tz-gray-200 rounded" />
          <div className="grid grid-cols-2 gap-3 sm:gap-4 lg:grid-cols-4">
            {[...Array(4)].map((_, i) => (
              <div key={i} className="h-24 sm:h-28 bg-white rounded-lg border border-tz-gray-200" />
            ))}
          </div>
        </div>
      </AppLayout>
    );
  }

  const profile = user?.profile;
  const displayName = profile?.displayName || user?.google_user_data?.given_name || "Student";

  // Calculate stats. Server-authoritative predicted scores live on the profile
  // (Diagnostician seeds them, Reviewer updates them post-session). Fall back
  // to the client-side progress estimate for anonymous / pre-diagnostic users.
  const serverMath = profile?.estimatedMathScore;
  const serverRW = profile?.estimatedRWScore;
  const estimatedMath = serverMath ?? progress.estimatedMathScore;
  const estimatedRW = serverRW ?? progress.estimatedRWScore;
  const estimatedTotal = estimatedMath + estimatedRW;
  // Real baseline: student's FIRST diagnosis total (math + rw). When the
  // baseline endpoint hasn't returned yet — or there's no diagnosis — leave
  // null so the subtext shows "Complete diagnostic" instead of a fake delta.
  const scoreChange = baselineTotal !== null ? estimatedTotal - baselineTotal : null;

  // Sessions this week
  const sessionsThisWeek = progress.sessions.filter(s => {
    const weekAgo = new Date();
    weekAgo.setDate(weekAgo.getDate() - 7);
    return new Date(s.date) > weekAgo;
  }).length;
  
  // Get weakest topic
  const weakTopics = getWeakestTopics(1);
  const weakestTopic = weakTopics[0];
  const weakestAccuracy = weakestTopic?.questionsAttempted > 0 
    ? Math.round((weakestTopic.questionsCorrect / weakestTopic.questionsAttempted) * 100)
    : null;

  // Get all topics sorted by weakness for progress bars
  const allTopics = Object.entries(progress.topicProgress)
    .map(([topic, data]) => ({
      topic,
      name: topicDisplayNames[topic] || topic,
      accuracy: data.questionsAttempted > 0 
        ? Math.round((data.questionsCorrect / data.questionsAttempted) * 100)
        : 0,
      attempted: data.questionsAttempted,
    }))
    .filter(t => t.attempted > 0)
    .sort((a, b) => a.accuracy - b.accuracy)
    .slice(0, 6);

  const getBarColor = (accuracy: number) => {
    if (accuracy < 40) return "bg-red-500";
    if (accuracy < 65) return "bg-tz-orange";
    if (accuracy < 85) return "bg-tz-blue";
    return "bg-tz-green";
  };

  return (
    <AppLayout>
      <div className="max-w-5xl">
        {/* Welcome */}
        <h2 className="text-xl sm:text-h2 text-tz-navy mb-4 sm:mb-6">
          Welcome back, {displayName}
        </h2>

        {/* Stat Cards */}
        <div className="grid grid-cols-2 gap-3 sm:gap-4 lg:grid-cols-4 mb-8 sm:mb-10">
          <StatCard
            icon={<Target className="w-4 h-4" />}
            label="Predicted Score"
            value={estimatedTotal.toString()}
            subtext={
              scoreChange !== null ? (
                <span className={cn(
                  "flex items-center gap-1",
                  scoreChange > 0 ? "text-tz-green" : scoreChange < 0 ? "text-red-500" : "text-tz-gray-400"
                )}>
                  {scoreChange > 0 ? <TrendingUp className="w-3 h-3" /> : 
                   scoreChange < 0 ? <TrendingDown className="w-3 h-3" /> : 
                   <Minus className="w-3 h-3" />}
                  <span className="hidden sm:inline">{scoreChange > 0 ? "+" : ""}{scoreChange} from start</span>
                  <span className="sm:hidden">{scoreChange > 0 ? "+" : ""}{scoreChange}</span>
                </span>
              ) : (
                <span className="text-tz-gray-400 text-xs">Complete diagnostic</span>
              )
            }
          />

          <StatCard
            icon={<Clock className="w-4 h-4" />}
            label="This Week"
            value={sessionsThisWeek.toString()}
            unit="sessions"
            subtext={
              <span className="text-tz-gray-400">{sessionsThisWeek} completed</span>
            }
          />

          <StatCard
            icon={<Flame className="w-4 h-4" />}
            label="Streak"
            value={(user?.profile?.streakDays ?? progress.currentStreak ?? 0).toString()}
            unit="days"
            subtext={
              <span className="text-tz-gray-400">Best: {Math.max(user?.profile?.streakDays ?? 0, progress.longestStreak ?? 0)}d</span>
            }
          />

          <StatCard
            icon={<AlertTriangle className="w-4 h-4" />}
            label="Focus Area"
            value={weakestTopic ? topicDisplayNames[weakestTopic.topic] : "—"}
            isText
            subtext={
              weakestTopic ? (
                <span className={cn(
                  weakestAccuracy !== null && weakestAccuracy < 50 ? "text-tz-orange" : "text-tz-green"
                )}>
                  {weakestAccuracy !== null && weakestAccuracy >= 50 ? "Improving" : "Needs work"}
                </span>
              ) : (
                <span className="text-tz-gray-400">Start practicing</span>
              )
            }
          />
        </div>

        {/* What's scheduled — pulled from the active study plan. Shows every
            session for today (or the next non-empty day), with a Start button
            on each that goes straight to /practice/session?skills=<slug>. */}
        {planSessions.length > 0 ? (
          <div className="mb-6 sm:mb-8 space-y-3">
            {/* Hero card for the first session */}
            <button
              onClick={() =>
                navigate(`/practice/session?skills=${encodeURIComponent(planSessions[0].focusSkill)}`)
              }
              className="w-full text-left rounded-xl bg-tz-navy text-white p-4 sm:p-5 shadow-sm hover:bg-[#0c1a36] transition-colors"
            >
              <div className="flex items-center justify-between gap-3">
                <div className="min-w-0">
                  <div className="text-xs uppercase tracking-wide text-white/60">
                    {planSessions[0].dayLabel === "Today" ? "Today's session" : `Up next · ${planSessions[0].dayLabel}`}
                  </div>
                  <div className="text-base sm:text-lg font-semibold mt-0.5 truncate">
                    {planSessions[0].durationMin} min · {topicDisplayNames[planSessions[0].focusSkill] ?? planSessions[0].focusSkillDisplay}
                  </div>
                  {planSessions[0].rationale && (
                    <p className="text-xs sm:text-sm text-white/70 mt-1 line-clamp-2">
                      {planSessions[0].rationale}
                    </p>
                  )}
                </div>
                <span className="inline-flex items-center gap-1 rounded-full bg-tz-orange px-3 py-1.5 text-sm font-medium text-white flex-shrink-0">
                  Start <ChevronRight className="w-4 h-4" />
                </span>
              </div>
            </button>

            {/* Other sessions for the same day, if any. */}
            {planSessions.length > 1 && (
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-2 sm:gap-3">
                {planSessions.slice(1).map((s, i) => (
                  <button
                    key={i}
                    onClick={() =>
                      navigate(`/practice/session?skills=${encodeURIComponent(s.focusSkill)}`)
                    }
                    className="text-left rounded-lg bg-white border border-tz-gray-200 p-3 sm:p-4 hover:border-tz-blue hover:shadow-sm transition-all"
                  >
                    <div className="flex items-center justify-between gap-2">
                      <div className="min-w-0">
                        <div className="text-xs text-tz-gray-400">
                          {s.dayLabel === "Today" ? "Also today" : s.dayLabel}
                          {s.sessionType ? ` · ${s.sessionType.replace("_", " ")}` : ""}
                        </div>
                        <div className="text-sm font-medium text-tz-navy mt-0.5 truncate">
                          {s.durationMin} min · {topicDisplayNames[s.focusSkill] ?? s.focusSkillDisplay}
                        </div>
                      </div>
                      <ChevronRight className="w-4 h-4 text-tz-gray-400 flex-shrink-0" />
                    </div>
                  </button>
                ))}
              </div>
            )}
          </div>
        ) : hasActivePlan === true ? (
          // Plan exists, but nothing scheduled in the next 7 days. Don't
          // pretend the user has no plan — direct them back to /study-plan
          // so they can schedule something instead of starting a generic
          // practice session.
          <div className="mb-6 sm:mb-8">
            <button
              onClick={() => navigate("/study-plan")}
              className="w-full text-left rounded-xl bg-white border border-tz-gray-200 p-4 sm:p-5 shadow-sm hover:border-tz-blue hover:shadow-md transition-all"
            >
              <div className="flex items-center justify-between gap-3">
                <div className="min-w-0">
                  <div className="text-xs uppercase tracking-wide text-tz-gray-400">Your plan</div>
                  <div className="text-base sm:text-lg font-semibold mt-0.5 text-tz-navy">
                    Nothing scheduled this week
                  </div>
                  <p className="text-xs sm:text-sm text-tz-gray-600 mt-1">
                    Open your study plan to add a session for today or this week.
                  </p>
                </div>
                <span className="inline-flex items-center gap-1 rounded-full bg-tz-blue px-3 py-1.5 text-sm font-medium text-white flex-shrink-0">
                  Open plan <ChevronRight className="w-4 h-4" />
                </span>
              </div>
            </button>
          </div>
        ) : (
          // hasActivePlan === null (still loading) OR === false (no plan yet)
          <div className="mb-6 sm:mb-8">
            <button
              onClick={() => navigate("/practice")}
              className="w-full text-left rounded-xl bg-tz-navy text-white p-4 sm:p-5 shadow-sm hover:bg-[#0c1a36] transition-colors"
            >
              <div className="flex items-center justify-between gap-3">
                <div className="min-w-0">
                  <div className="text-xs uppercase tracking-wide text-white/60">Ready to practice?</div>
                  <div className="text-base sm:text-lg font-semibold mt-0.5">
                    Start a session
                  </div>
                  <p className="text-xs sm:text-sm text-white/70 mt-1">
                    Pick a topic or skill — the AI adapts in real time.
                  </p>
                </div>
                <span className="inline-flex items-center gap-1 rounded-full bg-tz-orange px-3 py-1.5 text-sm font-medium text-white flex-shrink-0">
                  Start <ChevronRight className="w-4 h-4" />
                </span>
              </div>
            </button>
            {hasActivePlan === false && (
              <button
                onClick={() => navigate("/study-plan")}
                className="mt-2 w-full sm:w-auto inline-flex items-center gap-1.5 text-sm text-tz-blue hover:text-[#005a9e] transition-colors"
              >
                <Sparkles className="w-3.5 h-3.5" />
                Generate a personalized study plan
                <ChevronRight className="w-3.5 h-3.5" />
              </button>
            )}
          </div>
        )}

        {/* Recent insights — pulled from non-dismissed Reviewer patterns. */}
        {recentInsights.length > 0 && (
          <div className="mb-8 sm:mb-10">
            <h3 className="text-lg sm:text-h3 text-tz-navy mb-3 sm:mb-4 flex items-center gap-2">
              <Sparkles className="w-4 h-4 text-tz-orange" />
              Recent insights
            </h3>
            <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
              {recentInsights.map((ins) => {
                // Humanize the pattern slug ("overconfident_advanced_math" →
                // "Overconfident: advanced math") so the title is readable
                // instead of an internal token.
                const titleFromPattern = (() => {
                  const segments = ins.pattern.split("_");
                  if (segments.length === 0) return ins.pattern;
                  const head = segments[0].charAt(0).toUpperCase() + segments[0].slice(1);
                  const rest = segments.slice(1).join(" ");
                  return rest ? `${head}: ${rest}` : head;
                })();
                // Try to extract a domain or skill slug from the pattern so
                // we can offer a "Practice this" link. Look at the longest
                // suffix that matches a known slug.
                const knownSlugs = [
                  "algebra", "advanced_math", "problem_solving", "geometry",
                  "information_ideas", "craft_structure", "expression", "conventions",
                  "linear_equations_one_var", "linear_functions",
                  "linear_equations_two_var", "systems_of_linear_equations",
                  "linear_inequalities", "equivalent_expressions",
                  "nonlinear_equations", "nonlinear_functions",
                  "ratios_rates_proportions", "percentages",
                  "one_variable_data", "two_variable_data", "probability",
                  "inference_statistics", "evaluating_statistical_claims",
                  "area_and_volume", "lines_angles_triangles",
                  "right_triangles_trigonometry", "circles",
                  "central_ideas_details", "command_of_evidence", "inferences",
                  "cross_text_connections", "text_structure_purpose",
                  "words_in_context", "rhetorical_synthesis", "transitions",
                  "boundaries", "form_structure_sense",
                ].sort((a, b) => b.length - a.length); // longest first
                const matchedSlug = knownSlugs.find((s) => ins.pattern.endsWith(s));
                const practiceLabel = matchedSlug
                  ? topicDisplayNames[matchedSlug] ?? matchedSlug
                  : null;

                const sev = ins.severity === "high"
                  ? { dot: "bg-red-500", label: "High", text: "text-red-700" }
                  : ins.severity === "medium"
                  ? { dot: "bg-orange-500", label: "Medium", text: "text-orange-700" }
                  : { dot: "bg-tz-blue", label: "Low", text: "text-tz-blue" };

                const typeLabel = ins.type
                  .replace(/_/g, " ")
                  .replace(/\b\w/g, (c) => c.toUpperCase());

                const ago = (() => {
                  const ms = Date.now() - new Date(ins.created_at).getTime();
                  const days = Math.floor(ms / 86400000);
                  if (days < 1) return "Today";
                  if (days === 1) return "Yesterday";
                  if (days < 7) return `${days}d ago`;
                  return new Date(ins.created_at).toLocaleDateString("en-US", {
                    month: "short", day: "numeric",
                  });
                })();

                return (
                  <article
                    key={`${ins.review_id}-${ins.pattern}`}
                    className="bg-white border border-tz-gray-200 rounded-lg p-3 sm:p-4 flex flex-col"
                  >
                    {/* Header: severity dot + type tag + relative date */}
                    <div className="flex items-center justify-between gap-2 mb-2">
                      <div className="flex items-center gap-2 min-w-0">
                        <span
                          className={cn("inline-block w-2 h-2 rounded-full flex-shrink-0", sev.dot)}
                          aria-label={`${sev.label} severity`}
                        />
                        <span className={cn("text-xs font-semibold uppercase tracking-wide", sev.text)}>
                          {sev.label}
                        </span>
                        <span className="text-xs text-tz-gray-400">·</span>
                        <span className="text-xs text-tz-gray-500 truncate">{typeLabel}</span>
                      </div>
                      <span className="text-xs text-tz-gray-400 flex-shrink-0">{ago}</span>
                    </div>
                    {/* Title */}
                    <div className="text-sm font-semibold text-tz-navy leading-snug">
                      {titleFromPattern}
                    </div>
                    {/* Evidence */}
                    {ins.evidence && (
                      <p className="text-xs text-tz-gray-600 mt-1.5 leading-relaxed flex-1">
                        {ins.evidence}
                      </p>
                    )}
                    {/* CTA — only if we matched a known skill/domain. */}
                    {matchedSlug && practiceLabel && (
                      <button
                        onClick={() =>
                          navigate(`/practice/session?skills=${encodeURIComponent(matchedSlug)}`)
                        }
                        className="mt-3 self-start inline-flex items-center gap-1 text-xs font-medium text-tz-blue hover:text-[#005a9e] transition-colors"
                      >
                        Practice {practiceLabel}
                        <ChevronRight className="w-3.5 h-3.5" />
                      </button>
                    )}
                  </article>
                );
              })}
            </div>
          </div>
        )}

        {/* Start Practicing */}
        <div className="mb-8 sm:mb-10">
          <h3 className="text-lg sm:text-h3 text-tz-navy mb-3 sm:mb-4">Ready to practice?</h3>
          
          {/* Mobile: Stack vertically, Desktop: Flex wrap */}
          <div className="flex flex-col sm:flex-row gap-3">
            <SessionButton
              icon={<Calculator className="w-4 h-4" />}
              label="Math"
              count={20}
              onClick={() => navigate("/practice/session?section=math")}
            />
            <SessionButton
              icon={<BookOpen className="w-4 h-4" />}
              label="Reading & Writing"
              count={30}
              onClick={() => navigate("/practice/session?section=reading")}
            />
            <SessionButton
              icon={<BarChart2 className="w-4 h-4" />}
              label="Full Practice"
              count={54}
              onClick={() => navigate("/practice")}
            />
          </div>
        </div>

        {/* Progress Snapshot */}
        <div>
          <div className="flex items-baseline justify-between mb-3 sm:mb-4">
            <h3 className="text-lg sm:text-h3 text-tz-navy">Your Progress</h3>
            <button
              onClick={() => navigate("/progress")}
              className="text-xs sm:text-small text-tz-blue hover:text-[#005a9e] transition-colors inline-flex items-center gap-0.5"
            >
              See all <ChevronRight className="w-3.5 h-3.5" />
            </button>
          </div>

          {/* Empty-state precedence:
              - progress.sessions.length === 0 → user genuinely has no data
                yet (true empty state, friendly CTA).
              - allTopics empty but sessions exist → topicProgress hasn't
                hydrated yet from /api/user/progress; show a thin skeleton
                instead of the misleading "no data" copy. */}
          {progress.sessions.length === 0 ? (
            <div className="bg-white rounded-lg border border-tz-gray-200 p-6 sm:p-8 text-center">
              <p className="text-body text-tz-gray-600 mb-2">No practice data yet</p>
              <p className="text-xs sm:text-small text-tz-gray-400">
                Start a practice session to see your progress by topic
              </p>
            </div>
          ) : allTopics.length === 0 ? (
            <div className="bg-white rounded-lg border border-tz-gray-200 p-4 sm:p-6 space-y-3 animate-pulse">
              {[...Array(4)].map((_, i) => (
                <div key={i} className="flex items-center gap-4">
                  <div className="w-36 h-3 bg-tz-gray-100 rounded" />
                  <div className="flex-1 h-2 bg-tz-gray-100 rounded-full" />
                  <div className="w-10 h-3 bg-tz-gray-100 rounded" />
                </div>
              ))}
            </div>
          ) : (
            <div className="bg-white rounded-lg border border-tz-gray-200 p-4 sm:p-6 space-y-4">
              {allTopics.map((topic) => (
                <div key={topic.topic} className="space-y-1.5 sm:space-y-0 sm:flex sm:items-center sm:gap-4">
                  {/* Topic name - full width on mobile, fixed width on desktop */}
                  <div className="sm:w-36 lg:w-44 flex-shrink-0">
                    <span className="text-sm sm:text-body text-tz-navy line-clamp-1">{topic.name}</span>
                  </div>
                  {/* Bar and percentage */}
                  <div className="flex items-center gap-3 flex-1">
                    <div className="flex-1 h-2 bg-tz-gray-100 rounded-full overflow-hidden">
                      <div
                        className={cn("h-full rounded-full transition-all", getBarColor(topic.accuracy))}
                        style={{ width: `${topic.accuracy}%` }}
                      />
                    </div>
                    <div className="w-10 text-right">
                      <span className="text-sm font-semibold text-tz-navy">{topic.accuracy}%</span>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>

        {/* Browse all skills — full curriculum, click any row to deep-link
            into /practice/session filtered to that skill or domain. */}
        <div className="mt-8 sm:mt-10">
          <div className="flex items-baseline justify-between mb-3 sm:mb-4">
            <h3 className="text-lg sm:text-h3 text-tz-navy">Browse all skills</h3>
            <span className="text-xs sm:text-small text-tz-gray-400 tabular-nums">
              {counts?.total != null ? `${counts.total.toLocaleString()} questions` : "—"}
            </span>
          </div>
          <div className="bg-white rounded-lg border border-tz-gray-200 overflow-hidden">
            {(["math", "reading", "writing"] as const).map((section, sIdx) => (
              <div key={section} className={cn(sIdx > 0 && "border-t border-tz-gray-200")}>
                <div className="px-4 sm:px-5 pt-4 pb-1 text-[10px] sm:text-label text-tz-gray-400 tracking-wide uppercase">
                  {section === "reading" ? "Reading" : section === "writing" ? "Writing" : "Math"}
                </div>
                {domainsBySection[section].map((domain) => {
                  const domainCount = counts?.byDomain[domain.slug];
                  const skills = SKILLS_BY_DOMAIN[domain.slug] ?? [];
                  return (
                    <div key={domain.slug}>
                      <button
                        type="button"
                        onClick={() => goToDomain(domain.slug)}
                        className="group w-full flex items-center gap-3 pl-4 sm:pl-5 pr-4 py-2.5 text-left transition-colors hover:bg-tz-gray-100 focus-visible:outline-none focus-visible:bg-tz-gray-100"
                      >
                        <span className="flex-1 text-sm sm:text-base font-semibold text-tz-navy">
                          {domain.displayName}
                        </span>
                        <span className="text-xs text-tz-gray-400 tabular-nums">
                          {domainCount != null ? domainCount : "—"}
                        </span>
                        <ChevronRight className="w-4 h-4 text-tz-gray-400 group-hover:text-tz-blue transition-colors" />
                      </button>
                      {skills.map((skill) => {
                        const skillCount = counts?.bySkill[skill.slug];
                        return (
                          <button
                            key={skill.slug}
                            type="button"
                            onClick={() => goToSkill(skill.slug)}
                            className="group w-full flex items-center gap-3 pl-10 sm:pl-12 pr-4 py-2 text-left transition-colors hover:bg-tz-gray-100 focus-visible:outline-none focus-visible:bg-tz-gray-100"
                          >
                            <span className="flex-1 text-sm text-tz-gray-700 group-hover:text-tz-navy transition-colors">
                              {skill.displayName}
                            </span>
                            <span className="text-xs text-tz-gray-400 tabular-nums">
                              {skillCount != null ? skillCount : "—"}
                            </span>
                            <ChevronRight className="w-4 h-4 text-tz-gray-300 group-hover:text-tz-blue transition-colors" />
                          </button>
                        );
                      })}
                    </div>
                  );
                })}
              </div>
            ))}
          </div>
        </div>
      </div>
    </AppLayout>
  );
}

interface StatCardProps {
  icon: React.ReactNode;
  label: string;
  value: string;
  unit?: string;
  subtext: React.ReactNode;
  isText?: boolean;
}

function StatCard({ icon, label, value, unit, subtext, isText }: StatCardProps) {
  return (
    <div className="bg-white rounded-lg border border-tz-gray-200 p-3 sm:p-4 shadow-subtle">
      <div className="flex items-center gap-1.5 text-tz-gray-400 mb-1.5 sm:mb-2">
        {icon}
        <span className="text-[10px] sm:text-label uppercase tracking-wide">{label}</span>
      </div>
      <div className={cn(
        "text-tz-navy mb-0.5 sm:mb-1",
        isText ? "text-sm sm:text-body-strong line-clamp-1" : "text-xl sm:text-2xl font-bold"
      )}>
        {value}
        {unit && <span className="text-xs sm:text-sm font-normal text-tz-gray-400 ml-1">{unit}</span>}
      </div>
      <div className="text-[10px] sm:text-small">{subtext}</div>
    </div>
  );
}

interface SessionButtonProps {
  icon: React.ReactNode;
  label: string;
  count: number;
  onClick: () => void;
}

function SessionButton({ icon, label, count, onClick }: SessionButtonProps) {
  return (
    <button
      onClick={onClick}
      className="flex items-center justify-between sm:justify-start gap-3 px-4 sm:px-5 py-3 rounded-lg font-medium transition-all hover-scale w-full sm:w-auto bg-tz-blue text-white hover:bg-[#005a9e]"
    >
      <span className="flex items-center gap-2">
        {icon}
        {label}
      </span>
      <span className="text-xs sm:text-small text-blue-200">
        {count}q
      </span>
    </button>
  );
}
