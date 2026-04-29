import { useEffect, useState, useMemo } from "react";
import { AppLayout } from "@/react-app/components/layout/AppLayout";
import { useStudentProgress } from "@/react-app/hooks/useStudentProgress";
import { topicDisplayNames } from "@/data/questions";
import { cn } from "@/react-app/lib/utils";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { TrendingUp, Target, Clock, BarChart3, Flame, Sparkles, Calendar, Download } from "lucide-react";
import { downloadProgressReport } from "@/react-app/lib/pdfExport";
import {
  SKILLS_BY_DOMAIN,
  DOMAINS_IN_ORDER,
  skillSlugToDisplayName,
} from "@/react-app/lib/sat-taxonomy";

function formatRelativeDate(dateStr: string): string {
  const date = new Date(dateStr);
  const now = new Date();
  const diffMs = now.getTime() - date.getTime();
  const diffDays = Math.floor(diffMs / (1000 * 60 * 60 * 24));
  if (diffDays === 0) return "Today";
  if (diffDays === 1) return "Yesterday";
  if (diffDays < 7) return `${diffDays} days ago`;
  return date.toLocaleDateString("en-US", { month: "short", day: "numeric" });
}

interface CalibrationRow {
  confidence: string;
  expected: number;
  actual: number | null;
  n: number;
}

