import { memo, useMemo } from "react";
import DOMPurify from "dompurify";
import { MathJax } from "better-react-mathjax";
import katex from "katex";

interface MathTextProps {
  /** Back-compat name. Can be plain text, HTML, MathML, or LaTeX. */
  text?: string;
  /** Preferred name. Same semantics as `text`. If both are set, `html` wins. */
  html?: string;
  className?: string;
}

// ─── Content classification ────────────────────────────────────────────────

function containsRich(s: string): boolean {
  if (!s) return false;
  if (s.indexOf("<") >= 0) return true;
  if (s.indexOf("&") >= 0) return true;
  return /\$[^$\n]+\$|\\\(|\\\[|\$\$[\s\S]+?\$\$/.test(s);
}

function containsMathML(s: string): boolean {
  return /<math[\s>]/i.test(s);
}

// ─── KaTeX auto-render ─────────────────────────────────────────────────────
// Replaces LaTeX delimiters ($…$, $$…$$, \(…\), \[…\]) in an HTML string
// with KaTeX-rendered output. Falls back to the original token on error.

const LATEX_RE =
  /(\$\$[\s\S]+?\$\$|\$[^$\n]+?\$|\\\[[\s\S]+?\\\]|\\\([\s\S]+?\\\))/g;

function renderLatexInHtml(html: string): string {
  return html.replace(LATEX_RE, (match) => {
    let latex: string;
    let displayMode: boolean;

    if (match.startsWith("$$")) {
      latex = match.slice(2, -2);
      displayMode = true;
    } else if (match.startsWith("\\[")) {
      latex = match.slice(2, -2);
      displayMode = true;
    } else if (match.startsWith("$")) {
      latex = match.slice(1, -1);
      displayMode = false;
    } else {
      // \( … \)
      latex = match.slice(2, -2);
      displayMode = false;
    }

    try {
      return katex.renderToString(latex.trim(), {
        displayMode,
        throwOnError: false,
        output: "html",
        trust: false,
      });
    } catch {
      return match;
    }
  });
}

// ─── Sanitization ─────────────────────────────────────────────────────────

const STORAGE_PREFIX =
  "https://bkmyfcolrdumyrwktjrr.supabase.co/storage/v1/object/public/sat-images/";

let hooksRegistered = false;
function registerHooksOnce() {
  if (hooksRegistered) return;
  hooksRegistered = true;

  DOMPurify.addHook("uponSanitizeAttribute", (_node, data) => {
    if (data.attrName === "src") {
      const v = data.attrValue;
      if (!v) return;
      const ok = v.startsWith(STORAGE_PREFIX) || v.startsWith("data:image/");
      if (!ok) data.keepAttr = false;
    }
  });

  DOMPurify.addHook("afterSanitizeAttributes", (node) => {
    if (node.nodeName === "A" && (node as Element).hasAttribute("href")) {
      (node as Element).setAttribute("target", "_blank");
      (node as Element).setAttribute("rel", "noopener noreferrer");
    }
  });
}

function sanitize(dirty: string): string {
  registerHooksOnce();
  return DOMPurify.sanitize(dirty, {
    USE_PROFILES: { html: true, mathMl: true, svg: true },
    ADD_ATTR: [
      "alttext", "display", "displaystyle", "mathvariant", "scope",
      // KaTeX-generated attributes
      "aria-hidden", "focusable",
    ],
    FORBID_TAGS: ["script", "style", "iframe", "object", "embed", "form", "input", "button"],
    FORBID_ATTR: ["onerror", "onload", "onclick", "onmouseover", "onfocus", "onblur"],
  });
}

// ─── Component ────────────────────────────────────────────────────────────

function MathTextImpl({ text, html, className }: MathTextProps) {
  const content = html ?? text ?? "";

  const prepared = useMemo(() => {
    if (!content) return { mode: "empty" as const, clean: "" };
    if (!containsRich(content)) return { mode: "plain" as const, clean: content };

    // Content with MathML → use MathJax (handles MathML + LaTeX together)
    if (containsMathML(content)) {
      return { mode: "mathjax" as const, clean: sanitize(content) };
    }

    // Content with LaTeX delimiters but no MathML → use KaTeX (faster, offline)
    const katexRendered = renderLatexInHtml(content);
    return { mode: "katex" as const, clean: sanitize(katexRendered) };
  }, [content]);

  if (prepared.mode === "empty") return null;

  if (prepared.mode === "plain") {
    return <span className={className}>{content}</span>;
  }

  if (prepared.mode === "katex") {
    return (
      <span
        className={className}
        dangerouslySetInnerHTML={{ __html: prepared.clean }}
      />
    );
  }

  // mathjax fallback for MathML content
  return (
    <MathJax dynamic hideUntilTypeset="first">
      <span
        className={className}
        dangerouslySetInnerHTML={{ __html: prepared.clean }}
      />
    </MathJax>
  );
}

export const MathText = memo(MathTextImpl);
