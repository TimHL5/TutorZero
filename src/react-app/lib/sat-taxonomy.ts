// SAT domain + skill taxonomy.
//
// Authoritative for mapping College Board's human-readable labels
// ("Algebra", "Linear equations in one variable") to the slugs the UI already
// uses ("algebra", "linear_equations_one_var"). Slug values match the
// existing conventions in `src/react-app/pages/Practice.tsx`'s sectionTopics
// list where they overlap; where the UI's legacy list has no counterpart,
// new canonical slugs are introduced.

export type Section = "math" | "reading" | "writing";
export type Difficulty = "easy" | "medium" | "hard";

// ─── Domains (8 total) ────────────────────────────────────────────────────

export const DOMAIN_TO_SLUG: Record<string, string> = {
  // R&W (test_type=1)
  "Information and Ideas": "information_ideas",
  "Craft and Structure": "craft_structure",
  "Expression of Ideas": "expression",
  "Standard English Conventions": "conventions",
  // Math (test_type=2)
  "Algebra": "algebra",
  "Advanced Math": "advanced_math",
  "Problem-Solving and Data Analysis": "problem_solving",
  "Geometry and Trigonometry": "geometry",
};

export const SLUG_TO_DOMAIN: Record<string, string> = Object.fromEntries(
  Object.entries(DOMAIN_TO_SLUG).map(([k, v]) => [v, k])
);

// test_type=1 records split between "reading" and "writing" by domain.
export const DOMAIN_TO_SECTION: Record<string, Section> = {
  "Information and Ideas": "reading",
  "Craft and Structure": "reading",
  "Expression of Ideas": "writing",
  "Standard English Conventions": "writing",
  "Algebra": "math",
  "Advanced Math": "math",
  "Problem-Solving and Data Analysis": "math",
  "Geometry and Trigonometry": "math",
};

// ─── Skills (29 total) ────────────────────────────────────────────────────
// Keys are the exact `skill_desc` strings in Supabase (including any trailing
// whitespace the source data has — some CB strings have a trailing space).

export const SKILL_TO_SLUG: Record<string, string> = {
  // R&W — Craft and Structure
  "Cross-Text Connections": "cross_text_connections",
  "Text Structure and Purpose": "text_structure_purpose",
  "Words in Context": "words_in_context",
  // R&W — Expression of Ideas
  "Rhetorical Synthesis": "rhetorical_synthesis",
  "Transitions": "transitions",
  // R&W — Information and Ideas
  "Central Ideas and Details": "central_ideas_details",
  "Command of Evidence": "command_of_evidence",
  "Inferences": "inferences",
  // R&W — Standard English Conventions
  "Boundaries": "boundaries",
  "Form, Structure, and Sense": "form_structure_sense",
  // Math — Algebra
  "Linear equations in one variable": "linear_equations_one_var",
  "Linear functions": "linear_functions",
  "Linear equations in two variables": "linear_equations_two_var",
  "Systems of two linear equations in two variables": "systems_of_linear_equations",
  "Linear inequalities in one or two variables": "linear_inequalities",
  // Math — Advanced Math
  "Equivalent expressions": "equivalent_expressions",
  "Nonlinear equations in one variable and systems of equations in two variables ":
    "nonlinear_equations",
  "Nonlinear functions": "nonlinear_functions",
  // Math — Geometry and Trigonometry
  "Area and volume": "area_and_volume",
  "Lines, angles, and triangles": "lines_angles_triangles",
  "Right triangles and trigonometry": "right_triangles_trigonometry",
  "Circles": "circles",
  // Math — Problem-Solving and Data Analysis
  "Ratios, rates, proportional relationships, and units": "ratios_rates_proportions",
  "Percentages": "percentages",
  "One-variable data: Distributions and measures of center and spread":
    "one_variable_data",
  "Two-variable data: Models and scatterplots": "two_variable_data",
  "Probability and conditional probability": "probability",
  "Inference from sample statistics and margin of error ": "inference_statistics",
  "Evaluating statistical claims: Observational studies and experiments ":
    "evaluating_statistical_claims",
};

export const SLUG_TO_SKILL: Record<string, string> = Object.fromEntries(
  Object.entries(SKILL_TO_SLUG).map(([k, v]) => [v, k.trim()])
);

// ─── Display names ────────────────────────────────────────────────────────
// Every domain slug + every skill slug → pretty label. Used directly as
// `topicDisplayNames` in the data layer so existing `topicDisplayNames[slug]`
// lookups across the UI resolve for both domain-level and skill-level slugs.

