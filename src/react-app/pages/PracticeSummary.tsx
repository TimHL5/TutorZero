import { useEffect, useMemo, useState } from "react";
import { useLocation, useNavigate } from "react-router";
import { Button } from "@/react-app/components/ui/button";
import { topicDisplayNames, type Question } from "@/data/questions";
import {
  Trophy,
  TrendingUp,
  TrendingDown,
  Minus,
  CheckCircle,
  XCircle,
  Home,
  ArrowRight,
  Sparkles,
  Target,
} from "lucide-react";
import { cn } from "@/react-app/lib/utils";

type ConfidenceLevel = "guessing" | "somewhat" | "confident";
type PatternSeverity = "high" | "medium" | "low";
type PatternType =
  | "pacing"
  | "calibration"
  | "topic_weakness"
  | "improvement"
  | "misconception";

interface AttemptedQuestion {
  question: Question;
  selectedIndex: number;
  isCorrect: boolean;
  timeSpent: number;
  confidence?: ConfidenceLevel;
}

interface ReviewPattern {
  pattern: string;
  evidence: string;
  severity: PatternSeverity;
  type: PatternType;
}

interface ReviewerOutput {
  highlights: string[];
  patterns: ReviewPattern[];
  calibration_delta: number;
  estimated_math_delta: number;
  estimated_rw_delta: number;
  new_calibration: number;
  new_math: number;
  new_rw: number;
  next_session_focus: { topic: string; skill: string; reason: string };
  summary: string;
}

interface ReviewerEnvelope {
  success?: boolean;
  review_id?: number | null;
  review?: ReviewerOutput;
  previous?: { math: number; rw: number; calibration: number };
}

interface LocationState {
  attempts: AttemptedQuestion[];
  sessionTime: number;
  review?: ReviewerEnvelope | null;
  reviewError?: string | null;
}

function deltaTone(delta: number) {
  if (delta > 0) return { text: "text-tz-green", bg: "bg-tz-green/10", icon: TrendingUp };
  if (delta < 0) return { text: "text-red-500", bg: "bg-red-500/10", icon: TrendingDown };
  return { text: "text-tz-gray-400", bg: "bg-tz-gray-100", icon: Minus };
}

function severityClass(s: PatternSeverity): string {
  if (s === "high") return "border-l-red-500 bg-red-50";
  if (s === "medium") return "border-l-tz-orange bg-orange-50";
  return "border-l-tz-blue bg-blue-50";
}

function typeBadge(t: PatternType): string {
  switch (t) {
    case "pacing": return "Pacing";
    case "calibration": return "Calibration";
    case "topic_weakness": return "Topic gap";
    case "improvement": return "Improvement";
    case "misconception": return "Misconception";
  }
}

