import { useState, useCallback } from "react";
import { AppLayout } from "@/react-app/components/layout/AppLayout";
import { topicDisplayNames } from "@/data/questions";
import { cn } from "@/react-app/lib/utils";
import { Calendar, Clock, ChevronLeft, ChevronRight, GripVertical, CheckCircle, Circle, Plus } from "lucide-react";
import { useAuth } from "@/react-app/lib/AuthProvider";
import { useStudentProgress } from "@/react-app/hooks/useStudentProgress";

interface StudyBlock {
  id: string;
  topic: string;
  duration: number; // minutes
  completed: boolean;
}

interface DayPlan {
  date: Date;
  blocks: StudyBlock[];
}

const generateInitialWeekPlan = (startDate: Date): DayPlan[] => {
  const topics = ["algebra", "information_ideas", "advanced_math", "craft_structure", "geometry", "expression", "conventions"];
  const days: DayPlan[] = [];
  
  // Use a seeded approach for consistent data
  for (let i = 0; i < 7; i++) {
    const date = new Date(startDate);
    date.setDate(date.getDate() + i);
    
    // Generate 2-3 blocks per day based on day index for consistency
    const numBlocks = (i % 2) + 2;
    const blocks: StudyBlock[] = [];
    
    for (let j = 0; j < numBlocks; j++) {
      blocks.push({
        id: `${date.toISOString().split('T')[0]}-${j}`,
        topic: topics[(i + j) % topics.length],
        duration: [20, 25, 30][j % 3],
        completed: i < 2, // First two days completed
      });
    }
    
    days.push({ date, blocks });
  }
  
  return days;
};

