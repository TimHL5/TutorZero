import { useState } from "react";
import { useNavigate } from "react-router";
import { Calculator, BookOpen, PenTool, GraduationCap, ChevronRight, Home, Clock, Target } from "lucide-react";
import { cn } from "@/react-app/lib/utils";

const WORDMARK_LIGHT = "https://019c2e5b-2f20-7a1a-8266-2d41e0797564.mochausercontent.com/tutorzero-wordmark-dark.png";

interface SectionOption {
  id: "math" | "reading" | "writing" | "full";
  title: string;
  description: string;
  icon: React.ReactNode;
  topics: string[];
  questionCount: string;
  estimatedTime: string;
  color: string;
  bgColor: string;
  borderColor: string;
}

const sectionOptions: SectionOption[] = [
  {
    id: "math",
    title: "Math",
    description: "Algebra, Advanced Math, Problem-Solving & Data Analysis, Geometry & Trigonometry",
    icon: <Calculator className="w-6 h-6" />,
    topics: ["algebra", "advanced_math", "problem_solving", "geometry"],
    questionCount: "20 questions",
    estimatedTime: "~25 min",
    color: "text-tz-blue",
    bgColor: "bg-blue-50",
    borderColor: "border-blue-200",
  },
  {
    id: "reading",
    title: "Reading",
    description: "Central Ideas, Command of Evidence, Inferences, Text Structure & Purpose",
    icon: <BookOpen className="w-6 h-6" />,
    topics: ["information_ideas", "craft_structure"],
    questionCount: "15 questions",
    estimatedTime: "~20 min",
    color: "text-purple-600",
    bgColor: "bg-purple-50",
    borderColor: "border-purple-200",
  },
  {
    id: "writing",
    title: "Writing",
    description: "Transitions, Rhetorical Synthesis, Sentence Boundaries, Grammar & Usage",
    icon: <PenTool className="w-6 h-6" />,
    topics: ["expression", "conventions"],
    questionCount: "15 questions",
    estimatedTime: "~15 min",
    color: "text-emerald-600",
    bgColor: "bg-emerald-50",
    borderColor: "border-emerald-200",
  },
  {
    id: "full",
    title: "Full Practice Test",
    description: "Complete SAT-style practice with Math and Reading & Writing sections",
    icon: <GraduationCap className="w-6 h-6" />,
    topics: [],
    questionCount: "54 questions",
    estimatedTime: "~60 min",
    color: "text-tz-navy",
    bgColor: "bg-tz-off-white",
    borderColor: "border-tz-gray-200",
  },
];

