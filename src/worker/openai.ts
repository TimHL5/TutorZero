// Shared OpenAI fetch helper. Wraps fetch() with an AbortController so a hung
// upstream can never tie up a Vercel function past `timeoutMs`.

interface OpenAIChatChoice {
  message?: { content?: string };
}

export interface OpenAIChatResponse {
  choices?: OpenAIChatChoice[];
  usage?: {
    prompt_tokens?: number;
    completion_tokens?: number;
    total_tokens?: number;
  };
}

export interface FetchOpenAIResult {
  data?: OpenAIChatResponse;
  error?: string;
  status: number;
}

// Default 60s. Earlier 25s aborted longer structured-output calls (notably the
// planner with max_tokens=2500) before they could finish, leaving the route to
// hang against Vercel's 300s function cap. 60s comfortably covers the slowest
// gpt-4o-mini JSON responses while staying inside the function budget.
export async function fetchOpenAI(
  apiKey: string,
  body: Record<string, unknown>,
  timeoutMs = 60000
): Promise<FetchOpenAIResult> {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);

  try {
    const response = await fetch("https://api.openai.com/v1/chat/completions", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Authorization": `Bearer ${apiKey}`,
      },
      body: JSON.stringify(body),
      signal: controller.signal,
    });

    clearTimeout(timer);

    if (!response.ok) {
      const errorText = await response.text().catch(() => "Unknown error");
      console.error("OpenAI API error:", response.status, errorText);
      return { error: `OpenAI returned ${response.status}`, status: response.status };
    }

    const data = (await response.json()) as OpenAIChatResponse;
    return { data, status: 200 };
  } catch (err: unknown) {
    clearTimeout(timer);
    if (err instanceof DOMException && err.name === "AbortError") {
      console.error("OpenAI request timed out");
      return { error: "AI request timed out. Please try again.", status: 504 };
    }
    console.error("OpenAI fetch failed:", err);
    return { error: "Failed to reach AI service. Please try again.", status: 502 };
  }
}

// ─── Streaming variant ─────────────────────────────────────────────────────
// Opens an SSE stream from OpenAI and yields the text delta from each chunk.
// Callers iterate with `for await (const chunk of iterateOpenAIStream(...))`.
// Errors surface as a rejected iterator; caller handles them as usual.

export interface OpenAIStreamStart {
  error?: string;
  status: number;
  /** Present when status === 200. Async iterable of text deltas. */
  stream?: AsyncIterable<string>;
}

export async function fetchOpenAIStream(
  apiKey: string,
  body: Record<string, unknown>,
  timeoutMs = 60000
): Promise<OpenAIStreamStart> {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);

  let response: Response;
  try {
    response = await fetch("https://api.openai.com/v1/chat/completions", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Authorization": `Bearer ${apiKey}`,
      },
      body: JSON.stringify({ ...body, stream: true }),
      signal: controller.signal,
    });
  } catch (err: unknown) {
    clearTimeout(timer);
    if (err instanceof DOMException && err.name === "AbortError") {
      return { error: "AI request timed out. Please try again.", status: 504 };
    }
    console.error("OpenAI stream fetch failed:", err);
    return { error: "Failed to reach AI service. Please try again.", status: 502 };
  }

  if (!response.ok || !response.body) {
    clearTimeout(timer);
    const errorText = await response.text().catch(() => "Unknown error");
    console.error("OpenAI stream API error:", response.status, errorText);
    return { error: `OpenAI returned ${response.status}`, status: response.status };
  }

  const body$ = response.body;

  async function* iterate(): AsyncIterable<string> {
    const reader = body$.getReader();
    const decoder = new TextDecoder();
    let buffer = "";
    try {
      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        buffer += decoder.decode(value, { stream: true });

        // SSE frames are separated by blank lines. Split on \n and parse
        // any line starting with "data: ".
        let newlineIdx: number;
        while ((newlineIdx = buffer.indexOf("\n")) !== -1) {
          const line = buffer.slice(0, newlineIdx).trim();
          buffer = buffer.slice(newlineIdx + 1);
          if (!line.startsWith("data:")) continue;
          const payload = line.slice(5).trim();
          if (payload === "[DONE]") return;
          try {
            const json = JSON.parse(payload) as {
              choices?: Array<{ delta?: { content?: string } }>;
            };
            const delta = json.choices?.[0]?.delta?.content;
            if (delta) yield delta;
          } catch {
            // Malformed chunk — skip.
          }
        }
      }
    } finally {
      clearTimeout(timer);
      try { reader.releaseLock(); } catch { /* noop */ }
    }
  }

  return { stream: iterate(), status: 200 };
}
