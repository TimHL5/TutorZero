import { useEffect, useState, useRef } from "react";
import { Link, useNavigate } from "react-router";
import { topicDisplayNames, type Question } from "@/data/questions";
import { useStudentProgress } from "@/react-app/hooks/useStudentProgress";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { ArrowRight, TrendingUp, TrendingDown, AlertTriangle, Home } from "lucide-react";
// Utility classes used inline

const WORDMARK_LIGHT = "https://019c2e5b-2f20-7a1a-8266-2d41e0797564.mochausercontent.com/tutorzero-wordmark-on-dark.png";

type ConfidenceLevel = "guessing" | "somewhat" | "confident";

interface StoredResults {
  answers: Array<{
    questionId: number;
    selectedIndex: number;
    isCorrect: boolean;
    confidence?: ConfidenceLevel;
    timeSpent: number;
  }>;
  questions: Question[];
  totalQuestions: number;
  correctAnswers: number;
  timestamp: number;
}

interface TopicScore {
  topic: string;
  displayName: string;
  correct: number;
  total: number;
  percentage: number;
}

interface DangerousGap {
  topic: string;
  displayName: string;
  confidentWrong: number;
  total: number;
}

export default function DiagnosticResults() {
  const navigate = useNavigate();
  const { user } = useAuth();
  const [results, setResults] = useState<StoredResults | null>(null);
  const [topicScores, setTopicScores] = useState<TopicScore[]>([]);
  const [estimatedScore, setEstimatedScore] = useState({ low: 0, high: 0 });
  const [dangerousGaps, setDangerousGaps] = useState<DangerousGap[]>([]);
  const { recordSession } = useStudentProgress();
  const hasRecordedSession = useRef(false);

  // Data processing effect: parse localStorage, calculate scores, set state
  useEffect(() => {
    const stored = localStorage.getItem("diagnosticResults");
    if (!stored) {
      navigate("/diagnostic");
      return;
    }

    const parsed: StoredResults = JSON.parse(stored);
    setResults(parsed);

    // Calculate topic scores
    const topicMap = new Map<string, { correct: number; total: number }>();
    const confidenceMap = new Map<string, { confidentWrong: number; total: number }>();

    parsed.answers.forEach((answer) => {
      const question = parsed.questions.find((q) => q.id === answer.questionId);
      if (!question) return;

      // Topic scores
      const current = topicMap.get(question.topic) || { correct: 0, total: 0 };
      topicMap.set(question.topic, {
        correct: current.correct + (answer.isCorrect ? 1 : 0),
        total: current.total + 1,
      });

      // Dangerous gaps: confident but wrong
      if (answer.confidence === "confident" && !answer.isCorrect) {
        const gap = confidenceMap.get(question.topic) || { confidentWrong: 0, total: 0 };
        confidenceMap.set(question.topic, {
          confidentWrong: gap.confidentWrong + 1,
          total: gap.total + 1,
        });
      }
    });

    const scores: TopicScore[] = Array.from(topicMap.entries()).map(([topic, data]) => ({
      topic,
      displayName: topicDisplayNames[topic] || topic,
      correct: data.correct,
      total: data.total,
      percentage: Math.round((data.correct / data.total) * 100),
    }));

    scores.sort((a, b) => a.percentage - b.percentage);
    setTopicScores(scores);

    // Dangerous gaps
    const gaps: DangerousGap[] = Array.from(confidenceMap.entries())
      .filter(([_, data]) => data.confidentWrong > 0)
      .map(([topic, data]) => ({
        topic,
        displayName: topicDisplayNames[topic] || topic,
        confidentWrong: data.confidentWrong,
        total: data.total,
      }));
    setDangerousGaps(gaps);

    // Calculate estimated SAT score
    const overallPercentage = parsed.correctAnswers / parsed.totalQuestions;
    const baseScore = 400;
    const maxAdditional = 1200;
    const estimatedMid = Math.round(baseScore + overallPercentage * maxAdditional);
    setEstimatedScore({
      low: Math.max(400, estimatedMid - 50),
      high: Math.min(1600, estimatedMid + 50),
    });
  }, [navigate]);

  // Recording effect: record session once on mount (ref-guarded)
  useEffect(() => {
    if (hasRecordedSession.current) return;

    const stored = localStorage.getItem("diagnosticResults");
    if (!stored) return;

    const parsed: StoredResults = JSON.parse(stored);
    hasRecordedSession.current = true;
    const attempts = parsed.answers.map(answer => {
      const question = parsed.questions.find(q => q.id === answer.questionId);
      return {
        topic: question?.topic || "unknown",
        isCorrect: answer.isCorrect
      };
    });
    recordSession("diagnostic", attempts, 0);
  }, []);

  if (!results) {
    return (
      <div className="min-h-screen bg-white flex items-center justify-center">
        <div className="animate-pulse text-tz-gray-400">Loading results...</div>
      </div>
    );
  }

  // Separate strengths and weaknesses
  const strengths = topicScores.filter(s => s.percentage >= 70).slice(-3).reverse();
  const weaknesses = topicScores.filter(s => s.percentage < 70).slice(0, 3);

  // Study plan items (top 5 weak topics)
  const studyTopics = topicScores.slice(0, 5);

  return (
    <div className="min-h-screen bg-white">
      {/* Simple header */}
      <header className="h-16 border-b border-tz-gray-200 flex items-center px-4 sm:px-6">
        <Link 
          to="/dashboard" 
          className="flex items-center gap-2 text-tz-gray-600 hover:text-tz-navy transition-colors"
        >
          <Home className="w-5 h-5" />
          <span className="text-sm font-medium hidden sm:inline">Dashboard</span>
        </Link>
        <div className="flex-1 flex justify-center">
          <img src={WORDMARK_LIGHT} alt="TutorZero" className="h-6" />
        </div>
        <div className="w-20 hidden sm:block" />
      </header>

      <main className="max-w-3xl mx-auto px-4 py-12">
        {/* Title */}
        <h1 className="text-h1 text-tz-navy text-center mb-8">Your Diagnostic Results</h1>

        {/* Score Display */}
        <div className="text-center mb-4">
          <div className="text-display text-tz-navy">
            {estimatedScore.low} – {estimatedScore.high}
          </div>
        </div>
        <p className="text-body text-tz-gray-600 text-center mb-12">
          Based on {results.totalQuestions} questions. Accuracy improves as you practice more.
        </p>

        {/* Strengths & Weaknesses */}
        <div className="grid md:grid-cols-2 gap-8 mb-12">
          {/* Strengths */}
          <div>
            <h2 className="text-h3 text-tz-navy mb-4 flex items-center gap-2">
              <TrendingUp className="w-5 h-5 text-tz-green" />
              Strengths
            </h2>
            {strengths.length === 0 ? (
              <p className="text-body text-tz-gray-400">Complete more questions to identify strengths</p>
            ) : (
              <div className="space-y-3">
                {strengths.map((topic) => (
                  <div key={topic.topic} className="flex items-center justify-between p-3 bg-green-50 rounded-lg border border-green-100">
                    <span className="text-body text-tz-navy">{topic.displayName}</span>
                    <span className="text-body-strong text-tz-green">{topic.percentage}%</span>
                  </div>
                ))}
              </div>
            )}
          </div>

          {/* Needs Work */}
          <div>
            <h2 className="text-h3 text-tz-navy mb-4 flex items-center gap-2">
              <TrendingDown className="w-5 h-5 text-tz-orange" />
              Needs Work
            </h2>
            {weaknesses.length === 0 ? (
              <p className="text-body text-tz-gray-400">Great job! No major weaknesses detected</p>
            ) : (
              <div className="space-y-3">
                {weaknesses.map((topic) => (
                  <div key={topic.topic} className="flex items-center justify-between p-3 bg-orange-50 rounded-lg border border-orange-100">
                    <span className="text-body text-tz-navy">{topic.displayName}</span>
                    <span className="text-body-strong text-tz-orange">{topic.percentage}%</span>
                  </div>
                ))}
              </div>
            )}
          </div>
        </div>

        {/* Dangerous Gaps */}
        {dangerousGaps.length > 0 && (
          <div className="bg-red-50 border-l-4 border-red-500 rounded-r-lg p-6 mb-12">
            <h2 className="text-h3 text-red-700 mb-2 flex items-center gap-2">
              <AlertTriangle className="w-5 h-5" />
              Blind Spots Detected
            </h2>
            <p className="text-body text-red-600 mb-4">
              You rated "Confident" on these topics but answered incorrectly. These are high-priority gaps.
            </p>
            <div className="flex flex-wrap gap-2">
              {dangerousGaps.map((gap) => (
                <span
                  key={gap.topic}
                  className="px-3 py-1.5 bg-white text-red-700 rounded-lg text-sm font-medium border border-red-200"
                >
                  {gap.displayName}
                </span>
              ))}
            </div>
            {!user && (
              <p className="text-small text-red-500 mt-4">
                Pro includes deep analysis of WHY these gaps exist and a targeted remediation path.
              </p>
            )}
          </div>
        )}

        {/* Study Plan Preview */}
        <div className="mb-12">
          <h2 className="text-h3 text-tz-navy mb-4">Your Recommended Focus Areas</h2>
          <div className="bg-tz-off-white rounded-lg p-6">
            <ol className="space-y-3">
              {studyTopics.map((topic, index) => (
                <li key={topic.topic} className="flex items-center gap-4">
                  <span className="w-6 h-6 rounded-full bg-tz-blue text-white text-sm font-medium flex items-center justify-center flex-shrink-0">
                    {index + 1}
                  </span>
                  <span className="text-body text-tz-navy flex-1">{topic.displayName}</span>
                  <span className="text-small text-tz-gray-400">
                    ~{15 + index * 5} min
                  </span>
                </li>
              ))}
            </ol>
          </div>
        </div>

        {/* CTA */}
        <div className="flex flex-col sm:flex-row gap-4 justify-center">
          <Link
            to="/practice"
            className="inline-flex items-center justify-center gap-2 px-8 py-3 bg-tz-green text-white rounded-lg font-medium hover-scale transition-all"
          >
            Start Practicing
            <ArrowRight className="w-5 h-5" />
          </Link>
          <Link
            to="/dashboard"
            className="inline-flex items-center justify-center px-8 py-3 border border-tz-gray-200 text-tz-gray-600 rounded-lg font-medium hover:bg-tz-gray-100 transition-all"
          >
            Enter the app
          </Link>
        </div>
      </main>
    </div>
  );
}