export default function Progress() {
  const { user } = useAuth();
  const { progress, getOverallStats } = useStudentProgress();
  const [activeTab, setActiveTab] = useState<"overview" | "topics" | "history">("overview");

  const profile = user?.profile;
  const stats = getOverallStats();

  const targetScore = profile?.targetScore || 1400;
  const testDate = profile?.testDate ? new Date(profile.testDate) : null;

  // Real per-bucket calibration sourced from attempts.confidence × is_correct.
  const [calibrationData, setCalibrationData] = useState<CalibrationRow[] | null>(null);
  useEffect(() => {
    if (!user) return;
    let cancelled = false;
    fetch("/api/user/calibration", { credentials: "include" })
      .then((r) => (r.ok ? r.json() : null))
      .then((j) => {
        if (cancelled) return;
        if (j?.success && Array.isArray(j.data)) setCalibrationData(j.data as CalibrationRow[]);
      })
      .catch(() => {
        // Card shows empty-state if the fetch fails; not worth surfacing.
      });
    return () => {
      cancelled = true;
    };
  }, [user]);

  // One bar per session, plotting the per-session estimated total score
  // (from ai_session_reviews) so this chart, the stat card, and the
  // trajectory all speak the same units. Falls back to an accuracy-derived
  // estimate for any session without a review yet. Micro-sessions (<3 q)
  // are filtered so a single accidental answer can't drop a 400-score bar.
  const scoreHistory = useMemo(() => {
    if (progress.sessions.length === 0) return [];
    return [...progress.sessions]
      .filter((s) => s.questionsAttempted >= 3)
      .sort((a, b) => new Date(a.date).getTime() - new Date(b.date).getTime())
      .map((session) => {
        const review =
          session.estimatedMathScore != null && session.estimatedRWScore != null
            ? session.estimatedMathScore + session.estimatedRWScore
            : null;
        const acc =
          session.questionsAttempted > 0
            ? session.questionsCorrect / session.questionsAttempted
            : 0;
        const accDerived = Math.round(400 + Math.min(1, Math.max(0, acc)) * 1200);
        return {
          date: formatRelativeDate(session.date),
          score: review ?? accDerived,
          timestamp: new Date(session.date).getTime(),
        };
      });
  }, [progress.sessions]);

  // Derive session list from real data. skillTrackedAttempted lets the row
  // render a footnote when only some of the session's questions have skill
  // identity recorded — so users can see why the heatmap may not reflect
  // every old question.
  const recentSessions = useMemo(() => {
    return progress.sessions.slice(0, 20).map((s, i) => ({
      id: i + 1,
      date: formatRelativeDate(s.date),
      type: s.type === "diagnostic" ? "Diagnostic" : "Practice",
      questions: s.questionsAttempted,
      skillTracked: s.skillTrackedAttempted ?? 0,
      accuracy: s.questionsAttempted > 0 ? Math.round((s.questionsCorrect / s.questionsAttempted) * 100) : 0,
      duration: Math.round(s.timeSpentSeconds / 60),
    }));
  }, [progress.sessions]);

  // Calculate topic mastery from progress
  const topicMastery = Object.entries(progress.topicProgress).map(([topic, data]) => ({
    topic,
    displayName: topicDisplayNames[topic] || topic,
    accuracy: data.questionsAttempted > 0 ? Math.round((data.questionsCorrect / data.questionsAttempted) * 100) : 0,
    total: data.questionsAttempted,
  })).filter(t => t.total > 0).sort((a, b) => b.total - a.total);

  // Handle PDF export
  const handleExportPDF = () => {
    downloadProgressReport({
      userName: user?.email?.split("@")[0] || "Student",
      currentScore: currentScore,
      targetScore,
      totalQuestions: stats.totalAttempted,
      totalCorrect: stats.totalCorrect,
      accuracy: stats.overallAccuracy * 100,
      studyTimeMinutes: stats.totalTimeMinutes,
      streak: profile?.streakDays ?? progress.currentStreak ?? 0,
      testDate: testDate || new Date(),
      scoreHistory,
      topicMastery: topicMastery.map(t => ({
        topic: t.displayName,
        accuracy: t.accuracy,
        total: t.total
      })),
      blindSpots: topicMastery
        .filter(t => t.accuracy < 60 && t.total >= 3)
        .map(t => ({
          topic: t.displayName,
          accuracy: t.accuracy,
          confidence: "Medium"
        }))
    });
  };

  // Current estimated score — derived from the same Bayesian-smoothed,
  // volume-weighted formula the sub-cards' raw counts come from, so a
  // student looking at "Math 438 · 2/10 · 20%" can hand-verify the score
  // matches the underlying accuracy. The previous version preferred the
  // profile.estimatedMathScore (LLM-emitted by Diagnostician/Reviewer)
  // which produced a card like "Math 640 · 2/10 · 20%" — a 73%-implying
  // score sitting above 20% raw accuracy, with no way for the student to
  // tell where the gap came from. sectionBreakdown is computed server-side
  // in /api/user/progress (worker:1156-1218); progress.estimatedMathScore
  // is the optimistic client-side mirror used pre-server-refresh.
  const mathBreakdown = progress.sectionBreakdown?.math ?? {
    score: progress.estimatedMathScore,
    attempted: 0, correct: 0, accuracy: 0,
  };
  const rwBreakdown = progress.sectionBreakdown?.rw ?? {
    score: progress.estimatedRWScore,
    attempted: 0, correct: 0, accuracy: 0,
  };
  const estimatedMath = mathBreakdown.score;
  const estimatedRW = rwBreakdown.score;
  const currentScore = estimatedMath + estimatedRW;
  const scoreChange = scoreHistory.length >= 2
    ? currentScore - scoreHistory[scoreHistory.length - 2].score
    : 0;

  // Y-axis floor for the trajectory chart. Hardcoded 900 used to clip any
  // baseline diagnostic that scored under 900 off the bottom of the chart.
  // Anchor 100 below the lowest historical point (or 400 absolute floor),
  // so every score plots inside the visible area.
  const yMin = useMemo(() => {
    const candidates = scoreHistory.map((p) => p.score);
    candidates.push(currentScore);
    return Math.max(400, Math.min(...candidates) - 100);
  }, [scoreHistory, currentScore]);

  // Calculate score trajectory projection
  const trajectoryData = useMemo(() => {
    const today = new Date();
    const daysUntilTest = testDate
      ? Math.ceil((testDate.getTime() - today.getTime()) / (1000 * 60 * 60 * 24))
      : 60;
    const weeksUntilTest = Math.ceil(daysUntilTest / 7);

    // Calculate weekly improvement rate from history
    const recentScores = scoreHistory.slice(-4);
    let avgWeeklyImprovement = 20; // default if not enough data
    if (recentScores.length >= 2) {
      let totalImprovement = 0;
      for (let i = 1; i < recentScores.length; i++) {
        totalImprovement += recentScores[i].score - recentScores[i - 1].score;
      }
      avgWeeklyImprovement = Math.round(totalImprovement / (recentScores.length - 1));
    }

    // Generate projection points
    const projectionPoints: { week: string; score: number; isProjected: boolean }[] = [];

    // Add historical points
    scoreHistory.forEach((point, i) => {
      projectionPoints.push({
        week: `W${i + 1}`,
        score: point.score,
        isProjected: false
      });
    });

    // Add projected points
    let projectedScore = currentScore;
    for (let i = 1; i <= Math.min(weeksUntilTest, 8); i++) {
      // Diminishing returns as you get closer to target
      const remainingGap = targetScore - projectedScore;
      const improvement = Math.min(avgWeeklyImprovement, remainingGap * 0.15);
      projectedScore = Math.round(projectedScore + improvement);
      projectionPoints.push({
        week: `W${scoreHistory.length + i}`,
        score: projectedScore,
        isProjected: true
      });
    }

    const finalProjectedScore = projectedScore;
    const projectedImprovement = finalProjectedScore - currentScore;

    return {
      points: projectionPoints,
      currentScore,
      projectedScore: finalProjectedScore,
      projectedImprovement,
      weeksUntilTest,
      daysUntilTest,
      avgWeeklyImprovement,
      targetScore,
      onTrack: finalProjectedScore >= targetScore * 0.9
    };
  }, [currentScore, scoreHistory, targetScore, testDate]);

  return (
    <AppLayout>
      <div className="max-w-5xl mx-auto px-4 lg:px-8 py-6 lg:py-8">
        {/* Header */}
        <div className="flex flex-col sm:flex-row sm:items-start sm:justify-between gap-4 mb-8">
          <div>
            <h1 className="text-h1 text-tz-navy mb-2">Your Progress</h1>
            <p className="text-body text-tz-gray-600">Track your improvement over time</p>
          </div>
          
          {/* Export Button — available to all users */}
          <button
            onClick={handleExportPDF}
            className="flex items-center gap-2 px-4 py-2 bg-tz-navy text-white rounded-lg text-sm font-medium hover:bg-tz-navy/90 transition-all"
          >
            <Download className="w-4 h-4" />
            <span className="hidden sm:inline">Export Report</span>
            <span className="sm:hidden">PDF</span>
          </button>
        </div>

        {/* Score Overview */}
        <div className="grid grid-cols-2 lg:grid-cols-4 gap-3 lg:gap-4 mb-8">
          {/* Estimated score card — totals + Math/R&W split. The total is
              the sum of the two section scores; each section comes from a
              Bayesian-smoothed, volume-weighted rollup of real practice
              attempts (worker calcSection / hook calcSectionScore). */}
          <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-5 col-span-2 lg:col-span-1">
            <div className="flex items-center justify-between gap-2 mb-2">
              <div className="flex items-center gap-2 text-small text-tz-gray-400">
                <Target className="w-4 h-4" />
                <span className="hidden sm:inline">Estimated Score</span>
                <span className="sm:hidden">Score</span>
              </div>
              <div className={cn(
                "text-small flex items-center gap-1",
                scoreChange >= 0 ? "text-tz-green" : "text-red-500"
              )}>
                <TrendingUp className={cn("w-4 h-4", scoreChange < 0 && "rotate-180")} />
                {scoreChange >= 0 ? "+" : ""}{scoreChange}
              </div>
            </div>
            <div className="text-2xl lg:text-display font-bold text-tz-navy leading-none">
              {currentScore}
            </div>
            <div className="text-xs text-tz-gray-400 mt-0.5">out of 1600</div>
            <div className="mt-3 grid grid-cols-2 gap-2">
              <div className="bg-tz-blue/5 border border-tz-blue/15 rounded-lg px-2 py-1.5">
                <div className="text-[10px] uppercase tracking-wide text-tz-gray-500">Math</div>
                <div className="text-base font-bold text-tz-navy leading-none mt-0.5">{estimatedMath}</div>
                <div className="text-[10px] text-tz-gray-500 mt-0.5">
                  {mathBreakdown.attempted > 0
                    ? `${mathBreakdown.correct}/${mathBreakdown.attempted} · ${Math.round(mathBreakdown.accuracy * 100)}%`
                    : "no practice yet"}
                </div>
              </div>
              <div className="bg-tz-blue/5 border border-tz-blue/15 rounded-lg px-2 py-1.5">
                <div className="text-[10px] uppercase tracking-wide text-tz-gray-500">R&amp;W</div>
                <div className="text-base font-bold text-tz-navy leading-none mt-0.5">{estimatedRW}</div>
                <div className="text-[10px] text-tz-gray-500 mt-0.5">
                  {rwBreakdown.attempted > 0
                    ? `${rwBreakdown.correct}/${rwBreakdown.attempted} · ${Math.round(rwBreakdown.accuracy * 100)}%`
                    : "no practice yet"}
                </div>
              </div>
            </div>
          </div>

          <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-5">
            <div className="flex items-center gap-2 text-small text-tz-gray-400 mb-2">
              <BarChart3 className="w-4 h-4" />
              <span>Accuracy</span>
            </div>
            <div className="text-2xl lg:text-display font-bold text-tz-navy">
              {stats.totalAttempted > 0 
                ? Math.round(stats.overallAccuracy * 100)
                : 0}%
            </div>
            <div className="text-small text-tz-gray-400 mt-1">
              {stats.totalCorrect}/{stats.totalAttempted}
            </div>
          </div>

          <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-5">
            <div className="flex items-center gap-2 text-small text-tz-gray-400 mb-2">
              <Clock className="w-4 h-4" />
              <span className="hidden sm:inline">Study Time</span>
              <span className="sm:hidden">Time</span>
            </div>
            <div className="text-2xl lg:text-display font-bold text-tz-navy">
              {stats.totalTimeMinutes}m
            </div>
            <div className="text-small text-tz-gray-400 mt-1">
              Total time
            </div>
          </div>

          <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-5">
            <div className="flex items-center gap-2 text-small text-tz-gray-400 mb-2">
              <Flame className="w-4 h-4" />
              <span>Streak</span>
            </div>
            <div className="text-2xl lg:text-display font-bold text-tz-navy">{profile?.streakDays ?? progress.currentStreak ?? 0}</div>
            <div className="text-small text-tz-gray-400 mt-1">
              Days
            </div>
          </div>
        </div>

        {/* Tabs */}
        <div className="flex gap-1 mb-6 border-b border-tz-gray-200 overflow-x-auto">
          {[
            { id: "overview" as const, label: "Overview" },
            { id: "topics" as const, label: "By Topic" },
            { id: "history" as const, label: "History" },
          ].map((tab) => (
            <button
              key={tab.id}
              onClick={() => setActiveTab(tab.id)}
              className={cn(
                "px-4 py-3 text-sm font-medium border-b-2 -mb-px transition-colors whitespace-nowrap",
                activeTab === tab.id
                  ? "border-tz-blue text-tz-blue"
                  : "border-transparent text-tz-gray-400 hover:text-tz-gray-600"
              )}
            >
              {tab.label}
            </button>
          ))}
        </div>

        {/* Tab Content */}
        {activeTab === "overview" && (
          <div className="space-y-6">
            {/* Score Trend Chart */}
            <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-6">
              <h2 className="text-h3 text-tz-navy mb-2">Score Trend</h2>
              <p className="text-small text-tz-gray-400 mb-6">
                One bar per practice session, ordered chronologically.
              </p>
              {scoreHistory.length === 0 ? (
                <p className="text-body text-tz-gray-400 text-center py-8">
                  Complete some practice sessions to see your score trend
                </p>
              ) : (
                (() => {
                  // SVG is reliable across browsers — flex+percentage-height
                  // bar charts compute 0 height when the column has no
                  // explicit height, so we draw bars as rects in SVG instead.
                  const W = 1000;
                  const H = 220;
                  const pad = { top: 28, right: 12, bottom: 36, left: 12 };
                  const innerW = W - pad.left - pad.right;
                  const innerH = H - pad.top - pad.bottom;
                  const yMinBar = 400;
                  const yMaxBar = 1600;
                  const xStep = innerW / scoreHistory.length;
                  const barW = Math.min(80, xStep * 0.7);
                  return (
                    <svg
                      viewBox={`0 0 ${W} ${H}`}
                      className="w-full h-56"
                      preserveAspectRatio="none"
                    >
                      {/* Gridlines: 400, 800, 1200, 1600 */}
                      {[400, 800, 1200, 1600].map((g) => {
                        const y = pad.top + (1 - (g - yMinBar) / (yMaxBar - yMinBar)) * innerH;
                        return (
                          <g key={g}>
                            <line
                              x1={pad.left} x2={W - pad.right}
                              y1={y} y2={y}
                              stroke="#E5E7EB" strokeDasharray="4 4" strokeWidth="1"
                            />
                            <text
                              x={pad.left + 4} y={y - 4}
                              fontSize="11" fill="#9CA3AF"
                            >{g}</text>
                          </g>
                        );
                      })}

                      {scoreHistory.map((p, i) => {
                        const cx = pad.left + xStep * (i + 0.5);
                        const x = cx - barW / 2;
                        const yTop = pad.top + (1 - (p.score - yMinBar) / (yMaxBar - yMinBar)) * innerH;
                        const barHeight = innerH - (yTop - pad.top);
                        return (
                          <g key={i}>
                            <rect
                              x={x} y={yTop}
                              width={barW} height={barHeight}
                              fill="#006BB6" rx="6"
                            />
                            <text
                              x={cx} y={yTop - 6}
                              textAnchor="middle"
                              fontSize="13" fontWeight="600" fill="#0A2540"
                            >{p.score}</text>
                            <text
                              x={cx} y={H - pad.bottom + 18}
                              textAnchor="middle"
                              fontSize="11" fill="#9CA3AF"
                            >{p.date}</text>
                          </g>
                        );
                      })}
                    </svg>
                  );
                })()
              )}
            </div>

            {/* Analytics Section — available to all users */}
            <>
                {/* Score Trajectory Chart */}
                <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-6">
                  <div className="flex items-center justify-between mb-6">
                    <div className="flex items-center gap-2">
                      <Sparkles className="w-5 h-5 text-tz-orange" />
                      <h2 className="text-h3 text-tz-navy">Score Trajectory</h2>
                    </div>
                    <div className="flex items-center gap-2 text-small text-tz-gray-400">
                      <Calendar className="w-4 h-4" />
                      <span>{trajectoryData.daysUntilTest} days to test</span>
                    </div>
                  </div>
                  
                  {/* Trajectory Visualization — single SVG with explicit
                      coordinate space. Avoids fragile mixes of CSS percentages
                      and SVG to keep gridlines, labels, and points all in
                      lockstep. */}
                  {(() => {
                    const W = 1000;
                    const H = 280;
                    const pad = { top: 28, right: 16, bottom: 36, left: 56 };
                    const innerW = W - pad.left - pad.right;
                    const innerH = H - pad.top - pad.bottom;
                    const yLo = yMin;
                    const yHi = targetScore + 50;
                    const yToPx = (s: number) =>
                      pad.top + (1 - (s - yLo) / (yHi - yLo)) * innerH;
                    const N = trajectoryData.points.length;
                    const xToPx = (i: number) => pad.left + (i / Math.max(1, N - 1)) * innerW;
                    const histN = scoreHistory.length;
                    const boundaryX = xToPx(Math.max(0, histN - 1));
                    const yTicks = [yLo, Math.round((yLo + yHi) / 2), yHi];

                    const histPath = trajectoryData.points
                      .filter((p) => !p.isProjected)
                      .map((p, i) => `${i === 0 ? "M" : "L"}${xToPx(i)},${yToPx(p.score)}`)
                      .join(" ");
                    const projPath = trajectoryData.points
                      .slice(histN - 1)
                      .map((p, i) => {
                        const idx = histN - 1 + i;
                        return `${i === 0 ? "M" : "L"}${xToPx(idx)},${yToPx(p.score)}`;
                      })
                      .join(" ");

                    return (
                      <svg
                        viewBox={`0 0 ${W} ${H}`}
                        className="w-full h-72 mb-2"
                        preserveAspectRatio="none"
                      >
                        {/* Gridlines + y-axis labels */}
                        {yTicks.map((y) => (
                          <g key={y}>
                            <line
                              x1={pad.left} x2={W - pad.right}
                              y1={yToPx(y)} y2={yToPx(y)}
                              stroke="#E5E7EB" strokeDasharray="4 4" strokeWidth="1"
                            />
                            <text
                              x={pad.left - 8} y={yToPx(y) + 4}
                              fontSize="12" fill="#9CA3AF" textAnchor="end"
                            >{y}</text>
                          </g>
                        ))}

                        {/* Target line */}
                        <line
                          x1={pad.left} x2={W - pad.right}
                          y1={yToPx(targetScore)} y2={yToPx(targetScore)}
                          stroke="#00A651" strokeWidth="2" strokeDasharray="6 4"
                        />
                        <text
                          x={W - pad.right} y={yToPx(targetScore) - 6}
                          fontSize="12" fill="#00A651" textAnchor="end" fontWeight="600"
                        >Target {targetScore}</text>

                        {/* Today divider */}
                        <line
                          x1={boundaryX} x2={boundaryX}
                          y1={pad.top} y2={H - pad.bottom}
                          stroke="#9CA3AF" strokeWidth="1" strokeDasharray="3 3"
                        />
                        <text
                          x={boundaryX} y={pad.top - 10}
                          fontSize="11" fill="#6B7280" textAnchor="middle"
                        >Today</text>

                        {/* Historical line */}
                        <path d={histPath} stroke="#006BB6" strokeWidth="3"
                          fill="none" strokeLinecap="round" strokeLinejoin="round" />

                        {/* Projected line */}
                        <path d={projPath} stroke="#00A651" strokeWidth="3"
                          fill="none" strokeDasharray="8 4"
                          strokeLinecap="round" strokeLinejoin="round" />

                        {/* Data points */}
                        {trajectoryData.points.map((p, i) => (
                          <circle
                            key={i}
                            cx={xToPx(i)} cy={yToPx(p.score)}
                            r={p.isProjected ? 3.5 : 4}
                            fill={p.isProjected ? "#00A651" : "#006BB6"}
                            stroke="white" strokeWidth="2"
                          />
                        ))}

                        {/* X-axis labels */}
                        <text x={pad.left} y={H - 8} fontSize="11" fill="#9CA3AF">Start</text>
                        <text x={boundaryX} y={H - 8} fontSize="11" fill="#9CA3AF" textAnchor="middle">Now</text>
                        <text x={W - pad.right} y={H - 8} fontSize="11" fill="#9CA3AF" textAnchor="end">Test day</text>
                      </svg>
                    );
                  })()}
                  
                  {/* Projection Summary */}
                  <div className="grid grid-cols-2 lg:grid-cols-4 gap-4 p-4 bg-tz-off-white rounded-lg">
                    <div className="text-center">
                      <div className="text-small text-tz-gray-400">Current</div>
                      <div className="text-xl font-bold text-tz-navy">{trajectoryData.currentScore}</div>
                    </div>
                    <div className="text-center">
                      <div className="text-small text-tz-gray-400">Projected</div>
                      <div className="text-xl font-bold text-tz-green">{trajectoryData.projectedScore}</div>
                    </div>
                    <div className="text-center">
                      <div className="text-small text-tz-gray-400">Expected Gain</div>
                      <div className="text-xl font-bold text-tz-blue">+{trajectoryData.projectedImprovement}</div>
                    </div>
                    <div className="text-center">
                      <div className="text-small text-tz-gray-400">Weekly Avg</div>
                      <div className="text-xl font-bold text-tz-navy">+{trajectoryData.avgWeeklyImprovement}</div>
                    </div>
                  </div>
                  
                  {/* Status message */}
                  <div className={cn(
                    "mt-4 p-4 rounded-lg border",
                    trajectoryData.onTrack 
                      ? "bg-green-50 border-green-200" 
                      : "bg-orange-50 border-orange-200"
                  )}>
                    <p className="text-small text-tz-navy">
                      {trajectoryData.onTrack ? (
                        <>
                          <strong>On track!</strong> At your current pace, you're projected to reach {trajectoryData.projectedScore} by test day, 
                          {trajectoryData.projectedScore >= targetScore 
                            ? " exceeding your target score." 
                            : ` putting you within ${targetScore - trajectoryData.projectedScore} points of your goal.`
                          }
                        </>
                      ) : (
                        <>
                          <strong>Room to improve.</strong> To hit your target of {targetScore}, try adding an extra 15-20 minutes 
                          of daily practice or focusing more on your weakest topics.
                        </>
                      )}
                    </p>
                  </div>
                </div>

                {/* Topic Heat Map — every SAT skill, grouped by domain. Cells
                    with no attempts render as gray "Not yet" so users can spot
                    untouched skills, not just weak ones. The formula box below
                    the cells is the canonical "how is mastery calculated"
                    explanation; the same number is shown both on each cell
                    and in the native tooltip. */}
                <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-6">
                  <div className="flex items-center gap-2 mb-2">
                    <Sparkles className="w-5 h-5 text-tz-orange" />
                    <h2 className="text-h3 text-tz-navy">Topic Heat Map</h2>
                  </div>
                  <p className="text-small text-tz-gray-400 mb-3">
                    Every SAT skill, color-coded by mastery. Gray cells haven't been practiced yet — start there to close gaps.
                  </p>
                  <div className="bg-tz-blue/5 border border-tz-blue/20 rounded-lg px-3 py-2 mb-6">
                    <p className="text-small text-tz-navy">
                      <strong>Mastery</strong> = correct &divide; attempted, per skill, across all your practice. Each cell shows the percentage and your raw count. Hover for the date you last practiced.
                    </p>
                  </div>

                  {(["math", "reading", "writing"] as const).map((section) => {
                    const sectionDomains = DOMAINS_IN_ORDER.filter((d) => d.section === section);
                    if (sectionDomains.length === 0) return null;
                    return (
                      <div key={section} className="mb-6 last:mb-0">
                        <h3 className="text-label text-tz-gray-400 mb-3 uppercase tracking-wide">
                          {section === "math" ? "MATH" : section === "reading" ? "READING" : "WRITING"}
                        </h3>
                        <div className="space-y-4">
                          {sectionDomains.map((domain) => {
                            const skills = SKILLS_BY_DOMAIN[domain.slug] ?? [];
                            const domainRollup = progress.domainProgress[domain.slug];
                            const skillAttempted = skills.reduce(
                              (sum, s) => sum + (progress.topicProgress[s.slug]?.questionsAttempted ?? 0),
                              0
                            );
                            // "Untracked" = practice that landed on the domain
                            // before the skill column existed. We can't split
                            // those across the cells, but we can show the
                            // total so the page doesn't pretend they're zero.
                            const untrackedAttempted = Math.max(0, (domainRollup?.attempted ?? 0) - skillAttempted);
                            const untrackedCorrect = Math.max(0, (domainRollup?.correct ?? 0) - skills.reduce(
                              (sum, s) => sum + (progress.topicProgress[s.slug]?.questionsCorrect ?? 0),
                              0
                            ));
                            const untrackedPct = untrackedAttempted > 0
                              ? Math.round((untrackedCorrect / untrackedAttempted) * 100)
                              : null;
                            return (
                              <div key={domain.slug}>
                                <div className="flex items-baseline justify-between gap-2 mb-2">
                                  <div className="text-xs text-tz-gray-600 font-medium">
                                    {domain.displayName}
                                  </div>
                                  {untrackedAttempted > 0 && (
                                    <div className="text-[11px] text-tz-gray-500">
                                      <span className="text-tz-gray-400">Earlier sessions:</span>{" "}
                                      <strong className="text-tz-navy">{untrackedCorrect}/{untrackedAttempted}</strong>
                                      {untrackedPct !== null ? ` (${untrackedPct}%)` : ""}
                                      <span className="text-tz-gray-400"> · domain only</span>
                                    </div>
                                  )}
                                </div>
                                <div className="grid grid-cols-2 lg:grid-cols-3 gap-2">
                                  {skills.map((skill) => {
                                    const data = progress.topicProgress[skill.slug];
                                    const attempted = data?.questionsAttempted ?? 0;
                                    const correct = data?.questionsCorrect ?? 0;
                                    const value = attempted > 0
                                      ? Math.round((correct / attempted) * 100)
                                      : null;
                                    return (
                                      <HeatMapCell
                                        key={skill.slug}
                                        label={skillSlugToDisplayName(skill.slug)}
                                        value={value}
                                        attempted={attempted}
                                        correct={correct}
                                        lastPracticed={data?.lastPracticed ?? null}
                                      />
                                    );
                                  })}
                                </div>
                              </div>
                            );
                          })}
                        </div>
                      </div>
                    );
                  })}

                  {/* Legend — color bands plus the formula spelled out so a
                      student can verify any cell's number by hand. */}
                  <div className="mt-6 pt-4 border-t border-tz-gray-100 space-y-2">
                    <div className="flex flex-wrap items-center justify-center gap-4">
                      <span className="text-small text-tz-gray-400">Mastery bands:</span>
                      <div className="flex items-center gap-2">
                        <div className="w-4 h-4 rounded bg-tz-gray-100 border border-tz-gray-200" />
                        <span className="text-small text-tz-gray-600">Not yet</span>
                      </div>
                      <div className="flex items-center gap-2">
                        <div className="w-4 h-4 rounded bg-red-400" />
                        <span className="text-small text-tz-gray-600">0-40%</span>
                      </div>
                      <div className="flex items-center gap-2">
                        <div className="w-4 h-4 rounded bg-yellow-400" />
                        <span className="text-small text-tz-gray-600">40-70%</span>
                      </div>
                      <div className="flex items-center gap-2">
                        <div className="w-4 h-4 rounded bg-tz-green" />
                        <span className="text-small text-tz-gray-600">70-100%</span>
                      </div>
                    </div>
                    <p className="text-center text-xs text-tz-gray-500">
                      Each cell: <strong>correct &divide; attempted</strong>.
                      Hover any cell to see the date you last practiced.
                    </p>
                  </div>
                </div>

                {/* Confidence Calibration — measures how well a student's
                    self-rating ("guessing" / "somewhat sure" / "confident")
                    predicts their actual accuracy. The single-scale-per-bucket
                    layout shows their accuracy AND the calibration target
                    side by side, with plain-English meaning + an action.  */}
                <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-6">
                  <div className="flex items-center gap-2 mb-2">
                    <Sparkles className="w-5 h-5 text-tz-orange" />
                    <h2 className="text-h3 text-tz-navy">Confidence Calibration</h2>
                  </div>
                  <p className="text-small text-tz-gray-600 mb-6 leading-relaxed">
                    Your confidence rating is a prediction of how likely you'll get the question right. <strong>Calibration</strong> is how close that prediction comes to reality. The closer you sit to the target, the more you can trust your gut on test day.
                  </p>

                  {!calibrationData || calibrationData.every((r) => r.n === 0) ? (
                    <p className="text-body text-tz-gray-400 text-center py-8">
                      Complete a few practice questions with confidence ratings to see your calibration.
                    </p>
                  ) : (
                    <>
                      <div className="space-y-5">
                        {calibrationData.map((row) => {
                          const hasData = row.actual !== null && row.n > 0;
                          const actual = row.actual ?? 0;
                          const gap = hasData ? actual - row.expected : 0;
                          const status: "calibrated" | "over" | "under" | "none" =
                            !hasData ? "none" : Math.abs(gap) <= 5 ? "calibrated" : gap > 0 ? "under" : "over";

                          // Plain-English meaning of the bucket + status.
                          // These are the most useful piece for a student —
                          // they replace the abstract "expected accuracy"
                          // framing with a concrete what-to-do.
                          const meaning: { headline: string; advice: string } =
                            !hasData
                              ? {
                                  headline: "No data yet",
                                  advice: "Tag your confidence on a few more questions and this bucket will populate.",
                                }
                              : status === "calibrated"
                              ? row.confidence === "Guessing"
                                ? {
                                    headline: "Right around random chance — normal.",
                                    advice: "Guesses across 4 options should land near 25%. You're in that range, which means your confidence rating is honest. Use this label only when you truly have no idea.",
                                  }
                                : row.confidence === "Confident"
                                ? {
                                    headline: "Your gut is reliable.",
                                    advice: "When you say you're confident, you really are. Lean on this on test day to move faster.",
                                  }
                                : {
                                    headline: "Spot on.",
                                    advice: "Your accuracy on these closely matches what \"somewhat sure\" usually implies. Keep going.",
                                  }
                              : status === "under"
                              ? row.confidence === "Confident"
                                ? {
                                    headline: "You're underselling — your gut is sharper than you think.",
                                    advice: "When you say you're confident you're getting more right than the typical \"confident\" student. Lock these in faster on test day; second-guessing costs time.",
                                  }
                                : row.confidence === "Somewhat sure"
                                ? {
                                    headline: "You know more than you think.",
                                    advice: "Most students at \"somewhat sure\" land around 60%. You're well above. Trust your instincts on these — don't downgrade them to \"guessing\".",
                                  }
                                : {
                                    headline: "Even your guesses aren't really guesses.",
                                    advice: "You're scoring above random — you have real intuition on these. Try upgrading some of them to \"somewhat sure\" next time.",
                                  }
                              : /* over */ row.confidence === "Confident"
                              ? {
                                    headline: "Slow down before you lock in.",
                                    advice: "When you say you're confident you're missing more than expected. Double-check the trap answer before committing — these are your biggest leakage on test day.",
                                  }
                                : row.confidence === "Somewhat sure"
                                ? {
                                    headline: "These hunches need verifying.",
                                    advice: "You're below the typical hit rate for this label. Treat \"somewhat sure\" as a flag to reread the question, not a green light to commit.",
                                  }
                                : {
                                    headline: "Worse than chance — something is misleading you.",
                                    advice: "If you're getting fewer than 25% right when you say you're guessing, the answer choices might be designed to bait you. Slow down and eliminate the obvious wrong ones.",
                                  };

                          // Status pill: short label + colored gap.
                          const statusBadge = {
                            calibrated: { label: "On target",       classes: "bg-tz-green/15 text-tz-green" },
                            over:        { label: "Overconfident",  classes: "bg-orange-100 text-orange-700" },
                            under:       { label: "Underconfident", classes: "bg-blue-100 text-tz-blue" },
                            none:        { label: "No data",        classes: "bg-tz-gray-100 text-tz-gray-400" },
                          }[status];

                          // Single-track scale with two markers: a tinted fill
                          // up to the user's actual %, and a thin vertical
                          // line at the calibration target. Putting both on
                          // the same line is much easier to read than two
                          // stacked bars.
                          const targetLeftPct = Math.max(0, Math.min(100, row.expected));
                          const fillColor =
                            status === "calibrated" ? "bg-tz-green/70"
                            : status === "under"      ? "bg-tz-blue/70"
                            : status === "over"       ? "bg-orange-500/70"
                            : "bg-tz-gray-200";

                          return (
                            <div
                              key={row.confidence}
                              className={cn(
                                "border border-tz-gray-200 rounded-lg p-4",
                                !hasData && "opacity-60"
                              )}
                            >
                              {/* Header: bucket name + sample size + status pill */}
                              <div className="flex flex-wrap items-center justify-between gap-2 mb-1">
                                <div className="flex items-baseline gap-2">
                                  <span className="text-body-strong text-tz-navy">{row.confidence}</span>
                                  <span className="text-xs text-tz-gray-400">
                                    {hasData ? `· ${row.n} answer${row.n === 1 ? "" : "s"}` : ""}
                                  </span>
                                </div>
                                {hasData && (
                                  <span className={cn("text-xs font-semibold px-2 py-0.5 rounded-full", statusBadge.classes)}>
                                    {statusBadge.label}
                                    {gap !== 0 && ` · ${gap > 0 ? "+" : ""}${gap}%`}
                                  </span>
                                )}
                              </div>

                              {/* Headline meaning */}
                              <p className="text-sm text-tz-navy font-medium mt-1">{meaning.headline}</p>

                              {/* Single calibration scale with both markers */}
                              {hasData && (
                                <div className="mt-3">
                                  <div className="relative h-3 bg-tz-gray-100 rounded">
                                    {/* Filled bar: 0% → user's actual */}
                                    <div
                                      className={cn("absolute top-0 bottom-0 left-0 rounded", fillColor)}
                                      style={{ width: `${actual}%` }}
                                    />
                                    {/* Target marker: vertical pin at expected% */}
                                    <div
                                      className="absolute top-[-3px] bottom-[-3px] w-0.5 bg-tz-navy"
                                      style={{ left: `${targetLeftPct}%` }}
                                      aria-label={`Calibration target ${row.expected}%`}
                                    />
                                  </div>
                                  {/* Marker legend below the scale */}
                                  <div className="flex justify-between text-xs mt-1.5">
                                    <span className="text-tz-gray-400">0%</span>
                                    <div className="flex items-center gap-3">
                                      <span className="inline-flex items-center gap-1 text-tz-gray-600">
                                        <span className={cn("inline-block w-2 h-2 rounded-sm", fillColor.replace("/70", ""))} />
                                        You: {actual}%
                                      </span>
                                      <span className="inline-flex items-center gap-1 text-tz-gray-600">
                                        <span className="inline-block w-0.5 h-3 bg-tz-navy" />
                                        Target: {row.expected}%
                                      </span>
                                    </div>
                                    <span className="text-tz-gray-400">100%</span>
                                  </div>
                                </div>
                              )}

                              {/* Action sentence */}
                              <p className="text-xs text-tz-gray-600 mt-3 leading-relaxed">
                                {meaning.advice}
                              </p>
                            </div>
                          );
                        })}
                      </div>

                      <div className="mt-6 p-4 bg-blue-50 rounded-lg border border-blue-100">
                        <p className="text-small text-tz-navy">
                          <strong>What this means for test day:</strong> {(() => {
                            const populated = calibrationData.filter((r) => r.actual !== null && r.n >= 3);
                            if (populated.length === 0) {
                              return "Tag your confidence on every practice question — once each bucket has 3+ answers, you'll see exactly where to trust your gut and where to slow down.";
                            }
                            const worst = populated.reduce((acc, r) =>
                              Math.abs((r.actual! - r.expected)) > Math.abs((acc.actual! - acc.expected)) ? r : acc
                            );
                            const gap = (worst.actual ?? 0) - worst.expected;
                            if (Math.abs(gap) <= 5) {
                              return "Your self-rating tracks your accuracy across all three confidence levels. That's well-calibrated — a real strength under time pressure. Lean on it.";
                            }
                            if (gap > 0) {
                              return `Your gut is sharper than you think on "${worst.confidence}" questions (${worst.actual}% vs. the typical ${worst.expected}%). On test day, commit to those answers faster instead of second-guessing — you're losing time to doubt.`;
                            }
                            return `Watch out on "${worst.confidence}" questions — you only get ${worst.actual}% right when most students at that confidence get ${worst.expected}%. The label is misleading you. Build a habit of one extra check (re-read the question stem, eliminate trap answers) before locking these in.`;
                          })()}
                        </p>
                      </div>
                    </>
                  )}
                </div>
            </>
          </div>
        )}

        {activeTab === "topics" && (
          <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-6">
            <h2 className="text-h3 text-tz-navy mb-6">Topic Mastery</h2>
            {topicMastery.length === 0 ? (
              <p className="text-body text-tz-gray-400 text-center py-8">
                Complete some practice sessions to see your topic breakdown
              </p>
            ) : (
              <div className="space-y-4">
                {topicMastery.map((topic) => (
                  <div key={topic.topic}>
                    <div className="flex items-center justify-between mb-2">
                      <span className="text-body text-tz-navy">{topic.displayName}</span>
                      <div className="flex items-center gap-3">
                        <span className="text-small text-tz-gray-400 hidden sm:inline">{topic.total} questions</span>
                        <span className={cn(
                          "text-body-strong",
                          topic.accuracy >= 80 ? "text-tz-green" :
                          topic.accuracy >= 60 ? "text-tz-orange" : "text-red-500"
                        )}>
                          {topic.accuracy}%
                        </span>
                      </div>
                    </div>
                    <div className="h-2 bg-tz-gray-100 rounded-full overflow-hidden">
                      <div 
                        className={cn(
                          "h-full rounded-full transition-all duration-500",
                          topic.accuracy >= 80 ? "bg-tz-green" :
                          topic.accuracy >= 60 ? "bg-tz-orange" : "bg-red-400"
                        )}
                        style={{ width: `${topic.accuracy}%` }}
                      />
                    </div>
                  </div>
                ))}
              </div>
            )}
          </div>
        )}

        {activeTab === "history" && (
          <div className="bg-white rounded-xl border border-tz-gray-200 overflow-hidden">
            {recentSessions.length === 0 ? (
              <p className="text-body text-tz-gray-400 text-center py-8">
                No sessions yet. Start practicing to build your history!
              </p>
            ) : (<>
            {/* Mobile view */}
            <div className="lg:hidden divide-y divide-tz-gray-100">
              {recentSessions.map((session) => (
                <div key={session.id} className="p-4">
                  <div className="flex items-center justify-between mb-2">
                    <span className="text-body text-tz-navy">{session.date}</span>
                    <span className={cn(
                      "px-2 py-1 rounded text-small font-medium",
                      session.type === "Diagnostic" 
                        ? "bg-purple-100 text-purple-700"
                        : "bg-blue-100 text-tz-blue"
                    )}>
                      {session.type}
                    </span>
                  </div>
                  <div className="flex items-center justify-between text-small text-tz-gray-600">
                    <span>
                      {session.questions} questions
                      {session.skillTracked > 0 && session.skillTracked < session.questions && (
                        <span className="text-xs text-tz-gray-400 ml-1">
                          ({session.skillTracked} skill-tracked)
                        </span>
                      )}
                    </span>
                    <span className={cn(
                      "font-medium",
                      session.accuracy >= 80 ? "text-tz-green" :
                      session.accuracy >= 60 ? "text-tz-orange" : "text-red-500"
                    )}>
                      {session.accuracy}% accuracy
                    </span>
                    <span>{session.duration}m</span>
                  </div>
                </div>
              ))}
            </div>
            
            {/* Desktop view */}
            <table className="w-full hidden lg:table">
              <thead>
                <tr className="border-b border-tz-gray-200 bg-tz-off-white">
                  <th className="text-left text-label text-tz-gray-400 px-6 py-3">DATE</th>
                  <th className="text-left text-label text-tz-gray-400 px-6 py-3">TYPE</th>
                  <th className="text-center text-label text-tz-gray-400 px-6 py-3">QUESTIONS</th>
                  <th className="text-center text-label text-tz-gray-400 px-6 py-3">ACCURACY</th>
                  <th className="text-center text-label text-tz-gray-400 px-6 py-3">DURATION</th>
                </tr>
              </thead>
              <tbody>
                {recentSessions.map((session) => (
                  <tr key={session.id} className="border-b border-tz-gray-100 hover:bg-tz-off-white transition-colors">
                    <td className="px-6 py-4 text-body text-tz-navy">{session.date}</td>
                    <td className="px-6 py-4">
                      <span className={cn(
                        "px-2 py-1 rounded text-small font-medium",
                        session.type === "Diagnostic" 
                          ? "bg-purple-100 text-purple-700"
                          : "bg-blue-100 text-tz-blue"
                      )}>
                        {session.type}
                      </span>
                    </td>
                    <td className="px-6 py-4 text-center text-body text-tz-gray-600">
                      {session.questions}
                      {session.skillTracked > 0 && session.skillTracked < session.questions && (
                        <span className="text-xs text-tz-gray-400 ml-1">
                          ({session.skillTracked} skill-tracked)
                        </span>
                      )}
                    </td>
                    <td className="px-6 py-4 text-center">
                      <span className={cn(
                        "text-body-strong",
                        session.accuracy >= 80 ? "text-tz-green" :
                        session.accuracy >= 60 ? "text-tz-orange" : "text-red-500"
                      )}>
                        {session.accuracy}%
                      </span>
                    </td>
                    <td className="px-6 py-4 text-center text-body text-tz-gray-600">{session.duration}m</td>
                  </tr>
                ))}
              </tbody>
            </table>
            </>)}
          </div>
        )}
      </div>
    </AppLayout>
  );
}