export default function PracticeSummary() {
  const navigate = useNavigate();
  const location = useLocation();
  const state = location.state as LocationState | null;

  // Track which patterns the student has dismissed locally so the UI
  // hides them immediately. Server is updated via /api/reviewer/dismiss.
  const [dismissed, setDismissed] = useState<Set<string>>(new Set());
  const [accepted, setAccepted] = useState<Set<string>>(new Set());

  useEffect(() => {
    setDismissed(new Set());
    setAccepted(new Set());
  }, [state?.review?.review_id]);

  // All hooks above any conditional return — React rules-of-hooks.
  const reviewOutput = state?.review?.review ?? null;
  const visiblePatterns = useMemo(
    () => (reviewOutput?.patterns ?? []).filter(p => !dismissed.has(p.pattern)),
    [reviewOutput, dismissed]
  );

  if (!state || !state.attempts || state.attempts.length === 0) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="text-center max-w-md mx-4">
          <Trophy className="w-16 h-16 text-muted-foreground mx-auto mb-4" />
          <h2 className="text-xl font-bold mb-2">No Session Data</h2>
          <p className="text-muted-foreground mb-6">
            Start a practice session to see your results here.
          </p>
          <Button onClick={() => navigate("/practice")}>Start Practice</Button>
        </div>
      </div>
    );
  }

  const { attempts, review, reviewError } = state;
  const previousScores = review?.previous ?? null;
  const reviewId = review?.review_id ?? null;

  const totalQuestions = attempts.length;
  const correctCount = attempts.filter(a => a.isCorrect).length;
  const accuracy = Math.round((correctCount / totalQuestions) * 100);

  const handleDismissPattern = async (pattern: string) => {
    setDismissed(prev => new Set(prev).add(pattern));
    if (reviewId === null) return;
    try {
      await fetch("/api/reviewer/dismiss", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ review_id: reviewId, pattern }),
      });
    } catch (e) {
      console.error("Dismiss failed:", e);
    }
  };

  const handleAcceptPattern = (pattern: string) => {
    setAccepted(prev => new Set(prev).add(pattern));
  };

  const newMath = reviewOutput?.new_math ?? null;
  const newRW = reviewOutput?.new_rw ?? null;
  const mathDelta = reviewOutput?.estimated_math_delta ?? 0;
  const rwDelta = reviewOutput?.estimated_rw_delta ?? 0;
  const totalNew = newMath !== null && newRW !== null ? newMath + newRW : null;
  const totalDelta = mathDelta + rwDelta;
  const totalTone = deltaTone(totalDelta);
  const TotalIcon = totalTone.icon;

  const nextFocus = reviewOutput?.next_session_focus ?? null;
  const nextFocusTopic = nextFocus?.topic ?? null;
  const nextFocusSkill = nextFocus?.skill ?? null;
  const nextFocusUrl = nextFocusTopic
    ? `/practice?topic=${encodeURIComponent(nextFocusTopic)}${nextFocusSkill ? `&skill=${encodeURIComponent(nextFocusSkill)}` : ""}`
    : "/practice";

  return (
    <div className="min-h-screen bg-tz-cream py-8 sm:py-12 px-4">
      <div className="max-w-3xl mx-auto space-y-6">
        {/* 1. SCORE DELTA HERO */}
        <section className="bg-white rounded-2xl shadow-sm border border-tz-gray-200 p-6 sm:p-8">
          {totalNew !== null ? (
            <>
              <div className="flex items-baseline gap-3 flex-wrap">
                <span className="text-sm uppercase tracking-wide text-tz-gray-500">Your predicted score</span>
              </div>
              <div className="flex items-baseline gap-4 mt-2">
                <span className="text-5xl sm:text-6xl font-semibold text-tz-navy tabular-nums">{totalNew}</span>
                <span className={cn("flex items-center gap-1 text-lg font-medium tabular-nums", totalTone.text)}>
                  <TotalIcon className="w-5 h-5" />
                  {totalDelta > 0 ? "+" : ""}{totalDelta}
                </span>
              </div>
              <div className="grid grid-cols-2 gap-3 mt-6">
                <ScoreCard label="Math" value={newMath ?? 0} delta={mathDelta} previous={previousScores?.math ?? null} />
                <ScoreCard label="Reading & Writing" value={newRW ?? 0} delta={rwDelta} previous={previousScores?.rw ?? null} />
              </div>
              {reviewOutput?.summary && (
                <p className="mt-6 text-tz-gray-700 leading-relaxed">{reviewOutput.summary}</p>
              )}
            </>
          ) : (
            <FallbackHero
              accuracy={accuracy}
              correctCount={correctCount}
              totalQuestions={totalQuestions}
              reviewError={reviewError ?? null}
            />
          )}
        </section>

        {/* 2. HIGHLIGHTS */}
        {reviewOutput && reviewOutput.highlights.length > 0 && (
          <section className="bg-white rounded-2xl shadow-sm border border-tz-gray-200 p-6">
            <h3 className="text-h3 text-tz-navy mb-4 flex items-center gap-2">
              <Sparkles className="w-5 h-5 text-tz-green" />
              What went well
            </h3>
            <ul className="space-y-2">
              {reviewOutput.highlights.map((h, i) => (
                <li key={i} className="flex items-start gap-2 text-tz-gray-700">
                  <CheckCircle className="w-5 h-5 text-tz-green flex-shrink-0 mt-0.5" />
                  <span>{h}</span>
                </li>
              ))}
            </ul>
          </section>
        )}

        {/* 3. PATTERNS */}
        {reviewOutput && visiblePatterns.length > 0 && (
          <section className="bg-white rounded-2xl shadow-sm border border-tz-gray-200 p-6">
            <h3 className="text-h3 text-tz-navy mb-4">Patterns we noticed</h3>
            <div className="space-y-3">
              {visiblePatterns.map((p) => {
                const isAccepted = accepted.has(p.pattern);
                return (
                  <article
                    key={p.pattern}
                    className={cn(
                      "border-l-4 rounded-r-lg p-4 transition-opacity",
                      severityClass(p.severity),
                      isAccepted && "opacity-60"
                    )}
                  >
                    <div className="flex items-start justify-between gap-3 mb-2">
                      <div>
                        <span className="text-xs font-semibold uppercase tracking-wide text-tz-gray-500">
                          {typeBadge(p.type)} · {p.severity}
                        </span>
                        <h4 className="text-base font-semibold text-tz-navy mt-1">{p.pattern}</h4>
                      </div>
                    </div>
                    <p className="text-sm text-tz-gray-700">{p.evidence}</p>
                    <div className="flex gap-2 mt-3">
                      <button
                        onClick={() => handleAcceptPattern(p.pattern)}
                        disabled={isAccepted}
                        className="text-sm px-3 py-1.5 rounded-md border border-tz-gray-300 bg-white hover:bg-tz-gray-50 disabled:bg-tz-gray-100 disabled:text-tz-gray-400"
                      >
                        {isAccepted ? "Noted ✓" : "Got it, noted"}
                      </button>
                      <button
                        onClick={() => handleDismissPattern(p.pattern)}
                        className="text-sm px-3 py-1.5 rounded-md text-tz-gray-500 hover:bg-tz-gray-100"
                      >
                        Doesn't apply
                      </button>
                    </div>
                  </article>
                );
              })}
            </div>
          </section>
        )}

        {/* 4. CALIBRATION */}
        {reviewOutput && previousScores && (
          <CalibrationCard
            before={previousScores.calibration}
            after={reviewOutput.new_calibration}
          />
        )}

        {/* 5. NEXT SESSION FOCUS */}
        {nextFocus && (
          <section className="bg-tz-navy text-white rounded-2xl shadow-sm p-6 sm:p-8">
            <div className="flex items-start gap-3 mb-3">
              <Target className="w-6 h-6 text-tz-orange flex-shrink-0 mt-1" />
              <div>
                <p className="text-xs uppercase tracking-wide text-white/60">Next up</p>
                <h3 className="text-xl sm:text-2xl font-semibold mt-1">
                  {topicDisplayNames[nextFocus.topic] ?? nextFocus.topic}
                </h3>
                <p className="text-white/80 mt-2 leading-relaxed">{nextFocus.reason}</p>
              </div>
            </div>
            <Button
              onClick={() => navigate(nextFocusUrl)}
              className="w-full sm:w-auto bg-tz-orange hover:bg-tz-orange/90 text-white mt-2"
            >
              Start next session <ArrowRight className="w-4 h-4 ml-1" />
            </Button>
          </section>
        )}

        {/* 6. HOME */}
        <div className="flex justify-center pt-2">
          <Button
            variant="outline"
            onClick={() => navigate("/dashboard")}
            className="gap-2"
          >
            <Home className="w-4 h-4" /> Back to dashboard
          </Button>
        </div>
      </div>
    </div>
  );
}

