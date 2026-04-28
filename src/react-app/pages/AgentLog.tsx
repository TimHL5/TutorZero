import { useCallback, useEffect, useMemo, useState } from "react";
import type { AgentName } from "@/react-app/hooks/useAgent";

// DEMO ONLY page — no auth guard, mounted at /admin/agents.
// Two tabs: per-call agent feed (existing) and tutor conversations (new),
// the latter grouped by conversation_id so reviewers can see a full chat
// transcript with tool calls inline.

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

interface TutorTurnRow {
  id: number;
  conversation_id: string;
  role: "user" | "assistant" | "tool";
  content: string | null;
  tool_calls: unknown;
  model: string | null;
  prompt_tokens: number | null;
  completion_tokens: number | null;
  latency_ms: number | null;
  created_at: string;
  user_id: string | null;
  error: string | null;
}

const AGENT_FILTERS: ("all" | AgentName | "tutor")[] = [
  "all",
  "echo",
  "diagnostician",
  "coach",
  "explainer",
  "concept",
  "next_practice",
  "planner",
  "reviewer",
  "tutor",
];

type Tab = "calls" | "tutor";

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
  const [tab, setTab] = useState<Tab>("calls");

  return (
    <div className="min-h-screen bg-slate-50 p-6">
      <div className="mx-auto max-w-6xl">
        <header className="mb-6 flex items-end justify-between">
          <div>
            <h1 className="text-2xl font-semibold text-slate-900">
              Agent Call Log
            </h1>
            <p className="mt-1 text-sm text-slate-500">
              Live feed from <code className="rounded bg-slate-200 px-1 py-0.5 text-xs">ai_agent_calls</code> + <code className="rounded bg-slate-200 px-1 py-0.5 text-xs">ai_tutor_turns</code>.
              Auto-refreshes every 10s. Demo only — no auth.
            </p>
          </div>
        </header>

        <div className="mb-4 flex gap-1 border-b border-slate-200">
          <TabButton active={tab === "calls"} onClick={() => setTab("calls")}>
            Agent calls
          </TabButton>
          <TabButton active={tab === "tutor"} onClick={() => setTab("tutor")}>
            Tutor conversations
          </TabButton>
        </div>

        {tab === "calls" ? <AgentCallsView /> : <TutorConversationsView />}
      </div>
    </div>
  );
}

function TabButton({
  active,
  onClick,
  children,
}: {
  active: boolean;
  onClick: () => void;
  children: React.ReactNode;
}) {
  return (
    <button
      onClick={onClick}
      className={`px-4 py-2 text-sm font-medium border-b-2 transition-colors ${
        active
          ? "border-slate-900 text-slate-900"
          : "border-transparent text-slate-500 hover:text-slate-700"
      }`}
    >
      {children}
    </button>
  );
}

// ─── Agent calls tab ─────────────────────────────────────────────────────

function AgentCallsView() {
  const [rows, setRows] = useState<AgentCallRow[]>([]);
  const [filter, setFilter] = useState<"all" | AgentName | "tutor">("all");
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
    <>
      <div className="mb-4 flex items-center justify-between gap-3">
        <div className="grid grid-cols-3 gap-3 flex-1">
          <Stat label="Calls (last 100)" value={summary.total.toString()} />
          <Stat
            label="Errors"
            value={summary.errors.toString()}
            tone={summary.errors > 0 ? "warn" : "ok"}
          />
          <Stat label="Avg latency" value={`${summary.avgLatency} ms`} />
        </div>
        <div className="flex items-center gap-2 self-end">
          <label className="text-xs text-slate-500">Agent</label>
          <select
            value={filter}
            onChange={(e) => setFilter(e.target.value as "all" | AgentName | "tutor")}
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
                <CallRow
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
    </>
  );
}

// ─── Tutor conversations tab ─────────────────────────────────────────────

interface ConversationGroup {
  conversationId: string;
  turns: TutorTurnRow[];
  startedAt: string;
  totalPromptTokens: number;
  totalCompletionTokens: number;
  toolCallCount: number;
  firstUserMessage: string | null;
}

function groupByConversation(rows: TutorTurnRow[]): ConversationGroup[] {
  const map = new Map<string, TutorTurnRow[]>();
  for (const r of rows) {
    const arr = map.get(r.conversation_id) ?? [];
    arr.push(r);
    map.set(r.conversation_id, arr);
  }
  const groups: ConversationGroup[] = [];
  for (const [conversationId, turns] of map.entries()) {
    // Sort turns oldest → newest within a conversation so the transcript
    // reads top-to-bottom.
    turns.sort(
      (a, b) =>
        new Date(a.created_at).getTime() - new Date(b.created_at).getTime()
    );
    const firstUser = turns.find((t) => t.role === "user");
    groups.push({
      conversationId,
      turns,
      startedAt: turns[0]?.created_at ?? "",
      totalPromptTokens: turns.reduce((s, t) => s + (t.prompt_tokens ?? 0), 0),
      totalCompletionTokens: turns.reduce(
        (s, t) => s + (t.completion_tokens ?? 0),
        0
      ),
      toolCallCount: turns.filter((t) => t.tool_calls != null).length,
      firstUserMessage: firstUser?.content ?? null,
    });
  }
  // Sort conversations newest-started first.
  groups.sort(
    (a, b) =>
      new Date(b.startedAt).getTime() - new Date(a.startedAt).getTime()
  );
  return groups;
}

