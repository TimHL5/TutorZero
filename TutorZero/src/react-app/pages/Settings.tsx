import { useState, useEffect } from "react";
import { Link, useNavigate, useSearchParams } from "react-router";
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
  Crown,
  Sparkles,
  CreditCard,
  ExternalLink,
  AlertCircle,
  Infinity,
  BookOpen,
  BarChart3,
  MessageCircle,
  Bell,
  Trash2,
  Download,
  Shield
} from "lucide-react";
import { cn } from "@/react-app/lib/utils";

interface Subscription {
  tier: string;
  isPremium: boolean;
  stripeCustomerId: string | null;
  stripeSubscriptionId: string | null;
  cancelAtPeriodEnd: boolean;
  expiresAt: string | null;
  startedAt: string | null;
}

export default function Settings() {
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const { user, isPending, logout, fetchUser } = useAuth();
  const [displayName, setDisplayName] = useState("");
  const [isSaving, setIsSaving] = useState(false);
  const [saveSuccess, setSaveSuccess] = useState(false);
  const [error, setError] = useState<string | null>(null);
  
  // Subscription state
  const [subscription, setSubscription] = useState<Subscription | null>(null);
  const [isLoadingSubscription, setIsLoadingSubscription] = useState(true);
  const [isLoadingPortal, setIsLoadingPortal] = useState(false);

  // Billing cycle for upgrade CTA
  const [billingCycle, setBillingCycle] = useState<"monthly" | "yearly">("monthly");

  // Notification preferences
  const [emailReminders, setEmailReminders] = useState(true);
  const [weeklyDigest, setWeeklyDigest] = useState(true);

  const [subscriptionMessage, setSubscriptionMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  // Check for Stripe redirect params
  useEffect(() => {
    if (searchParams.get('success') === 'true') {
      setSubscriptionMessage({ type: 'success', text: 'Welcome to TutorZero Pro! Your subscription is now active.' });
      navigate('/settings', { replace: true });
      // Refresh subscription status
      fetchSubscription();
    } else if (searchParams.get('canceled') === 'true') {
      setSubscriptionMessage({ type: 'error', text: 'Checkout was canceled. No charges were made.' });
      navigate('/settings', { replace: true });
    }
  }, [searchParams, navigate]);

  async function fetchSubscription() {
    try {
      const response = await fetch('/api/subscription');
      if (response.ok) {
        const data = await response.json();
        setSubscription(data);
      }
    } catch (err) {
      console.error('Failed to fetch subscription:', err);
    } finally {
      setIsLoadingSubscription(false);
    }
  }

  // Redirect to login if not authenticated
  useEffect(() => {
    if (!isPending && !user) {
      navigate("/login");
    }
  }, [isPending, user, navigate]);

  // Fetch subscription status
  useEffect(() => {
    if (user) {
      fetchSubscription();
    }
  }, [user]);

  useEffect(() => {
    if (user) {
      const profile = user?.profile;
      setDisplayName(
        profile?.displayName ||
        user.google_user_data?.given_name ||
        user.email?.split('@')[0] ||
        ""
      );
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

  const handleUpgrade = async () => {
    try {
      const response = await fetch('/api/subscription/checkout', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ billingCycle })
      });
      
      if (response.ok) {
        const { url } = await response.json();
        window.location.href = url;
      } else {
        setSubscriptionMessage({ type: 'error', text: 'Failed to start checkout. Please try again.' });
      }
    } catch (err) {
      console.error('Checkout error:', err);
      setSubscriptionMessage({ type: 'error', text: 'Failed to start checkout. Please try again.' });
    }
  };

  const handleManageSubscription = async () => {
    setIsLoadingPortal(true);
    try {
      const response = await fetch('/api/subscription/portal', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' }
      });
      
      if (response.ok) {
        const { url } = await response.json();
        window.open(url, '_blank');
      } else {
        setSubscriptionMessage({ type: 'error', text: 'Failed to open billing portal. Please try again.' });
      }
    } catch (err) {
      console.error('Portal error:', err);
      setSubscriptionMessage({ type: 'error', text: 'Failed to open billing portal. Please try again.' });
    } finally {
      setIsLoadingPortal(false);
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
  const isPremium = subscription?.isPremium ?? false;

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
              {isPremium && (
                <span className="hidden sm:flex items-center gap-1.5 bg-gradient-to-r from-amber-500 to-orange-500 px-2.5 py-1 rounded-full text-xs font-semibold">
                  <Crown className="w-3 h-3" />
                  Pro
                </span>
              )}
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

        {/* Subscription Message */}
        {subscriptionMessage && (
          <div className={cn(
            "mb-6 p-4 rounded-lg flex items-start gap-3",
            subscriptionMessage.type === 'success' 
              ? "bg-green-50 border border-green-200" 
              : "bg-red-50 border border-red-200"
          )}>
            {subscriptionMessage.type === 'success' ? (
              <CheckCircle className="w-5 h-5 text-green-600 flex-shrink-0 mt-0.5" />
            ) : (
              <AlertCircle className="w-5 h-5 text-red-600 flex-shrink-0 mt-0.5" />
            )}
            <p className={cn(
              "text-sm",
              subscriptionMessage.type === 'success' ? "text-green-800" : "text-red-800"
            )}>
              {subscriptionMessage.text}
            </p>
            <button
              onClick={() => setSubscriptionMessage(null)}
              className="ml-auto text-gray-400 hover:text-gray-600"
            >
              ×
            </button>
          </div>
        )}

        {/* Subscription Section */}
        <div className="bg-white rounded-xl shadow-sm border border-border p-6 mb-6">
          <h2 className="text-lg font-semibold mb-6 flex items-center gap-2">
            <CreditCard className="w-5 h-5 text-muted-foreground" />
            Subscription
          </h2>

          {isLoadingSubscription ? (
            <div className="flex items-center justify-center py-8">
              <Loader2 className="w-6 h-6 animate-spin text-muted-foreground" />
            </div>
          ) : isPremium ? (
            /* Pro User View */
            <div className="space-y-6">
              <div className="bg-gradient-to-br from-amber-50 to-orange-50 border border-amber-200 rounded-xl p-6">
                <div className="flex items-center gap-3 mb-4">
                  <div className="w-12 h-12 bg-gradient-to-br from-amber-400 to-orange-500 rounded-xl flex items-center justify-center shadow-lg">
                    <Crown className="w-6 h-6 text-white" />
                  </div>
                  <div>
                    <h3 className="font-bold text-lg text-foreground">TutorZero Pro</h3>
                    <p className="text-sm text-muted-foreground">$9.99/month</p>
                  </div>
                </div>

                {subscription?.cancelAtPeriodEnd && subscription.expiresAt && (
                  <div className="mb-4 p-3 bg-amber-100 rounded-lg">
                    <p className="text-sm text-amber-800">
                      Your subscription will end on {new Date(subscription.expiresAt).toLocaleDateString()}.
                      Click "Manage Subscription" to reactivate.
                    </p>
                  </div>
                )}

                <div className="grid sm:grid-cols-2 gap-3 mb-6">
                  <div className="flex items-center gap-2 text-sm text-foreground">
                    <MessageCircle className="w-4 h-4 text-amber-600" />
                    <span>Unlimited AI tutoring</span>
                  </div>
                  <div className="flex items-center gap-2 text-sm text-foreground">
                    <BookOpen className="w-4 h-4 text-amber-600" />
                    <span>Personalized study plans</span>
                  </div>
                  <div className="flex items-center gap-2 text-sm text-foreground">
                    <BarChart3 className="w-4 h-4 text-amber-600" />
                    <span>Advanced analytics</span>
                  </div>
                  <div className="flex items-center gap-2 text-sm text-foreground">
                    <Sparkles className="w-4 h-4 text-amber-600" />
                    <span>Explain differently feature</span>
                  </div>
                </div>

                <Button
                  onClick={handleManageSubscription}
                  disabled={isLoadingPortal}
                  variant="outline"
                  className="w-full border-amber-300 hover:bg-amber-100"
                >
                  {isLoadingPortal ? (
                    <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                  ) : (
                    <ExternalLink className="w-4 h-4 mr-2" />
                  )}
                  Manage Subscription
                </Button>
              </div>

              {subscription?.startedAt && (
                <p className="text-xs text-muted-foreground text-center">
                  Pro member since {new Date(subscription.startedAt).toLocaleDateString()}
                </p>
              )}
            </div>
          ) : (
            /* Free User View */
            <div className="space-y-6">
              {/* Current Plan */}
              <div className="bg-muted/50 rounded-xl p-6">
                <div className="flex items-center gap-3 mb-4">
                  <div className="w-12 h-12 bg-muted rounded-xl flex items-center justify-center">
                    <User className="w-6 h-6 text-muted-foreground" />
                  </div>
                  <div>
                    <h3 className="font-bold text-lg text-foreground">Free Plan</h3>
                    <p className="text-sm text-muted-foreground">Limited features</p>
                  </div>
                </div>
                <ul className="space-y-2 text-sm text-muted-foreground">
                  <li className="flex items-center gap-2">
                    <CheckCircle className="w-4 h-4 text-green-500" />
                    5 AI tutor messages per day
                  </li>
                  <li className="flex items-center gap-2">
                    <CheckCircle className="w-4 h-4 text-green-500" />
                    Unlimited practice questions
                  </li>
                  <li className="flex items-center gap-2">
                    <CheckCircle className="w-4 h-4 text-green-500" />
                    Basic progress tracking
                  </li>
                </ul>
              </div>

              {/* Upgrade CTA */}
              <div className="bg-gradient-to-br from-tz-navy to-[hsl(207,100%,25%)] rounded-xl p-6 text-white">
                <div className="flex items-center gap-2 mb-3">
                  <Sparkles className="w-5 h-5 text-amber-400" />
                  <h3 className="font-bold text-lg">Upgrade to Pro</h3>
                </div>
                <p className="text-white/90 text-sm mb-6">
                  Unlock your full potential with unlimited AI tutoring, personalized study plans, and advanced analytics.
                </p>

                <div className="grid sm:grid-cols-2 gap-3 mb-6">
                  <div className="flex items-center gap-2 text-sm">
                    <div className="w-5 h-5 bg-white/20 rounded-full flex items-center justify-center">
                      <Infinity className="w-3 h-3" />
                    </div>
                    <span>Unlimited AI tutoring</span>
                  </div>
                  <div className="flex items-center gap-2 text-sm">
                    <div className="w-5 h-5 bg-white/20 rounded-full flex items-center justify-center">
                      <BookOpen className="w-3 h-3" />
                    </div>
                    <span>Personalized study plans</span>
                  </div>
                  <div className="flex items-center gap-2 text-sm">
                    <div className="w-5 h-5 bg-white/20 rounded-full flex items-center justify-center">
                      <BarChart3 className="w-3 h-3" />
                    </div>
                    <span>Score trajectory projections</span>
                  </div>
                  <div className="flex items-center gap-2 text-sm">
                    <div className="w-5 h-5 bg-white/20 rounded-full flex items-center justify-center">
                      <Sparkles className="w-3 h-3" />
                    </div>
                    <span>Explain differently feature</span>
                  </div>
                </div>

                {/* Billing cycle toggle */}
                <div className="flex items-center justify-center gap-2 mb-4">
                  <button
                    onClick={() => setBillingCycle("monthly")}
                    className={cn(
                      "px-3 py-1.5 rounded-lg text-xs font-medium transition-all",
                      billingCycle === "monthly"
                        ? "bg-white/20 text-white"
                        : "bg-white/10 text-white/70 hover:bg-white/15"
                    )}
                  >
                    Monthly
                  </button>
                  <button
                    onClick={() => setBillingCycle("yearly")}
                    className={cn(
                      "px-3 py-1.5 rounded-lg text-xs font-medium transition-all relative",
                      billingCycle === "yearly"
                        ? "bg-white/20 text-white"
                        : "bg-white/10 text-white/70 hover:bg-white/15"
                    )}
                  >
                    Yearly
                    <span className="absolute -top-2 -right-2 bg-green-500 text-white text-[9px] font-bold px-1 py-0.5 rounded-full">
                      -33%
                    </span>
                  </button>
                </div>

                <div className="space-y-3">
                  <Button
                    onClick={handleUpgrade}
                    className="w-full bg-gradient-to-r from-amber-500 to-orange-500 hover:from-amber-600 hover:to-orange-600 text-white font-semibold shadow-lg"
                    size="lg"
                  >
                    <Crown className="w-4 h-4 mr-2" />
                    Start 7-Day Free Trial
                  </Button>
                  <p className="text-xs text-white/70 text-center">
                    {billingCycle === "monthly"
                      ? "Then $9.99/month. Cancel anytime."
                      : "Then $79.99/year ($6.67/mo). Cancel anytime."}
                  </p>
                </div>
              </div>
            </div>
          )}
        </div>

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
          <a href="#" className="hover:text-foreground transition-colors">Privacy Policy</a>
          <span>·</span>
          <a href="#" className="hover:text-foreground transition-colors">Terms of Service</a>
          <span>·</span>
          <a href="mailto:support@tutorzero.com" className="hover:text-foreground transition-colors">Contact Support</a>
        </div>
      </main>
    </div>
  );
}
