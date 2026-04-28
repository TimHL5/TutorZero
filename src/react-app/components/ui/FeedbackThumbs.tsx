import { useState } from "react";
import { ThumbsUp, ThumbsDown } from "lucide-react";
import { cn } from "@/react-app/lib/utils";

// Thumbs up/down on an agent output. Fire-and-forget POST to
// /api/agents/feedback; failures show a small "couldn't record" hint but
// don't retry — feedback is not mission-critical.

interface Props {
  agentCallId?: number | null;
  tutorTurnId?: number | null;
  className?: string;
}

export function FeedbackThumbs({ agentCallId, tutorTurnId, className }: Props) {
  const [rating, setRating] = useState<1 | -1 | null>(null);
  const [error, setError] = useState<string | null>(null);

  const canSubmit = agentCallId != null || tutorTurnId != null;
  if (!canSubmit) return null;

  async function submit(value: 1 | -1) {
    if (rating !== null) return; // one vote per render
    setRating(value);
    setError(null);
    try {
      const res = await fetch("/api/agents/feedback", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({
          agentCallId: agentCallId ?? null,
          tutorTurnId: tutorTurnId ?? null,
          rating: value,
        }),
      });
      if (!res.ok) throw new Error(`status ${res.status}`);
    } catch (err) {
      console.error("Feedback submit failed:", err);
      setError("Couldn't record that — try again?");
      setRating(null);
    }
  }

  return (
    <div className={cn("flex items-center gap-1", className)}>
      <span className="text-xs text-tz-gray-500 mr-1">Helpful?</span>
      <button
        type="button"
        aria-label="Helpful"
        disabled={rating !== null}
        onClick={() => submit(1)}
        className={cn(
          "p-1 rounded hover:bg-tz-gray-100 transition disabled:cursor-default",
          rating === 1 ? "text-emerald-600" : "text-tz-gray-400"
        )}
      >
        <ThumbsUp className="w-3.5 h-3.5" />
      </button>
      <button
        type="button"
        aria-label="Not helpful"
        disabled={rating !== null}
        onClick={() => submit(-1)}
        className={cn(
          "p-1 rounded hover:bg-tz-gray-100 transition disabled:cursor-default",
          rating === -1 ? "text-rose-600" : "text-tz-gray-400"
        )}
      >
        <ThumbsDown className="w-3.5 h-3.5" />
      </button>
      {rating !== null && !error && (
        <span className="text-xs text-tz-gray-400 ml-1">Thanks</span>
      )}
      {error && <span className="text-xs text-rose-500 ml-1">{error}</span>}
    </div>
  );
}
