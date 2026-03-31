import { useEffect, useState } from "react";
import { cn } from "@/react-app/lib/utils";
import { Clock, Pause, Play } from "lucide-react";

interface TimerProps {
  totalSeconds: number;
  onTimeUp?: () => void;
  isPaused?: boolean;
  onTogglePause?: () => void;
  showPauseButton?: boolean;
  className?: string;
}

export function Timer({
  totalSeconds,
  onTimeUp,
  isPaused = false,
  onTogglePause,
  showPauseButton = false,
  className,
}: TimerProps) {
  const [secondsRemaining, setSecondsRemaining] = useState(totalSeconds);

  useEffect(() => {
    setSecondsRemaining(totalSeconds);
  }, [totalSeconds]);

  useEffect(() => {
    if (isPaused || secondsRemaining <= 0) return;

    const interval = setInterval(() => {
      setSecondsRemaining((prev) => {
        if (prev <= 1) {
          clearInterval(interval);
          onTimeUp?.();
          return 0;
        }
        return prev - 1;
      });
    }, 1000);

    return () => clearInterval(interval);
  }, [isPaused, secondsRemaining, onTimeUp]);

  const minutes = Math.floor(secondsRemaining / 60);
  const seconds = secondsRemaining % 60;

  const isWarning = secondsRemaining <= 300 && secondsRemaining > 60; // Under 5 min
  const isCritical = secondsRemaining <= 60; // Under 1 min

  return (
    <div className={cn("flex items-center gap-2", className)}>
      <Clock className={cn(
        "h-4 w-4",
        isCritical ? "text-[hsl(0,69%,47%)]" : isWarning ? "text-[hsl(45,100%,52%)]" : "text-current"
      )} />
      <span
        className={cn(
          "font-mono text-lg font-medium tabular-nums",
          isCritical && "text-[hsl(0,69%,47%)] animate-pulse",
          isWarning && "text-[hsl(45,100%,52%)]"
        )}
      >
        {String(minutes).padStart(2, "0")}:{String(seconds).padStart(2, "0")}
      </span>
      {showPauseButton && onTogglePause && (
        <button
          type="button"
          onClick={onTogglePause}
          className="p-1 hover:bg-white/10 rounded transition-colors"
          aria-label={isPaused ? "Resume" : "Pause"}
        >
          {isPaused ? (
            <Play className="h-4 w-4" />
          ) : (
            <Pause className="h-4 w-4" />
          )}
        </button>
      )}
    </div>
  );
}

// Simple timer display without countdown (for showing elapsed time)
export function ElapsedTimer({ startTime }: { startTime: number }) {
  const [elapsed, setElapsed] = useState(0);

  useEffect(() => {
    const interval = setInterval(() => {
      setElapsed(Math.floor((Date.now() - startTime) / 1000));
    }, 1000);

    return () => clearInterval(interval);
  }, [startTime]);

  const minutes = Math.floor(elapsed / 60);
  const seconds = elapsed % 60;

  return (
    <span className="font-mono text-sm tabular-nums text-muted-foreground">
      {String(minutes).padStart(2, "0")}:{String(seconds).padStart(2, "0")}
    </span>
  );
}