export const DISPLAY_NAMES: Record<string, string> = {
  // Section shortcuts a few UI strings rely on
  math: "Math",
  reading: "Reading",
  writing: "Writing",
  // Domains (8)
  information_ideas: "Information and Ideas",
  craft_structure: "Craft and Structure",
  expression: "Expression of Ideas",
  conventions: "Standard English Conventions",
  algebra: "Algebra",
  advanced_math: "Advanced Math",
  problem_solving: "Problem-Solving and Data Analysis",
  geometry: "Geometry and Trigonometry",
  // Skills — R&W (10)
  cross_text_connections: "Cross-Text Connections",
  text_structure_purpose: "Text Structure and Purpose",
  words_in_context: "Words in Context",
  rhetorical_synthesis: "Rhetorical Synthesis",
  transitions: "Transitions",
  central_ideas_details: "Central Ideas and Details",
  command_of_evidence: "Command of Evidence",
  inferences: "Inferences",
  boundaries: "Boundaries",
  form_structure_sense: "Form, Structure, and Sense",
  // Skills — Math (19)
  linear_equations_one_var: "Linear equations in one variable",
  linear_functions: "Linear functions",
  linear_equations_two_var: "Linear equations in two variables",
  systems_of_linear_equations: "Systems of two linear equations",
  linear_inequalities: "Linear inequalities",
  equivalent_expressions: "Equivalent expressions",
  nonlinear_equations: "Nonlinear equations and systems",
  nonlinear_functions: "Nonlinear functions",
  area_and_volume: "Area and volume",
  lines_angles_triangles: "Lines, angles, and triangles",
  right_triangles_trigonometry: "Right triangles and trigonometry",
  circles: "Circles",
  ratios_rates_proportions: "Ratios, rates, and proportions",
  percentages: "Percentages",
  one_variable_data: "One-variable data",
  two_variable_data: "Two-variable data",
  probability: "Probability",
  inference_statistics: "Inference from sample statistics",
  evaluating_statistical_claims: "Evaluating statistical claims",
};

export function difficultyFromCode(code: string | null | undefined): Difficulty {
  // Fall back to "medium" for unrecognized codes so the adaptive algorithm
  // still has a reasonable bucket to put the question in.
  if (code === "E") return "easy";
  if (code === "H") return "hard";
  return "medium";
}

// ─── Skill → Domain mapping & SKILLS_BY_DOMAIN grouping ───────────────────

export interface SkillMeta {
  /** Existing URL-safe slug — matches SKILL_TO_SLUG values. */
  slug: string;
  /** College Board skill code, e.g. "H.A.", "INF", "CTC". */
  skillCode: string;
  /** Human-readable label, pulled from DISPLAY_NAMES. */
  displayName: string;
  /** Domain slug, e.g. "algebra". */
  domainSlug: string;
}

