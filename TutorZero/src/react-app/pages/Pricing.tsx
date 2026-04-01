import { AppLayout } from "@/react-app/components/layout/AppLayout";
import { Check, Sparkles, Zap, Brain, BarChart3, Calendar, MessageSquare, FileText } from "lucide-react";
import { Button } from "@/react-app/components/ui/button";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { useState } from "react";
import { cn } from "@/react-app/lib/utils";

const FREE_FEATURES = [
  { icon: Target, text: "Full diagnostic test with score prediction" },
  { icon: Zap, text: "3 practice sessions per week" },
  { icon: Brain, text: "Confidence ratings on every question" },
  { icon: MessageSquare, text: "5 AI tutor messages per day" },
  { icon: BarChart3, text: "Basic progress tracking" },
  { icon: Sparkles, text: "Feedback on every wrong answer" },
];

const PRO_FEATURES = [
  { icon: Zap, text: "Unlimited practice sessions", highlight: true },
  { icon: MessageSquare, text: "Unlimited AI tutor messages", highlight: true },
  { icon: Calendar, text: "AI-generated weekly study plan", highlight: true },
  { icon: BarChart3, text: "Advanced analytics + score trajectory" },
  { icon: Brain, text: "Frustration detection + adaptive interventions" },
  { icon: Sparkles, text: "Multiple explanation styles" },
  { icon: Target, text: "Full SAT section simulations (timed)" },
  { icon: FileText, text: "Exportable PDF progress reports" },
];

import { Target } from "lucide-react";

