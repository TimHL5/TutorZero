import { useState, useRef, useEffect, useCallback } from "react";
import { AppLayout } from "@/react-app/components/layout/AppLayout";
import { topicDisplayNames } from "@/data/questions";
import { cn } from "@/react-app/lib/utils";
import { Send, Bot, User, BookOpen, Target, TrendingUp, AlertCircle, ChevronDown, X, ArrowRight } from "lucide-react";
import { ChatMarkdown } from "@/react-app/components/ui/ChatMarkdown";
import { FeedbackThumbs } from "@/react-app/components/ui/FeedbackThumbs";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { Link } from "react-router";

interface ToolCallState {
  id: string;
  name: string;
  status: "running" | "ok" | "error";
}

interface SuggestedAction {
  label: string;
  rationale: string;
  url: string;
}

interface Message {
  id: string;
  role: "user" | "assistant";
  content: string;
  timestamp: Date;
  // Tool invocations surfaced to the user so they can see the tutor is
  // fetching their real data (not guessing). Appended as events stream in.
  toolCalls?: ToolCallState[];
  // Proactive next-step buttons emitted by the `suggestPracticeSession` tool.
  // Appear below the message and deep-link into /practice.
  suggestedActions?: SuggestedAction[];
  // Set from the "done" SSE event — pins this turn to its ai_tutor_turns row
  // so thumbs feedback can attach.
  tutorTurnId?: number | null;
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

// Fallbacks used when a student has no progress yet. Covers the four flavors
// we want represented in the chip row: concept, strategy, mistake-hunt,
// work-a-problem.
const DEFAULT_SUGGESTIONS = [
  "Explain quadratic equations with a worked example",
  "How do I approach SAT word problems?",
  "What are the most common mistakes on SAT math?",
  "Walk me through a medium-difficulty algebra problem",
];

function buildSuggestions(
  context: StudentContext
): { items: string[]; personalized: boolean } {
  const items: string[] = [];
  const weak = context.weakAreas[0];
  const recent = context.recentTopics[0];

  if (weak) {
    const name = topicDisplayNames[weak] || weak;
    items.push(`Help me get better at ${name}`);
    items.push(`What are the common mistakes on ${name}?`);
    items.push(`Walk me through a ${name} practice problem`);
  } else if (recent) {
    const name = topicDisplayNames[recent] || recent;
    items.push(`Review ${name} with me`);
    items.push(`Walk me through a ${name} practice problem`);
  }

  // Always include a strategy-flavored prompt.
  items.push("How do I pace myself during the SAT?");

  // Fill from defaults to 4, de-duped.
  for (const d of DEFAULT_SUGGESTIONS) {
    if (items.length >= 4) break;
    if (!items.includes(d)) items.push(d);
  }

  const personalized = Boolean(weak || recent);
  return { items: items.slice(0, 4), personalized };
}

// Friendly labels for tool-call pills. Keep in sync with tutor tool names.
function toolLabel(name: string): string {
  switch (name) {
    case "getStudentProfile": return "Reading your profile";
    case "getRecentSessions": return "Checking recent sessions";
    case "getWeakAreas": return "Looking up weak areas";
    case "getRecentMistakes": return "Reviewing recent mistakes";
    case "getQuestionDetails": return "Pulling question details";
    case "getRecentExplainerMisconceptions": return "Checking misconception history";
    case "searchWeb": return "Searching the web";
    case "findSimilarQuestionsInBank": return "Finding practice questions";
    case "getStudyPlan": return "Reading your study plan";
    case "getDiagnosticResults": return "Checking your diagnosis";
    case "calculateScoreProjection": return "Projecting your score";
    case "suggestPracticeSession": return "Suggesting a session";
    default: return name;
  }
}

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
  // Id of the assistant message currently being streamed. While non-null, we
  // render a blinking caret after that message's content.
  const [streamingId, setStreamingId] = useState<string | null>(null);
  // One conversation id per mount — groups turns in ai_tutor_turns so we can
  // replay a conversation later. Regenerated on page refresh (intentional:
  // no cross-session persistence today).
  const [conversationId] = useState(() => crypto.randomUUID());
  const [context, setContext] = useState<StudentContext>({
    recentTopics: [],
    weakAreas: [],
    recentAccuracy: 0,
    questionsToday: 0,
    currentStreak: 0,
  });
  const [error, setError] = useState<string | null>(null);
  const [showMobileContext, setShowMobileContext] = useState(false);
  // While true, the suggestion chips render as skeleton shimmer so the user
  // doesn't see the default chips flash into personalized ones a beat later.
  const [contextLoading, setContextLoading] = useState(true);
  const messagesEndRef = useRef<HTMLDivElement>(null);
  const inputRef = useRef<HTMLTextAreaElement>(null);

