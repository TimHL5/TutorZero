import { useState } from "react";
import { CheckCircle, XCircle, Lightbulb, BookOpen, ArrowRight, ChevronDown, Sparkles, Loader2 } from "lucide-react";
import type { Question } from "@/data/questions";
import { cn } from "@/react-app/lib/utils";
import { ExplanationChat } from "./ExplanationChat";
import { MathText } from "@/react-app/components/ui/MathText";
import { ChatMarkdown } from "@/react-app/components/ui/ChatMarkdown";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { Link } from "react-router";

interface FeedbackCardProps {
  question: Question;
  selectedIndex: number;
  isCorrect: boolean;
}

const EXPLANATION_STYLES = [
  { id: "simple", label: "Simpler", description: "Break it down into basics" },
  { id: "visual", label: "Visual", description: "Use diagrams and examples" },
  { id: "technical", label: "Technical", description: "Detailed and precise" },
  { id: "analogy", label: "Analogy", description: "Real-world comparison" },
];

export function FeedbackCard({ question, selectedIndex, isCorrect }: FeedbackCardProps) {
  const { user } = useAuth();
  const profile = user?.profile;
  const isPro = profile?.subscriptionTier === "pro";

  const selectedLetter = String.fromCharCode(65 + selectedIndex);
  const correctLetter = String.fromCharCode(65 + question.correctIndex);

  const [expandedSections, setExpandedSections] = useState<Record<string, boolean>>({
    why: false,
    concept: false,
    next: false
  });

  const [alternateExplanation, setAlternateExplanation] = useState<{
    style: string;
    content: string;
  } | null>(null);
  const [isLoadingAlternate, setIsLoadingAlternate] = useState(false);
  const [activeStyle, setActiveStyle] = useState<string | null>(null);

  const toggleSection = (section: string) => {
    setExpandedSections(prev => ({ ...prev, [section]: !prev[section] }));
  };

  const fetchAlternateExplanation = async (style: string) => {
    if (!isPro) return;
    if (activeStyle === style && alternateExplanation) {
      // Toggle off if same style clicked
      setAlternateExplanation(null);
      setActiveStyle(null);
      return;
    }

    setIsLoadingAlternate(true);
    setActiveStyle(style);

    try {
      const response = await fetch("/api/tutor/explain-differently", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          question: {
            questionText: question.questionText,
            passage: question.passageText || null,
            choices: question.options,
            studentAnswer: selectedLetter,
            correctAnswer: correctLetter,
            topic: question.topic,
            explanation: question.explainWhy,
          },
          style,
        }),
      });

      if (response.ok) {
        const data = await response.json();
        setAlternateExplanation({ style, content: data.explanation });
      } else {
        setAlternateExplanation({ 
          style, 
          content: "Unable to generate alternative explanation. Please try again." 
        });
      }
    } catch (err) {
      console.error("Failed to fetch alternate explanation:", err);
      setAlternateExplanation({ 
        style, 
        content: "Unable to generate alternative explanation. Please try again." 
      });
    } finally {
      setIsLoadingAlternate(false);
    }
  };

  // Generate detailed SAT-aligned content for each section
  const getDetailedWhy = () => {
    const baseExplanation = question.explainWhy;
    return `${baseExplanation}\n\nStep-by-step reasoning:\n• The correct answer (${correctLetter}) directly addresses the question's core requirement\n• It follows SAT test-taking strategies for this question type\n• Other options can be eliminated because they either misinterpret the prompt, contain logical errors, or don't fully address what's being asked\n\nThis aligns with the SAT's emphasis on precise reasoning and careful reading of both the question and answer choices.`;
  };

  const getDetailedConcept = () => {
    const baseConcept = question.explainConcept;
    const topicDetails: Record<string, string> = {
      algebra: "Linear equations, systems, inequalities, and functions form the foundation of SAT algebra. Focus on isolating variables, understanding slope-intercept form, and solving multi-step equations efficiently.",
      advanced_math: "Quadratics, exponentials, polynomials, and rational expressions. Key skills include factoring, completing the square, using the quadratic formula, and understanding function transformations.",
      problem_solving: "Ratios, percentages, unit conversions, and data interpretation. Practice setting up proportions, working with tables and graphs, and translating word problems into mathematical expressions.",
      geometry: "Properties of shapes, coordinate geometry, trigonometry, and spatial reasoning. Master area/volume formulas, the Pythagorean theorem, and relationships between angles.",
      information_ideas: "Central ideas, supporting details, inferences, and data interpretation from passages. Practice identifying main points, understanding cause-effect relationships, and drawing evidence-based conclusions.",
      craft_structure: "Text structure, word choice, purpose, and rhetorical devices. Focus on understanding how authors organize arguments and use language to achieve specific effects.",
      expression: "Transitions, rhetorical synthesis, and effective language use. Practice combining sentences, choosing appropriate transitions, and maintaining consistent style and tone.",
      conventions: "Grammar, punctuation, sentence structure, and usage. Master subject-verb agreement, pronoun reference, modifier placement, and standard punctuation rules."
    };

    const topicDetail = topicDetails[question.topic] || "Core SAT concept testing your understanding of fundamental principles.";
    return `${baseConcept}\n\nSAT Context:\n${topicDetail}\n\nThis concept appears regularly on the SAT and is essential for achieving your target score. The test typically presents 3-5 questions on this topic per section.`;
  };

  const getDetailedNext = () => {
    const baseNext = question.explainNext;
    const practiceGuidance: Record<string, string> = {
      foundation: "Start with Khan Academy's SAT practice for this topic. Complete 10-15 foundation-level questions, then move to easy difficulty.",
      easy: "Practice 15-20 questions at this level before advancing. Focus on accuracy over speed initially.",
      medium: "This is the target difficulty for most test-takers. Aim for 80%+ accuracy at this level. Try timing yourself: 60-90 seconds per question.",
      hard: "Challenge problems that separate good scores from great ones. Don't be discouraged by mistakes—review each one carefully.",
      advanced: "Elite-level questions testing deep conceptual understanding. These prepare you for the hardest 10% of SAT questions."
    };

    const guidance = practiceGuidance[question.difficulty] || "Continue practicing at your current level.";
    return `${baseNext}\n\nRecommended Practice Path:\n${guidance}\n\nNext steps:\n1. Complete 5 more questions on ${question.topic} at ${question.difficulty} difficulty\n2. If you maintain 80%+ accuracy, move up to the next difficulty level\n3. Review official SAT practice tests for similar question formats\n4. Track your progress and identify patterns in mistakes`;
  };

  return (
    <div className="space-y-3 sm:space-y-4">
      {/* Result Banner */}
      <div
        className={cn(
          "rounded-lg p-3 sm:p-4 flex items-start sm:items-center gap-3",
          isCorrect 
            ? "bg-green-50 border border-green-200" 
            : "bg-red-50 border border-red-200"
        )}
      >
        {isCorrect ? (
          <CheckCircle className="w-6 h-6 text-green-600 flex-shrink-0" />
        ) : (
          <XCircle className="w-6 h-6 text-red-600 flex-shrink-0" />
        )}
        <div>
          <p className={cn(
            "font-semibold",
            isCorrect ? "text-green-800" : "text-red-800"
          )}>
            {isCorrect ? "Correct!" : "Not quite"}
          </p>
          <p className={cn(
            "text-sm",
            isCorrect ? "text-green-700" : "text-red-700"
          )}>
            {isCorrect 
              ? `You selected ${selectedLetter}, which is correct.`
              : `You selected ${selectedLetter}. The correct answer is ${correctLetter}.`
            }
          </p>
        </div>
      </div>

      {/* 3-Layer Feedback - Now Expandable */}
      <div className="space-y-2 sm:space-y-3">
        {/* Layer 1: Why this answer */}
        <ExpandableFeedbackLayer
          icon={<Lightbulb className="w-5 h-5" />}
          title="Why this is the answer"
          summary={question.explainWhy}
          detailedContent={getDetailedWhy()}
          color="blue"
          isExpanded={expandedSections.why}
          onToggle={() => toggleSection("why")}
        />

        {/* Layer 2: The concept */}
        <ExpandableFeedbackLayer
          icon={<BookOpen className="w-5 h-5" />}
          title="The concept"
          summary={question.explainConcept}
          detailedContent={getDetailedConcept()}
          color="purple"
          isExpanded={expandedSections.concept}
          onToggle={() => toggleSection("concept")}
        />

        {/* Layer 3: What to practice next */}
        <ExpandableFeedbackLayer
          icon={<ArrowRight className="w-5 h-5" />}
          title="What to practice next"
          summary={question.explainNext}
          detailedContent={getDetailedNext()}
          color="amber"
          isExpanded={expandedSections.next}
          onToggle={() => toggleSection("next")}
        />
      </div>

      {/* Explain Differently - Pro Feature */}
      {!isCorrect && (
        <div className="border border-tz-gray-200 rounded-lg bg-white overflow-hidden">
          <div className="px-4 py-3 bg-tz-off-white border-b border-tz-gray-200 flex items-center justify-between">
            <div className="flex items-center gap-2">
              <Sparkles className="w-4 h-4 text-tz-orange" />
              <span className="text-sm font-medium text-tz-navy">Explain Differently</span>
            </div>
            {!isPro && (
              <span className="text-xs bg-orange-100 text-tz-orange px-2 py-0.5 rounded-full font-medium">
                Pro
              </span>
            )}
          </div>

          {isPro ? (
            <div className="p-4">
              <p className="text-xs text-tz-gray-400 mb-3">
                Still confused? Try a different explanation style:
              </p>
              <div className="flex flex-wrap gap-2">
                {EXPLANATION_STYLES.map((style) => (
                  <button
                    key={style.id}
                    onClick={() => fetchAlternateExplanation(style.id)}
                    disabled={isLoadingAlternate && activeStyle !== style.id}
                    className={cn(
                      "px-3 py-2 rounded-lg text-sm font-medium transition-all",
                      activeStyle === style.id
                        ? "bg-tz-blue text-white"
                        : "bg-tz-gray-100 text-tz-gray-600 hover:bg-tz-gray-200"
                    )}
                  >
                    {isLoadingAlternate && activeStyle === style.id ? (
                      <Loader2 className="w-4 h-4 animate-spin" />
                    ) : (
                      style.label
                    )}
                  </button>
                ))}
              </div>

              {alternateExplanation && (
                <div className="mt-4 p-4 bg-blue-50 border border-blue-200 rounded-lg animate-in fade-in duration-300">
                  <div className="flex items-center gap-2 mb-2">
                    <Sparkles className="w-4 h-4 text-tz-blue" />
                    <span className="text-sm font-medium text-tz-navy">
                      {EXPLANATION_STYLES.find(s => s.id === alternateExplanation.style)?.label} Explanation
                    </span>
                  </div>
                  <div className="text-sm text-blue-800">
                    <ChatMarkdown content={alternateExplanation.content} />
                  </div>
                </div>
              )}
            </div>
          ) : (
            <div className="p-4 text-center">
              <p className="text-sm text-tz-gray-600 mb-3">
                Get explanations tailored to how you learn best—visual, simple, technical, or through analogies.
              </p>
              <Link
                to="/pricing"
                className="inline-flex items-center gap-2 px-4 py-2 bg-tz-orange text-white text-sm font-medium rounded-lg hover:bg-orange-600 transition-colors"
              >
                <Sparkles className="w-4 h-4" />
                Upgrade to Pro
              </Link>
            </div>
          )}
        </div>
      )}

      {/* AI Chat */}
      <ExplanationChat question={question} selectedIndex={selectedIndex} />
    </div>
  );
}

