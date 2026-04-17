// Supabase-backed SAT question data layer.
//
// Fires a single-shot fetch on module import, caches all MCQ questions in
// memory for the session, and exposes the API that the UI already imports
// via `@/data/questions`.

import { supabase } from "@/react-app/lib/supabase";
import {
  DISPLAY_NAMES,
  DOMAIN_TO_SECTION,
  DOMAIN_TO_SLUG,
  SKILL_TO_SLUG,
  difficultyFromCode,
  domainForSkill,
  type Difficulty,
  type Section,
} from "@/react-app/lib/sat-taxonomy";

// ─── Public types ─────────────────────────────────────────────────────────

export interface Question {
  /** Stable numeric id derived from `questionId` — used as Map key and in
   * answered-history arrays by Practice.tsx / DiagnosticTest.tsx. */
  id: number;
  /** 8-char College Board hex id, e.g. "002dba45". */
  questionId: string;
  section: Section;
  /** Domain slug (e.g. "algebra"). */
  topic: string;
  /** Skill slug (e.g. "linear_equations_one_var"). */
  skill: string;
  /** skill_desc rendered as pretty text — reading ExplanationChat.tsx:104. */
  subtopic?: string;
  difficulty: Difficulty;
  passageText?: string;
  questionText: string;
  /** Answer option HTML strings, ordered A→D. Empty for SPR (not yet wired). */
  options: string[];
  /** 0..3 for mcq. -1 for spr (which we don't surface yet). */
  correctIndex: number;
  /** Original correct_answer array from the DB — useful for SPR later. */
  correctAnswerText?: string[];
  questionType: "mcq" | "spr";
  isCalculatorAllowed?: boolean;
  explainWhy: string;
  explainConcept: string;
  explainNext: string;
}

// ─── Raw DB row shape ─────────────────────────────────────────────────────

interface Row {
  question_id: string;
  test_type: number | null;
  domain: string | null;
  skill_cd: string | null;
  skill_desc: string | null;
  difficulty: string | null;
  question_type: string | null;
  stimulus_html: string | null;
  stem_html: string | null;
  answer_options: Array<{ id: string; content: string }> | null;
  correct_answer: string[] | null;
  rationale_html: string | null;
  source: string | null;
}

// ─── Cache ────────────────────────────────────────────────────────────────

const byId = new Map<number, Question>();
const all: Question[] = [];
let loaded = false;

const PAGE_SIZE = 1000;
const COLUMNS =
  "question_id, test_type, domain, skill_cd, skill_desc, difficulty, question_type, stimulus_html, stem_html, answer_options, correct_answer, rationale_html, source";

async function fetchPage(from: number, to: number): Promise<Row[]> {
  const { data, error } = await supabase
    .from("sat_questions")
    .select(COLUMNS)
    .eq("question_type", "mcq")
    .order("question_id", { ascending: true })
    .range(from, to);
  if (error) throw error;
  return (data ?? []) as Row[];
}

function transform(r: Row): Question | null {
  if (!r.question_id || !r.stem_html) return null;

  // 8-hex id → unique 32-bit integer. If the id isn't 8-hex for some reason,
  // fall back to a simple string-hash so we never collide with parseInt ids.
  const parsed = /^[0-9a-fA-F]{8}$/.test(r.question_id)
    ? parseInt(r.question_id, 16)
    : hashString(r.question_id);

  const domain = r.domain ?? "";
  const topic = DOMAIN_TO_SLUG[domain] ?? "";
  const skill = r.skill_desc ? SKILL_TO_SLUG[r.skill_desc] ?? "" : "";
  const section = DOMAIN_TO_SECTION[domain];
  if (!section || !topic) return null;

  const options = (r.answer_options ?? []).map((o) => o.content);
  const answer = r.correct_answer?.[0] ?? "";
  const correctIndex =
    answer.length === 1 ? answer.toUpperCase().charCodeAt(0) - 65 : -1;
  const questionType = r.question_type === "spr" ? "spr" : "mcq";

  const rationale = r.rationale_html ?? "";

  return {
    id: parsed,
    questionId: r.question_id,
    section,
    topic,
    skill,
    subtopic: r.skill_desc?.trim() || undefined,
    difficulty: difficultyFromCode(r.difficulty),
    passageText: r.stimulus_html ?? undefined,
    questionText: r.stem_html,
    options,
    correctIndex,
    correctAnswerText: r.correct_answer ?? undefined,
    questionType,
    isCalculatorAllowed: section === "math" ? true : undefined,
    explainWhy: rationale,
    explainConcept: rationale,
    explainNext: "Practice more questions on this skill to reinforce the concept.",
  };
}

function hashString(s: string): number {
  // djb2; returns a positive 32-bit int. Used only as a collision fallback
  // when a questionId isn't 8-hex.
  let h = 5381;
  for (let i = 0; i < s.length; i++) h = (h * 33) ^ s.charCodeAt(i);
  return h >>> 0;
}

