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

export async function fetchOpenAI(
  apiKey: string,
  body: Record<string, unknown>,
  timeoutMs = 25000
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
