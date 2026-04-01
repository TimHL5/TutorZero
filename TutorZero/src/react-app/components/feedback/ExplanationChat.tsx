import { useState, useEffect } from "react";
import { MessageCircle, Send, Loader2, X, Sparkles, Crown, Zap, Target, TrendingUp } from "lucide-react";
import { ChatMarkdown } from "@/react-app/components/ui/ChatMarkdown";
import { Button } from "@/react-app/components/ui/button";
import type { Question } from "@/data/questions";
import { cn } from "@/react-app/lib/utils";

interface ExplanationChatProps {
  question: Question;
  selectedIndex: number;
}

interface ChatMessage {
  role: "user" | "assistant";
  content: string;
}

interface ChatUsage {
  used: number;
  limit: number;
  remaining: number;
  isPremium: boolean;
}

// Get browser ID for anonymous users
function getBrowserId(): string {
  let browserId = localStorage.getItem("sat_browser_id");
  if (!browserId) {
    browserId = crypto.randomUUID();
    localStorage.setItem("sat_browser_id", browserId);
  }
  return browserId;
}

// Get user ID if logged in
function getUserId(): string | null {
  // Check if user data is stored (from auth)
  const userData = localStorage.getItem("sat_user_data");
  if (userData) {
    try {
      const parsed = JSON.parse(userData);
      return parsed.id || null;
    } catch {
      return null;
    }
  }
  return null;
}

