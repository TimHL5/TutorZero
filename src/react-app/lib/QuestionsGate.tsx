import { useEffect, useState, type ReactNode } from "react";
import { questionsReady } from "@/react-app/lib/questions";

/**
 * Blocks children until the question cache is warm. Pages that call
 * `getAdaptiveNextQuestion` / `getDiagnosticQuestions` on mount rely on this
 * wrapper so their effects see a populated cache on first render.
 */
export function QuestionsGate({ children }: { children: ReactNode }) {
  const [status, setStatus] = useState<"loading" | "ready" | "error">("loading");
  const [errMsg, setErrMsg] = useState<string>();

  useEffect(() => {
    let alive = true;
    questionsReady
      .then(() => {
        if (alive) setStatus("ready");
      })
      .catch((e: unknown) => {
        if (!alive) return;
        setStatus("error");
        setErrMsg(e instanceof Error ? e.message : String(e));
      });
    return () => {
      alive = false;
    };
  }, []);

  if (status === "error") {
    return (
      <div className="min-h-screen flex items-center justify-center px-6 text-center">
        <p className="text-red-600 text-sm">
          Failed to load questions: {errMsg ?? "unknown error"}
        </p>
      </div>
    );
  }

  if (status === "loading") {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <p className="animate-pulse text-tz-gray-400">Loading questions…</p>
      </div>
    );
  }

  return <>{children}</>;
}
