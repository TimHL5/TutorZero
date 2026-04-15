import { useMemo } from "react";
import katex from "katex";

interface MathTextProps {
  text: string;
  className?: string;
}

/**
 * Renders text that may contain inline math delimited by $...$ or \(...\).
 * Display math ($$...$$ or \[...\]) is also supported.
 * Non-math text is rendered as-is. Invalid LaTeX falls back to plain text.
 */
export function MathText({ text, className }: MathTextProps) {
  const html = useMemo(() => renderMathText(text), [text]);

  if (!text) return null;

  // If there's no math, render as plain text (no dangerouslySetInnerHTML needed)
  if (!containsMath(text)) {
    return <span className={className}>{text}</span>;
  }

  return (
    <span
      className={className}
      dangerouslySetInnerHTML={{ __html: html }}
    />
  );
}

function containsMath(text: string): boolean {
  // Check for $...$ (but not $$), $$...$$, \(...\), or \[...\]
  return /\$[^$].*?\$|\$\$.*?\$\$|\\\(.*?\\\)|\\\[.*?\\\]/s.test(text);
}

function renderMathText(text: string): string {
  if (!text || !containsMath(text)) return escapeHtml(text);

  // Process in order: display math first ($$...$$, \[...\]), then inline ($...$, \(...\))
  let result = text;

  // Display math: $$...$$
  result = result.replace(/\$\$([\s\S]*?)\$\$/g, (_match, latex) => {
    return renderKatex(latex, true);
  });

  // Display math: \[...\]
  result = result.replace(/\\\[([\s\S]*?)\\\]/g, (_match, latex) => {
    return renderKatex(latex, true);
  });

  // Inline math: \(...\)
  result = result.replace(/\\\(([\s\S]*?)\\\)/g, (_match, latex) => {
    return renderKatex(latex, false);
  });

  // Inline math: $...$  (single dollar, not double)
  // Negative lookbehind for $ to avoid matching $$ that wasn't already handled
  result = result.replace(/(?<!\$)\$(?!\$)((?:[^$\\]|\\.)+?)\$/g, (_match, latex) => {
    return renderKatex(latex, false);
  });

  // Escape any remaining non-math text segments
  // We need to be careful here — the math has already been rendered to HTML
  // So we only escape text that's NOT inside a katex span
  return escapeNonMathHtml(result);
}

function renderKatex(latex: string, displayMode: boolean): string {
  try {
    return katex.renderToString(latex.trim(), {
      displayMode,
      throwOnError: false,
      strict: false,
      trust: true,
    });
  } catch {
    // Fallback: show the raw LaTeX text
    return escapeHtml(`$${latex}$`);
  }
}

function escapeHtml(text: string): string {
  return text
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;");
}

function escapeNonMathHtml(text: string): string {
  // Split on katex-generated spans, escape only non-katex parts
  // KaTeX output contains class="katex" — use that as a marker
  const parts = text.split(/(<span class="katex[\s\S]*?<\/span>)/);
  return parts.map(part => {
    if (part.startsWith('<span class="katex')) {
      return part; // already rendered HTML from KaTeX
    }
    return escapeHtml(part);
  }).join("");
}