export function ExplanationChat({ question, selectedIndex }: ExplanationChatProps) {
  const [isOpen, setIsOpen] = useState(false);
  const [messages, setMessages] = useState<ChatMessage[]>([]);
  const [input, setInput] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [usage, setUsage] = useState<ChatUsage | null>(null);
  const [showUpgradeModal, setShowUpgradeModal] = useState(false);

  const selectedLetter = String.fromCharCode(65 + selectedIndex);
  const correctLetter = String.fromCharCode(65 + question.correctIndex);

  // Fetch usage on mount
  useEffect(() => {
    const fetchUsage = async () => {
      try {
        const userId = getUserId();
        const browserId = getBrowserId();
        const params = new URLSearchParams();
        if (userId) params.set("userId", userId);
        else params.set("browserId", browserId);
        
        const response = await fetch(`/api/chat/usage?${params}`);
        if (response.ok) {
          const data = await response.json();
          setUsage(data);
        }
      } catch (err) {
        console.error("Failed to fetch chat usage:", err);
      }
    };
    fetchUsage();
  }, []);

  const handleSendMessage = async () => {
    if (!input.trim() || isLoading) return;
    
    // Check if limit reached
    if (usage && !usage.isPremium && usage.remaining <= 0) {
      setShowUpgradeModal(true);
      return;
    }
    
    if (messages.length >= 10) {
      setError("You've reached the maximum number of questions for this problem.");
      return;
    }

    const userMessage = input.trim();
    setInput("");
    setError(null);

    const newMessages: ChatMessage[] = [
      ...messages,
      { role: "user", content: userMessage }
    ];
    setMessages(newMessages);
    setIsLoading(true);

    try {
      const questionContext = {
        questionText: question.questionText,
        passage: question.passageText || null,
        choices: question.options,
        studentAnswer: selectedLetter,
        correctAnswer: correctLetter,
        topic: question.topic,
        subtopic: question.subtopic || "",
        difficulty: question.difficulty,
        section: question.section,
        explanation: `Why: ${question.explainWhy}\n\nConcept: ${question.explainConcept}\n\nNext: ${question.explainNext}`
      };

      const userId = getUserId();
      const browserId = getBrowserId();

      const response = await fetch("/api/chat", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          messages: newMessages,
          questionContext,
          userId,
          browserId
        })
      });

      const data = await response.json();

      if (!response.ok) {
        if (data.error === "monthly_limit_reached") {
          setShowUpgradeModal(true);
          setMessages(messages); // Revert
          return;
        }
        throw new Error(data.error || "Failed to get response");
      }

      setMessages([
        ...newMessages,
        { role: "assistant", content: data.message }
      ]);
      
      // Update usage from response
      if (data.usage) {
        setUsage(data.usage);
      }
    } catch (err) {
      setError(err instanceof Error ? err.message : "Something went wrong. Please try again.");
      setMessages(messages);
    } finally {
      setIsLoading(false);
    }
  };

  const handleKeyPress = (e: React.KeyboardEvent) => {
    if (e.key === "Enter" && !e.shiftKey) {
      e.preventDefault();
      handleSendMessage();
    }
  };

  if (!isOpen) {
    return (
      <div className="pt-2">
        <Button
          variant="outline"
          size="sm"
          className="w-full border-blue-200 text-blue-700 hover:bg-blue-50 hover:text-blue-800 hover:border-blue-300"
          onClick={() => setIsOpen(true)}
        >
          <MessageCircle className="w-4 h-4 mr-2" />
          Still confused? Ask me
          {usage && !usage.isPremium && (
            <span className="ml-2 text-xs opacity-70">({usage.remaining} left)</span>
          )}
        </Button>
      </div>
    );
  }

  return (
    <>
      <div className="mt-4 border border-blue-200 rounded-lg bg-white shadow-sm">
        {/* Header */}
        <div className="flex items-center justify-between px-4 py-3 border-b border-blue-100 bg-gradient-to-r from-blue-50 to-white">
          <div className="flex items-center gap-2">
            <div className="p-1.5 rounded-lg bg-blue-100">
              <MessageCircle className="w-4 h-4 text-blue-600" />
            </div>
            <div>
              <h3 className="font-semibold text-sm text-slate-900">Ask Your Tutor</h3>
              <p className="text-xs text-slate-500">Get help understanding this question</p>
            </div>
          </div>
          <button
            onClick={() => setIsOpen(false)}
            className="p-1 hover:bg-blue-100 rounded-lg transition-colors"
            aria-label="Close chat"
          >
            <X className="w-4 h-4 text-slate-500" />
          </button>
        </div>

        {/* Messages */}
        <div className="h-64 sm:h-80 overflow-y-auto p-4 space-y-3 bg-slate-50/50">
          {messages.length === 0 && (
            <div className="text-center py-8">
              <div className="w-12 h-12 mx-auto mb-3 rounded-full bg-blue-100 flex items-center justify-center">
                <MessageCircle className="w-6 h-6 text-blue-600" />
              </div>
              <p className="text-sm text-slate-600 font-medium mb-1">What's confusing you?</p>
              <p className="text-xs text-slate-500">
                Ask me anything about this question and I'll help you understand.
              </p>
            </div>
          )}

          {messages.map((msg, idx) => (
            <div
              key={idx}
              className={cn(
                "flex",
                msg.role === "user" ? "justify-end" : "justify-start"
              )}
            >
              <div
                className={cn(
                  "max-w-[85%] sm:max-w-[75%] rounded-2xl px-4 py-2.5 text-sm",
                  msg.role === "user"
                    ? "bg-blue-600 text-white"
                    : "bg-white border border-slate-200 text-slate-800"
                )}
              >
                {msg.role === "assistant" ? (
                  <ChatMarkdown content={msg.content} />
                ) : (
                  msg.content
                )}
              </div>
            </div>
          ))}

          {isLoading && (
            <div className="flex justify-start">
              <div className="bg-white border border-slate-200 rounded-2xl px-4 py-2.5 flex items-center gap-2">
                <Loader2 className="w-4 h-4 animate-spin text-blue-600" />
                <span className="text-sm text-slate-600">Thinking...</span>
              </div>
            </div>
          )}

          {error && (
            <div className="bg-red-50 border border-red-200 rounded-lg p-3">
              <p className="text-sm text-red-800">{error}</p>
            </div>
          )}
        </div>

        {/* Input */}
        <div className="p-3 border-t border-slate-200 bg-white">
          {usage && !usage.isPremium && usage.remaining <= 0 ? (
            <button
              onClick={() => setShowUpgradeModal(true)}
              className="w-full py-3 px-4 bg-gradient-to-r from-amber-500 to-orange-500 hover:from-amber-600 hover:to-orange-600 text-white rounded-lg font-medium flex items-center justify-center gap-2 transition-all"
            >
              <Crown className="w-4 h-4" />
              Upgrade to Premium for Unlimited Help
            </button>
          ) : (
            <>
              <div className="flex gap-2">
                <input
                  type="text"
                  value={input}
                  onChange={(e) => setInput(e.target.value)}
                  onKeyPress={handleKeyPress}
                  placeholder="Ask a question..."
                  disabled={isLoading}
                  className="flex-1 px-3 py-2 text-sm border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent disabled:bg-slate-100 disabled:text-slate-500"
                />
                <Button
                  onClick={handleSendMessage}
                  disabled={!input.trim() || isLoading}
                  size="sm"
                  className="bg-blue-600 hover:bg-blue-700 disabled:bg-slate-300 disabled:text-slate-500"
                >
                  {isLoading ? (
                    <Loader2 className="w-4 h-4 animate-spin" />
                  ) : (
                    <Send className="w-4 h-4" />
                  )}
                </Button>
              </div>
              <div className="flex items-center justify-between mt-2">
                <p className="text-xs text-slate-500">
                  {messages.filter(m => m.role === "user").length} / 5 questions this problem
                </p>
                {usage && !usage.isPremium && (
                  <p className="text-xs text-slate-500">
                    {usage.remaining} / {usage.limit} monthly chats left
                  </p>
                )}
                {usage?.isPremium && (
                  <p className="text-xs text-amber-600 flex items-center gap-1">
                    <Crown className="w-3 h-3" /> Premium • Unlimited
                  </p>
                )}
              </div>
            </>
          )}
        </div>
      </div>

      {/* Premium Upgrade Modal */}
      {showUpgradeModal && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-2xl max-w-md w-full shadow-2xl overflow-hidden">
            {/* Header */}
            <div className="bg-gradient-to-br from-amber-400 via-orange-500 to-rose-500 p-6 text-white text-center">
              <div className="w-16 h-16 mx-auto mb-4 bg-white/20 backdrop-blur rounded-full flex items-center justify-center">
                <Crown className="w-8 h-8" />
              </div>
              <h2 className="text-2xl font-bold mb-2">Upgrade to Premium</h2>
              <p className="text-white/90 text-sm">
                Get unlimited tutoring and personalized guidance
              </p>
            </div>
            
            {/* Features */}
            <div className="p-6 space-y-4">
              <div className="flex items-start gap-3">
                <div className="p-2 rounded-lg bg-blue-100 text-blue-600">
                  <MessageCircle className="w-5 h-5" />
                </div>
                <div>
                  <h3 className="font-semibold text-slate-900">Unlimited AI Tutoring</h3>
                  <p className="text-sm text-slate-600">Ask as many questions as you need to master every concept</p>
                </div>
              </div>
              
              <div className="flex items-start gap-3">
                <div className="p-2 rounded-lg bg-purple-100 text-purple-600">
                  <Target className="w-5 h-5" />
                </div>
                <div>
                  <h3 className="font-semibold text-slate-900">Personalized Study Plan</h3>
                  <p className="text-sm text-slate-600">AI-generated plans that adapt to your strengths and weaknesses</p>
                </div>
              </div>
              
              <div className="flex items-start gap-3">
                <div className="p-2 rounded-lg bg-green-100 text-green-600">
                  <TrendingUp className="w-5 h-5" />
                </div>
                <div>
                  <h3 className="font-semibold text-slate-900">Detailed Progress Analytics</h3>
                  <p className="text-sm text-slate-600">Track your improvement with in-depth performance insights</p>
                </div>
              </div>
              
              <div className="flex items-start gap-3">
                <div className="p-2 rounded-lg bg-amber-100 text-amber-600">
                  <Zap className="w-5 h-5" />
                </div>
                <div>
                  <h3 className="font-semibold text-slate-900">Priority Support</h3>
                  <p className="text-sm text-slate-600">Get faster responses and dedicated help when you need it</p>
                </div>
              </div>

              <div className="pt-4 border-t border-slate-100">
                <p className="text-center text-slate-600 text-sm mb-4">
                  You've used <span className="font-semibold">{usage?.used || 0}</span> of your <span className="font-semibold">{usage?.limit || 30}</span> free monthly chats
                </p>
                
                <Button
                  className="w-full bg-gradient-to-r from-amber-500 to-orange-500 hover:from-amber-600 hover:to-orange-600 text-white py-6 text-lg font-semibold"
                  onClick={() => {
                    // Redirect to Stripe payment link
                    const userId = getUserId() || "";
                    const paymentLink = "https://buy.stripe.com/9B6dRb3XA0yCe5G9WAd3i03";
                    window.location.href = `${paymentLink}?client_reference_id=${userId}`;
                  }}
                >
                  <Sparkles className="w-5 h-5 mr-2" />
                  Upgrade for $5/month
                </Button>
                
                <button
                  onClick={() => setShowUpgradeModal(false)}
                  className="w-full mt-3 py-2 text-slate-500 hover:text-slate-700 text-sm font-medium transition-colors"
                >
                  Maybe later
                </button>
              </div>
            </div>
          </div>
        </div>
      )}
    </>
  );
}