export default function StudyPlan() {
  const { user } = useAuth();
  const { progress } = useStudentProgress();
  const [weekOffset, setWeekOffset] = useState(0);
  const [weekPlan, setWeekPlan] = useState<DayPlan[]>(() => {
    const startDate = new Date();
    return generateInitialWeekPlan(startDate);
  });
  const [draggedBlock, setDraggedBlock] = useState<{ dayIndex: number; blockIndex: number } | null>(null);
  const [dragOverDay, setDragOverDay] = useState<number | null>(null);

  const profile = user?.profile;
  const testDate = profile?.testDate ? new Date(profile.testDate) : null;
  // Match Dashboard/Progress: prefer server-authoritative profile estimate,
  // fall back to client-side progress only when the server hasn't filled it
  // in. Otherwise StudyPlan's "Current" can disagree with the other pages.
  const estimatedMath = profile?.estimatedMathScore ?? progress.estimatedMathScore;
  const estimatedRW = profile?.estimatedRWScore ?? progress.estimatedRWScore;
  const currentScore = estimatedMath + estimatedRW;
  const targetScore = profile?.targetScore || 1400;

  // Calculate days until test
  const today = new Date();
  const daysUntilTest = testDate
    ? Math.ceil((testDate.getTime() - today.getTime()) / (1000 * 60 * 60 * 24))
    : 60;
  
  // Calculate week's total study time
  const weekTotalMinutes = weekPlan.reduce((sum, day) => 
    sum + day.blocks.reduce((daySum, block) => daySum + block.duration, 0), 0
  );
  const weekCompletedMinutes = weekPlan.reduce((sum, day) => 
    sum + day.blocks.filter(b => b.completed).reduce((daySum, block) => daySum + block.duration, 0), 0
  );

  const formatDate = (date: Date) => {
    return date.toLocaleDateString("en-US", { weekday: "short", month: "short", day: "numeric" });
  };

  const isToday = (date: Date) => {
    const today = new Date();
    return date.toDateString() === today.toDateString();
  };

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

  const handleDrop = useCallback((targetDayIndex: number) => {
    if (!draggedBlock || draggedBlock.dayIndex === targetDayIndex) {
      setDraggedBlock(null);
      setDragOverDay(null);
      return;
    }

    setWeekPlan(prev => {
      const newPlan = prev.map(day => ({
        ...day,
        blocks: [...day.blocks]
      }));

      // Get the block being moved
      const block = newPlan[draggedBlock.dayIndex].blocks[draggedBlock.blockIndex];
      
      // Remove from source day
      newPlan[draggedBlock.dayIndex].blocks.splice(draggedBlock.blockIndex, 1);
      
      // Add to target day (reset completion status when moving)
      newPlan[targetDayIndex].blocks.push({
        ...block,
        id: `${newPlan[targetDayIndex].date.toISOString().split('T')[0]}-${newPlan[targetDayIndex].blocks.length}`,
        completed: false
      });

      return newPlan;
    });

    setDraggedBlock(null);
    setDragOverDay(null);
  }, [draggedBlock]);

  const handleDragEnd = useCallback(() => {
    setDraggedBlock(null);
    setDragOverDay(null);
  }, []);

  // Toggle block completion
  const toggleBlockCompletion = useCallback((dayIndex: number, blockIndex: number) => {
    setWeekPlan(prev => {
      const newPlan = prev.map((day, dIdx) => {
        if (dIdx !== dayIndex) return day;
        return {
          ...day,
          blocks: day.blocks.map((block, bIdx) => {
            if (bIdx !== blockIndex) return block;
            return { ...block, completed: !block.completed };
          })
        };
      });
      return newPlan;
    });
  }, []);

  // Navigate weeks
  const navigateWeek = useCallback((direction: number) => {
    setWeekOffset(prev => prev + direction);
    // Generate new week data
    const newStartDate = new Date();
    newStartDate.setDate(newStartDate.getDate() + (weekOffset + direction) * 7);
    setWeekPlan(generateInitialWeekPlan(newStartDate));
  }, [weekOffset]);

  // Paywall gate removed — study plan is available to all users

  return (
    <AppLayout>
      <div className="max-w-6xl mx-auto px-4 lg:px-8 py-6 lg:py-8">
        {/* Header */}
        <div className="flex flex-col lg:flex-row lg:items-center lg:justify-between gap-4 mb-8">
          <div>
            <h1 className="text-h1 text-tz-navy mb-2">Your Study Plan</h1>
            <p className="text-body text-tz-gray-600">Drag blocks between days to customize your schedule</p>
          </div>
          
          {/* Test Countdown */}
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
        <div className="bg-white rounded-xl border border-tz-gray-200 p-6 mb-8">
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
              style={{ width: `${((currentScore - 400) / (targetScore - 400)) * 100}%` }}
            />
          </div>
          <div className="flex justify-between mt-2 text-small text-tz-gray-400">
            <span>400</span>
            <span>{Math.round((currentScore - 400) / (targetScore - 400) * 100)}% to goal</span>
            <span>{targetScore}</span>
          </div>
        </div>

        {/* Week Navigation */}
        <div className="flex items-center justify-between mb-6">
          <button
            onClick={() => navigateWeek(-1)}
            className="p-2 rounded-lg hover:bg-tz-gray-100 transition-colors"
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
          >
            <ChevronRight className="w-5 h-5 text-tz-gray-600" />
          </button>
        </div>

        {/* Weekly Calendar - Drag & Drop */}
        <div className="grid grid-cols-7 gap-3">
          {weekPlan.map((day, dayIndex) => (
            <div 
              key={dayIndex}
              onDragOver={(e) => handleDragOver(e, dayIndex)}
              onDragLeave={handleDragLeave}
              onDrop={() => handleDrop(dayIndex)}
              className={cn(
                "bg-white rounded-xl border p-4 min-h-[220px] transition-all duration-200",
                isToday(day.date) ? "border-tz-blue ring-1 ring-tz-blue" : "border-tz-gray-200",
                dragOverDay === dayIndex && "border-tz-blue bg-blue-50 ring-2 ring-tz-blue/30",
                draggedBlock?.dayIndex === dayIndex && "opacity-75"
              )}
            >
              <div className={cn(
                "text-center mb-4 pb-3 border-b border-tz-gray-100",
                isToday(day.date) && "text-tz-blue"
              )}>
                <div className="text-label text-tz-gray-400">
                  {day.date.toLocaleDateString("en-US", { weekday: "short" }).toUpperCase()}
                </div>
                <div className={cn(
                  "text-h3",
                  isToday(day.date) ? "text-tz-blue" : "text-tz-navy"
                )}>
                  {day.date.getDate()}
                </div>
              </div>
              
              <div className="space-y-2">
                {day.blocks.map((block, blockIndex) => (
                  <div
                    key={block.id}
                    draggable
                    onDragStart={() => handleDragStart(dayIndex, blockIndex)}
                    onDragEnd={handleDragEnd}
                    className={cn(
                      "group rounded-lg p-2 cursor-grab active:cursor-grabbing transition-all",
                      block.completed 
                        ? "bg-green-50 border border-green-200"
                        : "bg-tz-off-white border border-transparent hover:border-tz-gray-200 hover:shadow-sm",
                      draggedBlock?.dayIndex === dayIndex && draggedBlock?.blockIndex === blockIndex && "opacity-50 scale-95"
                    )}
                  >
                    <div className="flex items-start gap-1.5">
                      <GripVertical className="w-4 h-4 text-tz-gray-300 group-hover:text-tz-gray-500 transition-colors flex-shrink-0 mt-0.5" />
                      <div className="flex-1 min-w-0">
                        <div className="flex items-center gap-1.5">
                          <button
                            onClick={() => toggleBlockCompletion(dayIndex, blockIndex)}
                            className="flex-shrink-0 hover:scale-110 transition-transform"
                          >
                            {block.completed ? (
                              <CheckCircle className="w-3.5 h-3.5 text-tz-green" />
                            ) : (
                              <Circle className="w-3.5 h-3.5 text-tz-gray-300 hover:text-tz-blue" />
                            )}
                          </button>
                          <span
                            title={topicDisplayNames[block.topic] || block.topic}
                            className={cn(
                              "text-small truncate",
                              block.completed ? "text-green-700 line-through" : "text-tz-navy"
                            )}
                          >
                            {topicDisplayNames[block.topic] || block.topic}
                          </span>
                        </div>
                        <div className="flex items-center gap-1 mt-1 ml-5">
                          <Clock className="w-3 h-3 text-tz-gray-400" />
                          <span className="text-small text-tz-gray-400">{block.duration}m</span>
                        </div>
                      </div>
                    </div>
                  </div>
                ))}
                
                {/* Drop zone indicator when dragging */}
                {dragOverDay === dayIndex && draggedBlock && draggedBlock.dayIndex !== dayIndex && (
                  <div className="h-12 border-2 border-dashed border-tz-blue/50 rounded-lg flex items-center justify-center">
                    <Plus className="w-4 h-4 text-tz-blue/50" />
                  </div>
                )}
                
                {/* Empty state */}
                {day.blocks.length === 0 && dragOverDay !== dayIndex && (
                  <div className="h-12 border-2 border-dashed border-tz-gray-200 rounded-lg flex items-center justify-center">
                    <span className="text-small text-tz-gray-400">Rest day</span>
                  </div>
                )}
              </div>
            </div>
          ))}
        </div>

        {/* Legend */}
        <div className="mt-6 flex items-center justify-center gap-6 text-small text-tz-gray-400">
          <div className="flex items-center gap-2">
            <GripVertical className="w-4 h-4" />
            <span>Drag to reschedule</span>
          </div>
          <div className="flex items-center gap-2">
            <Circle className="w-4 h-4" />
            <span>Click to mark complete</span>
          </div>
          <div className="flex items-center gap-2">
            <CheckCircle className="w-4 h-4 text-tz-green" />
            <span>Completed</span>
          </div>
        </div>
      </div>
    </AppLayout>
  );
}
