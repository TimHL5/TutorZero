import { useState, useMemo } from "react";
import { Link } from "react-router";
import { AppLayout } from "@/react-app/components/layout/AppLayout";
import { useStudentProgress } from "@/react-app/hooks/useStudentProgress";
import { topicDisplayNames } from "@/data/questions";
import { cn } from "@/react-app/lib/utils";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { TrendingUp, Target, Clock, Lock, ChevronRight, BarChart3, Flame, Sparkles, Calendar, Download } from "lucide-react";
import { downloadProgressReport } from "@/react-app/lib/pdfExport";

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

// Heat map data structure for topics
const MATH_TOPICS = [
  "algebra_linear", "algebra_systems", "algebra_functions",
  "advanced_quadratic", "advanced_exponential", "advanced_polynomial",
  "problem_solving_ratios", "problem_solving_statistics", "problem_solving_probability",
  "geometry_lines", "geometry_triangles", "geometry_circles"
];

const RW_TOPICS = [
  "reading_main_idea", "reading_inference", "reading_vocabulary",
  "writing_grammar", "writing_punctuation", "writing_transitions",
  "craft_structure", "craft_purpose", "expression_rhetoric"
];

// Mock confidence calibration data (real calibration requires tracking per-question confidence)
const mockCalibrationData = [
  { confidence: "Very Low", predicted: 20, actual: 35 },
  { confidence: "Low", predicted: 40, actual: 52 },
  { confidence: "Medium", predicted: 60, actual: 68 },
  { confidence: "High", predicted: 80, actual: 75 },
  { confidence: "Very High", predicted: 95, actual: 82 },
];

