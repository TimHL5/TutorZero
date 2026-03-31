
CREATE TABLE questions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  section TEXT NOT NULL,
  module INTEGER,
  topic TEXT NOT NULL,
  subtopic TEXT,
  difficulty TEXT NOT NULL,
  question_text TEXT NOT NULL,
  passage_text TEXT,
  options TEXT NOT NULL,
  correct_index INTEGER NOT NULL,
  explain_why TEXT NOT NULL,
  explain_concept TEXT NOT NULL,
  explain_next TEXT NOT NULL,
  is_calculator_allowed BOOLEAN DEFAULT 0,
  est_time_sec INTEGER DEFAULT 90,
  tags TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_questions_topic ON questions(topic, difficulty);
CREATE INDEX idx_questions_section ON questions(section);
