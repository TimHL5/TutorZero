import { useEffect, useState } from "react";
import { useNavigate } from "react-router";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { Loader2 } from "lucide-react";

export default function AuthCallback() {
  const navigate = useNavigate();
  const { exchangeCodeForSessionToken, user } = useAuth();
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const handleCallback = async () => {
      try {
        await exchangeCodeForSessionToken();
      } catch (err) {
        console.error("Auth callback error:", err);
        setError("Failed to complete sign in. Please try again.");
      }
    };

    handleCallback();

    const timeout = setTimeout(() => {
      if (!user) {
        setError("Sign in is taking too long. Please try again.");
      }
    }, 10000);
    return () => clearTimeout(timeout);
  }, [exchangeCodeForSessionToken, user]);

  // Once user is available, redirect based on onboarding/diagnostic status
  useEffect(() => {
    if (user) {
      const profile = user?.profile;
      if (!profile?.hasCompletedOnboarding) {
        // Brand new user - go to onboarding to enter name
        navigate("/onboarding", { replace: true });
      } else if (!profile?.hasCompletedDiagnostic) {
        // Returning user who hasn't done diagnostic — drop them straight in.
        navigate("/diagnostic", { replace: true });
      } else {
        // Returning user - go to dashboard
        navigate("/dashboard", { replace: true });
      }
    }
  }, [user, navigate]);

  if (error) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center p-4">
        <div className="text-center max-w-md">
          <div className="w-16 h-16 rounded-full bg-destructive/10 flex items-center justify-center mx-auto mb-4">
            <span className="text-2xl">⚠️</span>
          </div>
          <h1 className="text-xl font-semibold text-foreground mb-2">Sign In Failed</h1>
          <p className="text-muted-foreground mb-6">{error}</p>
          <button
            onClick={() => navigate("/login")}
            className="px-6 py-2 bg-tz-blue text-white rounded-lg hover:bg-tz-blue/90 transition-colors"
          >
            Try Again
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background flex items-center justify-center">
      <div className="text-center">
        <Loader2 className="w-10 h-10 animate-spin text-tz-blue mx-auto mb-4" />
        <p className="text-muted-foreground">Completing sign in...</p>
      </div>
    </div>
  );
}
