import { Link } from "react-router";
import { Button } from "@/react-app/components/ui/button";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { 
  BookOpen, 
  ArrowRight, 
  Clock, 
  Target, 
  SkipForward,
  Brain,
  Sparkles,
  CheckCircle
} from "lucide-react";

export default function Welcome() {
  const { user } = useAuth();
  const profile = user?.profile;
  const displayName = profile?.displayName || user?.google_user_data?.given_name || user?.email?.split('@')[0] || 'there';

  return (
    <div className="min-h-screen bg-gradient-to-b from-[hsl(207,100%,17%)] to-[hsl(207,100%,25%)]">
      {/* Navigation */}
      <nav className="text-white">
        <div className="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex items-center justify-between h-14">
            <div className="flex items-center gap-2">
              <BookOpen className="h-5 w-5" />
              <span className="font-semibold">SAT Prep Pro</span>
            </div>
          </div>
        </div>
      </nav>

      <main className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-12 sm:py-16">
        {/* Welcome Header */}
        <div className="text-center mb-12">
          <div className="inline-flex items-center gap-2 bg-white/10 text-blue-200 px-4 py-2 rounded-full text-sm mb-6">
            <Sparkles className="h-4 w-4" />
            Account created successfully!
          </div>
          <h1 className="text-3xl sm:text-4xl lg:text-5xl font-bold text-white mb-4">
            Welcome, {displayName}! 👋
          </h1>
          <p className="text-lg sm:text-xl text-blue-100 max-w-2xl mx-auto">
            Let's get you started on your SAT prep journey.
            Choose how you'd like to begin:
          </p>
        </div>

        {/* Options */}
        <div className="grid sm:grid-cols-2 gap-6 max-w-3xl mx-auto">
          {/* Diagnostic Option */}
          <div className="bg-white rounded-xl p-6 sm:p-8 shadow-xl">
            <div className="w-14 h-14 rounded-full bg-tz-blue/10 flex items-center justify-center mb-5">
              <Brain className="h-7 w-7 text-tz-blue" />
            </div>
            <h2 className="text-xl font-bold text-foreground mb-3">
              Take the Diagnostic
            </h2>
            <p className="text-muted-foreground mb-5 text-sm leading-relaxed">
              A quick 10-minute assessment to identify your strengths and gaps. 
              We'll create a personalized study plan just for you.
            </p>
            <ul className="space-y-2 mb-6">
              <li className="flex items-center gap-2 text-sm text-muted-foreground">
                <CheckCircle className="h-4 w-4 text-green-500 flex-shrink-0" />
                Get your estimated SAT score range
              </li>
              <li className="flex items-center gap-2 text-sm text-muted-foreground">
                <CheckCircle className="h-4 w-4 text-green-500 flex-shrink-0" />
                Personalized study plan
              </li>
              <li className="flex items-center gap-2 text-sm text-muted-foreground">
                <CheckCircle className="h-4 w-4 text-green-500 flex-shrink-0" />
                Smarter practice recommendations
              </li>
            </ul>
            <div className="flex items-center gap-2 text-sm text-muted-foreground mb-5">
              <Clock className="h-4 w-4" />
              <span>10 minutes • 20 questions</span>
            </div>
            <Link to="/diagnostic">
              <Button 
                size="lg" 
                className="w-full bg-tz-navy hover:bg-[hsl(207,100%,22%)]"
              >
                Start Diagnostic
                <ArrowRight className="ml-2 h-5 w-5" />
              </Button>
            </Link>
          </div>

          {/* Skip Option */}
          <div className="bg-white/10 backdrop-blur-sm border border-white/20 rounded-xl p-6 sm:p-8">
            <div className="w-14 h-14 rounded-full bg-white/10 flex items-center justify-center mb-5">
              <SkipForward className="h-7 w-7 text-white" />
            </div>
            <h2 className="text-xl font-bold text-white mb-3">
              Skip for Now
            </h2>
            <p className="text-blue-100 mb-5 text-sm leading-relaxed">
              Jump straight into practice questions. You can always take the 
              diagnostic later from your dashboard.
            </p>
            <ul className="space-y-2 mb-6">
              <li className="flex items-center gap-2 text-sm text-blue-100">
                <Target className="h-4 w-4 text-blue-200 flex-shrink-0" />
                Start practicing immediately
              </li>
              <li className="flex items-center gap-2 text-sm text-blue-100">
                <Target className="h-4 w-4 text-blue-200 flex-shrink-0" />
                All topics available
              </li>
              <li className="flex items-center gap-2 text-sm text-blue-100">
                <Target className="h-4 w-4 text-blue-200 flex-shrink-0" />
                Take diagnostic anytime
              </li>
            </ul>
            <div className="flex items-center gap-2 text-sm text-blue-200 mb-5">
              <Sparkles className="h-4 w-4" />
              <span>Best if you know your weak areas</span>
            </div>
            <Link to="/dashboard">
              <Button 
                size="lg" 
                variant="outline"
                className="w-full border-white text-white hover:bg-white/10"
              >
                Go to Dashboard
                <ArrowRight className="ml-2 h-5 w-5" />
              </Button>
            </Link>
          </div>
        </div>

        {/* Recommendation */}
        <div className="mt-10 text-center">
          <p className="text-blue-200 text-sm">
            💡 <strong className="text-white">Recommended:</strong> Taking the diagnostic helps us personalize 
            your practice and track your improvement more accurately.
          </p>
        </div>
      </main>
    </div>
  );
}
