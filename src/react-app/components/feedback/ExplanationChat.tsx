import { useEffect, useRef, useState } from "react";
import { MessageCircle, Send, Loader2, X, Sparkles } from "lucide-react";
import { ChatMarkdown } from "@/react-app/components/ui/ChatMarkdown";
import { Button } from "@/react-app/components/ui/button";
import { FeedbackThumbs } from "@/react-app/components/ui/FeedbackThumbs";
import type { Question } from "@/data/questions";
import { cn } from "@/react-app/lib/utils";

interface ExplanationChatProps {
  question: Question;
  selectedIndex: number;
  /** Pre-filled self-explanation. When present the reflection stage is
   * skipped and the chat opens directly. */
  initialSelfExplanation?: string;
}

interface ChatMessage {
  role: "user" | "assistant";
  content: string;
  // Present on the seeded Explainer reply so thumbs can attach to the row
  // in ai_agent_calls. Follow-up chat messages leave this undefined.
  agentCallId?: number | null;
}

type ChatStage = "reflect" | "chat";

// Get browser ID for anonymous users
function getBrowserId(): string {
  let browserId = localStorage.getItem("sat_prep_browser_id");
  if (!browserId) {
    browserId = crypto.randomUUID();
    localStorage.setItem("sat_prep_browser_id", browserId);
  }
  return browserId;
}

// Soft cap: 10 messages per problem. This is a UX ceiling (the chat is
// meant for one question at a time) — NOT a paywall. The backend ignores
// monthly/daily quotas now that everyone is treated as "pro".
const MAX_MESSAGES_PER_PROBLEM = 10;

export function ExplanationChat({
  question,
  selectedIndex,
  initialSelfExplanation,
}: ExplanationChatProps) {
  const [isOpen, setIsOpen] = useState(false);
  // Skip reflection if caller pre-filled a self-explanation.
  const [stage, setStage] = useState<ChatStage>(
    initialSelfExplanation && initialSelfExplanation.trim().length > 0 ? "chat" : "reflect"
  );
  const [messages, setMessages] = useState<ChatMessage[]>([]);
  const [input, setInput] = useState("");
  const [isLoading, setIsLoading] = useState(false);
  // True while we're reading SSE chunks for the most recent assistant reply.
  const [isStreaming, setIsStreaming] = useState(false);
  const [error, setError] = useState<string | null>(null);

  // Reflection-stage state
  const [reflection, setReflection] = useState(initialSelfExplanation ?? "");
  const [reflectionLoading, setReflectionLoading] = useState(false);
  const [reflectionError, setReflectionError] = useState<string | null>(null);

  const selectedLetter = String.fromCharCode(65 + selectedIndex);
  const correctLetter = String.fromCharCode(65 + question.correctIndex);

  const callExplainer = async (studentExplanation: string) => {
    setReflectionLoading(true);
    setReflectionError(null);
    try {
      const response = await fetch("/api/agents/explainer", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({
          questionId: question.questionId,
          stem: question.questionText,
          passage: question.passageText,
          options: question.options,
          correctAnswer: correctLetter,
          studentAnswer: selectedLetter,
          officialRationale: question.explainWhy,
          studentExplanation,
          topic: question.topic,
          skill: question.skill,
          difficulty: question.difficulty,
        }),
      });
      if (!response.ok) throw new Error("Explainer failed");
      const data = await response.json();
      const ex = data.explainer as {
        response: string;
        misconception_type: string;
        specific_fix: string;
        follow_up_practice: string;
      };
      // Seed the chat with the student's own explanation + the Explainer's
      // reply so the follow-up conversation has context for /api/chat.
      const agentCallId =
        typeof data.agentCallId === "number" ? (data.agentCallId as number) : null;
      const seeded: ChatMessage[] = [
        { role: "user", content: studentExplanation },
        {
          role: "assistant",
          content:
            `${ex.response}\n\n**Try this:** ${ex.specific_fix}\n\n` +
            `**Next step:** ${ex.follow_up_practice}`,
          agentCallId,
        },
      ];
      setMessages(seeded);
      setStage("chat");
    } catch (err) {
      console.error("Explainer call failed:", err);
      setReflectionError(
        err instanceof Error ? err.message : "Could not get a response. Try again."
      );
    } finally {
      setReflectionLoading(false);
    }
  };

  const handleSubmitReflection = () => {
    const trimmed = reflection.trim();
    if (!trimmed || reflectionLoading) return;
    callExplainer(trimmed);
  };

  const handleSkipReflection = () => {
    setReflectionError(null);
    setStage("chat");
  };

  const handleSendMessage = async () => {
    if (!input.trim() || isLoading) return;

    if (messages.length >= MAX_MESSAGES_PER_PROBLEM) {
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

      const browserId = getBrowserId();

      const response = await fetch("/api/chat", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        credentials: "include",
        body: JSON.stringify({
          messages: newMessages,
          questionContext,
          browserId,
          stream: true,
        })
      });

      if (!response.ok) {
        let message = "Failed to get response";
        try {
          const data = await response.json();
          if (data.error) message = data.error;
        } catch { /* non-JSON */ }
        throw new Error(message);
      }

      if (!response.body) {
        throw new Error("Streaming not supported");
      }

      // Seed an empty assistant message; append chunks as they arrive.
      setMessages([...newMessages, { role: "assistant", content: "" }]);
      setIsStreaming(true);

      const reader = response.body.getReader();
      const decoder = new TextDecoder();
      let assembled = "";
      while (true) {
        const { done, value } = await reader.read();
        if (done) break;
        const chunk = decoder.decode(value, { stream: true });
        if (!chunk) continue;
        assembled += chunk;
        const snapshot = assembled;
        setMessages(prev => {
          if (prev.length === 0) return prev;
          const last = prev[prev.length - 1];
          if (last.role !== "assistant") return prev;
          return [...prev.slice(0, -1), { ...last, content: snapshot }];
        });
      }
    } catch (err) {
      setError(err instanceof Error ? err.message : "Something went wrong. Please try again.");
      setMessages(messages);
    } finally {
      setIsLoading(false);
      setIsStreaming(false);
    }
  };

  const handleKeyDown = (e: React.KeyboardEvent) => {
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
        </Button>
      </div>
    );
  }

  if (stage === "reflect") {
    return (
      <ReflectStage
        reflection={reflection}
        setReflection={setReflection}
        loading={reflectionLoading}
        error={reflectionError}
        selectedLetter={selectedLetter}
        onSubmit={handleSubmitReflection}
        onSkip={handleSkipReflection}
        onClose={() => setIsOpen(false)}
      />
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

          {messages.map((msg, idx) => {
            const isLastAssistant =
              msg.role === "assistant" && idx === messages.length - 1;
            const showCaret = isLastAssistant && isStreaming;
            return (
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
                    <>
                      <ChatMarkdown content={msg.content} />
                      {showCaret && (
                        <span
                          aria-hidden="true"
                          className="inline-block w-1.5 h-4 ml-0.5 -mb-0.5 bg-blue-600 align-middle animate-pulse"
                        />
                      )}
                      {msg.agentCallId != null && !showCaret && (
                        <div className="mt-2 pt-2 border-t border-slate-100">
                          <FeedbackThumbs agentCallId={msg.agentCallId} />
                        </div>
                      )}
                    </>
                  ) : (
                    msg.content
                  )}
                </div>
              </div>
            );
          })}

          {isLoading && !isStreaming && (
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
          <div className="flex gap-2">
            <input
              type="text"
              value={input}
              onChange={(e) => setInput(e.target.value)}
              onKeyDown={handleKeyDown}
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
          <p className="text-xs text-slate-500 mt-2">
            {messages.filter((m) => m.role === "user").length} / {MAX_MESSAGES_PER_PROBLEM} questions this problem
          </p>
        </div>
      </div>
    </>
  );
}

