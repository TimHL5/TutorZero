import { BrowserRouter as Router, Routes, Route, Navigate } from "react-router";
import { AuthProvider } from "@/react-app/lib/AuthProvider";
import LandingPage from "@/react-app/pages/Landing";
import Login from "@/react-app/pages/Login";
import AuthCallback from "@/react-app/pages/AuthCallback";
import DiagnosticIntro from "@/react-app/pages/DiagnosticIntro";
import DiagnosticTest from "@/react-app/pages/DiagnosticTest";
import DiagnosticResults from "@/react-app/pages/DiagnosticResults";
import PracticeSetup from "@/react-app/pages/PracticeSetup";
import Practice from "@/react-app/pages/Practice";
import PracticeSummary from "@/react-app/pages/PracticeSummary";
import Dashboard from "@/react-app/pages/Dashboard";
import Welcome from "@/react-app/pages/Welcome";
import Onboarding from "@/react-app/pages/Onboarding";
import Settings from "@/react-app/pages/Settings";
import AITutor from "@/react-app/pages/AITutor";
import Progress from "@/react-app/pages/Progress";
import StudyPlan from "@/react-app/pages/StudyPlan";
import Pricing from "@/react-app/pages/Pricing";

export default function App() {
  return (
    <AuthProvider>
      <Router>
        <Routes>
          <Route path="/" element={<LandingPage />} />
          <Route path="/login" element={<Login />} />
          <Route path="/auth/v1/callback" element={<AuthCallback />} />
          <Route path="/onboarding" element={<Onboarding />} />
          <Route path="/welcome" element={<Welcome />} />
          <Route path="/settings" element={<Settings />} />
          <Route path="/diagnostic" element={<DiagnosticIntro />} />
          <Route path="/diagnostic/test" element={<DiagnosticTest />} />
          <Route path="/diagnostic/results" element={<DiagnosticResults />} />
          <Route path="/practice" element={<PracticeSetup />} />
          <Route path="/practice/session" element={<Practice />} />
          <Route path="/practice/summary" element={<PracticeSummary />} />
          <Route path="/dashboard" element={<Dashboard />} />
          <Route path="/tutor" element={<AITutor />} />
          <Route path="/progress" element={<Progress />} />
          <Route path="/study-plan" element={<StudyPlan />} />
          <Route path="/pricing" element={<Pricing />} />
          <Route path="*" element={<Navigate to="/" replace />} />
        </Routes>
      </Router>
    </AuthProvider>
  );
}
