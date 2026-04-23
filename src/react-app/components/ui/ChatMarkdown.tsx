import ReactMarkdown from "react-markdown";
import remarkMath from "remark-math";
import rehypeKatex from "rehype-katex";

// remark-math only recognizes $...$ and $$...$$ out of the box. OpenAI models
// often emit \( … \) and \[ … \] despite prompt instructions. Normalize to
// the dollar form so KaTeX still renders them.
function normalizeMathDelimiters(s: string): string {
  return s
    .replace(/\\\[([\s\S]+?)\\\]/g, (_m, body) => `$$${body}$$`)
    .replace(/\\\(([\s\S]+?)\\\)/g, (_m, body) => `$${body}$`);
}

export function ChatMarkdown({ content }: { content: string }) {
  const normalized = normalizeMathDelimiters(content);
  return (
    <ReactMarkdown
      remarkPlugins={[remarkMath]}
      rehypePlugins={[[rehypeKatex, { throwOnError: false, output: "html", strict: "ignore" }]]}
      components={{
        p: ({ children }) => <p className="mb-2 last:mb-0">{children}</p>,
        strong: ({ children }) => <strong className="font-semibold">{children}</strong>,
        em: ({ children }) => <em className="italic">{children}</em>,
        ul: ({ children }) => <ul className="list-disc pl-4 mb-2 space-y-1">{children}</ul>,
        ol: ({ children }) => <ol className="list-decimal pl-4 mb-2 space-y-1">{children}</ol>,
        li: ({ children }) => <li className="leading-relaxed">{children}</li>,
        h1: ({ children }) => <h3 className="font-semibold text-base mb-1">{children}</h3>,
        h2: ({ children }) => <h3 className="font-semibold text-base mb-1">{children}</h3>,
        h3: ({ children }) => <h4 className="font-semibold text-sm mb-1">{children}</h4>,
        code: ({ children, className }) => {
          const isBlock = className?.includes("language-");
          return isBlock ? (
            <pre className="bg-gray-100 rounded p-2 my-2 overflow-x-auto text-xs">
              <code>{children}</code>
            </pre>
          ) : (
            <code className="bg-gray-100 rounded px-1 py-0.5 text-xs font-mono">{children}</code>
          );
        },
        a: ({ href, children }) => (
          <a href={href} className="text-tz-blue underline" target="_blank" rel="noopener noreferrer">
            {children}
          </a>
        ),
      }}
    >
      {normalized}
    </ReactMarkdown>
  );
}