async function loadAll(): Promise<void> {
  const seen = new Set<number>();
  let from = 0;
  for (;;) {
    const page = await fetchPage(from, from + PAGE_SIZE - 1);
    for (const r of page) {
      const q = transform(r);
      if (!q) continue;
      if (seen.has(q.id)) continue; // paranoid dedupe
      seen.add(q.id);
      byId.set(q.id, q);
      all.push(q);
    }
    if (page.length < PAGE_SIZE) break;
    from += PAGE_SIZE;
  }
  loaded = true;
}

/** Resolves once the in-memory cache is populated. Consumers should await
 * this before calling `getAdaptiveNextQuestion` / `getDiagnosticQuestions`.
 * `QuestionsGate` does this at the route boundary so pages see a warm cache. */
export const questionsReady: Promise<void> = loadAll();

// ─── Public API ───────────────────────────────────────────────────────────

export const topicDisplayNames: Record<string, string> = { ...DISPLAY_NAMES };

export function getAdaptiveNextQuestion(
  answeredIds: number[],
  recentCorrect: boolean[],
  targetTopic?: string,
  sectionTopicList?: string[],
  targetSkills?: string[]
): Question | null {
  if (!loaded || all.length === 0) return null;

  const answered = new Set(answeredIds);
  const whitelist = sectionTopicList ? new Set(sectionTopicList) : null;
  const skillSet = targetSkills && targetSkills.length > 0 ? new Set(targetSkills) : null;

  const candidates = all.filter((q) => {
    if (answered.has(q.id)) return false;
    // Skill whitelist is the tightest filter — apply first so downstream
    // topic/section checks only narrow a skill-specific pool.
    if (skillSet && !skillSet.has(q.skill)) return false;
    if (targetTopic) {
      return q.topic === targetTopic || q.skill === targetTopic;
    }
    if (whitelist) {
      return whitelist.has(q.topic) || whitelist.has(q.skill);
    }
    return true;
  });

  if (candidates.length === 0) return null;

  // Recent-5 performance → preferred difficulty bucket
  const recent = recentCorrect.slice(-5);
  let target: Difficulty = "medium";
  if (recent.length >= 2) {
    const k = recent.reduce((n, b) => n + (b ? 1 : 0), 0);
    if (k >= 4) target = "hard";
    else if (k <= 1) target = "easy";
  }

  // Try target, then fall back to the full candidate pool
  const preferred = candidates.filter((q) => q.difficulty === target);
  const pool = preferred.length > 0 ? preferred : candidates;
  return pool[Math.floor(Math.random() * pool.length)];
}

export function getDiagnosticQuestions(n: number): Question[] {
  if (!loaded || all.length === 0) return [];

  // Group candidates by domain slug so we can sample evenly.
  const byDomain = new Map<string, Question[]>();
  for (const q of all) {
    const bucket = byDomain.get(q.topic) ?? [];
    bucket.push(q);
    byDomain.set(q.topic, bucket);
  }

  const domains = Array.from(byDomain.keys());
  const target = Math.max(1, n);
  const perDomain = Math.floor(target / domains.length);
  const remainder = target - perDomain * domains.length;

  const picked = new Set<number>();
  const out: Question[] = [];

  const takeFrom = (domain: string, count: number) => {
    const pool = shuffle((byDomain.get(domain) ?? []).slice());
    let taken = 0;
    for (const q of pool) {
      if (taken >= count) break;
      if (picked.has(q.id)) continue;
      picked.add(q.id);
      out.push(q);
      taken++;
    }
  };

  for (const domain of domains) takeFrom(domain, perDomain);

  // Remainder — shuffle domains, distribute one extra each until spent.
  const extraDomains = shuffle(domains.slice()).slice(0, remainder);
  for (const domain of extraDomains) takeFrom(domain, 1);

  return shuffle(out).slice(0, target);
}

function shuffle<T>(arr: T[]): T[] {
  for (let i = arr.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [arr[i], arr[j]] = [arr[j], arr[i]];
  }
  return arr;
}

// ─── Skill counts ────────────────────────────────────────────────────────
// Groups the in-memory cache by skill/domain. No Supabase call — the cache
// is already loaded on app boot via `questionsReady`.

export interface SkillCounts {
  bySkill: Record<string, number>;
  byDomain: Record<string, number>;
  total: number;
}

let skillCountsCache: SkillCounts | null = null;

export async function getSkillCounts(): Promise<SkillCounts> {
  if (skillCountsCache) return skillCountsCache;
  await questionsReady;

  const bySkill: Record<string, number> = {};
  const byDomain: Record<string, number> = {};
  for (const q of all) {
    if (!q.skill) continue;
    bySkill[q.skill] = (bySkill[q.skill] ?? 0) + 1;
    const domain = domainForSkill(q.skill) || q.topic;
    byDomain[domain] = (byDomain[domain] ?? 0) + 1;
  }

  skillCountsCache = { bySkill, byDomain, total: all.length };
  return skillCountsCache;
}
