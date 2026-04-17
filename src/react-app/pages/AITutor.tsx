import { useState, useRef, useEffect, useCallback } from "react";
import { AppLayout } from "@/react-app/components/layout/AppLayout";
import { topicDisplayNames } from "@/data/questions";
import { cn } from "@/react-app/lib/utils";
import { Send, Bot, User, Sparkles, Lock, BookOpen, Target, TrendingUp, AlertCircle, ChevronDown, X } from "lucide-react";
import { ChatMarkdown } from "@/react-app/components/ui/ChatMarkdown";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { Link } from "react-router";

interface Message {
  id: string;
  role: "user" | "assistant";
  content: string;
  timestamp: Date;
}

interface TutorUsage {
  used: number;
  limit: number;
  remaining: number;
  isPremium: boolean;
  unlimited: boolean;
}

interface TopicProgressEntry {
  questionsAttempted: number;
  questionsCorrect: number;
}

interface SessionEntry {
  topics?: string[];
  date?: string;
  questionsAttempted?: number;
  questionsCorrect?: number;
}

interface StudentContext {
  recentTopics: string[];
  weakAreas: string[];
  recentAccuracy: number;
  questionsToday: number;
  currentStreak: number;
}

const SUGGESTED_QUESTIONS = [
  "How do I approach word problems?",
  "Explain quadratic equations",
  "Time management tips",
  "Eliminate wrong answers",
];

function getBrowserId(): string {
  let id = localStorage.getItem("sat_prep_browser_id");
  if (!id) {
    id = crypto.randomUUID();
    localStorage.setItem("sat_prep_browser_id", id);
  }
  return id;
}