export default function Pricing() {
  const { user } = useAuth();
  const [billingCycle, setBillingCycle] = useState<"monthly" | "yearly">("monthly");
  const [isLoading, setIsLoading] = useState(false);

  const profile = user?.profile;
  const isPro = profile?.subscriptionTier === "pro";

  const monthlyPrice = 9.99;
  const yearlyPrice = 79.99;
  const yearlyMonthly = (yearlyPrice / 12).toFixed(2);
  const savings = Math.round((1 - yearlyPrice / (monthlyPrice * 12)) * 100);

  const handleUpgrade = async () => {
    setIsLoading(true);
    try {
      const response = await fetch("/api/subscription/checkout", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({
          billingCycle,
          successUrl: `${window.location.origin}/settings?success=true`,
          cancelUrl: `${window.location.origin}/pricing?canceled=true`,
        }),
      });

      if (!response.ok) {
        const error = await response.json();
        throw new Error(error.message || "Failed to create checkout session");
      }

      const { url } = await response.json();
      if (url) {
        window.location.href = url;
      }
    } catch (error) {
      console.error("Checkout error:", error);
      alert("Failed to start checkout. Please try again.");
    } finally {
      setIsLoading(false);
    }
  };

  if (isPro) {
    return (
      <AppLayout title="Subscription">
        <div className="max-w-2xl mx-auto">
          <div className="bg-white rounded-xl border border-tz-gray-200 p-8 text-center">
            <div className="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
              <Check className="w-8 h-8 text-tz-green" />
            </div>
            <h2 className="text-h2 text-tz-navy mb-2">You're a Pro!</h2>
            <p className="text-body text-tz-gray-600 mb-6">
              You have access to all TutorZero features. Keep up the great work!
            </p>
            <div className="bg-tz-off-white rounded-lg p-4 inline-block">
              <p className="text-small text-tz-gray-600">Current plan</p>
              <p className="text-body-strong text-tz-navy">Pro Monthly - $9.99/month</p>
            </div>
          </div>
        </div>
      </AppLayout>
    );
  }

  return (
    <AppLayout title="Upgrade to Pro">
      <div className="max-w-4xl mx-auto">
        {/* Header */}
        <div className="text-center mb-10">
          <h1 className="text-h1 text-tz-navy mb-3">Unlock your full potential</h1>
          <p className="text-body text-tz-gray-600 max-w-xl mx-auto">
            Get unlimited practice, AI tutoring, and personalized study plans to maximize your SAT score.
          </p>
        </div>

        {/* Billing toggle */}
        <div className="flex items-center justify-center gap-4 mb-10">
          <button
            onClick={() => setBillingCycle("monthly")}
            className={cn(
              "px-5 py-2.5 rounded-lg text-sm font-medium transition-all min-h-[44px]",
              billingCycle === "monthly"
                ? "bg-tz-navy text-white"
                : "bg-tz-gray-100 text-tz-gray-600 hover:bg-tz-gray-200"
            )}
          >
            Monthly
          </button>
          <button
            onClick={() => setBillingCycle("yearly")}
            className={cn(
              "px-5 py-2.5 rounded-lg text-sm font-medium transition-all relative min-h-[44px]",
              billingCycle === "yearly"
                ? "bg-tz-navy text-white"
                : "bg-tz-gray-100 text-tz-gray-600 hover:bg-tz-gray-200"
            )}
          >
            Yearly
            <span className="absolute -top-2 -right-2 bg-tz-green text-white text-[10px] font-bold px-1.5 py-0.5 rounded-full">
              -{savings}%
            </span>
          </button>
        </div>

        {/* Pricing cards */}
        <div className="grid md:grid-cols-2 gap-6">
          {/* Free tier */}
          <div className="bg-white rounded-xl border border-tz-gray-200 p-6 shadow-subtle">
            <div className="mb-6">
              <p className="text-label text-tz-gray-600 font-semibold mb-2">FREE</p>
              <div className="flex items-baseline gap-1">
                <span className="text-4xl font-bold text-tz-navy">$0</span>
                <span className="text-sm text-tz-gray-600">/forever</span>
              </div>
              <p className="text-small text-tz-gray-600 mt-2">
                Everything you need to start improving
              </p>
            </div>

            <div className="border-t border-tz-gray-200 pt-6 space-y-3">
              {FREE_FEATURES.map((feature, i) => (
                <div key={i} className="flex items-start gap-3">
                  <feature.icon className="w-5 h-5 text-tz-blue flex-shrink-0 mt-0.5" />
                  <span className="text-small text-tz-gray-600">{feature.text}</span>
                </div>
              ))}
            </div>

            <Button
              variant="outline"
              className="w-full mt-8 h-11 border-tz-gray-300 text-tz-gray-600"
              disabled
            >
              Current Plan
            </Button>
          </div>

          {/* Pro tier */}
          <div className="relative bg-gradient-to-br from-tz-navy to-[#004080] rounded-xl p-6 text-white shadow-lg">
            {/* Badge */}
            <div className="absolute -top-3 left-1/2 -translate-x-1/2">
              <span className="bg-tz-orange text-white text-xs font-semibold px-3 py-1 rounded-full shadow-md">
                RECOMMENDED
              </span>
            </div>

            <div className="mb-6 mt-2">
              <p className="text-label text-white font-semibold mb-2">PRO</p>
              <div className="flex items-baseline gap-1">
                <span className="text-4xl font-bold text-white">
                  ${billingCycle === "monthly" ? monthlyPrice : yearlyMonthly}
                </span>
                <span className="text-sm text-white/80">/month</span>
              </div>
              {billingCycle === "yearly" && (
                <p className="text-small text-white/80 mt-1">
                  Billed annually at ${yearlyPrice}
                </p>
              )}
              <p className="text-small text-white/90 mt-2">
                The full private tutor experience
              </p>
            </div>

            <div className="border-t border-white/20 pt-6 space-y-3">
              <p className="text-small text-white/90 font-medium mb-3">Everything in Free, plus:</p>
              {PRO_FEATURES.map((feature, i) => (
                <div key={i} className="flex items-start gap-3">
                  <feature.icon className={cn(
                    "w-5 h-5 flex-shrink-0 mt-0.5",
                    feature.highlight ? "text-tz-green" : "text-tz-light-blue"
                  )} />
                  <span className={cn(
                    "text-small",
                    feature.highlight ? "text-white font-medium" : "text-white/90"
                  )}>
                    {feature.text}
                  </span>
                </div>
              ))}
            </div>

            <Button
              onClick={handleUpgrade}
              disabled={isLoading}
              className="w-full mt-8 h-11 bg-tz-green hover:bg-green-600 text-white font-semibold transition-all hover:scale-[1.02]"
            >
              {isLoading ? "Loading..." : "Start 7-Day Free Trial"}
            </Button>
            <p className="text-center text-xs text-white/70 mt-3">
              Cancel anytime. No questions asked.
            </p>
          </div>
        </div>

        {/* FAQ section */}
        <div className="mt-16">
          <h2 className="text-h2 text-tz-navy text-center mb-8">Frequently Asked Questions</h2>
          <div className="grid md:grid-cols-2 gap-6">
            <FaqItem 
              question="Can I really use TutorZero for free?"
              answer="Yes! The free tier is not a trial. You get full access to diagnostics, practice (3 sessions/week), and AI tutoring (5 messages/day) forever."
            />
            <FaqItem 
              question="What happens after my free trial?"
              answer="After 7 days, you'll be charged based on your selected billing cycle. You can cancel anytime before to avoid charges."
            />
            <FaqItem 
              question="Can I switch between monthly and yearly?"
              answer="Yes! You can switch plans at any time. If upgrading to yearly, you'll get prorated credit for your monthly payment."
            />
            <FaqItem 
              question="How is this different from Khan Academy?"
              answer="TutorZero adapts to YOU. Our AI diagnoses why you're struggling, not just what you got wrong. Plus, you get personalized study plans and unlimited AI tutoring."
            />
          </div>
        </div>
      </div>
    </AppLayout>
  );
}

function FaqItem({ question, answer }: { question: string; answer: string }) {
  return (
    <div className="bg-white rounded-lg border border-tz-gray-200 p-5">
      <h3 className="text-body-strong text-tz-navy mb-2">{question}</h3>
      <p className="text-small text-tz-gray-600">{answer}</p>
    </div>
  );
}
