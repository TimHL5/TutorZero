import { useState, useCallback, useEffect, useMemo } from "react";
import { AppLayout } from "@/react-app/components/layout/AppLayout";
import { topicDisplayNames } from "@/data/questions";
import { DOMAINS_IN_ORDER } from "@/react-app/lib/sat-taxonomy";
import { cn } from "@/react-app/lib/utils";
import {
  Calendar,
  ChevronLeft,
  ChevronRight,
  CheckCircle,
  Circle,
  Plus,
  X,
  Sparkles,
} from "lucide-react";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { useStudentProgress } from "@/react-app/hooks/useStudentProgress";

interface StudyBlock {
  id: string;
  topic: string;
  duration: number; // minutes
  completed: boolean;
}

interface DayPlan {
  date: string; // YYYY-MM-DD — stored as string so we can serialize to localStorage
  blocks: StudyBlock[];
}

const DEFAULT_TOPIC_ROTATION = [
  "algebra",
  "information_ideas",
  "advanced_math",
  "craft_structure",
  "geometry",
  "expression",
  "conventions",
];

const DURATION_OPTIONS = [15, 20, 25, 30, 45, 60];

function isoDate(d: Date): string {
  return d.toISOString().split("T")[0];
}

function blockId(dateIso: string): string {
  return `${dateIso}-${Date.now().toString(36)}-${Math.random().toString(36).slice(2, 6)}`;
}

function generateInitialWeekPlan(startDate: Date): DayPlan[] {
  const days: DayPlan[] = [];
  for (let i = 0; i < 7; i++) {
    const date = new Date(startDate);
    date.setDate(date.getDate() + i);
    const dateIso = isoDate(date);
    const numBlocks = (i % 2) + 2;
    const blocks: StudyBlock[] = [];
    for (let j = 0; j < numBlocks; j++) {
      blocks.push({
        id: blockId(dateIso) + `-${j}`,
        topic: DEFAULT_TOPIC_ROTATION[(i + j) % DEFAULT_TOPIC_ROTATION.length],
        duration: [20, 25, 30][j % 3],
        completed: false,
      });
    }
    days.push({ date: dateIso, blocks });
  }
  return days;
}

function weekStorageKey(userId: string | undefined, weekStartIso: string): string {
  return `studyPlan:${userId ?? "anon"}:${weekStartIso}`;
}

function loadWeekFromStorage(userId: string | undefined, weekStartIso: string): DayPlan[] | null {
  try {
    const raw = localStorage.getItem(weekStorageKey(userId, weekStartIso));
    if (!raw) return null;
    const parsed = JSON.parse(raw) as DayPlan[];
    if (!Array.isArray(parsed) || parsed.length !== 7) return null;
    return parsed;
  } catch {
    return null;
  }
}

function saveWeekToStorage(userId: string | undefined, weekStartIso: string, plan: DayPlan[]) {
  try {
    localStorage.setItem(weekStorageKey(userId, weekStartIso), JSON.stringify(plan));
  } catch {
    // localStorage full or unavailable — silently no-op
  }
}

