import { describe, it, expect, vi, beforeAll } from "vitest";
import type { SupabaseClient } from "@supabase/supabase-js";
import { runAgent } from "@/worker/agents/runner";
import { explainerAgent, type ExplainerInput } from "@/worker/agents/explainer";
import cases from "./fixtures/explainer.json";

// Explainer eval suite. Runs only when RUN_EVALS=1 so CI stays cheap — the
// cases hit the real OpenAI API and cost tokens. Use `npm run evals` to
// run this suite. Checks structural properties of the output, not exact
// wording (prompts shift over time; wording shifts with them).

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

interface ExplainerCase {
  name: string;
  input: ExplainerInput;
  expect: {
    misconception_type?: string;
    response_contains?: string[];
    specific_fix_contains?: string[];
  };
}

describe.skipIf(!shouldRun)("explainer evals (online)", () => {
  beforeAll(() => {
    if (!process.env.OPENAI_API_KEY) {
      throw new Error("OPENAI_API_KEY required for online evals");
    }
  });

  const apiKey = process.env.OPENAI_API_KEY ?? "";
  const client = inertSupabase();

  let passCount = 0;
  let totalPromptTokens = 0;
  let totalCompletionTokens = 0;

  for (const tc of cases as ExplainerCase[]) {
    it(tc.name, async () => {
      const result = await runAgent(explainerAgent, tc.input, {}, apiKey, client);
      totalPromptTokens += result.promptTokens;
      totalCompletionTokens += result.completionTokens;

      if (tc.expect.misconception_type) {
        expect(result.output.misconception_type).toBe(tc.expect.misconception_type);
      }
      for (const s of tc.expect.response_contains ?? []) {
        expect(result.output.response.toLowerCase()).toContain(s.toLowerCase());
      }
      for (const s of tc.expect.specific_fix_contains ?? []) {
        expect(result.output.specific_fix.toLowerCase()).toContain(s.toLowerCase());
      }
      passCount++;
    }, 30_000);
  }

  it("token usage summary", () => {
    console.log(
      `[eval explainer] passed ${passCount}/${(cases as ExplainerCase[]).length}` +
      ` • prompt ${totalPromptTokens} tok • completion ${totalCompletionTokens} tok`
    );
  });
});

// Keep vitest happy when the suite is skipped entirely.
if (!shouldRun) {
  it.skip("explainer eval suite skipped (set RUN_EVALS=1 to enable)", () => {
    expect(true).toBe(true);
  });
}

// Unused imports silencer — keep vi reference so ts-check doesn't complain
// when RUN_EVALS is unset.
void vi;
