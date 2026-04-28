import { Link, useNavigate } from "react-router";
import { useEffect } from "react";
import { Button } from "@/react-app/components/ui/button";
import { useAuth } from "@/react-app/lib/AuthProvider";

export default function LandingPage() {
  const { user, isPending, redirectToLogin } = useAuth();
  const navigate = useNavigate();

  useEffect(() => {
    if (!isPending && user) {
      navigate("/dashboard", { replace: true });
    }
  }, [user, isPending, navigate]);

  const scrollToSection = (id: string) => {
    document.getElementById(id)?.scrollIntoView({ behavior: "smooth" });
  };

  return (
    <div className="min-h-screen bg-white">
      {/* Navigation - White background, subtle bottom border */}
      <header className="sticky top-0 z-50 bg-white border-b border-[#E2E8F0]">
        <div className="max-w-[1100px] mx-auto px-6 lg:px-8">
          <div className="h-16 flex items-center justify-between">
            <Link to="/" className="flex items-center">
              <img 
                src="/logos/tutorzero-wordmark-light.png" 
                alt="TutorZero" 
                className="h-8"
              />
            </Link>
            <nav className="flex items-center gap-4">
              <button
                onClick={() => scrollToSection("how-it-works")}
                className="text-base text-[#475569] hover:text-[#003366] transition-colors hidden sm:block py-2 px-2 min-h-[44px] flex items-center rounded-md focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-[#006BB6]/50 focus-visible:ring-offset-2"
              >
                How It Works
              </button>
              <button
                onClick={() => redirectToLogin()}
                className="text-base text-[#475569] hover:text-[#003366] transition-colors py-2 px-2 min-h-[44px] flex items-center rounded-md focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-[#006BB6]/50 focus-visible:ring-offset-2"
              >
                Sign In
              </button>
              <Button 
                onClick={() => redirectToLogin()}
                className="bg-[#006BB6] hover:bg-[#005a9a] text-white font-medium px-5 h-10 transition-all duration-200 hover:scale-[1.02]"
              >
                Get Started Free
              </Button>
            </nav>
          </div>
        </div>
      </header>

      {/* Hero Section - Navy with subtle radial gradient */}
      <section 
        className="relative"
        style={{
          background: "radial-gradient(ellipse at center, #004080 0%, #003366 70%)"
        }}
      >
        <div className="max-w-[900px] mx-auto px-6 lg:px-8 py-20 sm:py-28 text-center">
          {/* Label */}
          <p className="text-label text-[#4DA8DA] mb-4">
            FREE ADAPTIVE SAT PREP
          </p>
          
          {/* Headline */}
          <h1 className="text-4xl sm:text-5xl lg:text-[56px] font-extrabold text-white tracking-[-0.02em] leading-[1.1] mb-6" style={{ textWrap: 'balance' }}>
            Your tutor. Zero cost.
          </h1>
          
          {/* Subheadline */}
          <p className="text-lg text-[#A8D8EA] max-w-[560px] mx-auto mb-10 leading-relaxed">
            AI-powered SAT prep that adapts to your weaknesses, diagnoses why you're struggling, and builds a study plan around your schedule.
          </p>
          
          {/* Buttons */}
          <div className="flex flex-col sm:flex-row gap-4 justify-center mb-10">
            <Button 
              onClick={() => navigate("/diagnostic")}
              className="bg-[#00A651] hover:bg-[#008c44] text-white font-semibold px-8 h-12 text-base transition-all duration-200 hover:scale-[1.02]"
            >
              Start Free Diagnostic
            </Button>
            <Button 
              variant="outline"
              onClick={() => scrollToSection("how-it-works")}
              className="border-white text-white hover:bg-white/10 font-medium px-8 h-12 text-base bg-transparent"
            >
              See How It Works
            </Button>
          </div>
          
          {/* Metric pills - glass morphism */}
          <div className="flex flex-wrap justify-center gap-3">
            <div className="px-4 py-2 rounded-full bg-white/10 backdrop-blur-sm border border-white/20 text-white/90 text-sm">
              Adaptive difficulty
            </div>
            <div className="px-4 py-2 rounded-full bg-white/10 backdrop-blur-sm border border-white/20 text-white/90 text-sm">
              Confidence-verified diagnosis
            </div>
            <div className="px-4 py-2 rounded-full bg-white/10 backdrop-blur-sm border border-white/20 text-white/90 text-sm">
              Real test simulation
            </div>
          </div>
        </div>
      </section>

      {/* How It Works Section */}
      <section id="how-it-works" className="bg-white py-20 sm:py-28">
        <div className="max-w-[900px] mx-auto px-6 lg:px-8">
          <p className="text-label text-[#94A3B8] text-center mb-4">HOW IT WORKS</p>
          
          <div className="grid md:grid-cols-3 gap-12 mt-12">
            {/* Step 1 */}
            <div className="text-center md:text-left">
              <span className="text-[64px] font-bold text-[#4DA8DA]/30 leading-none">1</span>
              <h3 className="text-lg font-bold text-[#003366] mt-2 mb-3">Take the Diagnostic</h3>
              <p className="text-base text-[#475569] leading-relaxed">
                20 adaptive questions with confidence ratings reveal your real gaps — not just what you got wrong, but why.
              </p>
            </div>
            
            {/* Step 2 */}
            <div className="text-center md:text-left">
              <span className="text-[64px] font-bold text-[#4DA8DA]/30 leading-none">2</span>
              <h3 className="text-lg font-bold text-[#003366] mt-2 mb-3">Practice Your Weak Spots</h3>
              <p className="text-base text-[#475569] leading-relaxed">
                Questions adapt in real-time. AI detects when you're frustrated and adjusts. You always have the final say.
              </p>
            </div>
            
            {/* Step 3 */}
            <div className="text-center md:text-left">
              <span className="text-[64px] font-bold text-[#4DA8DA]/30 leading-none">3</span>
              <h3 className="text-lg font-bold text-[#003366] mt-2 mb-3">Watch Your Score Climb</h3>
              <p className="text-base text-[#475569] leading-relaxed">
                Track your predicted score, master weak topics, and follow a study plan built around your schedule.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* The Problem Section */}
      <section className="bg-[#F7F9FC] py-20 sm:py-28">
        <div className="max-w-[900px] mx-auto px-6 lg:px-8">
          <p className="text-label text-[#94A3B8] text-center mb-4">THE PROBLEM</p>
          <h2 className="text-2xl sm:text-3xl font-bold text-[#003366] text-center mb-16" style={{ textWrap: 'balance' }}>
            Personalized SAT prep costs $200/hour.
          </h2>
          
          <div className="grid md:grid-cols-3 gap-8">
            {/* $200/hr Tutor */}
            <div className="p-6">
              <h3 className="text-lg font-bold text-[#003366] mb-3">$200/hr Tutor</h3>
              <p className="text-base text-[#475569] leading-relaxed">
                Adaptive, personalized, effective. Only available to wealthy students.
              </p>
            </div>
            
            {/* Free Tools */}
            <div className="p-6">
              <h3 className="text-lg font-bold text-[#003366] mb-3">Free Tools (Khan, etc.)</h3>
              <p className="text-base text-[#475569] leading-relaxed">
                Same questions for everyone. No diagnosis. No adaptation.
              </p>
            </div>
            
            {/* TutorZero */}
            <div className="p-6 bg-white rounded-lg shadow-sm ring-1 ring-[#006BB6]/20">
              <h3 className="text-lg font-bold text-[#003366] mb-3">TutorZero</h3>
              <p className="text-base text-[#475569] leading-relaxed">
                Adaptive AI + human input. Diagnoses real gaps. Free, period.
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* Footer */}
      <footer className="bg-[#003366] text-white py-12">
        <div className="max-w-[900px] mx-auto px-6 lg:px-8">
          <div className="flex flex-col sm:flex-row items-center justify-between gap-6">
            <img 
              src="/logos/tutorzero-wordmark-light.png" 
              alt="TutorZero" 
              className="h-7"
            />
            <div className="flex items-center gap-4 text-sm text-white/60">
              <Link to="/terms" className="hover:text-white transition-colors py-3 px-1">Terms</Link>
              <Link to="/privacy" className="hover:text-white transition-colors py-3 px-1">Privacy</Link>
              <a href="mailto:support@tutorzero.com" className="hover:text-white transition-colors py-3 px-1">Contact</a>
            </div>
          </div>
          <p className="text-center sm:text-left text-sm text-white/40 mt-8">
            © {new Date().getFullYear()} TutorZero. All rights reserved.
          </p>
        </div>
      </footer>
    </div>
  );
}
