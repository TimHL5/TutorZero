import { useEffect } from "react";
import { useNavigate, Link } from "react-router";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { Loader2, ArrowLeft } from "lucide-react";

const WORDMARK_LIGHT = "https://019c2e5b-2f20-7a1a-8266-2d41e0797564.mochausercontent.com/tutorzero-wordmark-on-dark.png";

export default function Login() {
  const navigate = useNavigate();
  const { user, isPending, redirectToLogin } = useAuth();

  useEffect(() => {
    if (user) {
      const profile = user?.profile;
      if (profile && !profile.hasCompletedOnboarding) {
        navigate("/onboarding", { replace: true });
      } else if (profile && !profile.hasCompletedDiagnostic) {
        navigate("/diagnostic", { replace: true });
      } else {
        navigate("/dashboard", { replace: true });
      }
    }
  }, [user, navigate]);

  const handleGoogleLogin = async () => {
    try {
      await redirectToLogin();
    } catch (err) {
      console.error("Login redirect error:", err);
    }
  };

  if (isPending) {
    return (
      <div className="min-h-screen bg-tz-navy flex items-center justify-center">
        <Loader2 className="w-8 h-8 animate-spin text-tz-light-blue" />
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-tz-navy flex flex-col p-4">
      {/* Back to landing */}
      <div className="max-w-sm mx-auto w-full pt-4">
        <Link 
          to="/" 
          className="inline-flex items-center gap-2 text-tz-light-blue/70 hover:text-white transition-colors text-sm"
        >
          <ArrowLeft className="w-4 h-4" />
          Back to home
        </Link>
      </div>

      <div className="flex-1 flex items-center justify-center">
      <div className="w-full max-w-sm">
        {/* Logo */}
        <div className="flex justify-center mb-8">
          <img 
            src={WORDMARK_LIGHT} 
            alt="TutorZero" 
            className="h-10 w-auto"
          />
        </div>

        {/* Auth Card */}
        <div className="bg-white rounded-lg shadow-subtle p-8">
          <div className="text-center mb-8">
            <h1 className="text-h2 text-tz-navy mb-2">Welcome</h1>
            <p className="text-body text-tz-gray-600">
              Sign in to start your SAT prep journey
            </p>
          </div>

          {/* Google Sign-In - Primary */}
          <button
            onClick={handleGoogleLogin}
            className="w-full flex items-center justify-center gap-3 px-4 py-3 bg-tz-blue text-white rounded-md font-medium hover-scale transition-all duration-200"
          >
            <svg className="w-5 h-5" viewBox="0 0 24 24">
              <path
                fill="currentColor"
                d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"
              />
              <path
                fill="currentColor"
                d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"
              />
              <path
                fill="currentColor"
                d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"
              />
              <path
                fill="currentColor"
                d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"
              />
            </svg>
            Continue with Google
          </button>

          {/* Divider */}
          <div className="flex items-center gap-4 my-6">
            <div className="flex-1 h-px bg-tz-gray-200" />
            <span className="text-small text-tz-gray-600">or</span>
            <div className="flex-1 h-px bg-tz-gray-200" />
          </div>

          {/* Email option - Secondary */}
          <button
            onClick={handleGoogleLogin}
            className="w-full flex items-center justify-center px-4 py-3 border border-tz-gray-200 text-tz-gray-600 rounded-md font-medium hover:bg-tz-gray-100 hover:border-tz-gray-400 transition-all duration-200"
          >
            Continue with Email
          </button>
        </div>

        {/* Footer text */}
        <p className="text-center text-tz-light-blue/70 text-small mt-6">
          By signing in, you agree to our Terms of Service and Privacy Policy
        </p>
      </div>
      </div>
    </div>
  );
}
