import { useState, useEffect, useCallback, useRef } from "react";
import { useNavigate, useSearchParams } from "react-router";
import { useStudentProgress } from "@/react-app/hooks/useStudentProgress";
import { getAdaptiveNextQuestion, topicDisplayNames, type Question } from "@/data/questions";
import { ExplanationChat } from "@/react-app/components/feedback/ExplanationChat";
import { cn } from "@/react-app/lib/utils";
import { MathText } from "@/react-app/components/ui/MathText";
import { ChevronRight, Pause, Play, CheckCircle, XCircle, Lightbulb, BookOpen, ArrowRight, ChevronDown, MessageSquare, Lock, Target, Clock, X, Home, AlertTriangle } from "lucide-react";

const WORDMARK_LIGHT = "https://019c2e5b-2f20-7a1a-8266-2d41e0797564.mochausercontent.com/tutorzero-wordmark-dark.png";

type ConfidenceLevel = "guessing" | "somewhat" | "confident";

interface AttemptedQuestion {
  question: Question;
  selectedIndex: number;
  isCorrect: boolean;
  timeSpent: number;
  confidence?: ConfidenceLevel;
  understood?: boolean;
}

// Map section types to their topic groups
const sectionTopics: Record<string, string[]> = {
  math: ["algebra", "advanced_math", "problem_solving", "geometry", "linear_equations", "quadratic", "systems_of_equations", "functions", "ratios", "percentages", "statistics", "probability", "area_volume", "angles_triangles", "trigonometry", "circles"],
  reading: ["information_ideas", "craft_structure", "central_ideas", "evidence", "evidence_textual", "evidence_quantitative", "inferences", "vocabulary", "text_structure", "cross_text"],
  writing: ["expression", "conventions", "transitions", "synthesis", "boundaries", "form_structure"],
};

