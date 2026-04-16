import { useRef, useEffect } from "react";
import type { Question } from "@/data/questions";
import { topicDisplayNames } from "@/data/questions";
import { cn } from "@/react-app/lib/utils";
import { MathText } from "@/react-app/components/ui/MathText";

interface QuestionCardProps {
  question: Question;
  selectedIndex: number | null;
  onSelectAnswer: (index: number) => void;
  showFeedback?: boolean;
  isCorrect?: boolean;
  disabled?: boolean;
  showKeyboardHint?: boolean;
}

export function QuestionCard({
  question,
  selectedIndex,
  onSelectAnswer,
  showFeedback = false,
  disabled = false,
  showKeyboardHint = false,
}: QuestionCardProps) {
  const topicLabel = topicDisplayNames[question.topic] || question.topic;
  const difficultyLabel = question.difficulty.charAt(0).toUpperCase() + question.difficulty.slice(1);
  const questionTextRef = useRef<HTMLParagraphElement>(null);

  // Focus management - focus question text on mount/change
  useEffect(() => {
    if (questionTextRef.current && !showFeedback) {
      questionTextRef.current.focus();
    }
  }, [question.id, showFeedback]);

  return (
    <div className="bg-white rounded-lg shadow-sm border border-border">
      {/* Topic Tag */}
      <div className="px-4 sm:px-6 pt-4 sm:pt-5 pb-3 border-b border-border">
        <div className="flex flex-wrap items-center gap-x-2 gap-y-1 text-xs sm:text-sm text-muted-foreground">
          <span className="font-medium">{topicLabel}</span>
          <span>•</span>
          <span className="capitalize">{difficultyLabel}</span>
          {question.isCalculatorAllowed && (
            <>
              <span className="hidden sm:inline">•</span>
              <span className="text-tz-blue sm:inline block w-full sm:w-auto mt-1 sm:mt-0">Calculator Allowed</span>
            </>
          )}
        </div>
      </div>

      {/* Passage (if exists) */}
      {question.passageText && (
        <div className="px-4 sm:px-6 py-3 sm:py-4 bg-muted/30 border-b border-border">
          <p className="text-foreground leading-relaxed text-sm sm:text-[15px]">
            <MathText text={question.passageText} />
          </p>
        </div>
      )}

      {/* Question Text */}
      <div className="px-4 sm:px-6 py-4 sm:py-5">
        <p
          ref={questionTextRef}
          tabIndex={-1}
          className="text-base sm:text-lg text-foreground leading-relaxed font-medium outline-none"
        >
          <MathText text={question.questionText} />
        </p>
      </div>

      {/* Answer Choices */}
      <div 
        className="px-4 sm:px-6 pb-4 sm:pb-6 space-y-2 sm:space-y-3"
        role="radiogroup"
        aria-label="Answer choices"
      >
        {question.options.map((option, index) => {
          const letter = String.fromCharCode(65 + index); // A, B, C, D
          const isSelected = selectedIndex === index;
          const isCorrectAnswer = question.correctIndex === index;

          let optionState: "default" | "selected" | "correct" | "incorrect" = "default";
          if (showFeedback) {
            if (isCorrectAnswer) {
              optionState = "correct";
            } else if (isSelected && !isCorrectAnswer) {
              optionState = "incorrect";
            }
          } else if (isSelected) {
            optionState = "selected";
          }

          return (
            <AnswerChoice
              key={index}
              letter={letter}
              text={option}
              state={optionState}
              isSelected={isSelected}
              onClick={() => !disabled && onSelectAnswer(index)}
              disabled={disabled}
            />
          );
        })}

        {/* Keyboard hint - hidden on touch devices */}
        {showKeyboardHint && !disabled && !showFeedback && (
          <p className="hidden md:block text-xs text-muted-foreground text-center pt-2">
            Press <kbd className="px-1.5 py-0.5 bg-muted rounded text-[10px] font-mono">A</kbd>-<kbd className="px-1.5 py-0.5 bg-muted rounded text-[10px] font-mono">D</kbd> to select, <kbd className="px-1.5 py-0.5 bg-muted rounded text-[10px] font-mono">Enter</kbd> to submit
          </p>
        )}
      </div>
    </div>
  );
}

interface AnswerChoiceProps {
  letter: string;
  text: string;
  state: "default" | "selected" | "correct" | "incorrect";
  isSelected: boolean;
  onClick: () => void;
  disabled?: boolean;
}

function AnswerChoice({ letter, text, state, isSelected, onClick, disabled }: AnswerChoiceProps) {
  return (
    <button
      type="button"
      role="radio"
      aria-checked={isSelected}
      aria-label={`Option ${letter}: ${text}`}
      onClick={onClick}
      disabled={disabled}
      className={cn(
        "w-full flex items-start gap-3 sm:gap-4 p-3 sm:p-4 rounded-md border-2 text-left transition-all",
        "focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary",
        "active:scale-[0.99]",
        state === "default" && "border-border hover:border-muted-foreground hover:bg-muted/30",
        state === "selected" && "border-[hsl(205,100%,39%)] bg-[hsl(205,72%,94%)]",
        state === "correct" && "border-[hsl(122,47%,33%)] bg-green-50",
        state === "incorrect" && "border-[hsl(0,69%,47%)] bg-red-50",
        disabled && "cursor-not-allowed opacity-75"
      )}
    >
      <span
        className={cn(
          "flex-shrink-0 w-7 h-7 sm:w-8 sm:h-8 rounded-full flex items-center justify-center font-semibold text-xs sm:text-sm border-2 transition-colors",
          state === "default" && "border-border text-muted-foreground",
          state === "selected" && "border-[hsl(205,100%,39%)] bg-[hsl(205,100%,39%)] text-white",
          state === "correct" && "border-[hsl(122,47%,33%)] bg-[hsl(122,47%,33%)] text-white",
          state === "incorrect" && "border-[hsl(0,69%,47%)] bg-[hsl(0,69%,47%)] text-white"
        )}
      >
        {letter}
      </span>
      <span className={cn(
        "text-sm sm:text-[15px] leading-relaxed pt-0.5 sm:pt-1",
        state === "default" && "text-foreground",
        state === "selected" && "text-foreground font-medium",
        state === "correct" && "text-[hsl(122,47%,33%)] font-medium",
        state === "incorrect" && "text-[hsl(0,69%,47%)]"
      )}>
        <MathText text={text} />
      </span>
    </button>
  );
}
