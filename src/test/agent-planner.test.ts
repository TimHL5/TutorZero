import { describe, it, expect, vi, beforeEach } from "vitest";
import type { SupabaseClient } from "@supabase/supabase-js";
import { runAgent } from "@/worker/agents/runner";
import { plannerAgent } from "@/worker/agents/planner";
import { AgentError } from "@/worker/agents/types";

function makeSupabaseDouble() {
  const inserts: Record<string, unknown>[] = [];
  let nextId = 1;
  const client = {
    from: () => ({
      insert: (row: Record<string, unknown>) => {
        inserts.push(row);
        const id = nextId++;
        return {
          select: (_cols: string) => ({
            single: async () => ({ data: { id }, error: null }),
          }),
        };
      },
    }),
  } as unknown as SupabaseClient;
  return { client, inserts };
}

function mockOpenAIResponse(content: string, status = 200) {
  return {
    ok: status >= 200 && status < 300,
    status,
    json: async () => ({
      choices: [{ message: { content } }],
      usage: { prompt_tokens: 80, completion_tokens: 200 },
    }),
    text: async () => content,
  } as Response;
}

const VALID_PLAN = {
  week: [
    {
      day: "monday",
      date: "2026-04-20",
      sessions: [
        {
          id: "s1",
          durationMin: 30,
          focusSkill: "linear_equations_one_var",
          focusSkillDisplay: "Linear Equations (1-var)",
          sessionType: "drill",
          rationale: "Top weakness — start the week with a focused 30-min drill.",
        },
      ],
    },
    { day: "tuesday", date: "2026-04-21", sessions: [] },
    { day: "wednesday", date: "2026-04-22", sessions: [] },
    {
      day: "thursday",
      date: "2026-04-23",
      sessions: [
        {
          id: "s2",
          durationMin: 45,
          focusSkill: "geom_circles",
          focusSkillDisplay: "Circles",
          sessionType: "review",
          rationale: "Mixed review covering Monday's drill plus weak geometry.",
        },
      ],
    },
    { day: "friday", date: "2026-04-24", sessions: [] },
    { day: "saturday", date: "2026-04-25", sessions: [] },
    { day: "sunday", date: "2026-04-26", sessions: [] },
  ],
  totalHoursAllocated: 1.25,
  coverage: { linear_equations_one_var: 30, geom_circles: 45 },
  weekGoal: "Establish a baseline cadence: short daily algebra and one mixed review.",
};

const INPUT = {
  weakSkills: [
    { skill: "linear_equations_one_var", severity: "high" as const, verified: true },
    { skill: "geom_circles", severity: "medium" as const, verified: false },
  ],
  testDate: "2026-06-01",
  hoursPerWeek: 5,
  weekStartDate: "2026-04-20",
};

describe("plannerAgent", () => {
  const fetchSpy = vi.spyOn(globalThis, "fetch");

  beforeEach(() => {
    fetchSpy.mockReset();
  });

  it("parses a valid plan and recomputes totals from sessions", async () => {
    fetchSpy.mockResolvedValueOnce(mockOpenAIResponse(JSON.stringify(VALID_PLAN)));
    const { client } = makeSupabaseDouble();

    const result = await runAgent(plannerAgent, INPUT, { userId: "u-1" }, "key", client);

    expect(result.output.week).toHaveLength(7);
    // 75 min / 60 = 1.25, rounded-to-1dp via Math.round(12.5)/10 = 1.3
    expect(result.output.totalHoursAllocated).toBe(1.3);
    expect(result.output.coverage.linear_equations_one_var).toBe(30);
    expect(result.output.coverage.geom_circles).toBe(45);
    expect(result.output.weekGoal.length).toBeGreaterThan(0);
  });

  it("throws when a day exceeds the 120-minute cap", async () => {
    const overcap = JSON.parse(JSON.stringify(VALID_PLAN));
    overcap.week[0].sessions = [
      { ...VALID_PLAN.week[0].sessions[0], durationMin: 90 },
      { ...VALID_PLAN.week[0].sessions[0], id: "s1b", durationMin: 60 },
    ];
    fetchSpy.mockResolvedValueOnce(mockOpenAIResponse(JSON.stringify(overcap)));
    const { client } = makeSupabaseDouble();

    await expect(
      runAgent(plannerAgent, INPUT, {}, "key", client)
    ).rejects.toBeInstanceOf(AgentError);
  });

  it("throws when sessionType is unknown", async () => {
    const bad = JSON.parse(JSON.stringify(VALID_PLAN));
    bad.week[0].sessions[0].sessionType = "marathon";
    fetchSpy.mockResolvedValueOnce(mockOpenAIResponse(JSON.stringify(bad)));
    const { client } = makeSupabaseDouble();

    await expect(
      runAgent(plannerAgent, INPUT, {}, "key", client)
    ).rejects.toBeInstanceOf(AgentError);
  });

  it("includes hour budget and weak skills in the prompt", async () => {
    fetchSpy.mockResolvedValueOnce(mockOpenAIResponse(JSON.stringify(VALID_PLAN)));
    const { client } = makeSupabaseDouble();

    await runAgent(plannerAgent, INPUT, {}, "key", client);

    const init = fetchSpy.mock.calls[0]?.[1] as RequestInit | undefined;
    const body = JSON.parse(init!.body as string);
    const userMsg = body.messages.find((m: { role: string }) => m.role === "user").content;
    expect(userMsg).toContain("hoursPerWeek=5");
    expect(userMsg).toContain("totalMinuteBudget=300");
    expect(userMsg).toContain("linear_equations_one_var");
    expect(userMsg).toContain("[high]");
  });

  it("throws when day name is invalid", async () => {
    const bad = JSON.parse(JSON.stringify(VALID_PLAN));
    bad.week[0].day = "funday";
    fetchSpy.mockResolvedValueOnce(mockOpenAIResponse(JSON.stringify(bad)));
    const { client } = makeSupabaseDouble();

    await expect(
      runAgent(plannerAgent, INPUT, {}, "key", client)
    ).rejects.toBeInstanceOf(AgentError);
  });
});
