import { useState, useEffect, useCallback, useRef } from "react";
import { useAuth } from "@/react-app/lib/AuthProvider";

export interface TopicProgress {
  topic: string;
  questionsAttempted: number;
  questionsCorrect: number;
  lastPracticed: string | null;
  currentLevel: "foundation" | "developing" | "proficient" | "advanced";
}

export interface SessionRecord {
  id: string;
  date: string;
  type: "diagnostic" | "practice";
  questionsAttempted: number;
  questionsCorrect: number;
  topics: string[];
  timeSpentSeconds: number;
}

export interface StudentProgress {
  topicProgress: Record<string, TopicProgress>;
  currentStreak: number;
  longestStreak: number;
  lastPracticeDate: string | null;
  estimatedMathScore: number;
  estimatedRWScore: number;
  sessions: SessionRecord[];
  diagnosticCompleted: boolean;
  diagnosticDate: string | null;
}

const DEFAULT_TOPICS: Record<string, TopicProgress> = {
  algebra: { topic: "algebra", questionsAttempted: 0, questionsCorrect: 0, lastPracticed: null, currentLevel: "foundation" },
  advanced_math: { topic: "advanced_math", questionsAttempted: 0, questionsCorrect: 0, lastPracticed: null, currentLevel: "foundation" },
  problem_solving: { topic: "problem_solving", questionsAttempted: 0, questionsCorrect: 0, lastPracticed: null, currentLevel: "foundation" },
  geometry: { topic: "geometry", questionsAttempted: 0, questionsCorrect: 0, lastPracticed: null, currentLevel: "foundation" },
  information_ideas: { topic: "information_ideas", questionsAttempted: 0, questionsCorrect: 0, lastPracticed: null, currentLevel: "foundation" },
  craft_structure: { topic: "craft_structure", questionsAttempted: 0, questionsCorrect: 0, lastPracticed: null, currentLevel: "foundation" },
  expression: { topic: "expression", questionsAttempted: 0, questionsCorrect: 0, lastPracticed: null, currentLevel: "foundation" },
  conventions: { topic: "conventions", questionsAttempted: 0, questionsCorrect: 0, lastPracticed: null, currentLevel: "foundation" },
};

const DEFAULT_PROGRESS: StudentProgress = {
  topicProgress: DEFAULT_TOPICS,
  currentStreak: 0,
  longestStreak: 0,
  lastPracticeDate: null,
  estimatedMathScore: 400,
  estimatedRWScore: 400,
  sessions: [],
  diagnosticCompleted: false,
  diagnosticDate: null
};

const STORAGE_KEY = "sat_prep_progress";
const BROWSER_ID_KEY = "sat_prep_browser_id";

function generateBrowserId(): string {
  return `browser_${Date.now()}_${Math.random().toString(36).substring(2, 15)}`;
}

function getBrowserId(): string {
  let browserId = localStorage.getItem(BROWSER_ID_KEY);
  if (!browserId) {
    browserId = generateBrowserId();
    localStorage.setItem(BROWSER_ID_KEY, browserId);
  }
  return browserId;
}

function calculateLevel(accuracy: number): TopicProgress["currentLevel"] {
  if (accuracy >= 0.85) return "advanced";
  if (accuracy >= 0.7) return "proficient";
  if (accuracy >= 0.5) return "developing";
  return "foundation";
}

function calculateScoreFromAccuracy(accuracy: number): number {
  return Math.round(200 + Math.min(1, Math.max(0, accuracy)) * 600);
}