export default function PracticeSetup() {
  const navigate = useNavigate();
  const [selectedSection, setSelectedSection] = useState<SectionOption | null>(null);

  const handleStartPractice = () => {
    if (!selectedSection) return;
    
    if (selectedSection.id === "full") {
      // Full practice - no topic filter
      navigate("/practice/session");
    } else {
      // Section-specific practice
      navigate(`/practice/session?section=${selectedSection.id}`);
    }
  };

  return (
    <div className="min-h-screen bg-white flex flex-col">
      {/* Header */}
      <header className="h-14 border-b border-tz-gray-200 flex items-center px-4 lg:px-8 flex-shrink-0">
        <div className="flex-1 flex items-center gap-3">
          <button
            onClick={() => navigate("/dashboard")}
            className="p-2 rounded-lg hover:bg-tz-gray-100 transition-colors"
            aria-label="Go to Dashboard"
          >
            <Home className="w-4 h-4 text-tz-gray-600" />
          </button>
          <img src={WORDMARK_LIGHT} alt="TutorZero" className="h-5" />
        </div>
      </header>

      {/* Main Content */}
      <main className="flex-1 flex justify-center px-4 py-8 lg:py-12">
        <div className="w-full max-w-2xl">
          {/* Title */}
          <div className="text-center mb-8">
            <h1 className="text-2xl sm:text-3xl font-bold text-tz-navy mb-2">
              What would you like to practice?
            </h1>
            <p className="text-tz-gray-600">
              Choose a section to focus on, or take a full practice test
            </p>
          </div>

          {/* Section Options */}
          <div className="space-y-3 mb-8">
            {sectionOptions.map((option) => {
              const isSelected = selectedSection?.id === option.id;
              
              return (
                <button
                  key={option.id}
                  onClick={() => setSelectedSection(option)}
                  className={cn(
                    "w-full p-4 sm:p-5 rounded-xl border-2 text-left transition-all duration-200",
                    isSelected
                      ? `${option.borderColor} ${option.bgColor} ring-2 ring-offset-2 ${option.id === "full" ? "ring-tz-navy" : option.id === "math" ? "ring-tz-blue" : option.id === "reading" ? "ring-purple-400" : "ring-emerald-400"}`
                      : "border-tz-gray-200 hover:border-tz-gray-300 hover:bg-tz-gray-50"
                  )}
                >
                  <div className="flex items-start gap-4">
                    {/* Icon */}
                    <div className={cn(
                      "w-12 h-12 rounded-xl flex items-center justify-center flex-shrink-0",
                      isSelected ? option.bgColor : "bg-tz-gray-100",
                      isSelected ? option.color : "text-tz-gray-500"
                    )}>
                      {option.icon}
                    </div>
                    
                    {/* Content */}
                    <div className="flex-1 min-w-0">
                      <div className="flex items-center justify-between mb-1">
                        <h3 className={cn(
                          "text-lg font-semibold",
                          isSelected ? "text-tz-navy" : "text-tz-gray-700"
                        )}>
                          {option.title}
                        </h3>
                        <div className={cn(
                          "w-5 h-5 rounded-full border-2 flex items-center justify-center flex-shrink-0",
                          isSelected
                            ? `${option.id === "full" ? "border-tz-navy bg-tz-navy" : option.id === "math" ? "border-tz-blue bg-tz-blue" : option.id === "reading" ? "border-purple-500 bg-purple-500" : "border-emerald-500 bg-emerald-500"}`
                            : "border-tz-gray-300"
                        )}>
                          {isSelected && (
                            <div className="w-2 h-2 rounded-full bg-white" />
                          )}
                        </div>
                      </div>
                      <p className="text-sm text-tz-gray-600 mb-3">
                        {option.description}
                      </p>
                      <div className="flex items-center gap-4 text-xs text-tz-gray-500">
                        <span className="flex items-center gap-1.5">
                          <Target className="w-3.5 h-3.5" />
                          {option.questionCount}
                        </span>
                        <span className="flex items-center gap-1.5">
                          <Clock className="w-3.5 h-3.5" />
                          {option.estimatedTime}
                        </span>
                      </div>
                    </div>
                  </div>
                </button>
              );
            })}
          </div>

          {/* Start Button */}
          <button
            onClick={handleStartPractice}
            disabled={!selectedSection}
            className={cn(
              "w-full py-4 rounded-xl font-semibold text-lg transition-all duration-200 flex items-center justify-center gap-2",
              selectedSection
                ? "bg-tz-blue text-white hover:bg-[#005a9e] hover-scale"
                : "bg-tz-gray-200 text-tz-gray-400 cursor-not-allowed"
            )}
          >
            Start Practice
            <ChevronRight className="w-5 h-5" />
          </button>

          {/* Quick Practice Links */}
          <div className="mt-8 pt-6 border-t border-tz-gray-200">
            <p className="text-sm text-tz-gray-500 text-center mb-4">
              Or practice a specific topic
            </p>
            <div className="flex flex-wrap justify-center gap-2">
              {[
                { label: "Algebra", topic: "algebra" },
                { label: "Geometry", topic: "geometry" },
                { label: "Vocabulary", topic: "craft_structure" },
                { label: "Grammar", topic: "conventions" },
              ].map((item) => (
                <button
                  key={item.topic}
                  onClick={() => navigate(`/practice/session?topic=${item.topic}`)}
                  className="px-4 py-2 text-sm text-tz-gray-600 bg-tz-gray-100 rounded-full hover:bg-tz-gray-200 transition-colors"
                >
                  {item.label}
                </button>
              ))}
            </div>
          </div>
        </div>
      </main>
    </div>
  );
}
