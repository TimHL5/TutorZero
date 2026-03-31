import { Link, useNavigate } from "react-router";
import { Button } from "@/react-app/components/ui/button";
import { Logo } from "@/react-app/components/Logo";
import { Clock, Target, Brain, ArrowRight, CheckCircle, ArrowLeft } from "lucide-react";
import { useAuth } from "@/react-app/lib/AuthProvider";

export default function DiagnosticIntro() {
  const { user } = useAuth();
  const navigate = useNavigate();

  const handleBack = () => {
    if (user) {
      navigate("/dashboard");
    } else {
      navigate("/");
    }
  };

  return (
    <div className="min-h-screen bg-background">
      {/* Navigation */}
      <nav className="bg-tz-navy text-white">
        <div className="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex items-center justify-between h-16">
            <div className="flex items-center gap-4">
              <button
                onClick={handleBack}
                className="flex items-center gap-2 text-white/70 hover:text-white transition-colors text-sm"
              >
                <ArrowLeft className="w-4 h-4" />
                <span className="hidden sm:inline">Back</span>
              </button>
              <Logo to={user ? "/dashboard" : "/"} />
            </div>
          </div>
        </div>
      </nav>

      <main className="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        {/* Header */}
        <div className="text-center mb-12">
          <div className="inline-flex items-center justify-center w-16 h-16 bg-[hsl(205,72%,94%)] rounded-full mb-6">
            <Brain className="h-8 w-8 text-tz-blue" />
          </div>
          <h1 className="text-3xl sm:text-4xl font-bold text-foreground mb-4">
            Diagnostic Assessment
          </h1>
          <p className="text-lg text-muted-foreground max-w-xl mx-auto">
            Before we start practicing, let's find out where you are now. 
            This quick assessment will identify your strengths and any gaps to address.
          </p>
        </div>

        {/* Info Cards */}
        <div className="grid sm:grid-cols-3 gap-4 mb-10">
          <InfoCard
            icon={<Clock className="h-5 w-5" />}
            title="10 minutes"
            description="Timed assessment"
          />
          <InfoCard
            icon={<Target className="h-5 w-5" />}
            title="All Topics"
            description="Math & Reading/Writing"
          />
          <InfoCard
            icon={<Brain className="h-5 w-5" />}
            title="Adaptive"
            description="Adjusts to your level"
          />
        </div>

        {/* What to Expect */}
        <div className="bg-white rounded-lg border border-border p-6 mb-8">
          <h2 className="text-lg font-semibold text-foreground mb-4">What to Expect</h2>
          <ul className="space-y-3">
            <ExpectationItem>
              Questions will adapt based on your answers—getting harder or easier to find your level
            </ExpectationItem>
            <ExpectationItem>
              We'll test both Math and Reading/Writing sections
            </ExpectationItem>
            <ExpectationItem>
              You'll get a detailed skill profile and personalized study plan at the end
            </ExpectationItem>
            <ExpectationItem>
              No pressure—this is just to understand where you're starting from
            </ExpectationItem>
          </ul>
        </div>

        {/* Tips */}
        <div className="bg-[hsl(205,72%,94%)] rounded-lg p-6 mb-10">
          <h2 className="text-lg font-semibold text-foreground mb-3">Tips for Best Results</h2>
          <ul className="text-sm text-muted-foreground space-y-2">
            <li>• Find a quiet place with 10 minutes of uninterrupted time</li>
            <li>• Answer honestly—guessing won't help us help you</li>
            <li>• Don't use a calculator (unless the question allows it)</li>
            <li>• It's okay to skip questions you don't know</li>
          </ul>
        </div>

        {/* CTA */}
        <div className="text-center">
          <Link to="/diagnostic/test">
            <Button 
              size="lg" 
              className="bg-tz-navy hover:bg-[hsl(207,100%,22%)] text-white font-semibold px-10 py-6 text-lg"
            >
              Begin Diagnostic
              <ArrowRight className="ml-2 h-5 w-5" />
            </Button>
          </Link>
          <p className="text-sm text-muted-foreground mt-4">
            No account required • Your progress is saved locally
          </p>
          {user && (
            <button
              onClick={() => navigate("/dashboard")}
              className="text-sm text-muted-foreground hover:text-foreground underline underline-offset-2 mt-3 transition-colors"
            >
              Skip for now
            </button>
          )}
        </div>
      </main>
    </div>
  );
}

function InfoCard({ 
  icon, 
  title, 
  description 
}: { 
  icon: React.ReactNode; 
  title: string; 
  description: string;
}) {
  return (
    <div className="bg-white rounded-lg border border-border p-4 text-center">
      <div className="inline-flex items-center justify-center w-10 h-10 bg-[hsl(205,72%,94%)] rounded-full mb-2 text-tz-blue">
        {icon}
      </div>
      <div className="font-semibold text-foreground">{title}</div>
      <div className="text-sm text-muted-foreground">{description}</div>
    </div>
  );
}

function ExpectationItem({ children }: { children: React.ReactNode }) {
  return (
    <li className="flex items-start gap-3">
      <CheckCircle className="h-5 w-5 text-[hsl(122,47%,33%)] flex-shrink-0 mt-0.5" />
      <span className="text-muted-foreground">{children}</span>
    </li>
  );
}
