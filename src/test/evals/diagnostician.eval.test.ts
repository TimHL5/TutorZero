import { describe, it, expect, vi, beforeAll } from "vitest";
import type { SupabaseClient } from "@supabase/supabase-js";
import { runAgent } from "@/worker/agents/runner";
import { diagnosticianAgent, type DiagnosticianInput } from "@/worker/agents/diagnostician";
import cases from "./fixtures/diagnostician.json";

const shouldRun = process.env.RUN_EVALS === "1";

function inertSupabase() {
  return {
    from: () => ({
      insert: () => ({
        select: () => ({ single: async () => ({ data: { id: 0 }, error: null }) }),
      }),
    }),
  } as unknown as SupabaseClient;
}

interface DiagnosticianCase {
  name: string;
  input: DiagnosticianInput;
  expect: {
    weaknesses_include?: string[];
    math_score_range?: [number, number];
    rw_score_range?: [number, number];
  };
}

describe.skipIf(!shouldRun)("diagnostician evals (online)", () => {
  beforeAll(() => {
    if (!process.env.OPENAI_API_KEY) {
      throw new Error("OPENAI_API_KEY required for online evals");
    }
  });

  const apiKey = process.env.OPENAI_API_KEY ?? "";
  const client = inertSupabase();

  for (const tc of cases as DiagnosticianCase[]) {
    it(tc.name, async () => {
      const result = await runAgent(diagnosticianAgent, tc.input, {}, apiKey, client);
      for (const skill of tc.expect.weaknesses_include ?? []) {
        const found = result.output.weaknesses.some(
          (w) => w.skill === skill || w.skill_display.toLowerCase().includes(skill.toLowerCase())
        );
        expect(found).toBe(true);
      }
      if (tc.expect.math_score_range) {
        const [lo, hi] = tc.expect.math_score_range;
        expect(result.output.estimated_math_score).toBeGreaterThanOrEqual(lo);
        expect(result.output.estimated_math_score).toBeLessThanOrEqual(hi);
      }
      if (tc.expect.rw_score_range) {
        const [lo, hi] = tc.expect.rw_score_range;
        expect(result.output.estimated_rw_score).toBeGreaterThanOrEqual(lo);
        expect(result.output.estimated_rw_score).toBeLessThanOrEqual(hi);
      }
    }, 60_000);
  }
});

if (!shouldRun) {
  it.skip("diagnostician eval suite skipped (set RUN_EVALS=1 to enable)", () => {
    expect(true).toBe(true);
  });
}

void vi;
