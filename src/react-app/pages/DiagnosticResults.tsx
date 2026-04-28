import { useEffect, useMemo, useRef, useState } from "react";
import { Link, useNavigate } from "react-router";
import {
  ArrowRight,
  Home,
  Check,
  AlertTriangle,
  HelpCircle,
  Sparkles,
  Loader2,
} from "lucide-react";
import { topicDisplayNames, type Question } from "@/data/questions";
import { useStudentProgress } from "@/react-app/hooks/useStudentProgress";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { cn } from "@/react-app/lib/utils";

const WORDMARK_LIGHT = "/logos/tutorzero-wordmark-on-dark.png";

type ConfidenceLevel = "guessing" | "somewhat" | "confident";

interface StoredAnswer {
  questionId: number;
  selectedIndex: number;
  isCorrect: boolean;
  confidence?: ConfidenceLevel;
  timeSpent: number;
}

interface StoredResults {
  answers: StoredAnswer[];
  questions: Question[];
  totalQuestions: number;
  correctAnswers: number;
  timestamp: number;
}

type WeaknessSeverity = "high" | "medium" | "low";
type Miscalibration = "none" | "overconfident" | "underconfident";

interface DiagnosticianWeakness {
  skill: string;
  skill_display: string;
  severity: WeaknessSeverity;
  evidence: string;
  confidence_miscalibration: Miscalibration;
  sample_question_ids: string[];
}

interface DiagnosticianStrength {
  skill: string;
  skill_display: string;
  evidence: string;
}

interface DiagnosticianOutput {
  weaknesses: DiagnosticianWeakness[];
  strengths: DiagnosticianStrength[];
  estimated_math_score: number;
  estimated_rw_score: number;
  calibration_score: number;
  top_focus: string;
  summary: string;
}

interface StoredAgentResult {
  diagnosis_id: number | null;
  diagnosis: DiagnosticianOutput;
  model?: string;
  latencyMs?: number;
  timestamp: number;
}

type VerifyResponse = "confirmed" | "misread" | "maybe";