function ScoreCard({ label, value, delta, previous }: {
  label: string; value: number; delta: number; previous: number | null;
}) {
  const tone = deltaTone(delta);
  const Icon = tone.icon;
  return (
    <div className="rounded-xl bg-tz-gray-50 border border-tz-gray-200 p-4">
      <div className="text-xs uppercase tracking-wide text-tz-gray-500">{label}</div>
      <div className="flex items-baseline gap-2 mt-1">
        <span className="text-2xl font-semibold text-tz-navy tabular-nums">{value}</span>
        <span className={cn("flex items-center gap-0.5 text-sm font-medium tabular-nums", tone.text)}>
          <Icon className="w-3.5 h-3.5" />
          {delta > 0 ? "+" : ""}{delta}
        </span>
      </div>
      {previous !== null && (
        <div className="text-xs text-tz-gray-500 mt-1 tabular-nums">was {previous}</div>
      )}
    </div>
  );
}

function CalibrationCard({ before, after }: { before: number; after: number }) {
  const delta = Math.round((after - before) * 10) / 10;
  const tone = deltaTone(delta);
  const Icon = tone.icon;
  const direction = delta > 0 ? "improved" : delta < 0 ? "drifted" : "held steady";
  return (
    <section className="bg-white rounded-2xl shadow-sm border border-tz-gray-200 p-6">
      <h3 className="text-h3 text-tz-navy mb-2">Calibration</h3>
      <p className="text-sm text-tz-gray-600 mb-4">
        How well your confidence matched the outcome.
      </p>
      <div className="flex items-end gap-6">
        <div>
          <div className="text-xs uppercase tracking-wide text-tz-gray-500">Before</div>
          <div className="text-2xl font-semibold text-tz-gray-700 tabular-nums">{Math.round(before)}</div>
        </div>
        <ArrowRight className="w-5 h-5 text-tz-gray-400 mb-2" />
        <div>
          <div className="text-xs uppercase tracking-wide text-tz-gray-500">After</div>
          <div className="text-2xl font-semibold text-tz-navy tabular-nums">{Math.round(after)}</div>
        </div>
        <div className={cn("flex items-center gap-1 text-sm font-medium ml-auto mb-1", tone.text)}>
          <Icon className="w-4 h-4" />
          {delta > 0 ? "+" : ""}{delta}
        </div>
      </div>
      <p className="text-sm text-tz-gray-700 mt-4">
        Your calibration {direction} from {Math.round(before)} to {Math.round(after)}.
      </p>
    </section>
  );
}

