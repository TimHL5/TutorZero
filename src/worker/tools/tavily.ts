// Thin wrapper around the Tavily Search API (https://tavily.com).
// Tavily is built for LLM tool-calling: it returns a pre-synthesized `answer`
// plus ranked results with snippets. Free tier = 1000 queries/month.
//
// This module must never throw. Every error path returns a well-formed
// TavilySearchResponse so the calling tool always has something to hand back
// to the model.

export interface TavilySearchResult {
  title: string;
  url: string;
  content: string; // snippet (Tavily calls it `content`)
  score: number;
}

export interface TavilySearchResponse {
  query: string;
  answer?: string;
  results: TavilySearchResult[];
}

export interface TavilySearchOptions {
  maxResults?: number;
  searchDepth?: "basic" | "advanced";
  includeDomains?: string[];
}

const TAVILY_URL = "https://api.tavily.com/search";
const TIMEOUT_MS = 10_000;

function unavailable(query: string, reason: string): TavilySearchResponse {
  return {
    query,
    answer: `Web search is temporarily unavailable (${reason}).`,
    results: [],
  };
}

export async function tavilySearch(
  query: string,
  options: TavilySearchOptions = {}
): Promise<TavilySearchResponse> {
  const apiKey = process.env.TAVILY_API_KEY;
  if (!apiKey) return unavailable(query, "missing API key");

  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), TIMEOUT_MS);

  try {
    const body: Record<string, unknown> = {
      api_key: apiKey,
      query,
      search_depth: options.searchDepth ?? "basic",
      max_results: options.maxResults ?? 5,
      include_answer: true,
    };
    if (options.includeDomains && options.includeDomains.length > 0) {
      body.include_domains = options.includeDomains;
    }

    const res = await fetch(TAVILY_URL, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body),
      signal: controller.signal,
    });

    if (!res.ok) {
      const text = await res.text().catch(() => "");
      console.error("[tavily] non-ok:", res.status, text.slice(0, 200));
      return unavailable(query, `upstream ${res.status}`);
    }

    const data = (await res.json()) as {
      query?: string;
      answer?: string;
      results?: Array<{ title?: string; url?: string; content?: string; score?: number }>;
    };

    const results: TavilySearchResult[] = (data.results ?? []).map((r) => ({
      title: r.title ?? "",
      url: r.url ?? "",
      content: r.content ?? "",
      score: typeof r.score === "number" ? r.score : 0,
    }));

    return {
      query: data.query ?? query,
      answer: data.answer,
      results,
    };
  } catch (err) {
    if (err instanceof DOMException && err.name === "AbortError") {
      return unavailable(query, "timed out");
    }
    console.error("[tavily] fetch failed:", err);
    return unavailable(query, "network error");
  } finally {
    clearTimeout(timer);
  }
}