  // Fetch student progress context on mount (no usage meter — paywall removed)
  useEffect(() => {
    const fetchUsageAndContext = async () => {
      try {
        if (userId) {
          const progressRes = await fetch("/api/user/progress", { credentials: "include" });
          if (progressRes.ok) {
            const progressData = await progressRes.json();
            if (progressData.success && progressData.data) {
              const { topicProgress, currentStreak, sessions } = progressData.data;
              
              const weakAreas = Object.entries(topicProgress as Record<string, TopicProgressEntry>)
                .filter(([, data]) =>
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
              
              const weakAreas = Object.entries(topicProgress as Record<string, TopicProgressEntry>)
                .filter(([, data]) =>
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
      } finally {
        setContextLoading(false);
      }
    };

    fetchUsageAndContext();
  }, [userId, browserId]);

  useEffect(() => {
    messagesEndRef.current?.scrollIntoView({ behavior: "smooth" });
  }, [messages]);

  const handleSend = useCallback(async () => {
    if (!input.trim() || isLoading) return;

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

    const assistantId = (Date.now() + 1).toString();

    try {
      const response = await fetch("/api/tutor/chat", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({
          conversationId,
          browserId,
          messages: [...messages, userMessage]
            .filter((m) => m.id !== "welcome")
            .map((m) => ({ role: m.role, content: m.content })),
        }),
      });

      if (!response.ok) {
        let msg = "Failed to get a response. Please try again.";
        try {
          const data = await response.json();
          if (data.error === "daily_limit_reached" || response.status === 429) {
            msg = "Unable to send message right now. Please try again in a moment.";
          } else if (data.message) {
            msg = data.message;
          }
        } catch { /* non-JSON error body */ }
        setError(msg);
        return;
      }

      if (!response.body) {
        setError("Streaming not supported. Please refresh and try again.");
        return;
      }

      // Seed an empty assistant message; append chunks as SSE frames arrive.
      setMessages((prev) => [
        ...prev,
        { id: assistantId, role: "assistant", content: "", timestamp: new Date(), toolCalls: [] },
      ]);
      setStreamingId(assistantId);

      const reader = response.body.getReader();
      const decoder = new TextDecoder();
      let buffer = "";

      const applyEvent = (event: unknown) => {
        if (typeof event !== "object" || event === null) return;
        const ev = event as { type?: unknown };
        if (ev.type === "delta") {
          const text = (event as { text?: unknown }).text;
          if (typeof text !== "string" || text.length === 0) return;
          setMessages((prev) =>
            prev.map((m) => (m.id === assistantId ? { ...m, content: m.content + text } : m))
          );
        } else if (ev.type === "tool_call") {
          const id = String((event as { id?: unknown }).id ?? "");
          const name = String((event as { name?: unknown }).name ?? "");
          if (!id || !name) return;
          setMessages((prev) =>
            prev.map((m) =>
              m.id === assistantId
                ? {
                    ...m,
                    toolCalls: [
                      ...(m.toolCalls ?? []),
                      { id, name, status: "running" as const },
                    ],
                  }
                : m
            )
          );
        } else if (ev.type === "tool_result") {
          const id = String((event as { id?: unknown }).id ?? "");
          const ok = Boolean((event as { ok?: unknown }).ok);
          setMessages((prev) =>
            prev.map((m) =>
              m.id === assistantId
                ? {
                    ...m,
                    toolCalls: (m.toolCalls ?? []).map((tc) =>
                      tc.id === id ? { ...tc, status: ok ? ("ok" as const) : ("error" as const) } : tc
                    ),
                  }
                : m
            )
          );
        } else if (ev.type === "suggested_action") {
          const label = String((event as { label?: unknown }).label ?? "");
          const rationale = String((event as { rationale?: unknown }).rationale ?? "");
          const url = String((event as { url?: unknown }).url ?? "");
          if (!label || !url) return;
          setMessages((prev) =>
            prev.map((m) =>
              m.id === assistantId
                ? {
                    ...m,
                    suggestedActions: [
                      ...(m.suggestedActions ?? []),
                      { label, rationale, url },
                    ],
                  }
                : m
            )
          );
        } else if (ev.type === "error") {
          const message = String((event as { message?: unknown }).message ?? "Tutor error");
          setError(message);
        } else if (ev.type === "done") {
          const turnId = (event as { turnId?: unknown }).turnId;
          const tutorTurnId = typeof turnId === "number" ? turnId : null;
          setMessages((prev) =>
            prev.map((m) => (m.id === assistantId ? { ...m, tutorTurnId } : m))
          );
        }
      };

      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        buffer += decoder.decode(value, { stream: true });

        // SSE frames are delimited by a blank line (\n\n). Parse and dispatch
        // each complete frame; keep the partial tail in the buffer.
        let sep: number;
        while ((sep = buffer.indexOf("\n\n")) !== -1) {
          const frame = buffer.slice(0, sep);
          buffer = buffer.slice(sep + 2);
          for (const line of frame.split("\n")) {
            const trimmed = line.trim();
            if (!trimmed.startsWith("data:")) continue;
            const payload = trimmed.slice(5).trim();
            if (!payload || payload === "[DONE]") continue;
            try {
              applyEvent(JSON.parse(payload));
            } catch {
              /* malformed chunk — skip */
            }
          }
        }
      }
    } catch (err) {
      console.error("Chat error:", err);
      setError("Something went wrong. Please try again.");
    } finally {
      setIsLoading(false);
      setStreamingId(null);
    }
  }, [input, isLoading, messages, browserId, conversationId]);

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
                      {message.toolCalls && message.toolCalls.length > 0 && (
                        <div className="flex flex-wrap gap-1.5 mb-2">
                          {message.toolCalls.map((tc) => (
                            <span
                              key={tc.id}
                              className={cn(
                                "inline-flex items-center gap-1 px-2 py-0.5 rounded-full text-xs",
                                tc.status === "running"
                                  ? "bg-tz-gray-100 text-tz-gray-600"
                                  : tc.status === "ok"
                                  ? "bg-emerald-50 text-emerald-700"
                                  : "bg-rose-50 text-rose-700"
                              )}
                            >
                              {tc.status === "running" ? (
                                <span className="w-1.5 h-1.5 bg-tz-gray-400 rounded-full animate-pulse" />
                              ) : tc.status === "ok" ? (
                                <span>✓</span>
                              ) : (
                                <span>!</span>
                              )}
                              <span>{toolLabel(tc.name)}</span>
                            </span>
                          ))}
                        </div>
                      )}
                      <ChatMarkdown content={message.content} />
                      {streamingId === message.id && (
                        <span
                          aria-hidden="true"
                          className="inline-block w-1.5 h-4 ml-0.5 -mb-0.5 bg-tz-blue align-middle animate-pulse"
                        />
                      )}
                      {message.suggestedActions && message.suggestedActions.length > 0 && (
                        <div className="mt-3 space-y-2">
                          {message.suggestedActions.map((sa, i) => (
                            <Link
                              key={i}
                              to={sa.url}
                              className="block p-3 bg-tz-blue/5 hover:bg-tz-blue/10 border border-tz-blue/20 rounded-lg transition-colors group"
                            >
                              <div className="flex items-center gap-2">
                                <ArrowRight className="w-4 h-4 text-tz-blue group-hover:translate-x-0.5 transition-transform" />
                                <span className="text-sm font-medium text-tz-navy">{sa.label}</span>
                              </div>
                              {sa.rationale && (
                                <p className="text-xs text-tz-gray-600 mt-1 ml-6">{sa.rationale}</p>
                              )}
                            </Link>
                          ))}
                        </div>
                      )}
                      {message.tutorTurnId != null && streamingId !== message.id && (
                        <div className="mt-2 pt-2 border-t border-tz-gray-100">
                          <FeedbackThumbs tutorTurnId={message.tutorTurnId} />
                        </div>
                      )}
                    </div>
                  ) : (
                    <p className="text-sm whitespace-pre-wrap leading-relaxed">{message.content}</p>
                  )}
                </div>
              </div>
            ))}
            
            {isLoading && !streamingId && (
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

          {/* Suggestions — skeleton while context is loading so the chips
              don't visibly flip from generic to personalized. */}
          {messages.length === 1 && (
            <div className="px-4 lg:px-6 pb-3 sm:pb-4">
              {contextLoading ? (
                <>
                  <div className="h-3 w-24 bg-tz-gray-100 rounded mb-2 animate-pulse" />
                  <div className="flex flex-wrap gap-2">
                    {[160, 200, 140, 180].map((w, i) => (
                      <div
                        key={i}
                        className="h-7 sm:h-8 bg-tz-gray-100 rounded-full animate-pulse"
                        style={{ width: w }}
                      />
                    ))}
                  </div>
                </>
              ) : (
                (() => {
                  const { items, personalized } = buildSuggestions(context);
                  return (
                    <>
                      <p className="text-xs sm:text-small text-tz-gray-400 mb-2">
                        {personalized ? "✨ Suggested for you" : "Try asking:"}
                      </p>
                      <div className="flex flex-wrap gap-2">
                        {items.map((q, i) => (
                          <button
                            key={i}
                            onClick={() => handleSuggestion(q)}
                            className="px-2.5 py-1 sm:px-3 sm:py-1.5 bg-white border border-tz-gray-200 text-tz-gray-600 rounded-full text-xs sm:text-sm hover:bg-tz-off-white hover:border-tz-gray-300 transition-colors"
                          >
                            {q}
                          </button>
                        ))}
                      </div>
                    </>
                  );
                })()
              )}
            </div>
          )}

          {/* Input Area */}
          <div className="border-t border-tz-gray-200 bg-white p-3 sm:p-4 lg:p-6">
            {/* Message counter / paywall UI removed */}
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