interface ExpandableFeedbackLayerProps {
  icon: React.ReactNode;
  title: string;
  summary: string;
  detailedContent: string;
  color: "blue" | "purple" | "amber";
  isExpanded: boolean;
  onToggle: () => void;
}

function ExpandableFeedbackLayer({ 
  icon, 
  title, 
  summary, 
  detailedContent, 
  color, 
  isExpanded,
  onToggle 
}: ExpandableFeedbackLayerProps) {
  const colorStyles = {
    blue: {
      bg: "bg-blue-50",
      border: "border-blue-200",
      iconBg: "bg-blue-100",
      iconText: "text-blue-600",
      title: "text-blue-900",
      content: "text-blue-800",
      hoverBg: "hover:bg-blue-100"
    },
    purple: {
      bg: "bg-purple-50",
      border: "border-purple-200",
      iconBg: "bg-purple-100",
      iconText: "text-purple-600",
      title: "text-purple-900",
      content: "text-purple-800",
      hoverBg: "hover:bg-purple-100"
    },
    amber: {
      bg: "bg-amber-50",
      border: "border-amber-200",
      iconBg: "bg-amber-100",
      iconText: "text-amber-600",
      title: "text-amber-900",
      content: "text-amber-800",
      hoverBg: "hover:bg-amber-100"
    }
  };

  const styles = colorStyles[color];

  return (
    <div className={cn("rounded-lg border", styles.bg, styles.border)}>
      <button
        onClick={onToggle}
        className={cn(
          "w-full p-3 sm:p-4 flex items-start gap-2 sm:gap-3 text-left transition-colors",
          styles.hoverBg
        )}
      >
        <div className={cn(
          "flex-shrink-0 w-8 h-8 sm:w-9 sm:h-9 rounded-full flex items-center justify-center",
          styles.iconBg,
          styles.iconText
        )}>
          {icon}
        </div>
        <div className="flex-1 min-w-0">
          <div className="flex items-center justify-between gap-2 mb-1">
            <h4 className={cn("font-semibold text-xs sm:text-sm", styles.title)}>
              {title}
            </h4>
            <ChevronDown 
              className={cn(
                "w-4 h-4 transition-transform flex-shrink-0",
                styles.iconText,
                isExpanded && "rotate-180"
              )} 
            />
          </div>
          <p className={cn("text-xs sm:text-sm leading-relaxed", styles.content)}>
            <MathText text={summary} />
          </p>
        </div>
      </button>

      {isExpanded && (
        <div className={cn(
          "px-3 sm:px-4 pb-3 sm:pb-4 pt-0 animate-in slide-in-from-top-2 duration-200"
        )}>
          <div className="pl-10 sm:pl-12">
            <div className={cn(
              "text-xs sm:text-sm leading-relaxed whitespace-pre-line",
              styles.content,
              "border-t pt-3",
              styles.border
            )}>
              <MathText text={detailedContent} />
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
