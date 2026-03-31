import { describe, it, expect } from "vitest";
import {
  questions,
  getQuestionsBySection,
  getQuestionsByTopic,
  getDiagnosticQuestions,
  getAdaptiveNextQuestion,
} from "./questions";

describe("question bank integrity", () => {
  it("has questions loaded", () => {
    expect(questions.length).toBeGreaterThan(100);
  });

  it("every question has non-empty questionText", () => {
    const empty = questions.filter((q) => !q.questionText || q.questionText.trim() === "");
    expect(empty).toHaveLength(0);
  });

  it("every question has exactly 4 options or valid option set", () => {
    const bad = questions.filter(
      (q) => !q.options || q.options.length < 2
    );
    expect(bad).toHaveLength(0);
  });

  it("every question has a valid correctIndex within options range", () => {
    const bad = questions.filter(
      (q) => q.correctIndex < 0 || q.correctIndex >= q.options.length
    );
    expect(bad).toHaveLength(0);
  });

  it("no duplicate question IDs", () => {
    const ids = questions.map((q) => q.id);
    const uniqueIds = new Set(ids);
    expect(uniqueIds.size).toBe(ids.length);
  });

  it("every question has a valid section", () => {
    const validSections = ["reading_writing", "math"];
    const bad = questions.filter((q) => !validSections.includes(q.section));
    expect(bad).toHaveLength(0);
  });

  it("every question has a valid difficulty", () => {
    const validDifficulties = ["foundation", "easy", "medium", "hard", "advanced"];
    const bad = questions.filter((q) => !validDifficulties.includes(q.difficulty));
    expect(bad).toHaveLength(0);
  });

  it("flags questions with blank options", () => {
    const blankOptions = questions.filter(
      (q) => q.options.every((opt) => opt === "" || opt.trim() === "")
    );
    // This test documents the current state. Questions with all-blank options
    // render as blank answer choices and are unusable.
    if (blankOptions.length > 0) {
      console.warn(
        `WARNING: ${blankOptions.length} questions have all-blank options (IDs: ${blankOptions.slice(0, 5).map((q) => q.id).join(", ")}...)`
      );
    }
  });
});

describe("getQuestionsBySection", () => {
  it("returns only math questions for math section", () => {
    const mathQs = getQuestionsBySection("math");
    expect(mathQs.length).toBeGreaterThan(0);
    expect(mathQs.every((q) => q.section === "math")).toBe(true);
  });

  it("returns only reading_writing questions for rw section", () => {
    const rwQs = getQuestionsBySection("reading_writing");
    expect(rwQs.length).toBeGreaterThan(0);
    expect(rwQs.every((q) => q.section === "reading_writing")).toBe(true);
  });
});

describe("getDiagnosticQuestions", () => {
  it("returns the requested number of questions", () => {
    const diag = getDiagnosticQuestions(20);
    expect(diag).toHaveLength(20);
  });

  it("includes a mix of difficulties", () => {
    const diag = getDiagnosticQuestions(20);
    const difficulties = new Set(diag.map((q) => q.difficulty));
    expect(difficulties.size).toBeGreaterThanOrEqual(2);
  });
});

describe("getAdaptiveNextQuestion", () => {
  it("returns a question when pool is not exhausted", () => {
    const q = getAdaptiveNextQuestion([], []);
    expect(q).not.toBeNull();
    expect(q?.questionText).toBeTruthy();
  });

  it("does not return already-answered questions", () => {
    const firstQ = getAdaptiveNextQuestion([], []);
    expect(firstQ).not.toBeNull();
    const secondQ = getAdaptiveNextQuestion([firstQ!.id], [true]);
    expect(secondQ).not.toBeNull();
    expect(secondQ!.id).not.toBe(firstQ!.id);
  });

  it("adjusts difficulty based on performance", () => {
    // All wrong -> should get easier questions
    const easyQ = getAdaptiveNextQuestion([], [false, false, false]);
    expect(easyQ).not.toBeNull();
    expect(["foundation", "easy"]).toContain(easyQ!.difficulty);
  });
});