export default function StudyPlan() {
  const { user } = useAuth();
  const { progress, getWeakestTopics } = useStudentProgress();
  const [weekOffset, setWeekOffset] = useState(0);
  const [weekStartIso, setWeekStartIso] = useState(() => isoDate(new Date()));
  const [weekPlan, setWeekPlan] = useState<DayPlan[]>(() => {
    const startDate = new Date();
    return loadWeekFromStorage(undefined, isoDate(startDate)) ?? generateInitialWeekPlan(startDate);
  });
  const [draggedBlock, setDraggedBlock] = useState<{ dayIndex: number; blockIndex: number } | null>(null);
  const [dragOverDay, setDragOverDay] = useState<number | null>(null);
  const [pickerDay, setPickerDay] = useState<number | null>(null);

  const profile = user?.profile;
  const userId = user?.id;
  const testDate = profile?.testDate ? new Date(profile.testDate) : null;
  const estimatedMath = profile?.estimatedMathScore ?? progress.estimatedMathScore;
  const estimatedRW = profile?.estimatedRWScore ?? progress.estimatedRWScore;
  const currentScore = estimatedMath + estimatedRW;
  const targetScore = profile?.targetScore || 1400;

  // Refresh week from storage when user/week changes (handles login transitions).
  useEffect(() => {
    const stored = loadWeekFromStorage(userId, weekStartIso);
    if (stored) setWeekPlan(stored);
  }, [userId, weekStartIso]);

  // Persist whenever the week plan changes.
  useEffect(() => {
    saveWeekToStorage(userId, weekStartIso, weekPlan);
  }, [userId, weekStartIso, weekPlan]);

  const today = new Date();
  const daysUntilTest = testDate
    ? Math.ceil((testDate.getTime() - today.getTime()) / (1000 * 60 * 60 * 24))
    : 60;

  const weekTotalMinutes = weekPlan.reduce(
    (sum, day) => sum + day.blocks.reduce((daySum, block) => daySum + block.duration, 0),
    0
  );
  const weekCompletedMinutes = weekPlan.reduce(
    (sum, day) =>
      sum + day.blocks.filter((b) => b.completed).reduce((daySum, block) => daySum + block.duration, 0),
    0
  );

  // Suggested topics: weakest topics from real practice data, or fall back to
  // the first three topics from the user's confidence ratings.
  const suggestedTopics = useMemo(() => {
    const weak = getWeakestTopics(5);
    if (weak.length > 0) {
      return weak.map((w) => ({
        slug: w.topic,
        label: topicDisplayNames[w.topic] || w.topic,
        accuracy: w.questionsAttempted > 0
          ? Math.round((w.questionsCorrect / w.questionsAttempted) * 100)
          : null,
        attempted: w.questionsAttempted,
        reason:
          w.questionsAttempted === 0
            ? "Not yet attempted"
            : `${Math.round((w.questionsCorrect / w.questionsAttempted) * 100)}% accuracy — needs work`,
      }));
    }
    // Cold start: suggest the first domain from each section.
    return [
      { slug: "algebra", label: "Algebra", accuracy: null, attempted: 0, reason: "Foundation for SAT Math" },
      { slug: "information_ideas", label: "Information and Ideas", accuracy: null, attempted: 0, reason: "Highest-weight Reading domain" },
      { slug: "expression", label: "Expression of Ideas", accuracy: null, attempted: 0, reason: "Common Writing topic" },
    ];
  }, [getWeakestTopics]);

  const formatDate = (dateIso: string) => {
    const d = new Date(dateIso + "T00:00:00");
    return d.toLocaleDateString("en-US", { weekday: "short", month: "short", day: "numeric" });
  };
  const isToday = (dateIso: string) => dateIso === isoDate(new Date());
  const todayDayIndex = useMemo(() => {
    const todayIso = isoDate(new Date());
    return weekPlan.findIndex((d) => d.date === todayIso);
  }, [weekPlan]);

  // Drag handlers
  const handleDragStart = useCallback((dayIndex: number, blockIndex: number) => {
    setDraggedBlock({ dayIndex, blockIndex });
  }, []);

  const handleDragOver = useCallback((e: React.DragEvent, dayIndex: number) => {
    e.preventDefault();
    setDragOverDay(dayIndex);
  }, []);

  const handleDragLeave = useCallback(() => {
    setDragOverDay(null);
  }, []);

  const handleDrop = useCallback(
    (targetDayIndex: number) => {
      if (!draggedBlock || draggedBlock.dayIndex === targetDayIndex) {
        setDraggedBlock(null);
        setDragOverDay(null);
        return;
      }
      setWeekPlan((prev) => {
        const newPlan = prev.map((day) => ({ ...day, blocks: [...day.blocks] }));
        const block = newPlan[draggedBlock.dayIndex].blocks[draggedBlock.blockIndex];
        newPlan[draggedBlock.dayIndex].blocks.splice(draggedBlock.blockIndex, 1);
        newPlan[targetDayIndex].blocks.push({
          ...block,
          id: blockId(newPlan[targetDayIndex].date),
          completed: false,
        });
        return newPlan;
      });
      setDraggedBlock(null);
      setDragOverDay(null);
    },
    [draggedBlock]
  );

  const handleDragEnd = useCallback(() => {
    setDraggedBlock(null);
    setDragOverDay(null);
  }, []);

  const toggleBlockCompletion = useCallback((dayIndex: number, blockIndex: number) => {
    setWeekPlan((prev) =>
      prev.map((day, dIdx) => {
        if (dIdx !== dayIndex) return day;
        return {
          ...day,
          blocks: day.blocks.map((block, bIdx) =>
            bIdx === blockIndex ? { ...block, completed: !block.completed } : block
          ),
        };
      })
    );
  }, []);

  const removeBlock = useCallback((dayIndex: number, blockIndex: number) => {
    setWeekPlan((prev) =>
      prev.map((day, dIdx) => {
        if (dIdx !== dayIndex) return day;
        return { ...day, blocks: day.blocks.filter((_, bIdx) => bIdx !== blockIndex) };
      })
    );
  }, []);

  const addBlock = useCallback(
    (dayIndex: number, topic: string, duration: number = 25) => {
      setWeekPlan((prev) =>
        prev.map((day, dIdx) => {
          if (dIdx !== dayIndex) return day;
          return {
            ...day,
            blocks: [
              ...day.blocks,
              { id: blockId(day.date), topic, duration, completed: false },
            ],
          };
        })
      );
      setPickerDay(null);
    },
    []
  );

  const addSuggestionToToday = useCallback(
    (topic: string) => {
      const idx = todayDayIndex >= 0 ? todayDayIndex : 0;
      addBlock(idx, topic, 25);
    },
    [todayDayIndex, addBlock]
  );

  const updateBlockDuration = useCallback(
    (dayIndex: number, blockIndex: number, duration: number) => {
      setWeekPlan((prev) =>
        prev.map((day, dIdx) => {
          if (dIdx !== dayIndex) return day;
          return {
            ...day,
            blocks: day.blocks.map((block, bIdx) =>
              bIdx === blockIndex ? { ...block, duration } : block
            ),
          };
        })
      );
    },
    []
  );

  // Navigate weeks. Loads the corresponding stored plan or generates a fresh
  // template if none exists for that week.
  const navigateWeek = useCallback(
    (direction: number) => {
      const newOffset = weekOffset + direction;
      const newStart = new Date();
      newStart.setDate(newStart.getDate() + newOffset * 7);
      const newStartIso = isoDate(newStart);
      setWeekOffset(newOffset);
      setWeekStartIso(newStartIso);
      const stored = loadWeekFromStorage(userId, newStartIso);
      setWeekPlan(stored ?? generateInitialWeekPlan(newStart));
    },
    [weekOffset, userId]
  );

  return (
    <AppLayout>
      <div className="max-w-6xl mx-auto px-4 lg:px-8 py-6 lg:py-8">
        {/* Header */}
        <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-4 mb-8">
          <div>
            <h1 className="text-h1 text-tz-navy mb-2">Your Study Plan</h1>
            <p className="text-body text-tz-gray-600">
              Drag tasks between days, click <Plus className="inline w-3.5 h-3.5" /> to add a topic, hover a task to remove it.
            </p>
          </div>
          <div className="bg-tz-navy text-white rounded-xl px-6 py-4">
            <div className="flex items-center gap-4">
              <Calendar className="w-6 h-6 text-tz-light-blue" />
              <div>
                <div className="text-h2 text-white">{daysUntilTest} days</div>
                <div className="text-small text-blue-200">until your SAT</div>
              </div>
            </div>
          </div>
        </div>

        {/* Score Progress */}
        <div className="bg-white rounded-xl border border-tz-gray-200 p-6 mb-6">
          <div className="flex items-center justify-between mb-4">
            <h2 className="text-h3 text-tz-navy">Score Progress</h2>
            <div className="flex items-center gap-6 text-small">
              <span className="text-tz-gray-400">Current: <strong className="text-tz-navy">{currentScore}</strong></span>
              <span className="text-tz-gray-400">Target: <strong className="text-tz-green">{targetScore}</strong></span>
            </div>
          </div>
          <div className="h-3 bg-tz-gray-100 rounded-full overflow-hidden">
            <div
              className="h-full bg-gradient-to-r from-tz-blue to-tz-light-blue rounded-full transition-all duration-500"
              style={{ width: `${Math.max(0, Math.min(100, ((currentScore - 400) / Math.max(1, targetScore - 400)) * 100))}%` }}
            />
          </div>
          <div className="flex justify-between mt-2 text-small text-tz-gray-400">
            <span>400</span>
            <span>{Math.max(0, Math.round(((currentScore - 400) / Math.max(1, targetScore - 400)) * 100))}% to goal</span>
            <span>{targetScore}</span>
          </div>
        </div>

        {/* Suggested for you */}
        <div className="bg-tz-blue/5 border border-tz-blue/20 rounded-xl p-5 mb-8">
          <div className="flex items-center gap-2 mb-3">
            <Sparkles className="w-5 h-5 text-tz-blue" />
            <h2 className="text-h3 text-tz-navy">Suggested for you</h2>
          </div>
          <p className="text-small text-tz-gray-600 mb-4">
            Based on {progress.sessions.length > 0 ? "your recent practice" : "your onboarding answers"}.
            Click any topic to add a 25-minute block to today.
          </p>
          <div className="flex flex-wrap gap-2">
            {suggestedTopics.map((s) => (
              <button
                key={s.slug}
                onClick={() => addSuggestionToToday(s.slug)}
                className="group flex items-center gap-2 bg-white border border-tz-blue/30 hover:border-tz-blue hover:bg-tz-blue/10 text-tz-navy text-small font-medium rounded-full pl-3 pr-2 py-1.5 transition-colors"
              >
                <span>{s.label}</span>
                <span className="text-xs text-tz-gray-400">·</span>
                <span className="text-xs text-tz-gray-500">{s.reason}</span>
                <span className="ml-1 inline-flex items-center justify-center w-5 h-5 rounded-full bg-tz-blue text-white group-hover:bg-tz-navy transition-colors">
                  <Plus className="w-3 h-3" />
                </span>
              </button>
            ))}
          </div>
        </div>

        {/* Week Navigation */}
        <div className="flex items-center justify-between mb-6">
          <button
            onClick={() => navigateWeek(-1)}
            className="p-2 rounded-lg hover:bg-tz-gray-100 transition-colors"
            aria-label="Previous week"
          >
            <ChevronLeft className="w-5 h-5 text-tz-gray-600" />
          </button>
          <div className="text-center">
            <h2 className="text-h3 text-tz-navy">
              {formatDate(weekPlan[0].date)} – {formatDate(weekPlan[6].date)}
            </h2>
            <div className="text-small text-tz-gray-400 mt-1">
              {weekCompletedMinutes}/{weekTotalMinutes} min completed this week
            </div>
          </div>
          <button
            onClick={() => navigateWeek(1)}
            className="p-2 rounded-lg hover:bg-tz-gray-100 transition-colors"
            aria-label="Next week"
          >
            <ChevronRight className="w-5 h-5 text-tz-gray-600" />
          </button>
        </div>

        {/* Weekly Agenda — vertical list, one day per row.
            Replaces the prior 7-column grid that crammed topic names into ~90px
            and forced single-letter truncation. Each day now has full-width
            rows for tasks so labels like "Information and Ideas" render in
            full. Drag-and-drop between days still works (the day row is the
            drop target). */}
        <div className="space-y-3">
          {weekPlan.map((day, dayIndex) => {
            const dayDate = new Date(day.date + "T00:00:00");
            const weekday = dayDate.toLocaleDateString("en-US", { weekday: "long" });
            const monthDay = dayDate.toLocaleDateString("en-US", { month: "short", day: "numeric" });
            const isCurrentDay = isToday(day.date);
            const dayMinutes = day.blocks.reduce((s, b) => s + b.duration, 0);
            const dayDoneMinutes = day.blocks
              .filter((b) => b.completed)
              .reduce((s, b) => s + b.duration, 0);
            const isDayDropTarget =
              dragOverDay === dayIndex && draggedBlock && draggedBlock.dayIndex !== dayIndex;
            return (
              <div
                key={dayIndex}
                onDragOver={(e) => handleDragOver(e, dayIndex)}
                onDragLeave={handleDragLeave}
                onDrop={() => handleDrop(dayIndex)}
                className={cn(
                  "bg-white rounded-xl border transition-all duration-200",
                  isCurrentDay ? "border-tz-blue ring-1 ring-tz-blue" : "border-tz-gray-200",
                  isDayDropTarget && "border-tz-blue bg-blue-50 ring-2 ring-tz-blue/30",
                  draggedBlock?.dayIndex === dayIndex && "opacity-90"
                )}
              >
                <div className="flex flex-col sm:flex-row">
                  {/* Day header — left rail on sm+, top strip on mobile */}
                  <div
                    className={cn(
                      "px-4 sm:px-5 py-3 sm:py-4 sm:w-44 sm:border-r border-b sm:border-b-0",
                      isCurrentDay ? "border-tz-blue/20" : "border-tz-gray-100",
                      "flex sm:flex-col sm:justify-between items-baseline sm:items-start gap-2"
                    )}
                  >
                    <div>
                      <div className="flex items-center gap-2">
                        <span
                          className={cn(
                            "text-h3",
                            isCurrentDay ? "text-tz-blue" : "text-tz-navy"
                          )}
                        >
                          {weekday}
                        </span>
                        {isCurrentDay && (
                          <span className="text-label uppercase tracking-wide bg-tz-blue text-white rounded-full px-2 py-0.5">
                            Today
                          </span>
                        )}
                      </div>
                      <div className="text-small text-tz-gray-500">{monthDay}</div>
                    </div>
                    <div className="text-small text-tz-gray-400 sm:mt-2">
                      {day.blocks.length === 0
                        ? "Rest day"
                        : `${dayDoneMinutes}/${dayMinutes} min`}
                    </div>
                  </div>

                  {/* Tasks column — full-width topic names */}
                  <div className="flex-1 p-3 sm:p-4 space-y-2">
                    {day.blocks.map((block, blockIndex) => (
                      <div
                        key={block.id}
                        draggable
                        onDragStart={() => handleDragStart(dayIndex, blockIndex)}
                        onDragEnd={handleDragEnd}
                        className={cn(
                          "group flex items-center gap-3 rounded-lg px-3 py-2.5 cursor-grab active:cursor-grabbing transition-all border",
                          block.completed
                            ? "bg-green-50 border-green-200"
                            : "bg-tz-off-white border-transparent hover:border-tz-gray-200 hover:shadow-sm",
                          draggedBlock?.dayIndex === dayIndex &&
                            draggedBlock?.blockIndex === blockIndex &&
                            "opacity-50 scale-[0.98]"
                        )}
                      >
                        <button
                          onClick={() => toggleBlockCompletion(dayIndex, blockIndex)}
                          className="flex-shrink-0 hover:scale-110 transition-transform"
                          aria-label={block.completed ? "Mark incomplete" : "Mark complete"}
                        >
                          {block.completed ? (
                            <CheckCircle className="w-5 h-5 text-tz-green" />
                          ) : (
                            <Circle className="w-5 h-5 text-tz-gray-300 hover:text-tz-blue" />
                          )}
                        </button>

                        <span
                          className={cn(
                            "flex-1 text-body font-medium leading-snug break-words min-w-0",
                            block.completed ? "text-green-700 line-through" : "text-tz-navy"
                          )}
                        >
                          {topicDisplayNames[block.topic] || block.topic}
                        </span>

                        <select
                          value={block.duration}
                          onChange={(e) =>
                            updateBlockDuration(dayIndex, blockIndex, Number(e.target.value))
                          }
                          onClick={(e) => e.stopPropagation()}
                          className="flex-shrink-0 text-small text-tz-gray-600 bg-white border border-tz-gray-200 rounded px-2 py-1 focus:outline-none focus:ring-1 focus:ring-tz-blue cursor-pointer"
                          aria-label="Duration"
                        >
                          {DURATION_OPTIONS.map((d) => (
                            <option key={d} value={d}>
                              {d} min
                            </option>
                          ))}
                        </select>

                        <button
                          onClick={(e) => {
                            e.stopPropagation();
                            removeBlock(dayIndex, blockIndex);
                          }}
                          className="flex-shrink-0 opacity-0 group-hover:opacity-100 focus:opacity-100 transition-opacity rounded-full w-7 h-7 flex items-center justify-center hover:bg-red-50"
                          aria-label="Remove task"
                        >
                          <X className="w-4 h-4 text-tz-gray-500 hover:text-red-500" />
                        </button>
                      </div>
                    ))}

                    {/* Drop zone hint */}
                    {isDayDropTarget && (
                      <div className="h-12 border-2 border-dashed border-tz-blue/50 rounded-lg flex items-center justify-center text-small text-tz-blue/70">
                        <Plus className="w-4 h-4 mr-1" /> Drop here
                      </div>
                    )}

                    {/* Empty state */}
                    {day.blocks.length === 0 && !isDayDropTarget && (
                      <div className="text-small text-tz-gray-400 italic px-1 py-2">
                        Nothing scheduled. Add a topic below or take a break.
                      </div>
                    )}

                    {/* Add picker / button */}
                    {pickerDay === dayIndex ? (
                      <div className="bg-white border border-tz-blue/30 rounded-lg p-3">
                        <div className="flex items-center justify-between mb-2">
                          <span className="text-label text-tz-gray-500 uppercase tracking-wide">
                            Pick a topic
                          </span>
                          <button
                            onClick={() => setPickerDay(null)}
                            className="text-tz-gray-400 hover:text-tz-gray-600"
                            aria-label="Close picker"
                          >
                            <X className="w-4 h-4" />
                          </button>
                        </div>
                        <div className="grid grid-cols-1 md:grid-cols-3 gap-3">
                          {(["math", "reading", "writing"] as const).map((section) => (
                            <div key={section}>
                              <div className="text-label text-tz-gray-400 mb-1.5 uppercase tracking-wide">
                                {section === "reading"
                                  ? "Reading"
                                  : section === "writing"
                                  ? "Writing"
                                  : "Math"}
                              </div>
                              <div className="space-y-0.5">
                                {DOMAINS_IN_ORDER.filter((d) => d.section === section).map((d) => (
                                  <button
                                    key={d.slug}
                                    onClick={() => addBlock(dayIndex, d.slug, 25)}
                                    className="w-full text-left px-2 py-1.5 rounded text-small text-tz-navy hover:bg-tz-blue/10 transition-colors"
                                  >
                                    {d.displayName}
                                  </button>
                                ))}
                              </div>
                            </div>
                          ))}
                        </div>
                      </div>
                    ) : (
                      <button
                        onClick={() => setPickerDay(dayIndex)}
                        className="w-full flex items-center justify-center gap-1.5 py-2 rounded-lg text-small text-tz-gray-500 hover:text-tz-blue hover:bg-tz-blue/5 border border-dashed border-tz-gray-200 hover:border-tz-blue/40 transition-colors"
                      >
                        <Plus className="w-4 h-4" />
                        Add a topic
                      </button>
                    )}
                  </div>
                </div>
              </div>
            );
          })}
        </div>

        {/* Legend */}
        <div className="mt-6 flex flex-wrap items-center justify-center gap-x-6 gap-y-2 text-small text-tz-gray-400">
          <div className="flex items-center gap-2">
            <Circle className="w-4 h-4" />
            <span>Click to mark complete</span>
          </div>
          <div className="flex items-center gap-2">
            <Plus className="w-4 h-4" />
            <span>Add a topic to any day</span>
          </div>
          <div className="flex items-center gap-2">
            <X className="w-4 h-4" />
            <span>Hover to remove</span>
          </div>
          <div>Drag a task between days to reschedule</div>
        </div>
      </div>
    </AppLayout>
  );
}
