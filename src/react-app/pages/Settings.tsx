import { useState, useEffect } from "react";
import { Link, useNavigate } from "react-router";
import { Button } from "@/react-app/components/ui/button";
import { Input } from "@/react-app/components/ui/input";
import { Logo } from "@/react-app/components/Logo";
import { useAuth } from "@/react-app/lib/AuthProvider";
import {
  User,
  LogOut,
  ArrowLeft,
  Save,
  Loader2,
  CheckCircle,
  Mail,
  Camera,
  Bell,
  Trash2,
  Download,
  Shield,
  Target,
  Calendar,
  Clock,
} from "lucide-react";
import { cn } from "@/react-app/lib/utils";

const CONFIDENCE_LABELS = ["Struggling", "Okay", "Strong", "Very Strong"];
const STUDY_INTENSITY: { value: "light" | "moderate" | "intensive"; label: string; sub: string }[] = [
  { value: "light", label: "Light", sub: "~3 hr / week" },
  { value: "moderate", label: "Moderate", sub: "~6 hr / week" },
  { value: "intensive", label: "Intensive", sub: "~10 hr / week" },
];

function getScoreLabel(score: number) {
  if (score < 1100) return "Building Foundations";
  if (score < 1300) return "Solid Score";
  if (score < 1500) return "Competitive";
  return "Elite";
}