export default function DiagnosticResults() {
  const navigate = useNavigate();
  const { user } = useAuth();
  const { recordSession } = useStudentProgress();
  const hasRecordedSession = useRef(false);

  const [agentResult, setAgentResult] = useState<StoredAgentResult | null>(null);
  const [rawResults, setRawResults] = useState<StoredResults | null>(null);
  const [verifications, setVerifications] = useState<Record<string, VerifyResponse>>({});
  const [verifyingSkill, setVerifyingSkill] = useState<string | null>(null);

  useEffect(() => {
    const storedAgent = localStorage.getItem("diagnosticAgentResult");
    const storedRaw = localStorage.getItem("diagnosticResults");
    if (!storedAgent || !storedRaw) {
      navigate("/diagnostic");
      return;
    }
    try {
      setAgentResult(JSON.parse(storedAgent));
      setRawResults(JSON.parse(storedRaw));
    } catch {
      navigate("/diagnostic");
    }
  }, [navigate]);

  // Record the session once so streak/progress reflects the diagnostic.
  useEffect(() => {
    if (hasRecordedSession.current || !rawResults) return;
    hasRecordedSession.current = true;
    const attempts = rawResults.answers.map((a) => {
      const q = rawResults.questions.find((qq) => qq.id === a.questionId);
      return { topic: q?.topic || "unknown", isCorrect: a.isCorrect };
    });
    recordSession("diagnostic", attempts, 0);
  }, [rawResults, recordSession]);

  // 2x2 calibration quadrants — derived directly from raw answers so the
  // displayed counts are independent of the agent's internal math.
  const calibration = useMemo(() => {
    if (!rawResults) return null;
    let confRight = 0, confWrong = 0, unsureRight = 0, unsureWrong = 0;
    for (const a of rawResults.answers) {
      const confident = a.confidence === "confident";
      if (confident && a.isCorrect) confRight++;
      else if (confident && !a.isCorrect) confWrong++;
      else if (!confident && a.isCorrect) unsureRight++;
      else unsureWrong++;
    }
    return { confRight, confWrong, unsureRight, unsureWrong };
  }, [rawResults]);

  const testDate = user?.profile?.testDate ? new Date(user.profile.testDate) : null;
  const daysUntilTest = testDate
    ? Math.max(0, Math.ceil((testDate.getTime() - Date.now()) / (1000 * 60 * 60 * 24)))
    : null;

  const handleVerify = async (skill: string, response: VerifyResponse) => {
    if (!agentResult?.diagnosis_id) {
      // Anonymous or missing diagnosis_id: still record choice locally for the
      // demo's feedback loop — it's the *response pattern* the professor cares
      // about, not the persistence.
      setVerifications((prev) => ({ ...prev, [skill]: response }));
      return;
    }
    setVerifyingSkill(skill);
    try {
      const res = await fetch("/api/diagnostician/verify", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({
          diagnosis_id: agentResult.diagnosis_id,
          skill,
          response,
        }),
      });
      if (res.ok) {
        setVerifications((prev) => ({ ...prev, [skill]: response }));
      }
    } catch (err) {
      console.error("Verify failed:", err);
    } finally {
      setVerifyingSkill(null);
    }
  };

  if (!agentResult || !rawResults || !calibration) {
    return (
      <div className="min-h-screen bg-white flex items-center justify-center">
        <Loader2 className="w-8 h-8 text-tz-blue animate-spin" />
      </div>
    );
  }

  const diagnosis = agentResult.diagnosis;
  const total = diagnosis.estimated_math_score + diagnosis.estimated_rw_score;

  return (
    <div className="min-h-screen bg-tz-off-white">
      {/* Header */}
      <header className="h-16 bg-tz-navy flex items-center px-4 sm:px-6">
        <Link
          to="/dashboard"
          className="flex items-center gap-2 text-white/70 hover:text-white transition-colors"
        >
          <Home className="w-5 h-5" />
          <span className="text-sm font-medium hidden sm:inline">Dashboard</span>
        </Link>
        <div className="flex-1 flex justify-center">
          <img src={WORDMARK_LIGHT} alt="TutorZero" className="h-6" />
        </div>
        <div className="w-20 hidden sm:block" />
      </header>

      <main className="max-w-3xl mx-auto px-4 py-8 sm:py-12">
        {/* 1. HEADER */}
        <div className="mb-8">
          <h1 className="text-h1 text-tz-navy mb-1">Your SAT Diagnosis</h1>
          {daysUntilTest != null && (
            <p className="text-sm text-tz-gray-600">
              {daysUntilTest} days until your SAT.
            </p>
          )}
        </div>

        {/* 2. SUMMARY CARD */}
        <section className="bg-white rounded-xl border border-tz-gray-200 p-6 sm:p-8 mb-6">
          <p className="text-base sm:text-lg text-tz-navy leading-relaxed mb-6">
            {diagnosis.summary}
          </p>

          <div className="grid grid-cols-2 gap-4 sm:gap-6">
            <ScoreBar label="MATH" score={diagnosis.estimated_math_score} color="blue" />
            <ScoreBar label="READING & WRITING" score={diagnosis.estimated_rw_score} color="purple" />
          </div>
          <div className="mt-5 pt-5 border-t border-tz-gray-200 flex items-baseline justify-between">
            <span className="text-sm uppercase tracking-wide text-tz-gray-400">Predicted total</span>
            <span className="text-3xl font-bold text-tz-navy tabular-nums">{total}</span>
          </div>
        </section>

        {/* 3. CALIBRATION CARD — the HAI hero */}
        <section className="bg-white rounded-xl border border-tz-gray-200 p-6 sm:p-8 mb-6">
          <div className="flex items-baseline justify-between mb-1">
            <h2 className="text-h3 text-tz-navy">Your calibration</h2>
            <span className="text-2xl font-bold text-tz-navy tabular-nums">
              {Math.round(diagnosis.calibration_score)}<span className="text-base text-tz-gray-400">/100</span>
            </span>
          </div>
          <p className="text-sm text-tz-gray-600 mb-6">
            This score shows how well your confidence matches your results. Students who improve fastest score above 80.
          </p>

          <Calibration2x2 {...calibration} />
        </section>

        {/* 4. WEAKNESSES — Verifier role */}
        <section className="mb-6">
          <h2 className="text-h3 text-tz-navy mb-2">Here's what I noticed</h2>
          <p className="text-sm text-tz-gray-600 mb-5">
            Help me calibrate — does this match your experience?
          </p>

          <div className="space-y-4">
            {diagnosis.weaknesses.map((w) => (
              <WeaknessCard
                key={w.skill}
                weakness={w}
                verification={verifications[w.skill]}
                isSaving={verifyingSkill === w.skill}
                onVerify={(resp) => handleVerify(w.skill, resp)}
              />
            ))}
          </div>
        </section>

        {/* 5. STRENGTHS */}
        {diagnosis.strengths.length > 0 && (
          <section className="mb-8">
            <h2 className="text-h3 text-tz-navy mb-4">What you're doing well</h2>
            <div className="grid gap-3 sm:grid-cols-2">
              {diagnosis.strengths.map((s) => (
                <div
                  key={s.skill}
                  className="bg-green-50 border border-green-200 rounded-lg p-4"
                >
                  <div className="flex items-center gap-2 mb-1">
                    <Check className="w-4 h-4 text-tz-green" />
                    <span className="text-sm font-semibold text-tz-navy">{s.skill_display}</span>
                  </div>
                  <p className="text-sm text-tz-gray-600 leading-snug">{s.evidence}</p>
                </div>
              ))}
            </div>
          </section>
        )}

        {/* 6. CTA */}
        <section className="flex flex-col sm:flex-row gap-3">
          <button
            onClick={() => {
              // /plan is auth-only. Anon users get sent into practice on
              // their top-focus skill instead of hitting an auth wall.
              if (user) {
                navigate("/plan");
              } else {
                navigate(
                  `/practice/session?topic=${encodeURIComponent(diagnosis.top_focus)}`
                );
              }
            }}
            className="inline-flex items-center justify-center gap-2 px-6 py-3 bg-tz-blue text-white rounded-lg font-semibold hover:bg-[#005a9e] hover-scale transition-all"
          >
            <Sparkles className="w-5 h-5" />
            {user ? "Start your personalized plan" : "Start practicing your weak spots"}
            <ArrowRight className="w-5 h-5" />
          </button>
          <button
            onClick={() =>
              navigate(`/practice/session?topic=${encodeURIComponent(diagnosis.top_focus)}`)
            }
            className="inline-flex items-center justify-center gap-2 px-6 py-3 border border-tz-gray-200 bg-white text-tz-gray-700 rounded-lg font-medium hover:bg-tz-gray-100 transition-all"
          >
            Or jump straight into practice
          </button>
          <Link
            to="/dashboard"
            className="inline-flex items-center justify-center px-6 py-3 border border-tz-gray-200 bg-white text-tz-gray-600 rounded-lg font-medium hover:bg-tz-gray-100 transition-all"
          >
            Back to dashboard
          </Link>
        </section>
      </main>
    </div>
  );
}

