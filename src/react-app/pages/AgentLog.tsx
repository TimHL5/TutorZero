import { useCallback, useEffect, useMemo, useState } from "react";
import type { AgentName } from "@/react-app/hooks/useAgent";

// DEMO ONLY page — no auth guard, mounted at /admin/agents.
// Polls /api/admin/agent-calls every 10s and renders a live feed of every
// AI agent invocation (success or failure) so the wiring is visible.

interface AgentCallRow {
  id: number;
  user_id: string | null;
  session_id: number | null;
  agent: string;
  input_json: unknown;
  output_json: unknown;
  model: string;
  prompt_tokens: number | null;
  completion_tokens: number | null;
  latency_ms: number | null;
  error: string | null;
  created_at: string;
}

const AGENT_FILTERS: ("all" | AgentName)[] = [
  "all",
  "echo",
  "diagnostician",
  "coach",
  "explainer",
  "planner",
  "reviewer",
];

function relativeTime(iso: string): string {
  const diffMs = Date.now() - new Date(iso).getTime();
  const seconds = Math.max(0, Math.floor(diffMs / 1000));
  if (seconds < 60) return `${seconds}s ago`;
  const minutes = Math.floor(seconds / 60);
  if (minutes < 60) return `${minutes}m ago`;
  const hours = Math.floor(minutes / 60);
  if (hours < 24) return `${hours}h ago`;
  return new Date(iso).toLocaleString();
}

function truncateUserId(id: string | null): string {
  if (!id) return "—";
  return `${id.slice(0, 8)}…`;
}

export default function AgentLog() {
  const [rows, setRows] = useState<AgentCallRow[]>([]);
  const [filter, setFilter] = useState<"all" | AgentName>("all");
  const [expandedId, setExpandedId] = useState<number | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    try {
      const url =
        filter === "all"
          ? "/api/admin/agent-calls"
          : `/api/admin/agent-calls?agent=${encodeURIComponent(filter)}`;
      const res = await fetch(url, { credentials: "include" });
      const json = await res.json();
      if (!res.ok) throw new Error(json?.error ?? "Failed to load");
      setRows((json.rows ?? []) as AgentCallRow[]);
      setError(null);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Failed to load");
    } finally {
      setLoading(false);
    }
  }, [filter]);

  useEffect(() => {
    load();
    const t = setInterval(load, 10000);
    return () => clearInterval(t);
  }, [load]);

  const summary = useMemo(() => {
    const total = rows.length;
    const errors = rows.filter((r) => r.error).length;
    const avgLatency =
      rows.length > 0
        ? Math.round(
            rows.reduce((s, r) => s + (r.latency_ms ?? 0), 0) / rows.length
          )
        : 0;
    return { total, errors, avgLatency };
  }, [rows]);

  return (
    <div className="min-h-screen bg-slate-50 p-6">
      <div className="mx-auto max-w-6xl">
        <header className="mb-6 flex items-end justify-between">
          <div>
            <h1 className="text-2xl font-semibold text-slate-900">
              Agent Call Log
            </h1>
            <p className="mt-1 text-sm text-slate-500">
              Live feed from <code className="rounded bg-slate-200 px-1 py-0.5 text-xs">ai_agent_calls</code>.
              Auto-refreshes every 10s. Demo only — no auth.
            </p>
          </div>
          <div className="flex items-center gap-2">
            <label className="text-xs text-slate-500">Agent</label>
            <select
              value={filter}
              onChange={(e) => setFilter(e.target.value as "all" | AgentName)}
              className="rounded-md border border-slate-300 bg-white px-3 py-1.5 text-sm shadow-sm focus:border-slate-500 focus:outline-none"
            >
              {AGENT_FILTERS.map((a) => (
                <option key={a} value={a}>
                  {a}
                </option>
              ))}
            </select>
            <button
              onClick={load}
              className="rounded-md border border-slate-300 bg-white px-3 py-1.5 text-sm shadow-sm hover:bg-slate-100"
            >
              Refresh
            </button>
          </div>
        </header>

        <div className="mb-4 grid grid-cols-3 gap-3">
          <Stat label="Calls (last 100)" value={summary.total.toString()} />
          <Stat
            label="Errors"
            value={summary.errors.toString()}
            tone={summary.errors > 0 ? "warn" : "ok"}
          />
          <Stat label="Avg latency" value={`${summary.avgLatency} ms`} />
        </div>

        {error && (
          <div className="mb-4 rounded-md border border-red-300 bg-red-50 p-3 text-sm text-red-700">
            {error}
          </div>
        )}

        <div className="overflow-hidden rounded-lg border border-slate-200 bg-white shadow-sm">
          <table className="w-full text-sm">
            <thead className="bg-slate-100 text-left text-xs uppercase tracking-wide text-slate-500">
              <tr>
                <th className="px-4 py-2">When</th>
                <th className="px-4 py-2">Agent</th>
                <th className="px-4 py-2">User</th>
                <th className="px-4 py-2 text-right">Latency</th>
                <th className="px-4 py-2 text-right">Tokens (p/c)</th>
                <th className="px-4 py-2">Model</th>
                <th className="px-4 py-2">Error</th>
              </tr>
            </thead>
            <tbody>
              {loading && rows.length === 0 && (
                <tr>
                  <td colSpan={7} className="px-4 py-6 text-center text-slate-400">
                    Loading…
                  </td>
                </tr>
              )}
              {!loading && rows.length === 0 && (
                <tr>
                  <td colSpan={7} className="px-4 py-6 text-center text-slate-400">
                    No agent calls yet. POST to <code>/api/agents/echo</code> to generate one.
                  </td>
                </tr>
              )}
              {rows.map((row) => {
                const isOpen = expandedId === row.id;
                return (
                  <Row
                    key={row.id}
                    row={row}
                    isOpen={isOpen}
                    onToggle={() => setExpandedId(isOpen ? null : row.id)}
                  />
                );
              })}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}

