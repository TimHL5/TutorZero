import { useState } from "react";
import { useLocation, useNavigate } from "react-router";
import { Button } from "@/react-app/components/ui/button";
import { QuestionCard } from "@/react-app/components/question/QuestionCard";
import { FeedbackCard } from "@/react-app/components/feedback/FeedbackCard";
import { topicDisplayNames, type Question } from "@/data/questions";
import { MathText } from "@/react-app/components/ui/MathText";
import { 
  Trophy, 
  Target, 
  Clock, 
  TrendingUp, 
  CheckCircle, 
  XCircle,
  Home,
  RotateCcw,
  BookOpen,
  ChevronLeft,
  ChevronRight,
  Eye,
  EyeOff,
  AlertTriangle
} from "lucide-react";
import { cn } from "@/react-app/lib/utils";

type ConfidenceLevel = "guessing" | "somewhat" | "confident";

interface AttemptedQuestion {
  question: Question;
  selectedIndex: number;
  isCorrect: boolean;
  timeSpent: number;
  confidence?: ConfidenceLevel;
}

interface LocationState {
  attempts: AttemptedQuestion[];
  sessionTime: number;
}

export default function PracticeSummary() {
  const navigate = useNavigate();
  const location = useLocation();
  const state = location.state as LocationState | null;
  const [activeTab, setActiveTab] = useState<"overview" | "review">("overview");
  const [showAllQuestions, setShowAllQuestions] = useState(false);
  const [currentReviewIndex, setCurrentReviewIndex] = useState(0);

  // If no state, redirect to practice
  if (!state || !state.attempts || state.attempts.length === 0) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="text-center max-w-md mx-4">
          <Trophy className="w-16 h-16 text-muted-foreground mx-auto mb-4" />
          <h2 className="text-xl font-bold mb-2">No Session Data</h2>
          <p className="text-muted-foreground mb-6">
            Start a practice session to see your results here.
          </p>
          <Button onClick={() => navigate("/practice")}>
            Start Practice
          </Button>
        </div>
      </div>
    );
  }

  const { attempts, sessionTime } = state;

  // Calculate stats
  const totalQuestions = attempts.length;
  const correctCount = attempts.filter(a => a.isCorrect).length;
  const incorrectCount = totalQuestions - correctCount;
  const accuracy = Math.round((correctCount / totalQuestions) * 100);
  const totalTimeSeconds = Math.floor(sessionTime / 1000);
  const avgTimePerQuestion = Math.round(totalTimeSeconds / totalQuestions);

  // Get questions to review
  const questionsToReview = showAllQuestions 
    ? attempts 
    : attempts.filter(a => !a.isCorrect);

  // Group by topic
  const topicStats = attempts.reduce((acc, attempt) => {
    const topic = attempt.question.topic;
    if (!acc[topic]) {
      acc[topic] = { correct: 0, total: 0 };
    }
    acc[topic].total++;
    if (attempt.isCorrect) acc[topic].correct++;
    return acc;
  }, {} as Record<string, { correct: number; total: number }>);

  // Group by difficulty
  const difficultyStats = attempts.reduce((acc, attempt) => {
    const diff = attempt.question.difficulty;
    if (!acc[diff]) {
      acc[diff] = { correct: 0, total: 0 };
    }
    acc[diff].total++;
    if (attempt.isCorrect) acc[diff].correct++;
    return acc;
  }, {} as Record<string, { correct: number; total: number }>);

  // Find weakest topic
  const weakestTopic = Object.entries(topicStats)
    .map(([topic, stats]) => ({
      topic,
      accuracy: stats.total > 0 ? (stats.correct / stats.total) * 100 : 0
    }))
    .sort((a, b) => a.accuracy - b.accuracy)[0];

  // Find dangerous gaps (confident but wrong)
  const dangerousGaps = attempts.filter(a => a.confidence === "confident" && !a.isCorrect);
  const dangerousTopics = [...new Set(dangerousGaps.map(a => a.question.topic))];

  // Format time
  const formatTime = (seconds: number) => {
    const minutes = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${minutes}:${secs.toString().padStart(2, '0')}`;
  };

  // Get performance message
  const getPerformanceMessage = () => {
    if (accuracy >= 90) return { text: "Outstanding!", emoji: "🏆" };
    if (accuracy >= 75) return { text: "Great job!", emoji: "🌟" };
    if (accuracy >= 60) return { text: "Good progress!", emoji: "👍" };
    if (accuracy >= 40) return { text: "Keep practicing!", emoji: "💪" };
    return { text: "Room to grow!", emoji: "📚" };
  };

  const performance = getPerformanceMessage();

  const handlePrevReview = () => {
    setCurrentReviewIndex(prev => Math.max(0, prev - 1));
  };

  const handleNextReview = () => {
    setCurrentReviewIndex(prev => Math.min(questionsToReview.length - 1, prev + 1));
  };

  return (
    <div className="min-h-screen bg-muted/30">
      {/* Header */}
      <header className="bg-tz-navy text-white">
        <div className="max-w-4xl mx-auto px-4">
          <div className="h-14 flex items-center justify-between">
            <button 
              onClick={() => navigate("/dashboard")}
              className="flex items-center gap-2 text-white/80 hover:text-white transition-colors"
            >
              <Home className="w-4 h-4" />
              <span className="text-sm font-medium">Dashboard</span>
            </button>
            <h1 className="text-lg font-semibold">Session Complete</h1>
            <div className="w-16"></div>
          </div>
        </div>
      </header>

      <main className="max-w-4xl mx-auto px-4 py-8">
        {/* Tab Navigation */}
        <div className="flex gap-1 mb-6 bg-white rounded-lg p-1 border border-border">
          <button
            onClick={() => setActiveTab("overview")}
            className={cn(
              "flex-1 px-4 py-2.5 rounded-md text-sm font-medium transition-all",
              activeTab === "overview"
                ? "bg-tz-navy text-white"
                : "text-muted-foreground hover:text-foreground hover:bg-muted/50"
            )}
          >
            <Target className="w-4 h-4 inline mr-2" />
            Overview
          </button>
          <button
            onClick={() => {
              setActiveTab("review");
              setCurrentReviewIndex(0);
            }}
            className={cn(
              "flex-1 px-4 py-2.5 rounded-md text-sm font-medium transition-all",
              activeTab === "review"
                ? "bg-tz-navy text-white"
                : "text-muted-foreground hover:text-foreground hover:bg-muted/50"
            )}
          >
            <BookOpen className="w-4 h-4 inline mr-2" />
            Review {showAllQuestions ? "All" : "Mistakes"}
            {!showAllQuestions && incorrectCount > 0 && (
              <span className="ml-1.5 bg-red-500 text-white text-xs px-1.5 py-0.5 rounded-full">
                {incorrectCount}
              </span>
            )}
          </button>
        </div>

        {activeTab === "overview" ? (
          <>
            {/* Hero Stats Card */}
            <div className="bg-white rounded-xl shadow-sm border border-border p-8 mb-6 text-center">
              <div className="text-5xl mb-4">{performance.emoji}</div>
              <h2 className="text-2xl font-bold text-foreground mb-2">{performance.text}</h2>
              <p className="text-muted-foreground mb-8">
                You completed {totalQuestions} questions in {formatTime(totalTimeSeconds)}
              </p>

              {/* Main Stats Grid */}
              <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
                <StatCard
                  icon={<CheckCircle className="w-5 h-5 text-green-600" />}
                  label="Correct"
                  value={`${correctCount}/${totalQuestions}`}
                  color="green"
                />
                <StatCard
                  icon={<Target className="w-5 h-5 text-tz-blue" />}
                  label="Accuracy"
                  value={`${accuracy}%`}
                  color="blue"
                />
                <StatCard
                  icon={<Clock className="w-5 h-5 text-purple-600" />}
                  label="Total Time"
                  value={formatTime(totalTimeSeconds)}
                  color="purple"
                />
                <StatCard
                  icon={<TrendingUp className="w-5 h-5 text-amber-600" />}
                  label="Avg/Question"
                  value={`${avgTimePerQuestion}s`}
                  color="amber"
                />
              </div>

              {/* Dangerous Gaps Alert */}
              {dangerousTopics.length > 0 && (
                <div className="bg-red-50 border border-red-200 rounded-lg p-4 mb-6 text-left">
                  <div className="flex items-start gap-3">
                    <AlertTriangle className="w-5 h-5 text-red-500 flex-shrink-0 mt-0.5" />
                    <div>
                      <h3 className="font-semibold text-red-800 mb-1">Blind Spots Detected</h3>
                      <p className="text-sm text-red-700 mb-2">
                        You were confident but incorrect on {dangerousGaps.length} question{dangerousGaps.length > 1 ? 's' : ''} in:
                      </p>
                      <div className="flex flex-wrap gap-2">
                        {dangerousTopics.map(topic => (
                          <span key={topic} className="px-2 py-1 bg-white text-red-700 text-xs font-medium rounded border border-red-200">
                            {topicDisplayNames[topic] || topic}
                          </span>
                        ))}
                      </div>
                    </div>
                  </div>
                </div>
              )}

              {/* Action Buttons */}
              <div className="flex flex-col sm:flex-row gap-3 justify-center">
                <Button
                  variant="outline"
                  onClick={() => navigate("/dashboard")}
                >
                  <Home className="w-4 h-4 mr-2" />
                  Back to Dashboard
                </Button>
                <Button
                  onClick={() => navigate("/practice")}
                  className="bg-tz-blue hover:bg-tz-blue/90"
                >
                  <RotateCcw className="w-4 h-4 mr-2" />
                  Practice Again
                </Button>
                {weakestTopic && weakestTopic.accuracy < 70 && (
                  <Button
                    variant="secondary"
                    onClick={() => navigate(`/practice?topic=${weakestTopic.topic}`)}
                  >
                    <BookOpen className="w-4 h-4 mr-2" />
                    Focus on {topicDisplayNames[weakestTopic.topic]}
                  </Button>
                )}
              </div>
            </div>

            {/* Performance by Topic */}
            <div className="grid md:grid-cols-2 gap-6 mb-6">
              <div className="bg-white rounded-xl shadow-sm border border-border p-6">
                <h3 className="font-semibold text-foreground mb-4 flex items-center gap-2">
                  <Target className="w-5 h-5 text-tz-blue" />
                  Performance by Topic
                </h3>
                <div className="space-y-3">
                  {Object.entries(topicStats).map(([topic, stats]) => {
                    const topicAccuracy = Math.round((stats.correct / stats.total) * 100);
                    return (
                      <div key={topic}>
                        <div className="flex items-center justify-between mb-1">
                          <span className="text-sm font-medium text-foreground">
                            {topicDisplayNames[topic] || topic}
                          </span>
                          <span className="text-sm text-muted-foreground">
                            {stats.correct}/{stats.total} ({topicAccuracy}%)
                          </span>
                        </div>
                        <div className="h-2 bg-muted rounded-full overflow-hidden">
                          <div
                            className={cn(
                              "h-full rounded-full transition-all",
                              topicAccuracy >= 70 ? "bg-green-500" : 
                              topicAccuracy >= 50 ? "bg-amber-500" : "bg-red-500"
                            )}
                            style={{ width: `${topicAccuracy}%` }}
                          />
                        </div>
                      </div>
                    );
                  })}
                </div>
              </div>

              {/* Performance by Difficulty */}
              <div className="bg-white rounded-xl shadow-sm border border-border p-6">
                <h3 className="font-semibold text-foreground mb-4 flex items-center gap-2">
                  <TrendingUp className="w-5 h-5 text-purple-600" />
                  Performance by Difficulty
                </h3>
                <div className="space-y-3">
                  {["foundation", "easy", "medium", "hard", "advanced"].map(diff => {
                    const stats = difficultyStats[diff];
                    if (!stats) return null;
                    const diffAccuracy = Math.round((stats.correct / stats.total) * 100);
                    return (
                      <div key={diff}>
                        <div className="flex items-center justify-between mb-1">
                          <span className="text-sm font-medium text-foreground capitalize">
                            {diff}
                          </span>
                          <span className="text-sm text-muted-foreground">
                            {stats.correct}/{stats.total} ({diffAccuracy}%)
                          </span>
                        </div>
                        <div className="h-2 bg-muted rounded-full overflow-hidden">
                          <div
                            className={cn(
                              "h-full rounded-full transition-all",
                              diffAccuracy >= 70 ? "bg-green-500" : 
                              diffAccuracy >= 50 ? "bg-amber-500" : "bg-red-500"
                            )}
                            style={{ width: `${diffAccuracy}%` }}
                          />
                        </div>
                      </div>
                    );
                  })}
                </div>
              </div>
            </div>

            {/* Quick Question Summary */}
            <div className="bg-white rounded-xl shadow-sm border border-border p-6">
              <div className="flex items-center justify-between mb-4">
                <h3 className="font-semibold text-foreground flex items-center gap-2">
                  <BookOpen className="w-5 h-5 text-tz-navy" />
                  Question Summary
                </h3>
                {incorrectCount > 0 && (
                  <Button
                    variant="outline"
                    size="sm"
                    onClick={() => {
                      setActiveTab("review");
                      setCurrentReviewIndex(0);
                    }}
                  >
                    Review Mistakes
                    <ChevronRight className="w-4 h-4 ml-1" />
                  </Button>
                )}
              </div>
              <div className="space-y-2">
                {attempts.map((attempt, index) => (
                  <button
                    key={index}
                    onClick={() => {
                      const reviewIndex = showAllQuestions 
                        ? index 
                        : attempts.filter((a, i) => i < index && !a.isCorrect).length;
                      if (!attempt.isCorrect || showAllQuestions) {
                        setActiveTab("review");
                        setCurrentReviewIndex(attempt.isCorrect && !showAllQuestions ? 0 : reviewIndex);
                      }
                    }}
                    className={cn(
                      "w-full p-3 rounded-lg border flex items-start gap-3 text-left transition-colors",
                      attempt.isCorrect 
                        ? "bg-green-50/50 border-green-200 hover:bg-green-50" 
                        : "bg-red-50/50 border-red-200 hover:bg-red-50"
                    )}
                  >
                    <div className="flex-shrink-0 pt-0.5">
                      {attempt.isCorrect ? (
                        <CheckCircle className="w-5 h-5 text-green-600" />
                      ) : (
                        <XCircle className="w-5 h-5 text-red-600" />
                      )}
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="text-sm text-foreground line-clamp-1 mb-1">
                        <MathText text={attempt.question.questionText} />
                      </p>
                      <div className="flex flex-wrap items-center gap-2 text-xs text-muted-foreground">
                        <span className="bg-muted px-2 py-0.5 rounded">
                          {topicDisplayNames[attempt.question.topic]}
                        </span>
                        <span className="capitalize">{attempt.question.difficulty}</span>
                      </div>
                    </div>
                    {!attempt.isCorrect && (
                      <ChevronRight className="w-4 h-4 text-muted-foreground flex-shrink-0 mt-1" />
                    )}
                  </button>
                ))}
              </div>
            </div>
          </>
        ) : (
          /* Review Tab */
          <div>
            {/* Review Controls */}
            <div className="bg-white rounded-xl shadow-sm border border-border p-4 mb-6">
              <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3">
                <div className="flex items-center gap-3">
                  <span className="text-sm text-muted-foreground">
                    Reviewing {currentReviewIndex + 1} of {questionsToReview.length} 
                    {showAllQuestions ? " questions" : " incorrect questions"}
                  </span>
                </div>
                <button
                  onClick={() => {
                    setShowAllQuestions(!showAllQuestions);
                    setCurrentReviewIndex(0);
                  }}
                  className="flex items-center gap-2 text-sm text-tz-blue hover:text-tz-blue/80 transition-colors"
                >
                  {showAllQuestions ? (
                    <>
                      <EyeOff className="w-4 h-4" />
                      Show Only Mistakes
                    </>
                  ) : (
                    <>
                      <Eye className="w-4 h-4" />
                      Show All Questions
                    </>
                  )}
                </button>
              </div>

              {/* Progress dots */}
              <div className="flex gap-1.5 mt-4 flex-wrap">
                {questionsToReview.map((attempt, index) => (
                  <button
                    key={index}
                    onClick={() => setCurrentReviewIndex(index)}
                    className={cn(
                      "w-8 h-8 rounded-full text-xs font-medium transition-all",
                      index === currentReviewIndex
                        ? "bg-tz-navy text-white"
                        : attempt.isCorrect
                          ? "bg-green-100 text-green-700 hover:bg-green-200"
                          : "bg-red-100 text-red-700 hover:bg-red-200"
                    )}
                  >
                    {index + 1}
                  </button>
                ))}
              </div>
            </div>

            {questionsToReview.length > 0 ? (
              <>
                {/* Current Question Review */}
                <div className="mb-4">
                  <QuestionCard
                    question={questionsToReview[currentReviewIndex].question}
                    selectedIndex={questionsToReview[currentReviewIndex].selectedIndex}
                    onSelectAnswer={() => {}}
                    showFeedback={true}
                    disabled={true}
                  />
                </div>

                {/* Feedback Card */}
                <div className="mb-6 animate-in fade-in duration-300">
                  <FeedbackCard
                    question={questionsToReview[currentReviewIndex].question}
                    selectedIndex={questionsToReview[currentReviewIndex].selectedIndex}
                    isCorrect={questionsToReview[currentReviewIndex].isCorrect}
                  />
                </div>

                {/* Navigation */}
                <div className="flex items-center justify-between">
                  <Button
                    variant="outline"
                    onClick={handlePrevReview}
                    disabled={currentReviewIndex === 0}
                  >
                    <ChevronLeft className="w-4 h-4 mr-2" />
                    Previous
                  </Button>

                  <Button
                    variant="outline"
                    onClick={() => setActiveTab("overview")}
                  >
                    Back to Overview
                  </Button>

                  <Button
                    variant="outline"
                    onClick={handleNextReview}
                    disabled={currentReviewIndex === questionsToReview.length - 1}
                  >
                    Next
                    <ChevronRight className="w-4 h-4 ml-2" />
                  </Button>
                </div>
              </>
            ) : (
              <div className="bg-white rounded-xl shadow-sm border border-border p-12 text-center">
                <CheckCircle className="w-16 h-16 text-green-500 mx-auto mb-4" />
                <h3 className="text-xl font-bold text-foreground mb-2">Perfect Score!</h3>
                <p className="text-muted-foreground mb-6">
                  You answered all questions correctly. Great job!
                </p>
                <Button onClick={() => setShowAllQuestions(true)}>
                  <Eye className="w-4 h-4 mr-2" />
                  Review All Questions Anyway
                </Button>
              </div>
            )}
          </div>
        )}
      </main>
    </div>
  );
}

interface StatCardProps {
  icon: React.ReactNode;
  label: string;
  value: string;
  color: "green" | "blue" | "purple" | "amber";
}

function StatCard({ icon, label, value, color }: StatCardProps) {
  const bgColors = {
    green: "bg-green-50",
    blue: "bg-blue-50",
    purple: "bg-purple-50",
    amber: "bg-amber-50"
  };

  return (
    <div className={cn("rounded-lg p-4", bgColors[color])}>
      <div className="flex items-center justify-center mb-2">
        {icon}
      </div>
      <div className="text-2xl font-bold text-foreground">{value}</div>
      <div className="text-xs text-muted-foreground">{label}</div>
    </div>
  );
}
