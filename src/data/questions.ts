// Import question banks — real College Board questions
import { bankMathAlgebraQuestions } from "./questions-bank-math-algebra";
import { bankMathAdvancedQuestions } from "./questions-bank-math-advanced";
import { bankMathProblemSolvingQuestions } from "./questions-bank-math-problem-solving";
import { bankMathGeometryQuestions } from "./questions-bank-math-geometry";
import { bankRwInformationQuestions } from "./questions-bank-rw-information";
import { bankRwCraftQuestions } from "./questions-bank-rw-craft";
import { bankRwExpressionQuestions } from "./questions-bank-rw-expression";
import { bankRwConventionsQuestions } from "./questions-bank-rw-conventions";
import { practiceTest4Questions } from "./questions-practice-test-4";
import { practiceTest5Questions } from "./questions-practice-test-5";
import { practiceTest6Questions } from "./questions-practice-test-6";
import { practiceTest7Questions } from "./questions-practice-test-7";
import { practiceTest8Questions } from "./questions-practice-test-8";
import { practiceTest9Questions } from "./questions-practice-test-9";
import { practiceTest10Questions } from "./questions-practice-test-10";
import { practiceTest11Questions } from "./questions-practice-test-11";

export interface Question {
  id: number;
  section: "reading_writing" | "math";
  module: 1 | 2;
  topic: string;
  subtopic: string;
  difficulty: "foundation" | "easy" | "medium" | "hard" | "advanced";
  questionText: string;
  passageText?: string;
  options: string[];
  correctIndex: number;
  explainWhy: string;
  explainConcept: string;
  explainNext: string;
  isCalculatorAllowed: boolean;
  estTimeSec: number;
  tags: string[];
}

// Detect OCR garbage density in a string
function garbageDensity(text: string): number {
  if (!text || text.length === 0) return 1;
  // Characters that indicate OCR corruption when clustered
  const garbageChars = /[¥€®™~°@#£§©¢«»ﬁﬂ]/g;
  const matches = text.match(garbageChars);
  return matches ? matches.length / text.length : 0;
}

// Detect merged answer options (OCR failed to separate A/B/C/D)
const MERGED_OPTION_PATTERN = /\s+[B-Hb-h][\.\):\s]\s*\S/;