function Stat({
  label,
  value,
  tone = "ok",
}: {
  label: string;
  value: string;
  tone?: "ok" | "warn";
}) {
  return (
    <div className="rounded-lg border border-slate-200 bg-white p-3 shadow-sm">
      <div className="text-xs uppercase tracking-wide text-slate-500">{label}</div>
      <div
        className={`mt-1 text-xl font-semibold ${
          tone === "warn" ? "text-red-600" : "text-slate-900"
        }`}
      >
        {value}
      </div>
    </div>
  );
}

function Row({
  row,
  isOpen,
  onToggle,
}: {
  row: AgentCallRow;
  isOpen: boolean;
  onToggle: () => void;
}) {
  return (
    <>
      <tr
        onClick={onToggle}
        className={`cursor-pointer border-t border-slate-200 hover:bg-slate-50 ${
          row.error ? "bg-red-50/40" : ""
        }`}
      >
        <td className="px-4 py-2 text-slate-600">{relativeTime(row.created_at)}</td>
        <td className="px-4 py-2 font-medium text-slate-900">{row.agent}</td>
        <td className="px-4 py-2 font-mono text-xs text-slate-500">
          {truncateUserId(row.user_id)}
        </td>
        <td className="px-4 py-2 text-right tabular-nums text-slate-700">
          {row.latency_ms ?? "—"} ms
        </td>
        <td className="px-4 py-2 text-right tabular-nums text-slate-700">
          {row.prompt_tokens ?? "—"} / {row.completion_tokens ?? "—"}
        </td>
        <td className="px-4 py-2 font-mono text-xs text-slate-500">{row.model}</td>
        <td className="px-4 py-2">
          {row.error ? (
            <span className="rounded bg-red-100 px-2 py-0.5 text-xs font-medium text-red-700">
              {row.error.slice(0, 40)}
              {row.error.length > 40 ? "…" : ""}
            </span>
          ) : (
            <span className="text-xs text-slate-400">ok</span>
          )}
        </td>
      </tr>
      {isOpen && (
        <tr className="border-t border-slate-200 bg-slate-50">
          <td colSpan={7} className="px-4 py-3">
            <div className="grid grid-cols-2 gap-4">
              <JsonBlock title="input_json" value={row.input_json} />
              <JsonBlock title="output_json" value={row.output_json} />
            </div>
          </td>
        </tr>
      )}
    </>
  );
}

function JsonBlock({ title, value }: { title: string; value: unknown }) {
  let pretty: string;
  try {
    pretty = JSON.stringify(value, null, 2);
  } catch {
    pretty = String(value);
  }
  return (
    <div>
      <div className="mb-1 text-xs uppercase tracking-wide text-slate-500">{title}</div>
      <pre className="max-h-72 overflow-auto rounded border border-slate-200 bg-white p-3 text-xs text-slate-800">
        {pretty}
      </pre>
    </div>
  );
}
