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
import { TrendingUp, TrendingDown, Minus, Target, Clock, Flame, AlertTriangle, Calculator, BookOpen, BarChart2, ChevronRight } from "lucide-react";
import { cn } from "@/react-app/lib/utils";

export default function Dashboard() {
  const navigate = useNavigate();
  const { user, isPending } = useAuth();
  const { progress, isLoaded, getWeakestTopics } = useStudentProgress();

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

  // Calculate stats
  const estimatedTotal = progress.estimatedMathScore + progress.estimatedRWScore;
  const baselineScore = progress.diagnosticCompleted ? 800 : null;
  const scoreChange = baselineScore ? estimatedTotal - baselineScore : null;

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
            value={progress.currentStreak.toString()}
            unit="days"
            subtext={
              <span className="text-tz-gray-400">Best: {progress.longestStreak}d</span>
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
          <h3 className="text-lg sm:text-h3 text-tz-navy mb-3 sm:mb-4">Your Progress</h3>
          
          {allTopics.length === 0 ? (
            <div className="bg-white rounded-lg border border-tz-gray-200 p-6 sm:p-8 text-center">
              <p className="text-body text-tz-gray-600 mb-2">No practice data yet</p>
              <p className="text-xs sm:text-small text-tz-gray-400">
                Start a practice session to see your progress by topic
              </p>
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