function FallbackHero({
  accuracy,
  correctCount,
  totalQuestions,
  reviewError,
}: {
  accuracy: number;
  correctCount: number;
  totalQuestions: number;
  reviewError: string | null;
}) {
  return (
    <>
      <h2 className="text-h2 text-tz-navy">Session complete</h2>
      <div className="grid grid-cols-3 gap-3 mt-4">
        <Stat label="Correct" value={`${correctCount}/${totalQuestions}`} icon={CheckCircle} tone="text-tz-green" />
        <Stat label="Accuracy" value={`${accuracy}%`} icon={Target} tone="text-tz-blue" />
        <Stat label="Wrong" value={`${totalQuestions - correctCount}`} icon={XCircle} tone="text-red-500" />
      </div>
      {reviewError && (
        <p className="text-xs text-tz-gray-500 mt-4">
          AI review unavailable: {reviewError}. Your session was still recorded.
        </p>
      )}
    </>
  );
}

function Stat({
  label,
  value,
  icon: Icon,
  tone,
}: {
  label: string;
  value: string;
  icon: typeof CheckCircle;
  tone: string;
}) {
  return (
    <div className="rounded-xl bg-tz-gray-50 border border-tz-gray-200 p-3">
      <Icon className={cn("w-4 h-4", tone)} />
      <div className="text-xs uppercase tracking-wide text-tz-gray-500 mt-1">{label}</div>
      <div className="text-lg font-semibold text-tz-navy tabular-nums">{value}</div>
    </div>
  );
}
