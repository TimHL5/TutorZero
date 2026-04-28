import { Link } from "react-router";

export default function Terms() {
  return (
    <div className="min-h-screen bg-white">
      <header className="border-b border-tz-gray-200">
        <div className="max-w-[900px] mx-auto px-6 lg:px-8 py-4 flex items-center">
          <Link to="/" className="flex items-center gap-2">
            <img src="/logos/tutorzero-wordmark-dark.png" alt="TutorZero" className="h-7" />
          </Link>
        </div>
      </header>

      <main className="max-w-[720px] mx-auto px-6 lg:px-8 py-16 prose prose-slate">
        <h1 className="text-3xl font-bold text-tz-blue-900 mb-2">Terms of Service</h1>
        <p className="text-sm text-tz-gray-500 mb-8">Last updated: April 2026</p>

        <h2 className="text-xl font-semibold mt-8 mb-3">1. Acceptance</h2>
        <p>By using TutorZero you agree to these terms. If you do not agree, do not use the service.</p>

        <h2 className="text-xl font-semibold mt-8 mb-3">2. The service</h2>
        <p>
          TutorZero provides AI-assisted SAT preparation, including diagnostic assessments, practice
          questions, and personalized study plans. We try to keep the service available, accurate, and
          helpful, but we do not guarantee specific score outcomes.
        </p>

        <h2 className="text-xl font-semibold mt-8 mb-3">3. Accounts</h2>
        <p>
          You are responsible for keeping your sign-in credentials secure and for all activity that
          happens under your account. Tell us right away if you suspect unauthorized use.
        </p>

        <h2 className="text-xl font-semibold mt-8 mb-3">4. Acceptable use</h2>
        <p>
          Don't abuse the service: no scraping at scale, no automated cheating tools, no attempts to
          break security or other users' privacy. We may suspend accounts that violate these rules.
        </p>

        <h2 className="text-xl font-semibold mt-8 mb-3">5. Content</h2>
        <p>
          SAT questions and explanations on TutorZero are licensed or original content. You may use
          them for personal study but not redistribute or resell them.
        </p>

        <h2 className="text-xl font-semibold mt-8 mb-3">6. Subscriptions</h2>
        <p>
          Paid plans renew automatically until cancelled. You can cancel anytime in Settings. If we
          change pricing we'll give you notice before the next renewal.
        </p>

        <h2 className="text-xl font-semibold mt-8 mb-3">7. Disclaimers</h2>
        <p>
          The service is provided "as is" without warranties. We are not liable for indirect or
          consequential damages.
        </p>

        <h2 className="text-xl font-semibold mt-8 mb-3">8. Contact</h2>
        <p>
          Questions? Email <a href="mailto:support@tutorzero.com" className="text-tz-blue-700 underline">support@tutorzero.com</a>.
        </p>

        <p className="mt-12 text-sm text-tz-gray-500">
          <Link to="/" className="text-tz-blue-700 hover:underline">← Back to home</Link>
        </p>
      </main>
    </div>
  );
}