export default function Progress() {
  const { user } = useAuth();
  const { progress, getOverallStats } = useStudentProgress();
  const [activeTab, setActiveTab] = useState<"overview" | "topics" | "history">("overview");

  const profile = user?.profile;
  const isPro = profile?.subscriptionTier === "pro";

  const stats = getOverallStats();

  const targetScore = profile?.targetScore || 1400;
  const testDate = profile?.testDate ? new Date(profile.testDate) : null;

  // Derive score history from real sessions grouped by week
  const scoreHistory = useMemo(() => {
    if (progress.sessions.length === 0) return [];
    const sorted = [...progress.sessions].sort(
      (a, b) => new Date(a.date).getTime() - new Date(b.date).getTime()
    );
    const weeks: { weekKey: string; totalCorrect: number; totalAttempted: number }[] = [];
    let runningCorrect = 0;
    let runningTotal = 0;
    sorted.forEach((session) => {
      const d = new Date(session.date);
      const weekStart = new Date(d);
      weekStart.setDate(weekStart.getDate() - weekStart.getDay());
      const weekKey = weekStart.toISOString().split("T")[0];
      runningCorrect += session.questionsCorrect;
      runningTotal += session.questionsAttempted;
      const existing = weeks.find((w) => w.weekKey === weekKey);
      if (existing) {
        existing.totalCorrect = runningCorrect;
        existing.totalAttempted = runningTotal;
      } else {
        weeks.push({ weekKey, totalCorrect: runningCorrect, totalAttempted: runningTotal });
      }
    });
    return weeks.map((w, i) => ({
      date: `Week ${i + 1}`,
      score: Math.round(400 + (w.totalAttempted > 0 ? Math.min(1, w.totalCorrect / w.totalAttempted) : 0.5) * 1200),
      timestamp: new Date(w.weekKey).getTime(),
    }));
  }, [progress.sessions]);

  // Derive session list from real data
  const recentSessions = useMemo(() => {
    return progress.sessions.slice(0, 20).map((s, i) => ({
      id: i + 1,
      date: formatRelativeDate(s.date),
      type: s.type === "diagnostic" ? "Diagnostic" : "Practice",
      questions: s.questionsAttempted,
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
      streak: progress.currentStreak || 0,
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

  // Generate heat map data
  const getTopicHeatValue = (topic: string) => {
    const data = progress.topicProgress[topic];
    if (!data || data.questionsAttempted === 0) return null;
    return Math.round((data.questionsCorrect / data.questionsAttempted) * 100);
  };

  // Current estimated score from real progress data
  const currentScore = progress.estimatedMathScore + progress.estimatedRWScore;
  const scoreChange = scoreHistory.length >= 2
    ? currentScore - scoreHistory[scoreHistory.length - 2].score
    : 0;

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
          
          {/* Export Button - Pro feature */}
          {isPro && (
            <button
              onClick={handleExportPDF}
              className="flex items-center gap-2 px-4 py-2 bg-tz-navy text-white rounded-lg text-sm font-medium hover:bg-tz-navy/90 transition-all"
            >
              <Download className="w-4 h-4" />
              <span className="hidden sm:inline">Export Report</span>
              <span className="sm:hidden">PDF</span>
            </button>
          )}
        </div>

        {/* Score Overview */}
        <div className="grid grid-cols-2 lg:grid-cols-4 gap-3 lg:gap-4 mb-8">
          <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-5">
            <div className="flex items-center gap-2 text-small text-tz-gray-400 mb-2">
              <Target className="w-4 h-4" />
              <span className="hidden sm:inline">Estimated Score</span>
              <span className="sm:hidden">Score</span>
            </div>
            <div className="text-2xl lg:text-display font-bold text-tz-navy">{currentScore}</div>
            <div className={cn(
              "text-small flex items-center gap-1 mt-1",
              scoreChange >= 0 ? "text-tz-green" : "text-red-500"
            )}>
              <TrendingUp className={cn("w-4 h-4", scoreChange < 0 && "rotate-180")} />
              {scoreChange >= 0 ? "+" : ""}{scoreChange}
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
            <div className="text-2xl lg:text-display font-bold text-tz-navy">{progress.currentStreak || 0}</div>
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
              <h2 className="text-h3 text-tz-navy mb-6">Score Trend</h2>
              {scoreHistory.length === 0 ? (
                <p className="text-body text-tz-gray-400 text-center py-8">
                  Complete some practice sessions to see your score trend
                </p>
              ) : (
                <div className="h-48 flex items-end justify-between gap-1 lg:gap-2">
                  {scoreHistory.map((point, i) => {
                    const height = Math.max(5, ((point.score - 400) / 1200) * 100);
                    return (
                      <div key={i} className="flex-1 flex flex-col items-center gap-2">
                        <div className="text-xs lg:text-small text-tz-gray-600 font-medium">{point.score}</div>
                        <div
                          className="w-full bg-tz-blue rounded-t-lg transition-all duration-500"
                          style={{ height: `${height}%` }}
                        />
                        <div className="text-xs lg:text-small text-tz-gray-400">{point.date}</div>
                      </div>
                    );
                  })}
                </div>
              )}
            </div>

            {/* Pro Analytics Section */}
            {isPro ? (
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
                  
                  {/* Trajectory Visualization */}
                  <div className="relative h-64 mb-6">
                    {/* Y-axis labels */}
                    <div className="absolute left-0 top-0 bottom-8 w-12 flex flex-col justify-between text-small text-tz-gray-400">
                      <span>{targetScore}</span>
                      <span>{Math.round((targetScore + 900) / 2)}</span>
                      <span>900</span>
                    </div>
                    
                    {/* Chart area */}
                    <div className="ml-14 h-full relative">
                      {/* Target line */}
                      <div 
                        className="absolute left-0 right-0 border-t-2 border-dashed border-tz-green/50"
                        style={{ top: `${100 - ((targetScore - 900) / (targetScore - 900 + 100)) * 100}%` }}
                      >
                        <span className="absolute right-0 -top-5 text-xs text-tz-green">Target: {targetScore}</span>
                      </div>
                      
                      {/* Line chart */}
                      <svg className="w-full h-[calc(100%-2rem)]" preserveAspectRatio="none">
                        {/* Historical line */}
                        <polyline
                          fill="none"
                          stroke="#006BB6"
                          strokeWidth="3"
                          strokeLinecap="round"
                          strokeLinejoin="round"
                          points={trajectoryData.points
                            .filter(p => !p.isProjected)
                            .map((p, i) => {
                              const x = (i / (trajectoryData.points.length - 1)) * 100;
                              const y = 100 - ((p.score - 900) / (targetScore - 900 + 100)) * 100;
                              return `${x}%,${y}%`;
                            })
                            .join(' ')
                          }
                        />
                        
                        {/* Projected line */}
                        <polyline
                          fill="none"
                          stroke="#00A651"
                          strokeWidth="3"
                          strokeLinecap="round"
                          strokeLinejoin="round"
                          strokeDasharray="8,4"
                          points={trajectoryData.points
                            .filter((p, i) => !p.isProjected || i === scoreHistory.length - 1 || p.isProjected)
                            .slice(scoreHistory.length - 1)
                            .map((p, i) => {
                              const x = ((i + scoreHistory.length - 1) / (trajectoryData.points.length - 1)) * 100;
                              const y = 100 - ((p.score - 900) / (targetScore - 900 + 100)) * 100;
                              return `${x}%,${y}%`;
                            })
                            .join(' ')
                          }
                        />
                        
                        {/* Data points */}
                        {trajectoryData.points.map((p, i) => {
                          const x = (i / (trajectoryData.points.length - 1)) * 100;
                          const y = 100 - ((p.score - 900) / (targetScore - 900 + 100)) * 100;
                          return (
                            <circle
                              key={i}
                              cx={`${x}%`}
                              cy={`${y}%`}
                              r="5"
                              fill={p.isProjected ? "#00A651" : "#006BB6"}
                              stroke="white"
                              strokeWidth="2"
                            />
                          );
                        })}
                      </svg>
                      
                      {/* X-axis labels */}
                      <div className="flex justify-between mt-2 text-xs text-tz-gray-400">
                        <span>Start</span>
                        <span>Now</span>
                        <span>Test Day</span>
                      </div>
                    </div>
                  </div>
                  
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

                {/* Topic Heat Map */}
                <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-6">
                  <div className="flex items-center gap-2 mb-6">
                    <Sparkles className="w-5 h-5 text-tz-orange" />
                    <h2 className="text-h3 text-tz-navy">Topic Heat Map</h2>
                  </div>
                  
                  <div className="grid md:grid-cols-2 gap-8">
                    {/* Math Section */}
                    <div>
                      <h3 className="text-label text-tz-gray-400 mb-4">MATH</h3>
                      <div className="grid grid-cols-3 gap-2">
                        {MATH_TOPICS.map((topic) => {
                          const value = getTopicHeatValue(topic);
                          return (
                            <HeatMapCell 
                              key={topic} 
                              label={topicDisplayNames[topic]?.split(' ').slice(-1)[0] || topic}
                              value={value}
                            />
                          );
                        })}
                      </div>
                    </div>
                    
                    {/* Reading & Writing Section */}
                    <div>
                      <h3 className="text-label text-tz-gray-400 mb-4">READING & WRITING</h3>
                      <div className="grid grid-cols-3 gap-2">
                        {RW_TOPICS.map((topic) => {
                          const value = getTopicHeatValue(topic);
                          return (
                            <HeatMapCell 
                              key={topic} 
                              label={topicDisplayNames[topic]?.split(' ').slice(-1)[0] || topic}
                              value={value}
                            />
                          );
                        })}
                      </div>
                    </div>
                  </div>

                  {/* Legend */}
                  <div className="flex flex-wrap items-center justify-center gap-4 mt-6 pt-4 border-t border-tz-gray-100">
                    <span className="text-small text-tz-gray-400">Mastery:</span>
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
                </div>

                {/* Confidence Calibration */}
                <div className="bg-white rounded-xl border border-tz-gray-200 p-4 lg:p-6">
                  <div className="flex items-center gap-2 mb-2">
                    <Sparkles className="w-5 h-5 text-tz-orange" />
                    <h2 className="text-h3 text-tz-navy">Confidence Calibration</h2>
                  </div>
                  <p className="text-small text-tz-gray-400 mb-6">
                    Compare your confidence level with actual performance. Perfect calibration means the bars match.
                  </p>

                  <div className="space-y-4">
                    {mockCalibrationData.map((row, i) => (
                      <div key={i}>
                        <div className="flex flex-col sm:flex-row sm:items-center justify-between mb-1 gap-1">
                          <span className="text-small text-tz-gray-600 w-24">{row.confidence}</span>
                          <div className="flex items-center gap-4 text-small">
                            <span className="text-tz-blue">Expected: {row.predicted}%</span>
                            <span className="text-tz-green">Actual: {row.actual}%</span>
                          </div>
                        </div>
                        <div className="flex gap-1 h-6">
                          <div 
                            className="bg-tz-blue/30 rounded-l"
                            style={{ width: `${row.predicted}%` }}
                          />
                          <div 
                            className={cn(
                              "rounded-r",
                              row.actual >= row.predicted ? "bg-tz-green" : "bg-tz-orange"
                            )}
                            style={{ width: `${Math.abs(row.actual - row.predicted)}%`, marginLeft: row.actual < row.predicted ? `-${row.predicted - row.actual}%` : 0 }}
                          />
                        </div>
                      </div>
                    ))}
                  </div>

                  <div className="mt-6 p-4 bg-blue-50 rounded-lg border border-blue-100">
                    <p className="text-small text-tz-navy">
                      <strong>Insight:</strong> You tend to be overconfident on high-difficulty questions. 
                      Focus on building genuine mastery before feeling "very high" confidence.
                    </p>
                  </div>
                </div>
              </>
            ) : (
              /* Pro Features Preview for Free Users */
              <div className="bg-gradient-to-r from-orange-50 to-amber-50 rounded-xl border border-orange-200 p-4 lg:p-6">
                <div className="flex flex-col sm:flex-row sm:items-start justify-between gap-4">
                  <div>
                    <div className="flex items-center gap-2 mb-2">
                      <Lock className="w-5 h-5 text-tz-orange" />
                      <h3 className="text-h3 text-tz-navy">Pro Analytics</h3>
                    </div>
                    <p className="text-body text-tz-gray-600 mb-4">
                      Unlock advanced insights including score trajectory predictions, topic heat maps, 
                      and confidence calibration analysis.
                    </p>
                    <ul className="space-y-2 text-small text-tz-gray-600">
                      <li className="flex items-center gap-2">
                        <ChevronRight className="w-4 h-4 text-tz-orange" />
                        Predicted score on test day
                      </li>
                      <li className="flex items-center gap-2">
                        <ChevronRight className="w-4 h-4 text-tz-orange" />
                        Visual topic mastery heat map
                      </li>
                      <li className="flex items-center gap-2">
                        <ChevronRight className="w-4 h-4 text-tz-orange" />
                        Confidence calibration report
                      </li>
                    </ul>
                  </div>
                  <Link 
                    to="/pricing"
                    className="px-4 py-2 bg-tz-orange text-white rounded-lg text-sm font-medium hover:bg-orange-600 transition-all whitespace-nowrap self-start"
                  >
                    Unlock Pro
                  </Link>
                </div>
              </div>
            )}
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
                    <span>{session.questions} questions</span>
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
                    <td className="px-6 py-4 text-center text-body text-tz-gray-600">{session.questions}</td>
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

function HeatMapCell({ label, value }: { label: string; value: number | null }) {
  const getBgColor = (v: number | null) => {
    if (v === null) return "bg-tz-gray-100";
    if (v >= 70) return "bg-tz-green";
    if (v >= 40) return "bg-yellow-400";
    return "bg-red-400";
  };

  const getTextColor = (v: number | null) => {
    if (v === null) return "text-tz-gray-400";
    return "text-white";
  };

  return (
    <div className={cn(
      "aspect-square rounded-lg flex flex-col items-center justify-center p-1 lg:p-2 transition-all",
      getBgColor(value)
    )}>
      <span className={cn("text-xs font-medium truncate w-full text-center", getTextColor(value))}>
        {label}
      </span>
      {value !== null && (
        <span className={cn("text-sm lg:text-lg font-bold", getTextColor(value))}>
          {value}%
        </span>
      )}
    </div>
  );
}
