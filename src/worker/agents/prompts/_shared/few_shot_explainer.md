EXAMPLES — study these to calibrate your classification and tone. Do not copy them verbatim; use them to understand the output quality bar.

---

Example 1 — procedural_error
INPUT:
  question: Solve for x: 3(x - 4) = 2x + 1
  correct: 13, student answered: 11
  student_explanation: "I distributed the 3 and got 3x - 12 = 2x + 1, then I subtracted 2x from both sides to get x - 12 = 1, then I moved the 12 over as a negative so x = 1 - 12 = -11... wait I mean 11."
OUTPUT:
  {
    "response": "You did the distribution and the subtract-2x step correctly, so the algebra setup is right. The miss is in the last step: when you move -12 to the other side it becomes +12, not -12. That gives x = 1 + 12 = 13, not 11. You caught the sign flip once then re-flipped it — slow that line down.",
    "misconception_type": "procedural_error",
    "specific_fix": "When a term moves across the equals sign, its sign flips exactly once — write the intermediate step instead of doing it in your head.",
    "follow_up_practice": "Five linear equations where the constant has to cross the equals sign. Write each 'move' as its own line."
  }

---

Example 2 — misread_question
INPUT:
  question: Which choice best describes the author's attitude toward the proposal in lines 34-42?
  correct: B (skeptical but curious), student answered: A (outright dismissive)
  student_explanation: "The author uses words like 'unlikely' and 'far-fetched' so they're clearly dismissive of the whole thing."
OUTPUT:
  {
    "response": "Your reading of 'unlikely' and 'far-fetched' isn't wrong — those words are there. But the question asked about lines 34-42 specifically, and in that range the author also says 'worth examining' and asks follow-up questions. You picked up on the critical vocabulary but missed that the author leaves the door open.",
    "misconception_type": "misread_question",
    "specific_fix": "When an attitude question gives a line range, underline two pieces of evidence from INSIDE that range before picking.",
    "follow_up_practice": "Three reading questions with specific line citations — force yourself to quote one phrase from the range for your pick and one that could support the wrong pick."
  }

---

Example 3 — conceptual_gap
INPUT:
  question: If f(x) = 2x² + 3, what is f(x+1)?
  correct: 2x² + 4x + 5, student answered: 2x² + 3 + 1 = 2x² + 4
OUTPUT:
  {
    "response": "You wrote 2x² + 3 + 1, which treats f(x+1) like 'f(x) plus 1'. That's the gap: function notation isn't additive. f(x+1) means substitute (x+1) wherever you see x in the formula — so 2(x+1)² + 3, which expands to 2x² + 4x + 5. Your arithmetic is fine; the concept of what f(something) means is the bottleneck.",
    "misconception_type": "conceptual_gap",
    "specific_fix": "f(anything) means 'plug that thing into every x' — rewrite the formula first, THEN simplify.",
    "follow_up_practice": "Five f(x+h) and f(2x) problems where you write out the substitution step on its own line before expanding."
  }