// ─── Score bar ──────────────────────────────────────────────────────────

interface ScoreBarProps {
  label: string;
  score: number;
  color: "blue" | "purple";
}

function ScoreBar({ label, score, color }: ScoreBarProps) {
  // Map 200..800 → 0..100% along the bar.
  const pct = Math.min(100, Math.max(0, ((score - 200) / 600) * 100));
  const fill = color === "blue" ? "bg-tz-blue" : "bg-purple-500";
  const text = color === "blue" ? "text-tz-blue" : "text-purple-600";
  return (
    <div>
      <div className="text-[10px] sm:text-label text-tz-gray-400 tracking-wide uppercase mb-1">
        {label}
      </div>
      <div className={cn("text-3xl sm:text-4xl font-bold tabular-nums mb-2", text)}>{score}</div>
      <div className="h-2 bg-tz-gray-100 rounded-full overflow-hidden relative">
        <div className={cn("h-full rounded-full transition-all", fill)} style={{ width: `${pct}%` }} />
      </div>
      <div className="flex justify-between text-[10px] text-tz-gray-400 mt-1">
        <span>200</span>
        <span>800</span>
      </div>
    </div>
  );
}

// ─── Calibration 2x2 ────────────────────────────────────────────────────

interface Calibration2x2Props {
  confRight: number;
  confWrong: number;
  unsureRight: number;
  unsureWrong: number;
}

function Calibration2x2({ confRight, confWrong, unsureRight, unsureWrong }: Calibration2x2Props) {
  const miscalibrated = confWrong > 0;
  return (
    <div className="grid grid-cols-[auto_1fr_1fr] gap-0 text-sm">
      {/* Header row */}
      <div />
      <div className="text-center text-[10px] sm:text-label uppercase tracking-wide text-tz-gray-400 py-2">
        Got right
      </div>
      <div className="text-center text-[10px] sm:text-label uppercase tracking-wide text-tz-gray-400 py-2">
        Got wrong
      </div>

      {/* Confident row */}
      <div className="text-[10px] sm:text-label uppercase tracking-wide text-tz-gray-400 pr-3 flex items-center justify-end">
        Felt<br />confident
      </div>
      <CalibrationCell
        count={confRight}
        label="Solid"
        tone="ok"
      />
      <CalibrationCell
        count={confWrong}
        label={confWrong > 0 ? "Misconception" : "—"}
        tone={miscalibrated ? "danger" : "muted"}
        highlight={miscalibrated}
      />

      {/* Unsure row */}
      <div className="text-[10px] sm:text-label uppercase tracking-wide text-tz-gray-400 pr-3 flex items-center justify-end">
        Felt<br />unsure
      </div>
      <CalibrationCell count={unsureRight} label="Lucky" tone="warn" />
      <CalibrationCell count={unsureWrong} label="Known gap" tone="muted" />
    </div>
  );
}

interface CalibrationCellProps {
  count: number;
  label: string;
  tone: "ok" | "warn" | "danger" | "muted";
  highlight?: boolean;
}

