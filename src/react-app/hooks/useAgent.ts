import { useCallback, useState } from "react";

// Mirror of the worker's AgentName union. Duplicated here to avoid pulling
// server-side modules into the client bundle.
export type AgentName =
  | "diagnostician"
  | "coach"
  | "explainer"
  | "concept"
  | "next_practice"
  | "planner"
  | "reviewer"
  | "echo";

export interface UseAgentResult<TOut> {
  data: TOut | null;
  loading: boolean;
  error: string | null;
  run: (input: unknown) => Promise<TOut>;
}

export function useAgent<TOut>(agentName: AgentName): UseAgentResult<TOut> {
  const [data, setData] = useState<TOut | null>(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const run = useCallback(
    async (input: unknown): Promise<TOut> => {
      setLoading(true);
      setError(null);
      try {
        const res = await fetch(`/api/agents/${agentName}`, {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          credentials: "include",
          body: JSON.stringify(input),
        });
        const json = await res.json();
        if (!res.ok) {
          throw new Error(json?.error ?? "Agent failed");
        }
        const output = json.output as TOut;
        setData(output);
        return output;
      } catch (e) {
        const message = e instanceof Error ? e.message : "Unknown error";
        setError(message);
        throw e;
      } finally {
        setLoading(false);
      }
    },
    [agentName]
  );

  return { data, loading, error, run };
}
