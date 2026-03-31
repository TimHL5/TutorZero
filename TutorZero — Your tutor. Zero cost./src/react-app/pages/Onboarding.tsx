import { useState } from "react";
import { useNavigate } from "react-router";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { ArrowRight, ArrowLeft, Loader2, Check } from "lucide-react";

const WORDMARK_LIGHT = "https://019c2e5b-2f20-7a1a-8266-2d41e0797564.mochausercontent.com/tutorzero-wordmark-on-dark.png";

type Step = 1 | 2 | 3 | 4;

interface OnboardingData {
  targetScore: number;
  testDate: string | null;
  mathConfidence: number;
  readingConfidence: number;
  studyHours: "light" | "moderate" | "intensive";
}

const confidenceLevels = ["Struggling", "Okay", "Strong", "Very Strong"];

export default function Onboarding() {
  const navigate = useNavigate();
  const { fetchUser } = useAuth();
  const [step, setStep] = useState<Step>(1);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [data, setData] = useState<OnboardingData>({
    targetScore: 1200,
    testDate: null,
    mathConfidence: 1,
    readingConfidence: 1,
    studyHours: "moderate",
  });

  const getScoreLabel = (score: number) => {
    if (score < 1100) return "Building Foundations";
    if (score < 1300) return "Solid Score";
    if (score < 1500) return "Competitive";
    return "Elite";
  };

  const getDefaultTestDate = () => {
    const date = new Date();
    date.setMonth(date.getMonth() + 3);
    return date.toISOString().split("T")[0];
  };

  const handleNext = () => {
    if (step < 4) {
      setStep((step + 1) as Step);
    }
  };

  const handleBack = () => {
    if (step > 1) {
      setStep((step - 1) as Step);
    }
  };

  const savePreferences = async (navigateTo: string) => {
    setIsSubmitting(true);
    try {
      const response = await fetch("/api/user/profile", {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          targetScore: data.targetScore,
          testDate: data.testDate || getDefaultTestDate(),
          mathConfidence: data.mathConfidence,
          readingConfidence: data.readingConfidence,
          studyHoursPerWeek: data.studyHours,
          hasCompletedOnboarding: true,
        }),
      });

      if (!response.ok) throw new Error("Failed to save preferences");

      await fetchUser();
      navigate(navigateTo, { replace: true });
    } catch (err) {
      console.error("Error saving preferences:", err);
    } finally {
      setIsSubmitting(false);
    }
  };

  const handleComplete = () => savePreferences("/diagnostic");

  // Progress bar width
  const progressWidth = `${(step / 4) * 100}%`;

  return (
    <div className="min-h-screen bg-tz-navy flex flex-col">
      {/* Progress bar */}
      <div className="h-1 bg-white/10">
        <div 
          className="h-full bg-tz-light-blue transition-all duration-300"
          style={{ width: progressWidth }}
        />
      </div>

      {/* Logo */}
      <div className="py-6 flex justify-center">
        <img src={WORDMARK_LIGHT} alt="TutorZero" className="h-8 w-auto" />
      </div>

      {/* Main content */}
      <div className="flex-1 flex items-center justify-center p-4">
        <div className="w-full max-w-lg">
          {/* Step 1: Target Score */}
          {step === 1 && (
            <div className="animate-in fade-in duration-300">
              <h1 className="text-h1 text-white text-center mb-2">
                What score are you aiming for?
              </h1>
              <p className="text-body text-tz-light-blue/80 text-center mb-12">
                This helps us set the right pace for your prep
              </p>

              {/* Score display */}
              <div className="text-center mb-8">
                <span className="text-display text-white">{data.targetScore}</span>
              </div>

              {/* Slider */}
              <div className="px-4 mb-4">
                <input
                  type="range"
                  min="800"
                  max="1600"
                  step="10"
                  value={data.targetScore}
                  onChange={(e) => setData({ ...data, targetScore: parseInt(e.target.value) })}
                  className="w-full h-2 bg-white/20 rounded-full appearance-none cursor-pointer
                    [&::-webkit-slider-thumb]:appearance-none
                    [&::-webkit-slider-thumb]:w-6
                    [&::-webkit-slider-thumb]:h-6
                    [&::-webkit-slider-thumb]:rounded-full
                    [&::-webkit-slider-thumb]:bg-white
                    [&::-webkit-slider-thumb]:shadow-lg
                    [&::-webkit-slider-thumb]:cursor-grab
                    [&::-webkit-slider-thumb]:active:cursor-grabbing
                    [&::-moz-range-thumb]:w-6
                    [&::-moz-range-thumb]:h-6
                    [&::-moz-range-thumb]:rounded-full
                    [&::-moz-range-thumb]:bg-white
                    [&::-moz-range-thumb]:border-0
                    [&::-moz-range-thumb]:shadow-lg
                    [&::-moz-range-thumb]:cursor-grab"
                />
                <div className="flex justify-between text-small text-white/50 mt-2">
                  <span>800</span>
                  <span>1600</span>
                </div>
              </div>

              {/* Score label */}
              <div className="text-center">
                <span className="inline-block px-4 py-2 rounded-full bg-white/10 text-tz-light-blue text-body">
                  {getScoreLabel(data.targetScore)}
                </span>
              </div>
            </div>
          )}

          {/* Step 2: Test Date */}
          {step === 2 && (
            <div className="animate-in fade-in duration-300">
              <h1 className="text-h1 text-white text-center mb-2">
                When's your test?
              </h1>
              <p className="text-body text-tz-light-blue/80 text-center mb-12">
                This helps us pace your study plan
              </p>

              <div className="space-y-4">
                <input
                  type="date"
                  value={data.testDate || ""}
                  onChange={(e) => setData({ ...data, testDate: e.target.value })}
                  min={new Date().toISOString().split("T")[0]}
                  className="w-full px-4 py-4 bg-white/10 border border-white/20 rounded-lg text-white text-lg
                    focus:outline-none focus:border-tz-light-blue focus:ring-1 focus:ring-tz-light-blue
                    [color-scheme:dark]"
                />

                <button
                  onClick={() => setData({ ...data, testDate: null })}
                  className={`w-full px-4 py-4 rounded-lg border text-body transition-all duration-200
                    ${!data.testDate 
                      ? "bg-white/10 border-tz-light-blue text-white" 
                      : "bg-transparent border-white/20 text-white/70 hover:border-white/40"
                    }`}
                >
                  I don't have a date yet
                </button>
              </div>

              {!data.testDate && (
                <p className="text-small text-white/50 text-center mt-4">
                  We'll set your target to 3 months from now
                </p>
              )}
            </div>
          )}

          {/* Step 3: Subject Confidence */}
          {step === 3 && (
            <div className="animate-in fade-in duration-300">
              <h1 className="text-h1 text-white text-center mb-2">
                How do you feel about Math vs. Reading?
              </h1>
              <p className="text-body text-tz-light-blue/80 text-center mb-12">
                Be honest — this helps us personalize your practice
              </p>

              <div className="space-y-8">
                {/* Math */}
                <div>
                  <label className="text-label text-white/60 mb-4 block">Math</label>
                  <div className="grid grid-cols-4 gap-2">
                    {confidenceLevels.map((level, i) => (
                      <button
                        key={level}
                        onClick={() => setData({ ...data, mathConfidence: i })}
                        className={`px-3 py-3 rounded-lg text-small font-medium transition-all duration-200
                          ${data.mathConfidence === i
                            ? "bg-tz-blue text-white"
                            : "bg-white/10 text-white/70 hover:bg-white/20"
                          }`}
                      >
                        {level}
                      </button>
                    ))}
                  </div>
                </div>

                {/* Reading */}
                <div>
                  <label className="text-label text-white/60 mb-4 block">Reading & Writing</label>
                  <div className="grid grid-cols-4 gap-2">
                    {confidenceLevels.map((level, i) => (
                      <button
                        key={level}
                        onClick={() => setData({ ...data, readingConfidence: i })}
                        className={`px-3 py-3 rounded-lg text-small font-medium transition-all duration-200
                          ${data.readingConfidence === i
                            ? "bg-tz-blue text-white"
                            : "bg-white/10 text-white/70 hover:bg-white/20"
                          }`}
                      >
                        {level}
                      </button>
                    ))}
                  </div>
                </div>
              </div>
            </div>
          )}

          {/* Step 4: Study Hours */}
          {step === 4 && (
            <div className="animate-in fade-in duration-300">
              <h1 className="text-h1 text-white text-center mb-2">
                How much time can you commit?
              </h1>
              <p className="text-body text-tz-light-blue/80 text-center mb-12">
                We'll build a study plan that fits your schedule
              </p>

              <div className="space-y-3">
                {[
                  { id: "light" as const, label: "Light", desc: "1–2 hours/week" },
                  { id: "moderate" as const, label: "Moderate", desc: "3–5 hours/week" },
                  { id: "intensive" as const, label: "Intensive", desc: "5+ hours/week" },
                ].map((option) => (
                  <button
                    key={option.id}
                    onClick={() => setData({ ...data, studyHours: option.id })}
                    className={`w-full px-6 py-5 rounded-lg border text-left transition-all duration-200 group
                      ${data.studyHours === option.id
                        ? "bg-white/10 border-tz-light-blue"
                        : "bg-transparent border-white/20 hover:border-white/40"
                      }`}
                  >
                    <div className="flex items-center justify-between">
                      <div>
                        <div className="text-body-strong text-white">{option.label}</div>
                        <div className="text-small text-white/60">{option.desc}</div>
                      </div>
                      {data.studyHours === option.id && (
                        <div className="w-6 h-6 rounded-full bg-tz-light-blue flex items-center justify-center">
                          <Check className="w-4 h-4 text-white" />
                        </div>
                      )}
                    </div>
                  </button>
                ))}
              </div>
            </div>
          )}

          {/* Navigation */}
          <div className="flex items-center justify-between mt-12">
            {step > 1 ? (
              <button
                onClick={handleBack}
                className="flex items-center gap-2 px-4 py-2 text-white/60 hover:text-white transition-colors"
              >
                <ArrowLeft className="w-4 h-4" />
                Back
              </button>
            ) : (
              <div />
            )}

            {step < 4 ? (
              <button
                onClick={handleNext}
                className="flex items-center gap-2 px-6 py-3 bg-tz-blue text-white rounded-lg font-medium hover-scale transition-all"
              >
                Continue
                <ArrowRight className="w-4 h-4" />
              </button>
            ) : (
              <button
                onClick={handleComplete}
                disabled={isSubmitting}
                className="flex items-center gap-2 px-6 py-3 bg-tz-green text-white rounded-lg font-medium hover-scale transition-all disabled:opacity-50"
              >
                {isSubmitting ? (
                  <>
                    <Loader2 className="w-4 h-4 animate-spin" />
                    Saving...
                  </>
                ) : (
                  <>
                    Start Diagnostic
                    <ArrowRight className="w-4 h-4" />
                  </>
                )}
              </button>
            )}
          </div>

          {/* Completion message and skip option on step 4 */}
          {step === 4 && (
            <div className="text-center mt-8">
              <p className="text-white/50 text-small mb-4">
                You're all set. Let's find out where you stand.
              </p>
              <button
                onClick={() => savePreferences("/dashboard")}
                disabled={isSubmitting}
                className="text-white/50 hover:text-white/80 text-small underline underline-offset-2 transition-colors"
              >
                Skip diagnostic, go to dashboard
              </button>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
