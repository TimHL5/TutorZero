import { describe, it, expect, vi, beforeAll } from "vitest";
import type { SupabaseClient } from "@supabase/supabase-js";
import { runAgent } from "@/worker/agents/runner";
import { coachAgent, type CoachInput } from "@/worker/agents/coach";
import cases from "./fixtures/coach.json";

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

interface CoachCase {
  name: string;
  input: CoachInput;
  expect: {
    intervention?: string;
    message_contains?: string[];
  };
}

describe.skipIf(!shouldRun)("coach evals (online)", () => {
  beforeAll(() => {
    if (!process.env.OPENAI_API_KEY) {
      throw new Error("OPENAI_API_KEY required for online evals");
    }
  });

  const apiKey = process.env.OPENAI_API_KEY ?? "";
  const client = inertSupabase();

  for (const tc of cases as CoachCase[]) {
    it(tc.name, async () => {
      const result = await runAgent(coachAgent, tc.input, {}, apiKey, client);
      if (tc.expect.intervention) {
        expect(result.output.intervention).toBe(tc.expect.intervention);
      }
      for (const s of tc.expect.message_contains ?? []) {
        expect(result.output.message.toLowerCase()).toContain(s.toLowerCase());
      }
      // Message must cite at least one number (the Coach system prompt insists on this).
      expect(result.output.message).toMatch(/\d/);
    }, 30_000);
  }
});

if (!shouldRun) {
  it.skip("coach eval suite skipped (set RUN_EVALS=1 to enable)", () => {
    expect(true).toBe(true);
  });
}

void vi;