// Detect untagged figure/graph/table references in question text
const FIGURE_PATTERN = /figure\s+(shows|shown|above|below|not drawn)|graph\s+(shows|shown|above|below|of)|diagram\s+(shows|shown)|the\s+graph\s+of|shown\s+(above|below)|\[Figure\s+described|the\s+figure\s+shown|in\s+the\s+xy-plane|the\s+table\s+(shows|summarizes|above|below)|the\s+scatterplot|the\s+bar\s+graph|the\s+line\s+graph|the\s+histogram/i;

// Detect OCR artifacts from graph axis rendering
const GRAPH_ARTIFACT_PATTERN = /SERRE|NTT\s*ETT|TTT\s*ttt|COCO|Piaf|eds¢ey|dake|Tei\s+Td/;

// Detect garbled math OCR that makes questions unintelligible
const GARBLED_MATH_PATTERN = /\b=o\b|~~"|whatis\b|\bPn\s*[—–-]|\bGy\s*[+—–-]/;

// Filter out questions with blank options, garbled text, missing figures, or dummy SPR options
function isUsableQuestion(q: Question): boolean {
  // Must have all 4 non-empty options (blank buttons confuse students)
  const nonEmptyOptions = q.options.filter(opt => opt.trim() !== "");
  if (nonEmptyOptions.length < 4) return false;

  // Must have meaningful question text (raised from 10 to 25 chars)
  if (!q.questionText || q.questionText.trim().length < 25) return false;

  // Exclude questions that need a figure we don't have
  if (q.tags.includes("has_figure") || q.tags.includes("figure_required")) return false;

  // Exclude questions that reference figures/graphs but weren't tagged
  if (FIGURE_PATTERN.test(q.questionText)) return false;
  if (GRAPH_ARTIFACT_PATTERN.test(q.questionText)) return false;

  // Exclude math questions with garbled OCR text patterns
  if (q.section === "math" && GARBLED_MATH_PATTERN.test(q.questionText)) return false;

  // Exclude math questions with merged answer options (OCR merged B/C/D into one string)
  // Only apply to math — R&W options often contain species names ("E. coli") that false-positive
  if (q.section === "math" && q.options.some(opt => opt.length > 15 && MERGED_OPTION_PATTERN.test(opt))) return false;

  // Exclude questions with duplicate options (sign of OCR corruption)
  const uniqueOptions = new Set(q.options.map(o => o.trim()).filter(o => o.length > 0));
  if (uniqueOptions.size < q.options.filter(o => o.trim().length > 0).length) return false;

  // Exclude student-produced-response questions with dummy options (e.g. [answer, 0, 1, -1])
  const dummyValues = new Set(["0", "1", "-1"]);
  const dummyCount = q.options.filter(opt => dummyValues.has(opt.trim())).length;
  if (dummyCount >= 3) return false;

  // Exclude heavily garbled questions (>5% garbage characters)
  if (garbageDensity(q.questionText) > 0.05) return false;

  // Exclude questions where any option has >15% garbage
  if (q.options.some(opt => opt.trim().length > 0 && garbageDensity(opt) > 0.15)) return false;

  return true;
}

// Combine all question banks into master array (filtered for quality)
const allQuestions: Question[] = [
  ...bankMathAlgebraQuestions,
  ...bankMathAdvancedQuestions,
  ...bankMathProblemSolvingQuestions,
  ...bankMathGeometryQuestions,
  ...bankRwInformationQuestions,
  ...bankRwCraftQuestions,
  ...bankRwExpressionQuestions,
  ...bankRwConventionsQuestions,
  ...practiceTest4Questions,
  ...practiceTest5Questions,
  ...practiceTest6Questions,
  ...practiceTest7Questions,
  ...practiceTest8Questions,
  ...practiceTest9Questions,
  ...practiceTest10Questions,
  ...practiceTest11Questions,
];

export const questions: Question[] = allQuestions.filter(isUsableQuestion);

// Helper function to get questions by various filters
export function getQuestionsBySection(section: "reading_writing" | "math"): Question[] {
  return questions.filter(q => q.section === section);
}

export function getQuestionsByTopic(topic: string): Question[] {
  return questions.filter(q => q.topic === topic);
}

export function getQuestionsByDifficulty(difficulty: Question["difficulty"]): Question[] {
  return questions.filter(q => q.difficulty === difficulty);
}

export function getDiagnosticQuestions(count: number = 20): Question[] {
  // Get a balanced mix of topics and difficulties for diagnostic
  const selected: Question[] = [];

  // Start with foundation and easy questions to establish baseline
  const easyQuestions = questions.filter(q =>
    q.difficulty === "foundation" || q.difficulty === "easy"
  );

  // Add medium and hard for ceiling detection
  const mediumQuestions = questions.filter(q => q.difficulty === "medium");
  const hardQuestions = questions.filter(q => q.difficulty === "hard");

  // Mix: 30% easy, 50% medium, 20% hard
  const easyCount = Math.floor(count * 0.3);
  const mediumCount = Math.floor(count * 0.5);
  const hardCount = count - easyCount - mediumCount;

  // Shuffle and select
  const shuffled = (arr: Question[]) => [...arr].sort(() => Math.random() - 0.5);

  selected.push(...shuffled(easyQuestions).slice(0, easyCount));
  selected.push(...shuffled(mediumQuestions).slice(0, mediumCount));
  selected.push(...shuffled(hardQuestions).slice(0, hardCount));

  // Final shuffle to mix difficulties
  return shuffled(selected);
}

export function getAdaptiveNextQuestion(
  answeredQuestionIds: number[],
  recentCorrect: boolean[],
  targetTopic?: string,
  sectionTopics?: string[]
): Question | null {
  // Filter out already answered questions
  let available = questions.filter(q => !answeredQuestionIds.includes(q.id));

  // Filter by section topics if specified (for section-based practice)
  if (sectionTopics && sectionTopics.length > 0) {
    const sectionFiltered = available.filter(q => sectionTopics.includes(q.topic));
    if (sectionFiltered.length > 0) {
      available = sectionFiltered;
    }
  }

  if (available.length === 0) return null;

  // Calculate recent performance (last 3 questions)
  const recentPerformance = recentCorrect.slice(-3);
  const recentAccuracy = recentPerformance.length > 0
    ? recentPerformance.filter(Boolean).length / recentPerformance.length
    : 0.5;

  // Determine target difficulty based on performance
  let targetDifficulty: Question["difficulty"];
  if (recentAccuracy < 0.5) {
    targetDifficulty = "easy";
  } else if (recentAccuracy < 0.67) {
    targetDifficulty = "medium";
  } else if (recentAccuracy < 0.85) {
    targetDifficulty = "hard";
  } else {
    targetDifficulty = "advanced";
  }

  // Filter by topic if specified
  let candidates = targetTopic
    ? available.filter(q => q.topic === targetTopic)
    : available;

  // If no candidates for topic, use all available
  if (candidates.length === 0) candidates = available;

  // Try to find a question at target difficulty
  let selected = candidates.filter(q => q.difficulty === targetDifficulty);

  // If none at target difficulty, try adjacent difficulties
  if (selected.length === 0) {
    const difficulties: Question["difficulty"][] = ["foundation", "easy", "medium", "hard", "advanced"];
    const targetIndex = difficulties.indexOf(targetDifficulty);

    // Try one level easier or harder
    for (const offset of [1, -1, 2, -2]) {
      const adjIndex = targetIndex + offset;
      if (adjIndex >= 0 && adjIndex < difficulties.length) {
        selected = candidates.filter(q => q.difficulty === difficulties[adjIndex]);
        if (selected.length > 0) break;
      }
    }
  }

  // If still none, just pick from candidates
  if (selected.length === 0) selected = candidates;

  // Return random selection from the filtered list
  return selected[Math.floor(Math.random() * selected.length)];
}

// Topic display names - aligned with official SAT categories
export const topicDisplayNames: Record<string, string> = {
  // Math domains
  algebra: "Algebra",
  advanced_math: "Advanced Math",
  problem_solving: "Problem-Solving and Data Analysis",
  geometry: "Geometry and Trigonometry",

  // Reading & Writing domains
  information_ideas: "Information and Ideas",
  craft_structure: "Craft and Structure",
  expression: "Expression of Ideas",
  conventions: "Standard English Conventions",

  // Math subtopics - Algebra
  linear_equations_one_var: "Linear Equations (1 Variable)",
  linear_equations_two_var: "Linear Equations (2 Variables)",
  linear_equations: "Linear Equations",
  linear_functions: "Linear Functions",
  systems_of_equations: "Systems of Linear Equations",
  systems_linear: "Systems of Linear Equations",
  inequalities: "Linear Inequalities",
  linear_inequalities: "Linear Inequalities",

  // Math subtopics - Advanced Math
  equivalent_expressions: "Equivalent Expressions",
  quadratics: "Quadratic Equations",
  nonlinear_equations: "Nonlinear Equations",
  exponentials: "Exponential Functions",
  polynomials: "Polynomial Expressions",
  rational_expressions: "Rational Expressions",
  nonlinear_functions: "Nonlinear Functions",
  functions: "Functions",
  absolute_value: "Absolute Value",

  // Math subtopics - Problem-Solving & Data Analysis
  ratios_percentages: "Ratios and Percentages",
  ratios_rates: "Ratios, Rates, and Proportions",
  percentages: "Percentages",
  statistics: "Statistics",
  one_var_data: "One-Variable Data",
  two_var_data: "Two-Variable Data",
  data_interpretation: "Data Interpretation",
  probability: "Probability",
  inference: "Statistical Inference",
  statistical_claims: "Evaluating Statistical Claims",

  // Math subtopics - Geometry & Trigonometry
  area_volume: "Area and Volume",
  triangles: "Triangles",
  lines_angles: "Lines and Angles",
  lines_angles_triangles: "Lines, Angles, and Triangles",
  right_triangles_trig: "Right Triangles and Trigonometry",
  trigonometry: "Trigonometry",
  circles: "Circles",

  // R&W subtopics - Information and Ideas
  central_ideas: "Central Ideas and Details",
  evidence: "Command of Evidence",
  evidence_textual: "Command of Evidence (Textual)",
  evidence_quantitative: "Command of Evidence (Quantitative)",
  inferences: "Inferences",

  // R&W subtopics - Craft and Structure
  vocabulary: "Words in Context",
  words_context: "Words in Context",
  text_structure: "Text Structure and Purpose",
  text_structure_purpose: "Text Structure and Purpose",
  purpose: "Author's Purpose",
  cross_text: "Cross-Text Connections",

  // R&W subtopics - Expression of Ideas
  transitions: "Transitions",
  rhetorical_synthesis: "Rhetorical Synthesis",

  // R&W subtopics - Standard English Conventions
  punctuation: "Punctuation",
  grammar: "Grammar and Usage",
  sentence_structure: "Sentence Structure",
  boundaries: "Sentence Boundaries",
  form_structure_sense: "Form, Structure, and Sense"
};

// Get all unique topics
export const mathTopics = [...new Set(questions.filter(q => q.section === "math").map(q => q.topic))];
export const readingWritingTopics = [...new Set(questions.filter(q => q.section === "reading_writing").map(q => q.topic))];