function HeatMapCell({
  label,
  value,
  attempted,
  correct,
  lastPracticed,
}: {
  label: string;
  value: number | null;
  attempted: number;
  correct: number;
  lastPracticed: string | null;
}) {
  const bg =
    value === null ? "bg-tz-gray-100 border border-dashed border-tz-gray-300"
      : value >= 70 ? "bg-tz-green"
      : value >= 40 ? "bg-yellow-400"
      : "bg-red-400";
  const text = value === null ? "text-tz-gray-400" : "text-white";

  // Native title acts as the accessible tooltip — works on mobile and respects
  // user preferences without needing a portal-rendered popover. Built from the
  // same correct/attempted figures shown on the cell so hover always agrees
  // with what's visible.
  const lastSeen = lastPracticed
    ? new Date(lastPracticed).toLocaleDateString("en-US", { month: "short", day: "numeric" })
    : "never";
  const tooltip = value === null
    ? `${label} — never practiced`
    : `${label} — ${correct}/${attempted} correct (${value}% mastery). Last practiced: ${lastSeen}.`;

  return (
    <div
      className={cn(
        "min-h-[68px] rounded-lg flex flex-col items-center justify-center px-2 py-2 text-center transition-all",
        bg
      )}
      title={tooltip}
    >
      <span className={cn("text-[11px] leading-tight font-medium line-clamp-2", text)}>
        {label}
      </span>
      <span className={cn("text-base font-bold mt-1 leading-none", text)}>
        {value === null ? "Not yet" : `${value}%`}
      </span>
      <span className={cn("text-[10px] mt-0.5 leading-none", text, "opacity-90")}>
        {attempted === 0 ? "0 attempted" : `${correct}/${attempted}`}
      </span>
    </div>
  );
}