export default function AITutor() {
  const { user } = useAuth();
  const userId = user?.id || null;
  const browserId = getBrowserId();

  const [messages, setMessages] = useState<Message[]>([
    {
      id: "welcome",
      role: "assistant",
      content: "Hi! I'm your SAT tutor. I can help explain concepts, work through practice problems, or answer questions about test strategy. What would you like to work on today?",
      timestamp: new Date(),
    },
  ]);
  const [input, setInput] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  const [usage, setUsage] = useState<TutorUsage | null>(null);
  const [context, setContext] = useState<StudentContext>({
    recentTopics: [],
    weakAreas: [],
    recentAccuracy: 0,
    questionsToday: 0,
    currentStreak: 0,
  });
  const [error, setError] = useState<string | null>(null);
  const [showMobileContext, setShowMobileContext] = useState(false);
  const messagesEndRef = useRef<HTMLDivElement>(null);
  const inputRef = useRef<HTMLTextAreaElement>(null);

  const isAtLimit = usage && !usage.unlimited && usage.remaining <= 0;

  // Fetch usage status and context on mount
  useEffect(() => {
    const fetchUsageAndContext = async () => {
      try {
        const params = new URLSearchParams();
        params.set("browserId", browserId);

        const usageRes = await fetch(`/api/tutor/usage?${params}`, { credentials: "include" });
        if (usageRes.ok) {
          const data = await usageRes.json();
          setUsage(data);
        }

        if (userId) {
          const progressRes = await fetch("/api/user/progress", { credentials: "include" });
          if (progressRes.ok) {
            const progressData = await progressRes.json();
            if (progressData.success && progressData.data) {
              const { topicProgress, currentStreak, sessions } = progressData.data;
              
              const weakAreas = Object.entries(topicProgress)
                .filter(([, data]: [string, TopicProgressEntry]) => 
                  data.questionsAttempted >= 3 && 
                  (data.questionsCorrect / data.questionsAttempted) < 0.7
                )
                .map(([topic]) => topic);
              
              const recentTopics: string[] = [...new Set<string>(
                sessions.slice(0, 5).flatMap((s: SessionEntry) => s.topics || [])
              )].slice(0, 3);
              
              const today = new Date().toISOString().split('T')[0];
              const todaySessions = sessions.filter((s: SessionEntry) => 
                s.date && s.date.startsWith(today)
              );
              const questionsToday = todaySessions.reduce((sum: number, s: SessionEntry) => 
                sum + (s.questionsAttempted || 0), 0
              );
              const correctToday = todaySessions.reduce((sum: number, s: SessionEntry) => 
                sum + (s.questionsCorrect || 0), 0
              );
              
              setContext({
                recentTopics,
                weakAreas,
                recentAccuracy: questionsToday > 0 ? Math.round((correctToday / questionsToday) * 100) : 0,
                questionsToday,
                currentStreak,
              });
            }
          }
        } else {
          const progressRes = await fetch(`/api/progress/${browserId}`);
          if (progressRes.ok) {
            const progressData = await progressRes.json();
            if (progressData.success && progressData.data) {
              const { topicProgress, currentStreak, sessions } = progressData.data;
              
              const weakAreas = Object.entries(topicProgress)
                .filter(([, data]: [string, TopicProgressEntry]) => 
                  data.questionsAttempted >= 3 && 
                  (data.questionsCorrect / data.questionsAttempted) < 0.7
                )
                .map(([topic]) => topic);
              
              const recentTopics: string[] = [...new Set<string>(
                sessions.slice(0, 5).flatMap((s: SessionEntry) => s.topics || [])
              )].slice(0, 3);
              
              setContext({
                recentTopics,
                weakAreas,
                recentAccuracy: 0,
                questionsToday: 0,
                currentStreak,
              });
            }
          }
        }
      } catch (err) {
        console.error("Error fetching tutor data:", err);
      }
    };

    fetchUsageAndContext();
  }, [userId, browserId]);

  useEffect(() => {
    messagesEndRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages]);

  const handleSend = useCallback(async () => {
    if (!input.trim() || isLoading || isAtLimit) return;

    const userMessage: Message = {
      id: Date.now().toString(),
      role: "user",
      content: input.trim(),
      timestamp: new Date(),
    };

    setMessages(prev => [...prev, userMessage]);
    setInput("");
    setIsLoading(true);
    setError(null);

    try {
      const response = await fetch("/api/tutor/chat", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({
          messages: [...messages, userMessage].filter(m => m.id !== "welcome").map(m => ({
            role: m.role,
            content: m.content,
          })),
          context: {
            recentTopics: context.recentTopics.map(t => topicDisplayNames[t] || t),
            weakAreas: context.weakAreas.map(t => topicDisplayNames[t] || t),
            recentAccuracy: context.recentAccuracy,
            currentStreak: context.currentStreak,
          },
          browserId,
        }),
      });

      const data = await response.json();

      if (!response.ok) {
        if (data.error === "daily_limit_reached") {
          setUsage(prev => prev ? { ...prev, remaining: 0 } : null);
          setError("You've reached your daily message limit. Upgrade to Pro for unlimited tutoring!");
        } else if (response.status === 429) {
          setUsage(prev => prev ? { ...prev, remaining: 0 } : null);
          setError(data.message || "You've reached your message limit. Upgrade to Pro for unlimited tutoring!");
        } else {
          setError(data.message || "Failed to get a response. Please try again.");
        }
        return;
      }

      const assistantMessage: Message = {
        id: (Date.now() + 1).toString(),
        role: "assistant",
        content: data.message,
        timestamp: new Date(),
      };
      
      setMessages(prev => [...prev, assistantMessage]);
      
      if (data.usage) {
        setUsage(data.usage);
      }
    } catch (err) {
      console.error("Chat error:", err);
      setError("Something went wrong. Please try again.");
    } finally {
      setIsLoading(false);
    }
  }, [input, isLoading, isAtLimit, messages, context, userId, browserId]);

  const handleKeyDown = (e: React.KeyboardEvent) => {
    if (e.key === "Enter" && !e.shiftKey) {
      e.preventDefault();
      handleSend();
    }
  };

  const handleSuggestion = (question: string) => {
    setInput(question);
    inputRef.current?.focus();
  };

  const hasContextData = context.recentTopics.length > 0 || context.weakAreas.length > 0 || context.currentStreak > 0;

  return (
    <AppLayout>
      <div className="h-[calc(100vh-4rem)] flex relative">
        {/* Chat Area */}
        <div className="flex-1 flex flex-col min-w-0">
          {/* Mobile Context Toggle */}
          {hasContextData && (
            <button
              onClick={() => setShowMobileContext(true)}
              className="lg:hidden flex items-center justify-between px-4 py-2 bg-tz-off-white border-b border-tz-gray-200"
            >
              <span className="text-sm text-tz-gray-600">View your learning context</span>
              <ChevronDown className="w-4 h-4 text-tz-gray-400" />
            </button>
          )}

          {/* Messages */}
          <div className="flex-1 overflow-y-auto p-4 lg:p-6 space-y-4">
            {messages.map((message) => (
              <div
                key={message.id}
                className={cn(
                  "flex gap-2 sm:gap-3 max-w-3xl",
                  message.role === "user" ? "ml-auto flex-row-reverse" : ""
                )}
              >
                <div className={cn(
                  "w-7 h-7 sm:w-8 sm:h-8 rounded-full flex items-center justify-center flex-shrink-0",
                  message.role === "assistant" ? "bg-tz-blue text-white" : "bg-tz-gray-200 text-tz-gray-600"
                )}>
                  {message.role === "assistant" ? <Bot className="w-3.5 h-3.5 sm:w-4 sm:h-4" /> : <User className="w-3.5 h-3.5 sm:w-4 sm:h-4" />}
                </div>
                <div className={cn(
                  "rounded-2xl px-3 py-2 sm:px-4 sm:py-3 max-w-[85%] sm:max-w-[80%]",
                  message.role === "assistant" 
                    ? "bg-white border border-tz-gray-200 text-tz-navy" 
                    : "bg-tz-blue text-white"
                )}>
                  {message.role === "assistant" ? (
                    <div className="text-sm leading-relaxed">
                      <ChatMarkdown content={message.content} />
                    </div>
                  ) : (
                    <p className="text-sm whitespace-pre-wrap leading-relaxed">{message.content}</p>
                  )}
                </div>
              </div>
            ))}
            
            {isLoading && (
              <div className="flex gap-2 sm:gap-3 max-w-3xl">
                <div className="w-7 h-7 sm:w-8 sm:h-8 rounded-full bg-tz-blue text-white flex items-center justify-center flex-shrink-0">
                  <Bot className="w-3.5 h-3.5 sm:w-4 sm:h-4" />
                </div>
                <div className="bg-white border border-tz-gray-200 rounded-2xl px-3 py-2 sm:px-4 sm:py-3">
                  <div className="flex gap-1">
                    <span className="w-2 h-2 bg-tz-gray-400 rounded-full animate-bounce" style={{ animationDelay: "0ms" }} />
                    <span className="w-2 h-2 bg-tz-gray-400 rounded-full animate-bounce" style={{ animationDelay: "150ms" }} />
                    <span className="w-2 h-2 bg-tz-gray-400 rounded-full animate-bounce" style={{ animationDelay: "300ms" }} />
                  </div>
                </div>
              </div>
            )}

            {error && (
              <div className="flex gap-2 sm:gap-3 max-w-3xl">
                <div className="w-7 h-7 sm:w-8 sm:h-8 rounded-full bg-red-100 text-red-600 flex items-center justify-center flex-shrink-0">
                  <AlertCircle className="w-3.5 h-3.5 sm:w-4 sm:h-4" />
                </div>
                <div className="bg-red-50 border border-red-200 rounded-2xl px-3 py-2 sm:px-4 sm:py-3">
                  <p className="text-sm text-red-700">{error}</p>
                </div>
              </div>
            )}
            
            <div ref={messagesEndRef} />
          </div>

          {/* Suggestions */}
          {messages.length === 1 && (
            <div className="px-4 lg:px-6 pb-3 sm:pb-4">
              <p className="text-xs sm:text-small text-tz-gray-400 mb-2">Try asking:</p>
              <div className="flex flex-wrap gap-2">
                {SUGGESTED_QUESTIONS.map((q, i) => (
                  <button
                    key={i}
                    onClick={() => handleSuggestion(q)}
                    className="px-2.5 py-1 sm:px-3 sm:py-1.5 bg-white border border-tz-gray-200 text-tz-gray-600 rounded-full text-xs sm:text-sm hover:bg-tz-off-white hover:border-tz-gray-300 transition-colors"
                  >
                    {q}
                  </button>
                ))}
              </div>
            </div>
          )}

          {/* Input Area */}
          <div className="border-t border-tz-gray-200 bg-white p-3 sm:p-4 lg:p-6">
            {/* Message Counter */}
            {usage && !usage.unlimited && (
              <div className="flex items-center justify-between mb-2 sm:mb-3">
                <span className={cn(
                  "text-xs sm:text-small",
                  usage.remaining <= 1 ? "text-tz-orange" : "text-tz-gray-400"
                )}>
                  {usage.remaining} left today
                </span>
                <Link 
                  to="/pricing" 
                  className="flex items-center gap-1 text-xs sm:text-small text-tz-orange hover:underline"
                >
                  <Sparkles className="w-3.5 h-3.5 sm:w-4 sm:h-4" />
                  <span className="hidden sm:inline">Upgrade for unlimited</span>
                  <span className="sm:hidden">Upgrade</span>
                </Link>
              </div>
            )}

            {isAtLimit ? (
              <div className="bg-orange-50 border border-orange-200 rounded-lg p-3 sm:p-4 text-center">
                <Lock className="w-5 h-5 sm:w-6 sm:h-6 text-tz-orange mx-auto mb-2" />
                <p className="text-sm sm:text-body-strong text-tz-navy mb-1">Daily limit reached</p>
                <p className="text-xs sm:text-small text-tz-gray-600 mb-3">
                  Upgrade to Pro for unlimited access
                </p>
                <Link 
                  to="/pricing" 
                  className="inline-block px-4 py-2 bg-tz-orange text-white rounded-lg text-sm font-medium hover:bg-orange-600 transition-colors"
                >
                  Unlock Pro
                </Link>
              </div>
            ) : (
              <div className="flex gap-2 sm:gap-3">
                <textarea
                  ref={inputRef}
                  value={input}
                  onChange={(e) => setInput(e.target.value)}
                  onKeyDown={handleKeyDown}
                  placeholder="Ask about any SAT topic..."
                  className="flex-1 resize-none rounded-lg border border-tz-gray-200 px-3 py-2.5 sm:px-4 sm:py-3 text-sm focus:outline-none focus:border-tz-blue focus:ring-1 focus:ring-tz-blue"
                  rows={1}
                  disabled={isLoading}
                />
                <button
                  onClick={handleSend}
                  disabled={!input.trim() || isLoading}
                  className={cn(
                    "px-3 sm:px-4 rounded-lg transition-all flex-shrink-0",
                    input.trim() && !isLoading
                      ? "bg-tz-blue text-white hover:bg-blue-600"
                      : "bg-tz-gray-200 text-tz-gray-400 cursor-not-allowed"
                  )}
                >
                  <Send className="w-4 h-4 sm:w-5 sm:h-5" />
                </button>
              </div>
            )}
          </div>
        </div>

        {/* Context Panel - Desktop */}
        <div className="hidden lg:block w-[30%] max-w-xs border-l border-tz-gray-200 bg-tz-off-white p-6 overflow-y-auto">
          <ContextContent context={context} />
        </div>

        {/* Context Panel - Mobile Drawer */}
        {showMobileContext && (
          <div className="lg:hidden fixed inset-0 z-50">
            <div 
              className="absolute inset-0 bg-black/50" 
              onClick={() => setShowMobileContext(false)} 
            />
            <div className="absolute bottom-0 left-0 right-0 bg-tz-off-white rounded-t-2xl p-4 pb-8 max-h-[70vh] overflow-y-auto animate-in slide-in-from-bottom duration-300">
              <div className="flex items-center justify-between mb-4">
                <h2 className="text-lg font-semibold text-tz-navy">Your Context</h2>
                <button 
                  onClick={() => setShowMobileContext(false)}
                  className="p-2 hover:bg-tz-gray-200 rounded-full transition-colors"
                >
                  <X className="w-5 h-5 text-tz-gray-600" />
                </button>
              </div>
              <ContextContent context={context} />
            </div>
          </div>
        )}
      </div>
    </AppLayout>
  );
}

