import { describe, it, expect } from "vitest";
import {
  DOMAIN_TO_SLUG,
  SLUG_TO_DOMAIN,
  DOMAIN_TO_SECTION,
  SKILL_TO_SLUG,
  SLUG_TO_SKILL,
  DISPLAY_NAMES,
  SKILLS_BY_DOMAIN,
  difficultyFromCode,
  domainForSkill,
} from "@/react-app/lib/sat-taxonomy";

describe("difficultyFromCode", () => {
  it("maps E to easy", () => expect(difficultyFromCode("E")).toBe("easy"));
  it("maps H to hard", () => expect(difficultyFromCode("H")).toBe("hard"));
  it("maps M to medium", () => expect(difficultyFromCode("M")).toBe("medium"));
  it("falls back to medium for unknown code", () =>
    expect(difficultyFromCode("X")).toBe("medium"));
  it("falls back to medium for null", () =>
    expect(difficultyFromCode(null)).toBe("medium"));
  it("falls back to medium for undefined", () =>
    expect(difficultyFromCode(undefined)).toBe("medium"));
});

describe("DOMAIN_TO_SLUG", () => {
  it("maps all 8 CB domains", () => {
    expect(Object.keys(DOMAIN_TO_SLUG)).toHaveLength(8);
  });
  it("maps Algebra correctly", () =>
    expect(DOMAIN_TO_SLUG["Algebra"]).toBe("algebra"));
  it("maps Advanced Math correctly", () =>
    expect(DOMAIN_TO_SLUG["Advanced Math"]).toBe("advanced_math"));
  it("maps R&W domains", () => {
    expect(DOMAIN_TO_SLUG["Information and Ideas"]).toBe("information_ideas");
    expect(DOMAIN_TO_SLUG["Craft and Structure"]).toBe("craft_structure");
  });
});

describe("SLUG_TO_DOMAIN", () => {
  it("is the inverse of DOMAIN_TO_SLUG", () => {
    for (const [domain, slug] of Object.entries(DOMAIN_TO_SLUG)) {
      expect(SLUG_TO_DOMAIN[slug]).toBe(domain);
    }
  });
});

describe("DOMAIN_TO_SECTION", () => {
  it("assigns math domains to math section", () => {
    expect(DOMAIN_TO_SECTION["Algebra"]).toBe("math");
    expect(DOMAIN_TO_SECTION["Advanced Math"]).toBe("math");
    expect(DOMAIN_TO_SECTION["Geometry and Trigonometry"]).toBe("math");
    expect(DOMAIN_TO_SECTION["Problem-Solving and Data Analysis"]).toBe("math");
  });
  it("assigns R&W domains to reading or writing", () => {
    expect(DOMAIN_TO_SECTION["Information and Ideas"]).toBe("reading");
    expect(DOMAIN_TO_SECTION["Craft and Structure"]).toBe("reading");
    expect(DOMAIN_TO_SECTION["Expression of Ideas"]).toBe("writing");
    expect(DOMAIN_TO_SECTION["Standard English Conventions"]).toBe("writing");
  });
});

describe("SKILL_TO_SLUG", () => {
  it("has entries for all 29 skills", () => {
    expect(Object.keys(SKILL_TO_SLUG).length).toBeGreaterThanOrEqual(29);
  });
  it("maps Linear equations in one variable", () =>
    expect(SKILL_TO_SLUG["Linear equations in one variable"]).toBe(
      "linear_equations_one_var"
    ));
});

describe("SLUG_TO_SKILL", () => {
  it("round-trips through SKILL_TO_SLUG (trimmed)", () => {
    for (const [skill, slug] of Object.entries(SKILL_TO_SLUG)) {
      expect(SLUG_TO_SKILL[slug]).toBe(skill.trim());
    }
  });
});

describe("DISPLAY_NAMES", () => {
  it("has entries for all 8 domain slugs", () => {
    const domainSlugs = Object.values(DOMAIN_TO_SLUG);
    for (const slug of domainSlugs) {
      expect(DISPLAY_NAMES[slug]).toBeTruthy();
    }
  });
  it("has entries for all skill slugs", () => {
    const skillSlugs = Object.values(SKILL_TO_SLUG);
    for (const slug of skillSlugs) {
      expect(DISPLAY_NAMES[slug]).toBeTruthy();
    }
  });
  it("includes section shortcuts", () => {
    expect(DISPLAY_NAMES["math"]).toBe("Math");
    expect(DISPLAY_NAMES["reading"]).toBe("Reading");
    expect(DISPLAY_NAMES["writing"]).toBe("Writing");
  });
});

describe("SKILLS_BY_DOMAIN", () => {
  it("covers all 8 domains (math + R&W)", () => {
    expect(SKILLS_BY_DOMAIN["algebra"]).toBeDefined();
    expect(SKILLS_BY_DOMAIN["advanced_math"]).toBeDefined();
    expect(SKILLS_BY_DOMAIN["problem_solving"]).toBeDefined();
    expect(SKILLS_BY_DOMAIN["geometry"]).toBeDefined();
    expect(SKILLS_BY_DOMAIN["information_ideas"]).toBeDefined();
    expect(SKILLS_BY_DOMAIN["craft_structure"]).toBeDefined();
    expect(SKILLS_BY_DOMAIN["expression"]).toBeDefined();
    expect(SKILLS_BY_DOMAIN["conventions"]).toBeDefined();
  });
  it("algebra has 5 skills", () =>
    expect(SKILLS_BY_DOMAIN["algebra"]).toHaveLength(5));
  it("every skill meta has required fields", () => {
    for (const skills of Object.values(SKILLS_BY_DOMAIN)) {
      for (const s of skills) {
        expect(s.slug).toBeTruthy();
        expect(s.skillCode).toBeTruthy();
        expect(s.displayName).toBeTruthy();
        expect(s.domainSlug).toBeTruthy();
      }
    }
  });
});

describe("domainForSkill", () => {
  it("resolves algebra skill to algebra domain", () => {
    expect(domainForSkill("linear_equations_one_var")).toBe("algebra");
  });
  it("resolves geometry skill to geometry domain", () => {
    expect(domainForSkill("circles")).toBe("geometry");
  });
  it("returns empty string for unknown slug", () => {
    expect(domainForSkill("nonexistent_skill")).toBe("");
  });
});
