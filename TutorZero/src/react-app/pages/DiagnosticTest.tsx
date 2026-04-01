import { useState, useEffect } from "react";
import { useNavigate } from "react-router";
import { getDiagnosticQuestions, type Question, topicDisplayNames } from "@/data/questions";
import { cn } from "@/react-app/lib/utils";

type ConfidenceLevel = "guessing" | "somewhat" | "confident";

interface Answer {
  questionId: number;
  selectedIndex: number;
  isCorrect: boolean;
  confidence: ConfidenceLevel;
  timeSpent: number;
}

export default function DiagnosticTest() {
  const navigate = useNavigate();
  const [questions, setQuestions] = useState<Question[]>([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [answers, setAnswers] = useState<Map<number, Answer>>(new Map());
  const [selectedIndex, setSelectedIndex] = useState<number | null>(null);
  const [confidence, setConfidence] = useState<ConfidenceLevel | null>(null);
  const [questionStartTime, setQuestionStartTime] = useState(Date.now());

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

  const handleSubmit = () => {
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
    } else {
      // Complete - go to results
      const answersArray = Array.from(newAnswers.values());
      const results = {
        answers: answersArray,
        questions,
        totalQuestions: questions.length,
        correctAnswers: answersArray.filter((a) => a.isCorrect).length,
        timestamp: Date.now(),
      };
      localStorage.setItem("diagnosticResults", JSON.stringify(results));
      navigate("/diagnostic/results");
    }
  };

  const handleSaveAndExit = () => {
    // Save current progress and exit
    navigate("/dashboard");
  };

  if (questions.length === 0) {
    return (
      <div className="min-h-screen bg-white flex items-center justify-center">
        <div className="animate-pulse text-tz-gray-400">Loading questions...</div>
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

          {/* Question */}
          <div className="mb-8">
            <p className="text-lg font-medium text-tz-navy leading-relaxed">
              {currentQuestion.questionText}
            </p>
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
                    "text-body",
                    isSelected ? "text-tz-navy" : "text-tz-gray-600"
                  )}>
                    {option}
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
