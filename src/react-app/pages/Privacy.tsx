import { Link } from "react-router";

export default function Privacy() {
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
        <h1 className="text-3xl font-bold text-tz-blue-900 mb-2">Privacy Policy</h1>
        <p className="text-sm text-tz-gray-500 mb-8">Last updated: April 2026</p>

        <h2 className="text-xl font-semibold mt-8 mb-3">What we collect</h2>
        <ul className="list-disc pl-6 space-y-2">
          <li><strong>Account info:</strong> email address and (optionally) display name when you sign up.</li>
          <li><strong>Usage:</strong> the questions you answer, your responses, confidence ratings, and time spent — used to power your diagnostic results and study plan.</li>
          <li><strong>Session info:</strong> standard logs (IP, browser, timestamps) to keep the service secure and reliable.</li>
        </ul>

        <h2 className="text-xl font-semibold mt-8 mb-3">How we use it</h2>
        <ul className="list-disc pl-6 space-y-2">
          <li>To run TutorZero — score your work, generate study plans, power the AI tutor.</li>
          <li>To improve the product — aggregated, de-identified usage helps us spot bugs and improve question quality.</li>
          <li>To contact you about your account if needed. We don't send marketing emails without consent.</li>
        </ul>

        <h2 className="text-xl font-semibold mt-8 mb-3">What we don't do</h2>
        <p>
          We don't sell your data. We don't share your individual responses with anyone outside our
          team. We don't use your data to train third-party AI models.
        </p>

        <h2 className="text-xl font-semibold mt-8 mb-3">Third-party services</h2>
        <p>
          We use Supabase for authentication and storage, Stripe for payments, and OpenAI for the AI
          tutor. These providers process limited data on our behalf under their own privacy policies.
        </p>

        <h2 className="text-xl font-semibold mt-8 mb-3">Your choices</h2>
        <ul className="list-disc pl-6 space-y-2">
          <li>You can update or delete your account anytime in Settings.</li>
          <li>You can request a copy of your data by emailing support.</li>
        </ul>

        <h2 className="text-xl font-semibold mt-8 mb-3">Students under 13</h2>
        <p>
          TutorZero is intended for users 13 and older. If we learn we've collected data from a child
          under 13 without parental consent, we'll delete it.
        </p>

        <h2 className="text-xl font-semibold mt-8 mb-3">Contact</h2>
        <p>
          Privacy questions? Email <a href="mailto:support@tutorzero.com" className="text-tz-blue-700 underline">support@tutorzero.com</a>.
        </p>

        <p className="mt-12 text-sm text-tz-gray-500">
          <Link to="/" className="text-tz-blue-700 hover:underline">← Back to home</Link>
        </p>
      </main>
    </div>
  );
}
