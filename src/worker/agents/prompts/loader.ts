import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

// Synchronous markdown prompt loader. Each agent has `<name>.md` living next
// to this file; optional few-shot sidecars live in `_shared/few_shot_<name>.md`
// and are appended when present. Loads are cached at module scope so the
// filesystem is hit at most once per prompt per cold start.

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// On Vercel the worker is bundled into api/index.ts, so __dirname points at
// the bundled function (no .md files there). vercel.json `includeFiles`
// ships the prompts/ tree at <cwd>/src/worker/agents/prompts. Locally the
// loader file sits next to the .md files, so __dirname works directly.
const PROMPT_DIR = fs.existsSync(path.join(__dirname, "tutor.md"))
  ? __dirname
  : path.join(process.cwd(), "src", "worker", "agents", "prompts");

const cache = new Map<string, string>();

function readFileCached(absPath: string): string | null {
  if (cache.has(absPath)) return cache.get(absPath) as string;
  try {
    const contents = fs.readFileSync(absPath, "utf8");
    cache.set(absPath, contents);
    return contents;
  } catch {
    return null;
  }
}

export function loadPrompt(name: string): string {
  const base = readFileCached(path.join(PROMPT_DIR, `${name}.md`));
  if (base == null) {
    throw new Error(`[loadPrompt] prompt not found: ${name}.md`);
  }
  const fewShot = readFileCached(path.join(PROMPT_DIR, "_shared", `few_shot_${name}.md`));
  return fewShot ? `${base.trim()}\n\n${fewShot.trim()}\n` : base;
}