export default function Settings() {
  const navigate = useNavigate();
  const { user, isPending, logout, fetchUser } = useAuth();
  const [displayName, setDisplayName] = useState("");
  const [isSaving, setIsSaving] = useState(false);
  const [saveSuccess, setSaveSuccess] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // Study preferences
  const [targetScore, setTargetScore] = useState(1200);
  const [testDate, setTestDate] = useState<string>("");
  const [mathConfidence, setMathConfidence] = useState(1);
  const [readingConfidence, setReadingConfidence] = useState(1);
  const [studyIntensity, setStudyIntensity] = useState<"light" | "moderate" | "intensive">("moderate");
  const [isSavingPrefs, setIsSavingPrefs] = useState(false);
  const [prefsSuccess, setPrefsSuccess] = useState(false);
  const [prefsError, setPrefsError] = useState<string | null>(null);

  // Notification preferences
  const [emailReminders, setEmailReminders] = useState(true);
  const [weeklyDigest, setWeeklyDigest] = useState(true);

  // Redirect to login if not authenticated
  useEffect(() => {
    if (!isPending && !user) {
      navigate("/login");
    }
  }, [isPending, user, navigate]);

  useEffect(() => {
    if (user) {
      const profile = user?.profile;
      setDisplayName(
        profile?.displayName ||
        user.google_user_data?.given_name ||
        user.email?.split('@')[0] ||
        ""
      );
      if (typeof profile?.targetScore === "number") setTargetScore(profile.targetScore);
      if (typeof profile?.testDate === "string") setTestDate(profile.testDate);
      if (typeof profile?.mathConfidence === "number") setMathConfidence(profile.mathConfidence);
      if (typeof profile?.readingConfidence === "number") setReadingConfidence(profile.readingConfidence);
      if (
        profile?.studyHoursPerWeek === "light" ||
        profile?.studyHoursPerWeek === "moderate" ||
        profile?.studyHoursPerWeek === "intensive"
      ) {
        setStudyIntensity(profile.studyHoursPerWeek);
      }
    }
  }, [user]);

  const handleLogout = async () => {
    await logout();
    navigate("/");
  };

  const handleSave = async () => {
    const trimmedName = displayName.trim();
    if (!trimmedName) {
      setError("Please enter a name");
      return;
    }

    setIsSaving(true);
    setError(null);
    setSaveSuccess(false);

    try {
      const response = await fetch("/api/user/profile", {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({ displayName: trimmedName }),
      });

      if (!response.ok) {
        throw new Error("Failed to save");
      }

      await fetchUser();
      setSaveSuccess(true);
      setTimeout(() => setSaveSuccess(false), 3000);
    } catch (err) {
      console.error("Error saving profile:", err);
      setError("Failed to save changes. Please try again.");
    } finally {
      setIsSaving(false);
    }
  };

  const handleSavePrefs = async () => {
    setIsSavingPrefs(true);
    setPrefsError(null);
    setPrefsSuccess(false);

    try {
      const body: Record<string, unknown> = {
        targetScore,
        mathConfidence,
        readingConfidence,
        studyHoursPerWeek: studyIntensity,
      };
      if (testDate) body.testDate = testDate;

      const response = await fetch("/api/user/profile", {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify(body),
      });
      if (!response.ok) throw new Error(`Failed (HTTP ${response.status})`);

      await fetchUser();
      setPrefsSuccess(true);
      setTimeout(() => setPrefsSuccess(false), 3000);
    } catch (err) {
      console.error("Error saving preferences:", err);
      setPrefsError(err instanceof Error ? err.message : "Failed to save");
    } finally {
      setIsSavingPrefs(false);
    }
  };

  if (isPending) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="animate-spin w-8 h-8 border-2 border-primary border-t-transparent rounded-full"></div>
      </div>
    );
  }

  if (!user) {
    return null;
  }

  const pictureUrl = user.google_user_data?.picture;
  const todayIso = new Date().toISOString().split("T")[0];

  return (
    <div className="min-h-screen bg-muted/30">
      {/* Header */}
      <header className="bg-tz-navy text-white">
        <div className="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="h-14 sm:h-16 flex items-center justify-between">
            <Logo to="/dashboard" />
            <nav className="hidden sm:flex items-center gap-6 text-sm">
              <Link to="/dashboard" className="hover:text-blue-200 transition-colors">
                Dashboard
              </Link>
              <Link to="/practice" className="hover:text-blue-200 transition-colors">
                Practice
              </Link>
              <Link to="/tutor" className="hover:text-blue-200 transition-colors">
                AI Tutor
              </Link>
              <Link to="/progress" className="hover:text-blue-200 transition-colors">
                Progress
              </Link>
            </nav>
            <div className="flex items-center gap-3">
              {pictureUrl ? (
                <img src={pictureUrl} alt="" className="w-8 h-8 rounded-full border-2 border-white/30" />
              ) : (
                <div className="w-8 h-8 rounded-full bg-white/20 flex items-center justify-center">
                  <User className="w-4 h-4" />
                </div>
              )}
            </div>
          </div>
        </div>
      </header>

      <main className="max-w-2xl mx-auto px-4 sm:px-6 lg:px-8 py-6 sm:py-10">
        {/* Back Button */}
        <button
          onClick={() => navigate("/dashboard")}
          className="flex items-center gap-2 text-muted-foreground hover:text-foreground transition-colors mb-6"
        >
          <ArrowLeft className="w-4 h-4" />
          <span className="text-sm">Back to Dashboard</span>
        </button>

        <h1 className="text-2xl sm:text-3xl font-bold text-foreground mb-8">Settings</h1>

        {/* Profile Section */}
        <div className="bg-white rounded-xl shadow-sm border border-border p-6 mb-6">
          <h2 className="text-lg font-semibold mb-6 flex items-center gap-2">
            <User className="w-5 h-5 text-muted-foreground" />
            Profile
          </h2>

          {/* Profile Picture */}
          <div className="flex items-center gap-4 mb-6 pb-6 border-b border-border">
            <div className="relative">
              {pictureUrl ? (
                <img
                  src={pictureUrl}
                  alt=""
                  className="w-16 h-16 rounded-full border-2 border-border"
                />
              ) : (
                <div className="w-16 h-16 rounded-full bg-muted flex items-center justify-center">
                  <User className="w-8 h-8 text-muted-foreground" />
                </div>
              )}
              <div className="absolute -bottom-1 -right-1 w-6 h-6 bg-muted rounded-full flex items-center justify-center border-2 border-white">
                <Camera className="w-3 h-3 text-muted-foreground" />
              </div>
            </div>
            <div>
              <p className="text-sm text-muted-foreground">Profile photo from Google</p>
            </div>
          </div>

          {/* Display Name */}
          <div className="space-y-4">
            <div>
              <label htmlFor="displayName" className="block text-sm font-medium text-foreground mb-2">
                Display Name
              </label>
              <div className="flex gap-3">
                <Input
                  id="displayName"
                  type="text"
                  value={displayName}
                  onChange={(e) => {
                    setDisplayName(e.target.value);
                    setSaveSuccess(false);
                  }}
                  placeholder="Your name"
                  className="flex-1"
                  maxLength={50}
                />
                <Button
                  onClick={handleSave}
                  disabled={isSaving}
                  className="bg-tz-blue hover:bg-tz-blue/90"
                >
                  {isSaving ? (
                    <Loader2 className="w-4 h-4 animate-spin" />
                  ) : saveSuccess ? (
                    <CheckCircle className="w-4 h-4" />
                  ) : (
                    <Save className="w-4 h-4" />
                  )}
                  <span className="ml-2 hidden sm:inline">
                    {isSaving ? "Saving..." : saveSuccess ? "Saved!" : "Save"}
                  </span>
                </Button>
              </div>
              {error && <p className="text-destructive text-sm mt-2">{error}</p>}
              {saveSuccess && (
                <p className="text-green-600 text-sm mt-2">Changes saved successfully!</p>
              )}
            </div>

            {/* Email (read-only) */}
            <div>
              <label className="block text-sm font-medium text-foreground mb-2">
                Email
              </label>
              <div className="flex items-center gap-3 px-3 py-2 bg-muted rounded-md">
                <Mail className="w-4 h-4 text-muted-foreground" />
                <span className="text-muted-foreground">{user.email}</span>
              </div>
              <p className="text-xs text-muted-foreground mt-1">
                Email is managed through your Google account
              </p>
            </div>
          </div>
        </div>

        {/* Study Preferences Section */}
        <div className="bg-white rounded-xl shadow-sm border border-border p-6 mb-6">
          <h2 className="text-lg font-semibold mb-1 flex items-center gap-2">
            <Target className="w-5 h-5 text-muted-foreground" />
            Study Preferences
          </h2>
          <p className="text-sm text-muted-foreground mb-6">
            These tune your study plan, target tracking, and AI tutoring. Update them anytime.
          </p>

          {/* Target Score */}
          <div className="mb-6">
            <div className="flex items-center justify-between mb-2">
              <label htmlFor="targetScore" className="block text-sm font-medium text-foreground">
                Target Score
              </label>
              <span className="text-sm text-muted-foreground">
                <strong className="text-tz-navy">{targetScore}</strong> · {getScoreLabel(targetScore)}
              </span>
            </div>
            <input
              id="targetScore"
              type="range"
              min={800}
              max={1600}
              step={10}
              value={targetScore}
              onChange={(e) => setTargetScore(Number(e.target.value))}
              className="w-full accent-tz-blue"
            />
            <div className="flex justify-between text-xs text-muted-foreground mt-1">
              <span>800</span>
              <span>1600</span>
            </div>
          </div>

          {/* Test Date */}
          <div className="mb-6">
            <label htmlFor="testDate" className="block text-sm font-medium text-foreground mb-2 flex items-center gap-1">
              <Calendar className="w-4 h-4 text-muted-foreground" />
              SAT Test Date
            </label>
            <Input
              id="testDate"
              type="date"
              value={testDate}
              min={todayIso}
              onChange={(e) => setTestDate(e.target.value)}
              className="w-full sm:w-64"
            />
            <p className="text-xs text-muted-foreground mt-1">
              Used to count down on your dashboard and pace your study plan.
            </p>
          </div>

          {/* Math Confidence */}
          <div className="mb-6">
            <label className="block text-sm font-medium text-foreground mb-2">
              How confident are you in Math?
            </label>
            <div className="grid grid-cols-2 sm:grid-cols-4 gap-2">
              {CONFIDENCE_LABELS.map((label, i) => (
                <button
                  key={label}
                  type="button"
                  onClick={() => setMathConfidence(i)}
                  className={cn(
                    "px-3 py-2 rounded-md text-sm border transition-colors",
                    mathConfidence === i
                      ? "bg-tz-blue text-white border-tz-blue"
                      : "bg-white text-foreground border-border hover:border-tz-blue/40"
                  )}
                >
                  {label}
                </button>
              ))}
            </div>
          </div>

          {/* Reading Confidence */}
          <div className="mb-6">
            <label className="block text-sm font-medium text-foreground mb-2">
              How confident are you in Reading & Writing?
            </label>
            <div className="grid grid-cols-2 sm:grid-cols-4 gap-2">
              {CONFIDENCE_LABELS.map((label, i) => (
                <button
                  key={label}
                  type="button"
                  onClick={() => setReadingConfidence(i)}
                  className={cn(
                    "px-3 py-2 rounded-md text-sm border transition-colors",
                    readingConfidence === i
                      ? "bg-tz-blue text-white border-tz-blue"
                      : "bg-white text-foreground border-border hover:border-tz-blue/40"
                  )}
                >
                  {label}
                </button>
              ))}
            </div>
          </div>

          {/* Study Intensity */}
          <div className="mb-6">
            <label className="block text-sm font-medium text-foreground mb-2 flex items-center gap-1">
              <Clock className="w-4 h-4 text-muted-foreground" />
              Study Intensity
            </label>
            <div className="grid grid-cols-1 sm:grid-cols-3 gap-2">
              {STUDY_INTENSITY.map((opt) => (
                <button
                  key={opt.value}
                  type="button"
                  onClick={() => setStudyIntensity(opt.value)}
                  className={cn(
                    "px-3 py-3 rounded-md text-left border transition-colors",
                    studyIntensity === opt.value
                      ? "bg-tz-blue text-white border-tz-blue"
                      : "bg-white text-foreground border-border hover:border-tz-blue/40"
                  )}
                >
                  <div className="text-sm font-medium">{opt.label}</div>
                  <div className={cn(
                    "text-xs",
                    studyIntensity === opt.value ? "text-white/80" : "text-muted-foreground"
                  )}>{opt.sub}</div>
                </button>
              ))}
            </div>
          </div>

          {/* Save preferences */}
          <div className="flex items-center gap-3 pt-2 border-t border-border">
            <Button
              onClick={handleSavePrefs}
              disabled={isSavingPrefs}
              className="bg-tz-blue hover:bg-tz-blue/90"
            >
              {isSavingPrefs ? (
                <Loader2 className="w-4 h-4 animate-spin" />
              ) : prefsSuccess ? (
                <CheckCircle className="w-4 h-4" />
              ) : (
                <Save className="w-4 h-4" />
              )}
              <span className="ml-2">
                {isSavingPrefs ? "Saving..." : prefsSuccess ? "Saved!" : "Save preferences"}
              </span>
            </Button>
            {prefsError && <p className="text-destructive text-sm">{prefsError}</p>}
            {prefsSuccess && (
              <p className="text-green-600 text-sm">Your study plan will reflect these on next visit.</p>
            )}
          </div>
        </div>

        {/* Notifications Section */}
        <div className="bg-white rounded-xl shadow-sm border border-border p-6 mb-6">
          <h2 className="text-lg font-semibold mb-6 flex items-center gap-2">
            <Bell className="w-5 h-5 text-muted-foreground" />
            Notifications
          </h2>

          <div className="space-y-4">
            <label className="flex items-center justify-between cursor-pointer">
              <div>
                <p className="font-medium text-foreground">Study Reminders</p>
                <p className="text-sm text-muted-foreground">Get reminded to practice daily</p>
              </div>
              <button
                onClick={() => setEmailReminders(!emailReminders)}
                className={cn(
                  "relative w-11 h-6 rounded-full transition-colors",
                  emailReminders ? "bg-tz-blue" : "bg-gray-200"
                )}
              >
                <span
                  className={cn(
                    "absolute top-0.5 left-0.5 w-5 h-5 bg-white rounded-full shadow transition-transform",
                    emailReminders && "translate-x-5"
                  )}
                />
              </button>
            </label>

            <label className="flex items-center justify-between cursor-pointer">
              <div>
                <p className="font-medium text-foreground">Weekly Progress Digest</p>
                <p className="text-sm text-muted-foreground">Summary of your weekly progress</p>
              </div>
              <button
                onClick={() => setWeeklyDigest(!weeklyDigest)}
                className={cn(
                  "relative w-11 h-6 rounded-full transition-colors",
                  weeklyDigest ? "bg-tz-blue" : "bg-gray-200"
                )}
              >
                <span
                  className={cn(
                    "absolute top-0.5 left-0.5 w-5 h-5 bg-white rounded-full shadow transition-transform",
                    weeklyDigest && "translate-x-5"
                  )}
                />
              </button>
            </label>
          </div>
        </div>

        {/* Data & Privacy Section */}
        <div className="bg-white rounded-xl shadow-sm border border-border p-6 mb-6">
          <h2 className="text-lg font-semibold mb-6 flex items-center gap-2">
            <Shield className="w-5 h-5 text-muted-foreground" />
            Data & Privacy
          </h2>

          <div className="space-y-4">
            <div className="flex items-center justify-between py-3 border-b border-border">
              <div>
                <p className="font-medium text-foreground">Export My Data</p>
                <p className="text-sm text-muted-foreground">Download all your practice history and progress</p>
              </div>
              <Button variant="outline" size="sm">
                <Download className="w-4 h-4 mr-2" />
                Export
              </Button>
            </div>

            <div className="flex items-center justify-between py-3">
              <div>
                <p className="font-medium text-foreground">Reset Progress</p>
                <p className="text-sm text-muted-foreground">Clear all practice data and start fresh</p>
              </div>
              <Button variant="outline" size="sm" className="text-destructive border-destructive/30 hover:bg-destructive/10">
                <Trash2 className="w-4 h-4 mr-2" />
                Reset
              </Button>
            </div>
          </div>
        </div>

        {/* Account Actions */}
        <div className="bg-white rounded-xl shadow-sm border border-border p-6">
          <h2 className="text-lg font-semibold mb-4">Account</h2>
          <div className="flex flex-col sm:flex-row gap-3">
            <Button
              variant="outline"
              onClick={handleLogout}
              className="text-destructive border-destructive/30 hover:bg-destructive/10"
            >
              <LogOut className="w-4 h-4 mr-2" />
              Sign Out
            </Button>
          </div>
        </div>

        {/* Footer */}
        <div className="mt-8 text-center text-xs text-muted-foreground space-x-4">
          <Link to="/privacy" className="hover:text-foreground transition-colors">Privacy Policy</Link>
          <span>·</span>
          <Link to="/terms" className="hover:text-foreground transition-colors">Terms of Service</Link>
          <span>·</span>
          <a href="mailto:support@tutorzero.com" className="hover:text-foreground transition-colors">Contact Support</a>
        </div>
      </main>
    </div>
  );
}