export function useStudentProgress() {
  const { user, isPending: authPending } = useAuth();
  const [progress, setProgress] = useState<StudentProgress>(DEFAULT_PROGRESS);
  const [isLoaded, setIsLoaded] = useState(false);
  const [isSyncing, setIsSyncing] = useState(false);
  const browserId = useRef<string>("");

  // Determine if user is authenticated
  const isAuthenticated = !!user;

  // Load progress based on auth state
  useEffect(() => {
    if (authPending) return; // Wait for auth to settle
    
    browserId.current = getBrowserId();
    
    // First load from localStorage for instant UI
    try {
      const stored = localStorage.getItem(STORAGE_KEY);
      if (stored) {
        const parsed = JSON.parse(stored);
        setProgress({
          ...DEFAULT_PROGRESS,
          ...parsed,
          topicProgress: { ...DEFAULT_TOPICS, ...parsed.topicProgress }
        });
      }
    } catch (e) {
      console.error("Failed to load progress from localStorage:", e);
    }
    setIsLoaded(true);

    // Then fetch from server
    fetchProgressFromServer();
  }, [authPending, user]);

  // Fetch progress from server (authenticated or anonymous)
  const fetchProgressFromServer = useCallback(async () => {
    if (authPending) return;
    
    try {
      let response: Response;
      
      if (isAuthenticated) {
        // Use authenticated endpoint
        response = await fetch("/api/user/progress", {
          credentials: "include"
        });
      } else {
        // Use anonymous endpoint
        if (!browserId.current) return;
        response = await fetch(`/api/progress/${browserId.current}`);
      }
      
      if (response.ok) {
        const result = await response.json();
        if (result.success && result.data) {
          const serverProgress: StudentProgress = {
            topicProgress: { ...DEFAULT_TOPICS, ...result.data.topicProgress },
            currentStreak: result.data.currentStreak || 0,
            longestStreak: result.data.longestStreak || 0,
            lastPracticeDate: result.data.lastPracticeDate,
            estimatedMathScore: result.data.estimatedMathScore || 400,
            estimatedRWScore: result.data.estimatedRWScore || 400,
            sessions: result.data.sessions || [],
            diagnosticCompleted: result.data.diagnosticCompleted || false,
            diagnosticDate: result.data.diagnosticDate
          };
          
          setProgress(serverProgress);
          // Update localStorage with server data
          localStorage.setItem(STORAGE_KEY, JSON.stringify(serverProgress));
        }
      }
    } catch (e) {
      console.error("Failed to fetch progress from server:", e);
    }
  }, [authPending, isAuthenticated]);

  // Save to localStorage when progress changes
  useEffect(() => {
    if (isLoaded) {
      try {
        localStorage.setItem(STORAGE_KEY, JSON.stringify(progress));
      } catch (e) {
        console.error("Failed to save progress to localStorage:", e);
      }
    }
  }, [progress, isLoaded]);

  // Record a practice session - saves to both localStorage and server
  const recordSession = useCallback(async (
    type: "diagnostic" | "practice",
    attempts: Array<{
      topic: string;
      isCorrect: boolean;
      questionId?: number;
      selectedIndex?: number;
      timeSpentSec?: number;
      confidence?: string;
    }>,
    timeSpentSeconds: number
  ) => {
    const today = new Date().toISOString();
    const topics = [...new Set(attempts.map(a => a.topic))];

    // Create session record
    const session: SessionRecord = {
      id: `session_${Date.now()}`,
      date: today,
      type,
      questionsAttempted: attempts.length,
      questionsCorrect: attempts.filter(a => a.isCorrect).length,
      topics,
      timeSpentSeconds
    };

    // Update local state immediately
    const newTopicProgress = { ...progress.topicProgress };
    
    attempts.forEach(attempt => {
      const topic = newTopicProgress[attempt.topic];
      if (topic) {
        topic.questionsAttempted++;
        if (attempt.isCorrect) topic.questionsCorrect++;
        topic.lastPracticed = today;
        
        const accuracy = topic.questionsAttempted > 0 
          ? topic.questionsCorrect / topic.questionsAttempted 
          : 0;
        topic.currentLevel = calculateLevel(accuracy);
      }
    });

    // Calculate scores
    const mathTopics = ["algebra", "advanced_math", "problem_solving", "geometry"];
    const rwTopics = ["information_ideas", "craft_structure", "expression", "conventions"];

    const calcSectionScore = (topicKeys: string[]) => {
      let totalAttempted = 0;
      let totalCorrect = 0;
      topicKeys.forEach(key => {
        const t = newTopicProgress[key];
        if (t) {
          totalAttempted += t.questionsAttempted;
          totalCorrect += t.questionsCorrect;
        }
      });
      const accuracy = totalAttempted > 0 ? totalCorrect / totalAttempted : 0.5;
      return calculateScoreFromAccuracy(accuracy);
    };

    // Update streak
    const todayDate = new Date().toISOString().split('T')[0];
    const yesterday = new Date(Date.now() - 86400000).toISOString().split('T')[0];
    let newStreak = progress.currentStreak;
    
    if (progress.lastPracticeDate !== todayDate) {
      if (progress.lastPracticeDate === yesterday) {
        newStreak = progress.currentStreak + 1;
      } else {
        newStreak = 1;
      }
    }

    const updatedProgress: StudentProgress = {
      ...progress,
      topicProgress: newTopicProgress,
      sessions: [session, ...progress.sessions].slice(0, 50),
      estimatedMathScore: calcSectionScore(mathTopics),
      estimatedRWScore: calcSectionScore(rwTopics),
      diagnosticCompleted: type === "diagnostic" ? true : progress.diagnosticCompleted,
      diagnosticDate: type === "diagnostic" ? today : progress.diagnosticDate,
      currentStreak: newStreak,
      longestStreak: Math.max(newStreak, progress.longestStreak),
      lastPracticeDate: todayDate
    };

    setProgress(updatedProgress);

    // Sync to server in background
    setIsSyncing(true);
    try {
      if (isAuthenticated) {
        // Use authenticated endpoint
        await fetch("/api/user/sessions", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          credentials: "include",
          body: JSON.stringify({
            sessionType: type,
            attempts,
            timeSpentSeconds
          })
        });
        
        // If this is a diagnostic, also update the user profile
        if (type === "diagnostic") {
          await fetch("/api/user/diagnostic", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            credentials: "include",
            body: JSON.stringify({
              skills: updatedProgress.topicProgress,
              estimatedScore: updatedProgress.estimatedMathScore + updatedProgress.estimatedRWScore
            })
          });
        }
      } else {
        // Use anonymous endpoint
        await fetch("/api/anonymous/sessions", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            browserId: browserId.current,
            sessionType: type,
            attempts,
            timeSpentSeconds
          })
        });
        
        // If this is a diagnostic, also save diagnostic results
        if (type === "diagnostic") {
          await fetch("/api/anonymous/diagnostic", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              browserId: browserId.current,
              skills: updatedProgress.topicProgress,
              estimatedScore: updatedProgress.estimatedMathScore + updatedProgress.estimatedRWScore
            })
          });
        }
      }
    } catch (e) {
      console.error("Failed to sync session to server:", e);
    } finally {
      setIsSyncing(false);
    }
  }, [progress, isAuthenticated]);

  // Mark diagnostic as complete
  const markDiagnosticComplete = useCallback(async () => {
    const today = new Date().toISOString();
    
    setProgress(prev => ({
      ...prev,
      diagnosticCompleted: true,
      diagnosticDate: today
    }));

    // Sync to server
    try {
      if (isAuthenticated) {
        // Use authenticated endpoint
        await fetch("/api/user/diagnostic", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          credentials: "include",
          body: JSON.stringify({
            skills: progress.topicProgress,
            estimatedScore: progress.estimatedMathScore + progress.estimatedRWScore
          })
        });
      } else {
        // Use anonymous endpoint
        await fetch("/api/anonymous/diagnostic", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            browserId: browserId.current,
            skills: progress.topicProgress,
            estimatedScore: progress.estimatedMathScore + progress.estimatedRWScore
          })
        });
      }
    } catch (e) {
      console.error("Failed to sync diagnostic to server:", e);
    }
  }, [progress.topicProgress, progress.estimatedMathScore, progress.estimatedRWScore, isAuthenticated]);

  // Get overall stats
  const getOverallStats = useCallback(() => {
    const topics = Object.values(progress.topicProgress);
    const totalAttempted = topics.reduce((sum, t) => sum + t.questionsAttempted, 0);
    const totalCorrect = topics.reduce((sum, t) => sum + t.questionsCorrect, 0);
    const overallAccuracy = totalAttempted > 0 ? totalCorrect / totalAttempted : 0;
    
    return {
      totalAttempted,
      totalCorrect,
      overallAccuracy,
      totalSessions: progress.sessions.length,
      totalTimeMinutes: Math.round(
        progress.sessions.reduce((sum, s) => sum + s.timeSpentSeconds, 0) / 60
      )
    };
  }, [progress]);

  // Get weakest topics
  const getWeakestTopics = useCallback((count: number = 3) => {
    return Object.values(progress.topicProgress)
      .filter(t => t.questionsAttempted > 0)
      .sort((a, b) => {
        const aAccuracy = a.questionsCorrect / a.questionsAttempted;
        const bAccuracy = b.questionsCorrect / b.questionsAttempted;
        return aAccuracy - bAccuracy;
      })
      .slice(0, count);
  }, [progress.topicProgress]);

  // Reset all progress
  const resetProgress = useCallback(async () => {
    setProgress(DEFAULT_PROGRESS);
    localStorage.removeItem(STORAGE_KEY);

    // Reset on server (only for anonymous users)
    if (!isAuthenticated) {
      try {
        await fetch(`/api/progress/${browserId.current}`, {
          method: "DELETE"
        });
      } catch (e) {
        console.error("Failed to reset progress on server:", e);
      }
    }
  }, [isAuthenticated]);

  return {
    progress,
    isLoaded: isLoaded && !authPending,
    isSyncing,
    isAuthenticated,
    recordSession,
    markDiagnosticComplete,
    getOverallStats,
    getWeakestTopics,
    resetProgress,
    refreshFromServer: fetchProgressFromServer
  };
}