// Ordered to follow the College Board's skill_cd sequence within each
// domain (H.A., H.B., …), which also matches how the skills are taught.
export const SKILLS_BY_DOMAIN: Record<string, SkillMeta[]> = {
  algebra: [
    { slug: "linear_equations_one_var", skillCode: "H.A.", displayName: DISPLAY_NAMES.linear_equations_one_var, domainSlug: "algebra" },
    { slug: "linear_functions", skillCode: "H.B.", displayName: DISPLAY_NAMES.linear_functions, domainSlug: "algebra" },
    { slug: "linear_equations_two_var", skillCode: "H.C.", displayName: DISPLAY_NAMES.linear_equations_two_var, domainSlug: "algebra" },
    { slug: "systems_of_linear_equations", skillCode: "H.D.", displayName: DISPLAY_NAMES.systems_of_linear_equations, domainSlug: "algebra" },
    { slug: "linear_inequalities", skillCode: "H.E.", displayName: DISPLAY_NAMES.linear_inequalities, domainSlug: "algebra" },
  ],
  advanced_math: [
    { slug: "equivalent_expressions", skillCode: "P.A.", displayName: DISPLAY_NAMES.equivalent_expressions, domainSlug: "advanced_math" },
    { slug: "nonlinear_equations", skillCode: "P.B.", displayName: DISPLAY_NAMES.nonlinear_equations, domainSlug: "advanced_math" },
    { slug: "nonlinear_functions", skillCode: "P.C.", displayName: DISPLAY_NAMES.nonlinear_functions, domainSlug: "advanced_math" },
  ],
  problem_solving: [
    { slug: "ratios_rates_proportions", skillCode: "Q.A.", displayName: DISPLAY_NAMES.ratios_rates_proportions, domainSlug: "problem_solving" },
    { slug: "percentages", skillCode: "Q.B.", displayName: DISPLAY_NAMES.percentages, domainSlug: "problem_solving" },
    { slug: "one_variable_data", skillCode: "Q.C.", displayName: DISPLAY_NAMES.one_variable_data, domainSlug: "problem_solving" },
    { slug: "two_variable_data", skillCode: "Q.D.", displayName: DISPLAY_NAMES.two_variable_data, domainSlug: "problem_solving" },
    { slug: "probability", skillCode: "Q.E.", displayName: DISPLAY_NAMES.probability, domainSlug: "problem_solving" },
    { slug: "inference_statistics", skillCode: "Q.F.", displayName: DISPLAY_NAMES.inference_statistics, domainSlug: "problem_solving" },
    { slug: "evaluating_statistical_claims", skillCode: "Q.G.", displayName: DISPLAY_NAMES.evaluating_statistical_claims, domainSlug: "problem_solving" },
  ],
  geometry: [
    { slug: "area_and_volume", skillCode: "S.A.", displayName: DISPLAY_NAMES.area_and_volume, domainSlug: "geometry" },
    { slug: "lines_angles_triangles", skillCode: "S.B.", displayName: DISPLAY_NAMES.lines_angles_triangles, domainSlug: "geometry" },
    { slug: "right_triangles_trigonometry", skillCode: "S.C.", displayName: DISPLAY_NAMES.right_triangles_trigonometry, domainSlug: "geometry" },
    { slug: "circles", skillCode: "S.D.", displayName: DISPLAY_NAMES.circles, domainSlug: "geometry" },
  ],
  information_ideas: [
    { slug: "central_ideas_details", skillCode: "CID", displayName: DISPLAY_NAMES.central_ideas_details, domainSlug: "information_ideas" },
    { slug: "command_of_evidence", skillCode: "COE", displayName: DISPLAY_NAMES.command_of_evidence, domainSlug: "information_ideas" },
    { slug: "inferences", skillCode: "INF", displayName: DISPLAY_NAMES.inferences, domainSlug: "information_ideas" },
  ],
  craft_structure: [
    { slug: "cross_text_connections", skillCode: "CTC", displayName: DISPLAY_NAMES.cross_text_connections, domainSlug: "craft_structure" },
    { slug: "text_structure_purpose", skillCode: "TSP", displayName: DISPLAY_NAMES.text_structure_purpose, domainSlug: "craft_structure" },
    { slug: "words_in_context", skillCode: "WIC", displayName: DISPLAY_NAMES.words_in_context, domainSlug: "craft_structure" },
  ],
  expression: [
    { slug: "rhetorical_synthesis", skillCode: "SYN", displayName: DISPLAY_NAMES.rhetorical_synthesis, domainSlug: "expression" },
    { slug: "transitions", skillCode: "TRA", displayName: DISPLAY_NAMES.transitions, domainSlug: "expression" },
  ],
  conventions: [
    { slug: "boundaries", skillCode: "BOU", displayName: DISPLAY_NAMES.boundaries, domainSlug: "conventions" },
    { slug: "form_structure_sense", skillCode: "FSS", displayName: DISPLAY_NAMES.form_structure_sense, domainSlug: "conventions" },
  ],
};

// Layout order: Math domains first (matching section-card order), then
// Reading, then Writing.
export const DOMAINS_IN_ORDER: Array<{
  slug: string;
  displayName: string;
  section: Section;
}> = [
  { slug: "algebra", displayName: DISPLAY_NAMES.algebra, section: "math" },
  { slug: "advanced_math", displayName: DISPLAY_NAMES.advanced_math, section: "math" },
  { slug: "problem_solving", displayName: DISPLAY_NAMES.problem_solving, section: "math" },
  { slug: "geometry", displayName: DISPLAY_NAMES.geometry, section: "math" },
  { slug: "information_ideas", displayName: DISPLAY_NAMES.information_ideas, section: "reading" },
  { slug: "craft_structure", displayName: DISPLAY_NAMES.craft_structure, section: "reading" },
  { slug: "expression", displayName: DISPLAY_NAMES.expression, section: "writing" },
  { slug: "conventions", displayName: DISPLAY_NAMES.conventions, section: "writing" },
];

const SKILL_SLUG_TO_META: Record<string, SkillMeta> = Object.fromEntries(
  Object.values(SKILLS_BY_DOMAIN)
    .flat()
    .map((m) => [m.slug, m])
);

export function skillSlugToDisplayName(slug: string): string {
  return DISPLAY_NAMES[slug] ?? slug;
}

export function skillSlugToSkillCode(slug: string): string {
  return SKILL_SLUG_TO_META[slug]?.skillCode ?? "";
}

export function domainForSkill(slug: string): string {
  return SKILL_SLUG_TO_META[slug]?.domainSlug ?? "";
}