export default function Practice() {
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const targetTopic = searchParams.get("topic") || undefined;
  const targetSection = searchParams.get("section") || undefined;
  const { recordSession } = useStudentProgress();
  const feedbackRef = useRef<HTMLDivElement>(null);

  // Session state
  const [currentQuestion, setCurrentQuestion] = useState<Question | null>(null);
  const [selectedIndex, setSelectedIndex] = useState<number | null>(null);
  const [confidence, setConfidence] = useState<ConfidenceLevel | null>(null);
  const [showFeedback, setShowFeedback] = useState(false);
  const [isPaused, setIsPaused] = useState(false);
  const [questionStartTime, setQuestionStartTime] = useState(Date.now());
  const [expandedSection, setExpandedSection] = useState<string | null>(null);

  // Progress tracking
  const [attemptedQuestions, setAttemptedQuestions] = useState<AttemptedQuestion[]>([]);
  const [sessionStartTime] = useState(Date.now());
  const [totalSessionTime, setTotalSessionTime] = useState(0);

  // Frustration detection state
  const [showFrustrationIntervention, setShowFrustrationIntervention] = useState(false);
  const [frustrationTopic, setFrustrationTopic] = useState<string | null>(null);

  // ExplanationChat state
  const [showExplanationChat, setShowExplanationChat] = useState(false);

  // Get section topics if filtering by section
  const sectionTopicList = targetSection ? sectionTopics[targetSection] : undefined;

  // Load first question
  useEffect(() => {
    const firstQuestion = getAdaptiveNextQuestion([], [], targetTopic, sectionTopicList);
    if (firstQuestion) {
      setCurrentQuestion(firstQuestion);
      setQuestionStartTime(Date.now());
    }
  }, [targetTopic, sectionTopicList]);

  // Update session time
  useEffect(() => {
    if (isPaused) return;
    const interval = setInterval(() => {
      setTotalSessionTime(Date.now() - sessionStartTime);
    }, 1000);
    return () => clearInterval(interval);
  }, [sessionStartTime, isPaused]);

  // Focus management
  useEffect(() => {
    if (showFeedback && feedbackRef.current) {
      feedbackRef.current.focus();
    }
  }, [showFeedback]);

  const handleSelectAnswer = useCallback((index: number) => {
    if (showFeedback || isPaused) return;
    setSelectedIndex(index);
  }, [showFeedback, isPaused]);

  // Detect frustration: 3+ wrong in a row on same topic, or time doubling
  const detectFrustration = useCallback((newAttempts: AttemptedQuestion[]): { detected: boolean; topic: string | null } => {
    if (newAttempts.length < 3) return { detected: false, topic: null };
    
    const recentAttempts = newAttempts.slice(-5);
    const recentWrong = recentAttempts.filter(a => !a.isCorrect);
    
    // Check for 3+ wrong answers in same topic
    if (recentWrong.length >= 3) {
      const topicCounts = recentWrong.reduce((acc, a) => {
        acc[a.question.topic] = (acc[a.question.topic] || 0) + 1;
        return acc;
      }, {} as Record<string, number>);
      
      const frustratingTopic = Object.entries(topicCounts).find(([_, count]) => count >= 3);
      if (frustratingTopic) {
        return { detected: true, topic: frustratingTopic[0] };
      }
    }
    
    // Check for time doubling (current question took 2x average)
    if (recentAttempts.length >= 3) {
      const avgTime = recentAttempts.slice(0, -1).reduce((sum, a) => sum + a.timeSpent, 0) / (recentAttempts.length - 1);
      const lastTime = recentAttempts[recentAttempts.length - 1].timeSpent;
      if (lastTime > avgTime * 2 && !recentAttempts[recentAttempts.length - 1].isCorrect) {
        return { detected: true, topic: recentAttempts[recentAttempts.length - 1].question.topic };
      }
    }
    
    return { detected: false, topic: null };
  }, []);

  const handleSubmit = useCallback(() => {
    if (selectedIndex === null || confidence === null || !currentQuestion) return;
    const timeSpent = Date.now() - questionStartTime;
    const isCorrect = selectedIndex === currentQuestion.correctIndex;
    
    const newAttempt: AttemptedQuestion = {
      question: currentQuestion,
      selectedIndex,
      isCorrect,
      timeSpent,
      confidence
    };
    
    const newAttempts = [...attemptedQuestions, newAttempt];
    setAttemptedQuestions(newAttempts);
    
    // Check for frustration after wrong answer
    if (!isCorrect) {
      const frustration = detectFrustration(newAttempts);
      if (frustration.detected) {
        setFrustrationTopic(frustration.topic);
        // Show intervention after feedback
      }
    }
    
    setShowFeedback(true);
    setExpandedSection(null);
  }, [selectedIndex, confidence, currentQuestion, questionStartTime, attemptedQuestions, detectFrustration]);

  const goToNextQuestion = useCallback(() => {
    const answeredIds = attemptedQuestions.map(a => a.question.id);
    if (currentQuestion) {
      answeredIds.push(currentQuestion.id);
    }
    const recentCorrect = attemptedQuestions.slice(-5).map(a => a.isCorrect);
    if (currentQuestion && selectedIndex !== null) {
      recentCorrect.push(selectedIndex === currentQuestion.correctIndex);
    }
    const nextQuestion = getAdaptiveNextQuestion(answeredIds, recentCorrect, targetTopic, sectionTopicList);
    if (nextQuestion) {
      setCurrentQuestion(nextQuestion);
      setSelectedIndex(null);
      setConfidence(null);
      setShowFeedback(false);
      setShowExplanationChat(false);
      setQuestionStartTime(Date.now());
      setExpandedSection(null);
    } else {
      handleEndSession();
    }
  }, [attemptedQuestions, currentQuestion, selectedIndex, targetTopic]);

  const handleFeedbackResponse = useCallback((understood: boolean) => {
    setAttemptedQuestions(prev => {
      const updated = [...prev];
      if (updated.length > 0) {
        updated[updated.length - 1].understood = understood;
      }
      return updated;
    });

    if (!understood) {
      // Open the AI explanation chat instead of advancing
      setShowExplanationChat(true);
      return;
    }

    // Show frustration intervention if detected
    if (frustrationTopic) {
      setShowFrustrationIntervention(true);
    } else {
      setFrustrationTopic(null);
      goToNextQuestion();
    }
  }, [frustrationTopic, goToNextQuestion]);

  const handleFrustrationChoice = useCallback((_tryEasier: boolean) => {
    setShowFrustrationIntervention(false);
    setFrustrationTopic(null);
    // If trying easier, we'll naturally get easier questions from adaptive algorithm
    // since recent answers were wrong
    goToNextQuestion();
  }, [goToNextQuestion]);

  const handleEndSession = useCallback(() => {
    if (attemptedQuestions.length > 0) {
      const attempts = attemptedQuestions.map(a => ({
        topic: a.question.topic,
        isCorrect: a.isCorrect,
        confidence: a.confidence
      }));
      recordSession("practice", attempts, Math.floor(totalSessionTime / 1000));
    }
    navigate("/practice/summary", {
      state: {
        attempts: attemptedQuestions,
        sessionTime: totalSessionTime
      }
    });
  }, [navigate, attemptedQuestions, totalSessionTime, recordSession]);

  // Keyboard navigation
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.target instanceof HTMLInputElement || e.target instanceof HTMLTextAreaElement) return;

      if (e.key === "Escape") {
        e.preventDefault();
        setIsPaused(prev => !prev);
        return;
      }

      if (isPaused) return;

      if (!showFeedback) {
        const keyMap: Record<string, number> = { 'a': 0, 'A': 0, 'b': 1, 'B': 1, 'c': 2, 'C': 2, 'd': 3, 'D': 3 };
        if (e.key in keyMap && currentQuestion && keyMap[e.key] < currentQuestion.options.length) {
          e.preventDefault();
          handleSelectAnswer(keyMap[e.key]);
          return;
        }
      }

      if (e.key === "Enter" && !showFeedback && selectedIndex !== null && confidence !== null) {
        e.preventDefault();
        handleSubmit();
      }
    };
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [isPaused, showFeedback, selectedIndex, currentQuestion, handleSelectAnswer, handleSubmit]);

  // Stats
  const correctCount = attemptedQuestions.filter(a => a.isCorrect).length;
  const totalAttempted = attemptedQuestions.length;
  const accuracy = totalAttempted > 0 ? Math.round(correctCount / totalAttempted * 100) : 0;

  const formatTime = (ms: number) => {
    const totalSeconds = Math.floor(ms / 1000);
    const minutes = Math.floor(totalSeconds / 60);
    const seconds = totalSeconds % 60;
    return `${minutes}:${seconds.toString().padStart(2, '0')}`;
  };

  if (!currentQuestion) {
    return (
      <div className="min-h-screen bg-white flex items-center justify-center">
        <div className="animate-pulse text-tz-gray-400">Loading questions...</div>
      </div>
    );
  }

  const isCorrect = selectedIndex !== null && selectedIndex === currentQuestion.correctIndex;

  return (
    <div className="min-h-screen bg-white flex flex-col">
      {/* Header */}
      <header className="h-12 sm:h-14 border-b border-tz-gray-200 flex items-center px-3 sm:px-4 lg:px-8 flex-shrink-0">
        {/* Home button + Logo */}
        <div className="flex-1 flex items-center gap-3">
          <button
            onClick={() => navigate("/dashboard")}
            className="p-2 rounded-lg hover:bg-tz-gray-100 transition-colors"
            aria-label="Go to Dashboard"
          >
            <Home className="w-4 h-4 text-tz-gray-600" />
          </button>
          <img src={WORDMARK_LIGHT} alt="TutorZero" className="h-5 hidden sm:block" />
        </div>
        
        {/* Stats - Compact on mobile */}
        <div className="flex-1 sm:flex-none flex items-center justify-start sm:justify-center gap-3 sm:gap-6">
          <div className="flex items-center gap-1.5 text-xs sm:text-small text-tz-gray-600">
            <Target className="w-3.5 h-3.5 text-tz-blue" />
            <span>{correctCount}/{totalAttempted}</span>
          </div>
          <div className="flex items-center gap-1.5 text-xs sm:text-small text-tz-gray-600">
            <span className={cn(
              "font-medium",
              accuracy >= 70 ? "text-tz-green" : accuracy >= 50 ? "text-tz-orange" : "text-red-500"
            )}>
              {accuracy}%
            </span>
          </div>
          <div className="flex items-center gap-1.5 text-xs sm:text-small text-tz-gray-600">
            <Clock className="w-3.5 h-3.5 text-tz-gray-400" />
            <span>{formatTime(totalSessionTime)}</span>
          </div>
        </div>
        
        {/* Actions */}
        <div className="flex-1 flex justify-end items-center gap-2 sm:gap-4">
          <button
            onClick={() => setIsPaused(!isPaused)}
            className="p-2 rounded-lg hover:bg-tz-gray-100 transition-colors"
            aria-label={isPaused ? "Resume" : "Pause"}
          >
            {isPaused ? <Play className="w-4 h-4 text-tz-gray-600" /> : <Pause className="w-4 h-4 text-tz-gray-600" />}
          </button>
          <button
            onClick={handleEndSession}
            className="text-xs sm:text-small text-tz-gray-600 hover:text-tz-navy transition-colors"
          >
            <span className="hidden sm:inline">End Session</span>
            <X className="w-4 h-4 sm:hidden" />
          </button>
        </div>
      </header>

      {/* Paused Overlay */}
      {isPaused && (
        <div className="fixed inset-0 bg-tz-navy/80 z-50 flex items-center justify-center p-4">
          <div className="bg-white rounded-xl p-6 sm:p-8 text-center max-w-sm w-full">
            <Pause className="w-10 h-10 sm:w-12 sm:h-12 text-tz-navy mx-auto mb-4" />
            <h2 className="text-xl sm:text-h2 text-tz-navy mb-2">Session Paused</h2>
            <p className="text-sm sm:text-body text-tz-gray-600 mb-6">Take a break. Your progress is saved.</p>
            <button
              onClick={() => setIsPaused(false)}
              className="w-full py-3 bg-tz-blue text-white rounded-lg font-medium hover-scale transition-all"
            >
              Resume Practice
            </button>
          </div>
        </div>
      )}

      {/* Frustration Intervention */}
      {showFrustrationIntervention && (
        <div className="fixed inset-0 bg-tz-navy/60 z-50 flex items-center justify-center p-4">
          <div className="bg-white rounded-xl p-6 sm:p-8 max-w-md w-full animate-in fade-in zoom-in-95 duration-200">
            <div className="w-12 h-12 bg-amber-100 rounded-full flex items-center justify-center mx-auto mb-4">
              <AlertTriangle className="w-6 h-6 text-amber-600" />
            </div>
            <h2 className="text-xl sm:text-h2 text-tz-navy text-center mb-2">
              You're working hard
            </h2>
            <p className="text-sm sm:text-body text-tz-gray-600 text-center mb-6">
              {frustrationTopic && (
                <>You've been tackling {topicDisplayNames[frustrationTopic] || frustrationTopic} questions. </>
              )}
              Would you like to try some easier questions to build confidence, or keep pushing through?
            </p>
            <div className="flex flex-col sm:flex-row gap-3">
              <button
                onClick={() => handleFrustrationChoice(true)}
                className="flex-1 py-3 px-4 bg-tz-blue text-white rounded-lg font-medium hover-scale transition-all"
              >
                Try easier questions
              </button>
              <button
                onClick={() => handleFrustrationChoice(false)}
                className="flex-1 py-3 px-4 border-2 border-tz-gray-200 text-tz-gray-600 rounded-lg font-medium hover:bg-tz-gray-100 transition-all"
              >
                Keep going
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Main Content */}
      <main className="flex-1 flex justify-center px-4 py-6 sm:py-8 lg:py-12 overflow-y-auto">
        <div className="w-full max-w-2xl">
          {/* Topic Label */}
          <div className="mb-4 sm:mb-6">
            <span className="text-[10px] sm:text-label text-tz-gray-400 tracking-wide">
              {currentQuestion.section === "math" ? "MATH" : "R&W"} · {topicDisplayNames[currentQuestion.topic]?.toUpperCase()}
            </span>
          </div>

          {!showFeedback ? (
            <>
              {/* Question */}
              <div className="mb-6 sm:mb-8">
                <p className="text-base sm:text-lg font-medium text-tz-navy leading-relaxed">
                  <MathText text={currentQuestion.questionText} />
                </p>
              </div>

              {/* Answer Choices */}
              <div className="space-y-2 sm:space-y-3 mb-6 sm:mb-8">
                {currentQuestion.options.map((option, index) => {
                  const letter = String.fromCharCode(65 + index);
                  const isSelected = selectedIndex === index;
                  
                  return (
                    <button
                      key={index}
                      onClick={() => handleSelectAnswer(index)}
                      className={cn(
                        "w-full flex items-start sm:items-center gap-3 sm:gap-4 p-3 sm:p-4 rounded-lg border-2 text-left transition-all duration-200",
                        isSelected
                          ? "border-tz-blue bg-blue-50"
                          : "border-tz-gray-200 hover:border-tz-gray-400 hover:bg-tz-gray-100"
                      )}
                    >
                      <div className={cn(
                        "w-7 h-7 sm:w-8 sm:h-8 rounded-full flex items-center justify-center text-xs sm:text-sm font-semibold flex-shrink-0 transition-colors",
                        isSelected ? "bg-tz-blue text-white" : "bg-tz-gray-100 text-tz-gray-600"
                      )}>
                        {letter}
                      </div>
                      <span className={cn("text-sm sm:text-body flex-1", isSelected ? "text-tz-navy" : "text-tz-gray-600")}>
                        <MathText text={option} />
                      </span>
                    </button>
                  );
                })}
              </div>

              {/* Confidence Panel - Shows after answer is selected */}
              {selectedIndex !== null && (
                <div className="bg-tz-off-white rounded-lg p-4 sm:p-6 mb-6 sm:mb-8 animate-in fade-in slide-in-from-bottom-2 duration-300">
                  <label className="text-body-strong text-tz-navy block mb-3 sm:mb-4 text-sm sm:text-base">
                    How sure are you?
                  </label>
                  
                  <div className="flex flex-col sm:flex-row gap-2 sm:gap-3 mb-3 sm:mb-4">
                    {[
                      { id: "guessing" as const, label: "Guessing", color: "red" },
                      { id: "somewhat" as const, label: "Somewhat sure", color: "orange" },
                      { id: "confident" as const, label: "Confident", color: "green" },
                    ].map((level) => {
                      const isSelected = confidence === level.id;
                      return (
                        <button
                          key={level.id}
                          onClick={() => setConfidence(level.id)}
                          className={cn(
                            "flex-1 py-2 sm:py-2.5 px-3 sm:px-4 rounded-lg text-xs sm:text-sm font-medium border-2 transition-all duration-200",
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
                  
                  <p className="text-[11px] sm:text-small text-tz-gray-400">
                    This helps identify blind spots — topics you're confident about but may need work.
                  </p>
                </div>
              )}

              {/* Submit */}
              <div className="flex justify-end">
                <button
                  onClick={handleSubmit}
                  disabled={selectedIndex === null || confidence === null}
                  className={cn(
                    "px-6 sm:px-8 py-2.5 sm:py-3 rounded-lg font-medium transition-all duration-200 text-sm sm:text-base",
                    selectedIndex !== null && confidence !== null
                      ? "bg-tz-blue text-white hover:bg-[#005a9e] hover-scale"
                      : "bg-tz-gray-200 text-tz-gray-400 cursor-not-allowed"
                  )}
                >
                  Submit
                </button>
              </div>
            </>
          ) : (
            /* Feedback View */
            <div ref={feedbackRef} tabIndex={-1} className="outline-none animate-in fade-in duration-300">
              {/* Result Banner */}
              <div className={cn(
                "rounded-lg p-4 sm:p-5 mb-5 sm:mb-6 flex items-start gap-3 sm:gap-4",
                isCorrect ? "bg-green-50 border border-green-200" : "bg-red-50 border border-red-200"
              )}>
                {isCorrect ? (
                  <CheckCircle className="w-5 h-5 sm:w-6 sm:h-6 text-tz-green flex-shrink-0 mt-0.5" />
                ) : (
                  <XCircle className="w-5 h-5 sm:w-6 sm:h-6 text-red-500 flex-shrink-0 mt-0.5" />
                )}
                <div>
                  <p className={cn("text-base sm:text-h3 font-semibold", isCorrect ? "text-green-800" : "text-red-800")}>
                    {isCorrect ? "Correct!" : "Not quite"}
                  </p>
                  <p className={cn("text-sm sm:text-body mt-1", isCorrect ? "text-green-700" : "text-red-700")}>
                    {isCorrect 
                      ? `You selected ${String.fromCharCode(65 + selectedIndex!)}, which is correct.`
                      : `The correct answer is ${String.fromCharCode(65 + currentQuestion.correctIndex)}.`
                    }
                  </p>
                </div>
              </div>

              {/* Explanation Layers */}
              <div className="space-y-2 sm:space-y-3 mb-6 sm:mb-8">
                <FeedbackLayer
                  icon={<Lightbulb className="w-4 h-4 sm:w-5 sm:h-5" />}
                  title="Why this answer"
                  content={currentQuestion.explainWhy}
                  color="blue"
                  isExpanded={expandedSection === "why"}
                  onToggle={() => setExpandedSection(expandedSection === "why" ? null : "why")}
                />
                <FeedbackLayer
                  icon={<BookOpen className="w-4 h-4 sm:w-5 sm:h-5" />}
                  title="The concept"
                  content={currentQuestion.explainConcept}
                  color="purple"
                  isExpanded={expandedSection === "concept"}
                  onToggle={() => setExpandedSection(expandedSection === "concept" ? null : "concept")}
                />
                <FeedbackLayer
                  icon={<ArrowRight className="w-4 h-4 sm:w-5 sm:h-5" />}
                  title="What to practice next"
                  content={currentQuestion.explainNext}
                  color="amber"
                  isExpanded={expandedSection === "next"}
                  onToggle={() => setExpandedSection(expandedSection === "next" ? null : "next")}
                />
              </div>

              {/* Pro Feature: Explain Differently */}
              <div className="bg-tz-gray-100 rounded-lg p-3 sm:p-4 mb-6 sm:mb-8 flex items-center justify-between">
                <div className="flex items-center gap-2 sm:gap-3">
                  <MessageSquare className="w-4 h-4 sm:w-5 sm:h-5 text-tz-gray-400" />
                  <span className="text-xs sm:text-body text-tz-gray-600">Explain differently</span>
                </div>
                <div className="flex items-center gap-1.5 sm:gap-2 text-xs sm:text-small text-tz-orange">
                  <Lock className="w-3.5 h-3.5 sm:w-4 sm:h-4" />
                  <span>Pro</span>
                </div>
              </div>

              {/* ExplanationChat */}
              {showExplanationChat && currentQuestion && selectedIndex !== null && (
                <div className="mb-6 sm:mb-8">
                  <ExplanationChat question={currentQuestion} selectedIndex={selectedIndex} />
                </div>
              )}

              {/* Got it / Still confused */}
              <div className="flex flex-col sm:flex-row gap-3 sm:gap-4">
                {!showExplanationChat ? (
                  <button
                    onClick={() => handleFeedbackResponse(false)}
                    className="flex-1 py-2.5 sm:py-3 px-4 sm:px-6 border-2 border-tz-gray-200 text-tz-gray-600 rounded-lg font-medium hover:bg-tz-gray-100 transition-all text-sm sm:text-base order-2 sm:order-1"
                  >
                    Still confused
                  </button>
                ) : (
                  <button
                    onClick={() => {
                      setShowExplanationChat(false);
                      // Check frustration after chat
                      if (frustrationTopic) {
                        setShowFrustrationIntervention(true);
                      } else {
                        setFrustrationTopic(null);
                        goToNextQuestion();
                      }
                    }}
                    className="flex-1 py-2.5 sm:py-3 px-4 sm:px-6 border-2 border-tz-gray-200 text-tz-gray-600 rounded-lg font-medium hover:bg-tz-gray-100 transition-all text-sm sm:text-base order-2 sm:order-1"
                  >
                    Continue to next question
                  </button>
                )}
                <button
                  onClick={() => handleFeedbackResponse(true)}
                  className="flex-1 py-2.5 sm:py-3 px-4 sm:px-6 bg-tz-green text-white rounded-lg font-medium hover-scale transition-all flex items-center justify-center gap-2 text-sm sm:text-base order-1 sm:order-2"
                >
                  Got it
                  <ChevronRight className="w-4 h-4 sm:w-5 sm:h-5" />
                </button>
              </div>
            </div>
          )}
        </div>
      </main>
    </div>
  );
}

interface FeedbackLayerProps {
  icon: React.ReactNode;
  title: string;
  content: string;
  color: "blue" | "purple" | "amber";
  isExpanded: boolean;
  onToggle: () => void;
}

function FeedbackLayer({ icon, title, content, color, isExpanded, onToggle }: FeedbackLayerProps) {
  const colorStyles = {
    blue: { bg: "bg-blue-50", border: "border-blue-100", iconBg: "bg-blue-100", iconText: "text-tz-blue", title: "text-blue-900", content: "text-blue-800" },
    purple: { bg: "bg-purple-50", border: "border-purple-100", iconBg: "bg-purple-100", iconText: "text-purple-600", title: "text-purple-900", content: "text-purple-800" },
    amber: { bg: "bg-amber-50", border: "border-amber-100", iconBg: "bg-amber-100", iconText: "text-amber-600", title: "text-amber-900", content: "text-amber-800" },
  };
  const styles = colorStyles[color];

  return (
    <div className={cn("rounded-lg border", styles.bg, styles.border)}>
      <button
        onClick={onToggle}
        className="w-full p-3 sm:p-4 flex items-center gap-2 sm:gap-3 text-left"
      >
        <div className={cn("w-8 h-8 sm:w-9 sm:h-9 rounded-full flex items-center justify-center flex-shrink-0", styles.iconBg, styles.iconText)}>
          {icon}
        </div>
        <div className="flex-1 min-w-0">
          <span className={cn("font-semibold text-xs sm:text-sm", styles.title)}>{title}</span>
        </div>
        <ChevronDown className={cn("w-4 h-4 sm:w-5 sm:h-5 transition-transform flex-shrink-0", styles.iconText, isExpanded && "rotate-180")} />
      </button>
      {isExpanded && (
        <div className="px-3 pb-3 sm:px-4 sm:pb-4">
          <div className={cn("pl-10 sm:pl-12 text-xs sm:text-sm leading-relaxed", styles.content)}>
            {content}
          </div>
        </div>
      )}
    </div>
  );
}
