import { cn } from "@/react-app/lib/utils";
import { Flag } from "lucide-react";

interface QuestionNavProps {
  totalQuestions: number;
  currentIndex: number;
  answeredIndices: number[];
  flaggedIndices?: number[];
  onNavigate: (index: number) => void;
  className?: string;
}

export function QuestionNav({
  totalQuestions,
  currentIndex,
  answeredIndices,
  flaggedIndices = [],
  onNavigate,
  className,
}: QuestionNavProps) {
  return (
    <div className={cn("flex items-center gap-1 flex-wrap", className)}>
      {Array.from({ length: totalQuestions }, (_, i) => {
        const isAnswered = answeredIndices.includes(i);
        const isCurrent = currentIndex === i;
        const isFlagged = flaggedIndices.includes(i);

        return (
          <button
            key={i}
            type="button"
            onClick={() => onNavigate(i)}
            className={cn(
              "relative w-8 h-8 rounded text-sm font-medium transition-all",
              "focus:outline-none focus:ring-2 focus:ring-offset-1 focus:ring-primary",
              isCurrent
                ? "bg-[hsl(205,100%,39%)] text-white"
                : isAnswered
                  ? "bg-[hsl(205,72%,94%)] text-[hsl(207,100%,17%)]"
                  : "bg-muted text-muted-foreground hover:bg-muted/80"
            )}
          >
            {i + 1}
            {isFlagged && (
              <Flag className="absolute -top-1 -right-1 h-3 w-3 text-[hsl(45,100%,52%)] fill-current" />
            )}
          </button>
        );
      })}
    </div>
  );
}

// Compact dot version for mobile or limited space
export function QuestionNavDots({
  totalQuestions,
  currentIndex,
  answeredIndices,
  className,
}: Omit<QuestionNavProps, "flaggedIndices" | "onNavigate">) {
  return (
    <div className={cn("flex items-center gap-1.5", className)}>
      {Array.from({ length: totalQuestions }, (_, i) => {
        const isAnswered = answeredIndices.includes(i);
        const isCurrent = currentIndex === i;

        return (
          <div
            key={i}
            className={cn(
              "w-2 h-2 rounded-full transition-all",
              isCurrent
                ? "bg-[hsl(205,100%,39%)] w-3"
                : isAnswered
                  ? "bg-[hsl(205,72%,94%)]"
                  : "bg-muted"
            )}
          />
        );
      })}
    </div>
  );
}
