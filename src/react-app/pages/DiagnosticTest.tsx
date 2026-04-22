import { useState, useEffect } from "react";
import { useNavigate } from "react-router";
import { getDiagnosticQuestions, type Question, topicDisplayNames } from "@/data/questions";
import { cn } from "@/react-app/lib/utils";
import { MathText } from "@/react-app/components/ui/MathText";
import { Loader2 } from "lucide-react";

type ConfidenceLevel = "guessing" | "somewhat" | "confident";

interface Answer {
  questionId: number;
  selectedIndex: number;
  isCorrect: boolean;
  confidence: ConfidenceLevel;
  timeSpent: number;
}

// difficulty on Question is "easy" | "medium" | "hard" — agent wants E/M/H.
function difficultyToCode(d: Question["difficulty"]): "E" | "M" | "H" {
  if (d === "easy") return "E";
  if (d === "hard") return "H";
  return "M";
}

export default function DiagnosticTest() {
  const navigate = useNavigate();
  const [questions, setQuestions] = useState<Question[]>([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [answers, setAnswers] = useState<Map<number, Answer>>(new Map());
  const [selectedIndex, setSelectedIndex] = useState<number | null>(null);
  const [confidence, setConfidence] = useState<ConfidenceLevel | null>(null);
  const [questionStartTime, setQuestionStartTime] = useState(Date.now());
  const [analyzing, setAnalyzing] = useState(false);
  const [analyzeError, setAnalyzeError] = useState<string | null>(null);

  useEffect(() => {
    const diagnosticQuestions = getDiagnosticQuestions(20);
    setQuestions(diagnosticQuestions);
  }, []);

  const currentQuestion = questions[currentIndex];

  useEffect(() => {
    if (currentQuestion) {
      const existingAnswer = answers.get(currentQuestion.id);
      setSelectedIndex(existingAnswer?.selectedIndex ?? null);
      setConfidence(existingAnswer?.confidence ?? null);
      setQuestionStartTime(Date.now());
    }
  }, [currentIndex, currentQuestion?.id]);

  const handleSelectAnswer = (index: number) => {
    setSelectedIndex(index);
  };

  const handleSelectConfidence = (level: ConfidenceLevel) => {
    setConfidence(level);
  };

  const handleSubmit = async () => {
    if (selectedIndex === null || confidence === null || !currentQuestion) return;

    const timeSpent = Math.floor((Date.now() - questionStartTime) / 1000);
    const isCorrect = selectedIndex === currentQuestion.correctIndex;

    const newAnswers = new Map(answers);
    newAnswers.set(currentQuestion.id, {
      questionId: currentQuestion.id,
      selectedIndex,
      isCorrect,
      confidence,
      timeSpent,
    });
    setAnswers(newAnswers);

    if (currentIndex < questions.length - 1) {
      setCurrentIndex(currentIndex + 1);
      setSelectedIndex(null);
      setConfidence(null);
      return;
    }

    // Final question: persist raw answers, then call Diagnostician agent.
    const answersArray = Array.from(newAnswers.values());
    const results = {
      answers: answersArray,
      questions,
      totalQuestions: questions.length,
      correctAnswers: answersArray.filter((a) => a.isCorrect).length,
      timestamp: Date.now(),
    };
    localStorage.setItem("diagnosticResults", JSON.stringify(results));

    setAnalyzing(true);
    setAnalyzeError(null);

    const attemptsPayload = answersArray.map((a) => {
      const q = questions.find((qq) => qq.id === a.questionId);
      return {
        questionId: q?.questionId ?? String(a.questionId),
        domain: q?.topic ?? "",
        skill: q?.skill ?? "",
        difficulty: difficultyToCode(q?.difficulty ?? "medium"),
        selectedIndex: a.selectedIndex,
        correctIndex: q?.correctIndex ?? -1,
        isCorrect: a.isCorrect,
        confidence: a.confidence,
        // Agent wants ms; we stored seconds above.
        timeSpent: a.timeSpent * 1000,
      };
    });

    try {
      const response = await fetch("/api/agents/diagnostician", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ attempts: attemptsPayload }),
      });

      if (!response.ok) {
        const data = await response.json().catch(() => ({}));
        throw new Error((data as { error?: string }).error || "Analysis failed");
      }

      const data = await response.json();
      localStorage.setItem(
        "diagnosticAgentResult",
        JSON.stringify({
          diagnosis_id: data.diagnosis_id ?? null,
          diagnosis: data.diagnosis,
          model: data.model,
          latencyMs: data.latencyMs,
          timestamp: Date.now(),
        })
      );
      navigate("/diagnostic/results");
    } catch (err) {
      console.error("Diagnostician call failed:", err);
      setAnalyzing(false);
      setAnalyzeError(
        err instanceof Error ? err.message : "Could not analyze your results. Please try again."
      );
    }
  };

  const retryAnalysis = () => {
    setAnalyzeError(null);
    setAnalyzing(false);
    // Re-submit final question so the pipeline runs again.
    handleSubmit();
  };

  const handleSaveAndExit = () => {
    if (answers.size > 0) {
      const shouldExit = window.confirm(
        `You've answered ${answers.size} of ${questions.length} questions. Your progress will be lost. Are you sure?`
      );
      if (!shouldExit) return;
    }
    navigate("/dashboard");
  };

  if (questions.length === 0) {
    return (
      <div className="min-h-screen bg-white flex items-center justify-center">
        <div className="animate-pulse text-tz-gray-400">Loading questions...</div>
      </div>
    );
  }

  if (analyzing || analyzeError) {
    return (
      <div className="min-h-screen bg-white flex items-center justify-center px-4">
        <div className="max-w-md w-full text-center">
          {analyzeError ? (
            <>
              <p className="text-h3 text-tz-navy mb-2">Analysis hiccup</p>
              <p className="text-sm text-tz-gray-600 mb-6">{analyzeError}</p>
              <button
                onClick={retryAnalysis}
                className="px-5 py-2.5 bg-tz-blue text-white rounded-lg font-medium hover:bg-[#005a9e] transition-colors"
              >
                Try again
              </button>
            </>
          ) : (
            <>
              <Loader2 className="w-10 h-10 text-tz-blue animate-spin mx-auto mb-4" />
              <p className="text-h3 text-tz-navy mb-2">Analyzing your results…</p>
              <p className="text-sm text-tz-gray-600">
                Your AI tutor is reading all 20 answers — this takes a few seconds.
              </p>
            </>
          )}
        </div>
      </div>
    );
  }

  const progress = ((currentIndex) / questions.length) * 100;
  const canSubmit = selectedIndex !== null && confidence !== null;

  // Get section label
  const getSectionLabel = (question: Question) => {
    const section = question.section === "math" ? "MATH" : "READING & WRITING";
    const domain = topicDisplayNames[question.topic]?.toUpperCase() || question.topic.toUpperCase();
    return `${section} · ${domain}`;
  };

  return (
    <div className="min-h-screen bg-white flex flex-col">
      {/* Top Bar */}
      <header className="h-14 border-b border-tz-gray-200 flex items-center px-4 lg:px-8 flex-shrink-0">
        <div className="flex-1">
          <span className="text-body-strong text-tz-navy">Diagnostic Test</span>
        </div>
        
        <div className="flex-1 flex flex-col items-center">
          <span className="text-small text-tz-gray-600">
            Question {currentIndex + 1} of {questions.length}
          </span>
          <div className="w-32 h-1 bg-tz-gray-100 rounded-full mt-1 overflow-hidden">
            <div 
              className="h-full bg-tz-light-blue rounded-full transition-all duration-300"
              style={{ width: `${progress}%` }}
            />
          </div>
        </div>
        
        <div className="flex-1 flex justify-end">
          <button
            onClick={handleSaveAndExit}
            className="text-small text-tz-gray-600 hover:text-tz-navy transition-colors"
          >
            Save & Exit
          </button>
        </div>
      </header>

      {/* Main Content */}
      <main className="flex-1 flex justify-center px-4 py-8 lg:py-12">
        <div className="w-full max-w-2xl">
          {/* Section Label */}
          <div className="mb-6">
            <span className="text-label text-tz-gray-400">
              {getSectionLabel(currentQuestion)}
            </span>
          </div>

          {/* Passage / Stimulus (R&W + some Math with tables/figures) */}
          {currentQuestion.passageText && (
            <div className="mb-6 p-5 bg-tz-off-white border border-tz-gray-200 rounded-lg max-h-[40vh] overflow-y-auto">
              <div className="text-body text-tz-gray-700 leading-relaxed sat-content">
                <MathText text={currentQuestion.passageText} />
              </div>
            </div>
          )}

          {/* Question */}
          <div className="mb-8">
            <div className="text-lg font-medium text-tz-navy leading-relaxed sat-content">
              <MathText text={currentQuestion.questionText} />
            </div>
          </div>

          {/* Answer Choices */}
          <div className="space-y-3 mb-8">
            {currentQuestion.options.map((option, index) => {
              const letter = String.fromCharCode(65 + index);
              const isSelected = selectedIndex === index;
              
              return (
                <button
                  key={index}
                  onClick={() => handleSelectAnswer(index)}
                  className={cn(
                    "w-full flex items-center gap-4 p-4 rounded-lg border-2 text-left transition-all duration-200",
                    isSelected
                      ? "border-tz-blue bg-blue-50"
                      : "border-tz-gray-200 hover:border-tz-gray-400 hover:bg-tz-gray-100"
                  )}
                >
                  <div className={cn(
                    "w-8 h-8 rounded-full flex items-center justify-center text-sm font-semibold flex-shrink-0 transition-colors",
                    isSelected
                      ? "bg-tz-blue text-white"
                      : "bg-tz-gray-100 text-tz-gray-600"
                  )}>
                    {letter}
                  </div>
                  <span className={cn(
                    "text-body sat-content",
                    isSelected ? "text-tz-navy" : "text-tz-gray-600"
                  )}>
                    <MathText text={option} />
                  </span>
                </button>
              );
            })}
          </div>

          {/* Confidence Panel - Shows after answer is selected */}
          {selectedIndex !== null && (
            <div className="bg-tz-off-white rounded-lg p-6 mb-8 animate-in fade-in slide-in-from-bottom-2 duration-300">
              <label className="text-body-strong text-tz-navy block mb-4">
                How sure are you?
              </label>
              
              <div className="flex gap-3 mb-4">
                {[
                  { id: "guessing" as const, label: "Guessing", color: "red" },
                  { id: "somewhat" as const, label: "Somewhat sure", color: "orange" },
                  { id: "confident" as const, label: "Confident", color: "green" },
                ].map((level) => {
                  const isSelected = confidence === level.id;
                  return (
                    <button
                      key={level.id}
                      onClick={() => handleSelectConfidence(level.id)}
                      className={cn(
                        "flex-1 py-2.5 px-4 rounded-lg text-sm font-medium border-2 transition-all duration-200",
                        isSelected
                          ? level.color === "red"
                            ? "border-red-400 bg-red-50 text-red-700"
                            : level.color === "orange"
                            ? "border-tz-orange bg-orange-50 text-orange-700"
                            : "border-tz-green bg-green-50 text-green-700"
                          : "border-tz-gray-200 text-tz-gray-600 hover:border-tz-gray-400"
                      )}
                    >
                      {level.label}
                    </button>
                  );
                })}
              </div>
              
              <p className="text-small text-tz-gray-400">
                This helps us tell the difference between a lucky guess and real understanding.
              </p>
            </div>
          )}

          {/* Submit Button */}
          <div className="flex justify-end">
            <button
              onClick={handleSubmit}
              disabled={!canSubmit}
              className={cn(
                "px-8 py-3 rounded-lg font-medium transition-all duration-200",
                canSubmit
                  ? "bg-tz-blue text-white hover:bg-[#005a9e] hover-scale"
                  : "bg-tz-gray-200 text-tz-gray-400 cursor-not-allowed"
              )}
            >
              {currentIndex < questions.length - 1 ? "Next" : "Finish"}
            </button>
          </div>
        </div>
      </main>
    </div>
  );
}