function TutorConversationsView() {
  const [rows, setRows] = useState<TutorTurnRow[]>([]);
  const [toolCallsToday, setToolCallsToday] = useState(0);
  const [expandedConv, setExpandedConv] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const load = useCallback(async () => {
    try {
      const res = await fetch("/api/admin/tutor-turns", {
        credentials: "include",
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json?.error ?? "Failed to load");
      setRows((json.rows ?? []) as TutorTurnRow[]);
      setToolCallsToday(json.toolCallsToday ?? 0);
      setError(null);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Failed to load");
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    load();
    const t = setInterval(load, 10000);
    return () => clearInterval(t);
  }, [load]);

  const groups = useMemo(() => groupByConversation(rows), [rows]);

  return (
    <>
      <div className="mb-4 grid grid-cols-3 gap-3">
        <Stat label="Conversations" value={groups.length.toString()} />
        <Stat label="Turns (last 100)" value={rows.length.toString()} />
        <Stat label="Tool calls today" value={toolCallsToday.toString()} />
      </div>

      {error && (
        <div className="mb-4 rounded-md border border-red-300 bg-red-50 p-3 text-sm text-red-700">
          {error}
        </div>
      )}

      <div className="space-y-3">
        {loading && groups.length === 0 && (
          <div className="rounded-lg border border-slate-200 bg-white p-6 text-center text-slate-400 text-sm">
            Loading…
          </div>
        )}
        {!loading && groups.length === 0 && (
          <div className="rounded-lg border border-slate-200 bg-white p-6 text-center text-slate-400 text-sm">
            No tutor conversations yet. Open <code>/tutor</code> and send a message.
          </div>
        )}
        {groups.map((g) => {
          const isOpen = expandedConv === g.conversationId;
          return (
            <ConversationCard
              key={g.conversationId}
              group={g}
              isOpen={isOpen}
              onToggle={() => setExpandedConv(isOpen ? null : g.conversationId)}
            />
          );
        })}
      </div>
    </>
  );
}

function ConversationCard({
  group,
  isOpen,
  onToggle,
}: {
  group: ConversationGroup;
  isOpen: boolean;
  onToggle: () => void;
}) {
  return (
    <div className="rounded-lg border border-slate-200 bg-white shadow-sm overflow-hidden">
      <button
        onClick={onToggle}
        className="w-full text-left px-4 py-3 hover:bg-slate-50 transition-colors"
      >
        <div className="flex items-start justify-between gap-3">
          <div className="min-w-0 flex-1">
            <div className="flex items-center gap-2 mb-1">
              <code className="text-xs font-mono text-slate-500">
                {group.conversationId.slice(0, 8)}
              </code>
              <span className="text-xs text-slate-400">·</span>
              <span className="text-xs text-slate-500">
                {group.turns.length} turn{group.turns.length === 1 ? "" : "s"}
              </span>
              {group.toolCallCount > 0 && (
                <>
                  <span className="text-xs text-slate-400">·</span>
                  <span className="text-xs text-emerald-700 bg-emerald-50 px-1.5 py-0.5 rounded">
                    {group.toolCallCount} tool call{group.toolCallCount === 1 ? "" : "s"}
                  </span>
                </>
              )}
            </div>
            <div className="text-sm text-slate-800 truncate">
              {group.firstUserMessage ?? <span className="italic text-slate-400">(no user message)</span>}
            </div>
          </div>
          <div className="flex flex-col items-end gap-0.5 text-xs text-slate-500 flex-shrink-0">
            <span>{relativeTime(group.startedAt)}</span>
            <span className="tabular-nums">
              {group.totalPromptTokens}p / {group.totalCompletionTokens}c
            </span>
          </div>
        </div>
      </button>
      {isOpen && (
        <div className="border-t border-slate-200 bg-slate-50 px-4 py-3 space-y-2">
          {group.turns.map((t) => (
            <TurnRow key={t.id} turn={t} />
          ))}
        </div>
      )}
    </div>
  );
}

function TurnRow({ turn }: { turn: TutorTurnRow }) {
  const roleStyle =
    turn.role === "user"
      ? "bg-blue-50 border-blue-200 text-blue-900"
      : turn.role === "assistant"
      ? "bg-white border-slate-200 text-slate-900"
      : "bg-amber-50 border-amber-200 text-amber-900";

  // Surface tool_calls as pills when they exist.
  const toolCalls = Array.isArray(turn.tool_calls)
    ? (turn.tool_calls as Array<{ name?: string; id?: string; ok?: boolean }>)
    : null;

  return (
    <div className={`rounded border p-2 text-xs ${roleStyle}`}>
      <div className="flex items-center justify-between mb-1">
        <span className="font-medium uppercase tracking-wide text-[10px] opacity-70">
          {turn.role}
          {turn.model ? ` · ${turn.model}` : ""}
        </span>
        <span className="text-[10px] opacity-60 tabular-nums">
          {turn.latency_ms != null ? `${turn.latency_ms}ms · ` : ""}
          {(turn.prompt_tokens ?? 0)}p / {(turn.completion_tokens ?? 0)}c
        </span>
      </div>
      {turn.content && (
        <div className="whitespace-pre-wrap leading-relaxed">{turn.content}</div>
      )}
      {toolCalls && toolCalls.length > 0 && (
        <div className="mt-1.5 flex flex-wrap gap-1">
          {toolCalls.map((tc, i) => (
            <span
              key={tc.id ?? i}
              className="inline-flex items-center gap-1 rounded-full bg-slate-200 px-2 py-0.5 text-[10px] font-medium text-slate-700"
            >
              {tc.name ?? "tool"}
              {tc.ok === false && <span className="text-rose-600">!</span>}
            </span>
          ))}
        </div>
      )}
      {turn.error && (
        <div className="mt-1 text-[10px] text-rose-700 bg-rose-50 rounded px-1.5 py-0.5">
          {turn.error}
        </div>
      )}
    </div>
  );
}

// ─── Shared bits ─────────────────────────────────────────────────────────

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

function CallRow({
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