function ContextContent({ context }: { context: StudentContext }) {
  return (
    <>
      <h2 className="text-h3 text-tz-navy mb-6 hidden lg:block">Your Context</h2>

      {/* Recent Topics */}
      {context.recentTopics.length > 0 && (
        <div className="mb-6">
          <h3 className="text-label text-tz-gray-400 mb-3">RECENT TOPICS</h3>
          <div className="space-y-2">
            {context.recentTopics.map((topic) => (
              <div key={topic} className="flex items-center gap-2 p-2 bg-white rounded-lg">
                <BookOpen className="w-4 h-4 text-tz-blue" />
                <span className="text-small text-tz-navy">{topicDisplayNames[topic] || topic}</span>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Areas to Focus */}
      {context.weakAreas.length > 0 && (
        <div className="mb-6">
          <h3 className="text-label text-tz-gray-400 mb-3">NEEDS ATTENTION</h3>
          <div className="space-y-2">
            {context.weakAreas.map((topic) => (
              <div key={topic} className="flex items-center gap-2 p-2 bg-orange-50 rounded-lg border border-orange-100">
                <Target className="w-4 h-4 text-tz-orange" />
                <span className="text-small text-tz-navy">{topicDisplayNames[topic] || topic}</span>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Stats */}
      <div className="mb-6">
        <h3 className="text-label text-tz-gray-400 mb-3">TODAY'S STATS</h3>
        <div className="grid grid-cols-2 gap-3">
          <div className="bg-white rounded-lg p-3 text-center">
            <div className="text-h3 text-tz-navy">{context.questionsToday}</div>
            <div className="text-small text-tz-gray-400">Questions</div>
          </div>
          <div className="bg-white rounded-lg p-3 text-center">
            <div className="text-h3 text-tz-navy">{context.recentAccuracy > 0 ? `${context.recentAccuracy}%` : "—"}</div>
            <div className="text-small text-tz-gray-400">Accuracy</div>
          </div>
        </div>
      </div>

      {/* Streak */}
      {context.currentStreak > 0 && (
        <div className="bg-white rounded-lg p-4">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-full bg-green-100 flex items-center justify-center">
              <TrendingUp className="w-5 h-5 text-tz-green" />
            </div>
            <div>
              <div className="text-body-strong text-tz-navy">{context.currentStreak} day streak</div>
              <div className="text-small text-tz-gray-400">Keep it going!</div>
            </div>
          </div>
        </div>
      )}

      {/* Empty state */}
      {context.recentTopics.length === 0 && context.weakAreas.length === 0 && context.currentStreak === 0 && (
        <div className="text-center py-8">
          <BookOpen className="w-10 h-10 text-tz-gray-300 mx-auto mb-3" />
          <p className="text-small text-tz-gray-400">
            Practice some questions to see your stats here
          </p>
          <Link 
            to="/practice" 
            className="inline-block mt-3 text-small text-tz-blue hover:underline"
          >
            Start practicing
          </Link>
        </div>
      )}
    </>
  );
}
