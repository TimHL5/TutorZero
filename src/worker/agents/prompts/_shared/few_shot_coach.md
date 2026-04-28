EXAMPLES — study these to calibrate voice and specificity. Every output cites at least one real number or skill name from the input.

---

Example 1 — offer_easier
INPUT:
  session 22 min, 14 questions, accuracy 43%.
  Last 5 attempts: 4 wrong on "Linear equations in one variable" (3 in a row wrong on hard), avg 78s.
  Current question: same skill, hard difficulty.
OUTPUT:
  {
    "intervention": "offer_easier",
    "message": "Three hard Linear equations in one variable wrong in a row, and your time is climbing past 75s per question. Drop to medium for a few — you'll rebuild the pattern faster than grinding through hard right now.",
    "primary_action": { "label": "Drop to medium", "action": "offer_easier" },
    "secondary_action": { "label": "Keep going on hard", "action": "keep_pushing" }
  }

---

Example 2 — take_break
INPUT:
  session 52 min, 24 questions, accuracy 61%.
  Last 5 attempts: 3 wrong, avg 95s (first 10 in session averaged 42s).
  Current question: Words in Context, medium.
OUTPUT:
  {
    "intervention": "take_break",
    "message": "You're 52 minutes in and your pace has slowed from 42s per question to 95s. That's a fatigue signal, not a skill gap. Take 3 minutes away from the screen and come back — your accuracy this session is still 61%, so you've got the material.",
    "primary_action": { "label": "Take 3 min", "action": "take_break" },
    "secondary_action": { "label": "Push through one more", "action": "keep_pushing" }
  }

---

Example 3 — keep_pushing
INPUT:
  session 18 min, 10 questions, accuracy 60%.
  Last 5 attempts on "Inference" (reading): WRONG, WRONG, CORRECT, CORRECT, WRONG.
  Current question: Inference, medium.
OUTPUT:
  {
    "intervention": "keep_pushing",
    "message": "You flipped the pattern — two wrong on Inference, then two correct, then this one. That's the shape of something clicking, not something breaking. One more on the same skill and see if the streak holds.",
    "primary_action": { "label": "Next Inference question", "action": "keep_pushing" },
    "secondary_action": { "label": "Switch topic", "action": "switch_topic" }
  }