function CalibrationCell({ count, label, tone, highlight }: CalibrationCellProps) {
  const toneMap = {
    ok: "bg-green-50 border-green-200 text-tz-green",
    warn: "bg-amber-50 border-amber-200 text-amber-700",
    danger: "bg-red-50 border-red-200 text-red-700",
    muted: "bg-tz-gray-100 border-tz-gray-200 text-tz-gray-600",
  } as const;
  return (
    <div
      className={cn(
        "border rounded-lg m-1 p-3 sm:p-4 flex flex-col items-center justify-center min-h-[72px]",
        toneMap[tone],
        highlight && "ring-2 ring-red-300"
      )}
    >
      <div className="text-2xl sm:text-3xl font-bold tabular-nums leading-none">{count}</div>
      <div className="text-[10px] sm:text-xs mt-1 uppercase tracking-wide">{label}</div>
    </div>
  );
}

// ─── Weakness card ──────────────────────────────────────────────────────

interface WeaknessCardProps {
  weakness: DiagnosticianWeakness;
  verification: VerifyResponse | undefined;
  isSaving: boolean;
  onVerify: (response: VerifyResponse) => void;
}

function WeaknessCard({ weakness, verification, isSaving, onVerify }: WeaknessCardProps) {
  const severityStyle = {
    high: "bg-red-100 text-red-700 border-red-200",
    medium: "bg-amber-100 text-amber-700 border-amber-200",
    low: "bg-tz-gray-100 text-tz-gray-600 border-tz-gray-200",
  }[weakness.severity];

  const miscalibrationHint =
    weakness.confidence_miscalibration === "overconfident"
      ? "You felt sure but got these wrong."
      : weakness.confidence_miscalibration === "underconfident"
        ? "You second-guessed yourself here."
        : null;

  // Fall back to the static display name if the agent used a weird slug.
  const display = weakness.skill_display || topicDisplayNames[weakness.skill] || weakness.skill;

  return (
    <div className="bg-white rounded-lg border border-tz-gray-200 p-5">
      <div className="flex items-start justify-between gap-3 mb-2">
        <h3 className="text-base sm:text-lg font-semibold text-tz-navy">{display}</h3>
        <span className={cn("text-[10px] sm:text-xs uppercase tracking-wide font-semibold px-2 py-0.5 rounded-full border", severityStyle)}>
          {weakness.severity}
        </span>
      </div>

      <p className="text-sm text-tz-gray-700 leading-relaxed mb-2">{weakness.evidence}</p>
      {miscalibrationHint && (
        <p className="text-xs text-amber-700 flex items-center gap-1.5 mb-3">
          <AlertTriangle className="w-3.5 h-3.5" />
          {miscalibrationHint}
        </p>
      )}

      {verification ? (
        <div className="mt-3 flex items-center gap-2 text-sm text-tz-gray-600">
          <Check className="w-4 h-4 text-tz-green" />
          <span>
            Marked <strong className="text-tz-navy">
              {verification === "confirmed"
                ? "Yes, that's me"
                : verification === "misread"
                  ? "Just misread"
                  : "Maybe"}
            </strong>
          </span>
          <button
            type="button"
            onClick={() => onVerify(verification)}
            className="ml-auto text-xs text-tz-blue hover:underline"
          >
            change
          </button>
        </div>
      ) : (
        <div className="flex flex-wrap gap-2 mt-3">
          <VerifyButton
            onClick={() => onVerify("confirmed")}
            disabled={isSaving}
            icon={<Check className="w-4 h-4" />}
            label="Yes, that's me"
            tone="primary"
          />
          <VerifyButton
            onClick={() => onVerify("misread")}
            disabled={isSaving}
            icon={<AlertTriangle className="w-4 h-4" />}
            label="I just misread"
            tone="neutral"
          />
          <VerifyButton
            onClick={() => onVerify("maybe")}
            disabled={isSaving}
            icon={<HelpCircle className="w-4 h-4" />}
            label="Maybe"
            tone="neutral"
          />
        </div>
      )}
    </div>
  );
}

interface VerifyButtonProps {
  onClick: () => void;
  disabled: boolean;
  icon: React.ReactNode;
  label: string;
  tone: "primary" | "neutral";
}

function VerifyButton({ onClick, disabled, icon, label, tone }: VerifyButtonProps) {
  return (
    <button
      type="button"
      onClick={onClick}
      disabled={disabled}
      className={cn(
        "inline-flex items-center gap-2 px-3 py-1.5 rounded-lg text-sm font-medium transition-colors",
        tone === "primary"
          ? "bg-tz-blue text-white hover:bg-[#005a9e] disabled:opacity-60"
          : "bg-white border border-tz-gray-200 text-tz-gray-600 hover:bg-tz-gray-100 disabled:opacity-60"
      )}
    >
      {icon}
      {label}
    </button>
  );
}