// ─── Reflection stage ───────────────────────────────────────────────────
// Split out so the textarea keeps a stable ref, which we auto-focus on
// mount. Cmd/Ctrl+Enter submits without leaving the keyboard.

interface ReflectStageProps {
  reflection: string;
  setReflection: (v: string) => void;
  loading: boolean;
  error: string | null;
  selectedLetter: string;
  onSubmit: () => void;
  onSkip: () => void;
  onClose: () => void;
}

function ReflectStage({
  reflection,
  setReflection,
  loading,
  error,
  selectedLetter,
  onSubmit,
  onSkip,
  onClose,
}: ReflectStageProps) {
  const textareaRef = useRef<HTMLTextAreaElement>(null);
  useEffect(() => {
    textareaRef.current?.focus();
  }, []);

  const onKeyDown = (e: React.KeyboardEvent<HTMLTextAreaElement>) => {
    if ((e.metaKey || e.ctrlKey) && e.key === "Enter") {
      e.preventDefault();
      if (reflection.trim() && !loading) onSubmit();
    }
  };

  return (
    <div className="mt-4 border border-blue-200 rounded-lg bg-white shadow-sm">
      <div className="flex items-center justify-between px-4 py-3 border-b border-blue-100 bg-gradient-to-r from-blue-50 to-white">
        <div className="flex items-center gap-2">
          <div className="p-1.5 rounded-lg bg-blue-100">
            <Sparkles className="w-4 h-4 text-blue-600" />
          </div>
          <div>
            <h3 className="font-semibold text-sm text-slate-900">Tell me your thinking (optional)</h3>
            <p className="text-xs text-slate-500">Share it and I'll explain where it went sideways — or skip to jump straight into chat.</p>
          </div>
        </div>
        <button
          onClick={onClose}
          className="p-1 hover:bg-blue-100 rounded-lg transition-colors"
          aria-label="Close"
        >
          <X className="w-4 h-4 text-slate-500" />
        </button>
      </div>
      <div className="p-4 space-y-3">
        <textarea
          ref={textareaRef}
          value={reflection}
          onChange={(e) => setReflection(e.target.value)}
          onKeyDown={onKeyDown}
          placeholder={`Why ${selectedLetter}? (⌘/Ctrl+Enter to send)`}
          rows={2}
          disabled={loading}
          className="w-full px-3 py-2 text-sm border border-slate-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent disabled:bg-slate-100 resize-y"
        />
        {error && <p className="text-xs text-red-600">{error}</p>}
        <div className="flex flex-col-reverse sm:flex-row gap-2">
          <button
            type="button"
            onClick={onSkip}
            disabled={loading}
            className="flex-1 sm:flex-none sm:min-w-[140px] px-4 py-2.5 text-sm font-medium border border-slate-300 text-slate-700 hover:bg-slate-50 rounded-lg transition-colors disabled:opacity-60"
          >
            Skip — just open chat
          </button>
          <Button
            onClick={onSubmit}
            disabled={!reflection.trim() || loading}
            className="flex-1 bg-blue-600 hover:bg-blue-700 disabled:bg-slate-300 disabled:text-slate-500"
          >
            {loading ? (
              <>
                <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                Reading…
              </>
            ) : (
              <>
                <Sparkles className="w-4 h-4 mr-2" />
                Explain my thinking
              </>
            )}
          </Button>
        </div>
      </div>
    </div>
  );
}
