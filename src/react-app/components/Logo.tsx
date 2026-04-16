import { Link } from "react-router";

interface LogoProps {
  to?: string;
  className?: string;
  size?: "sm" | "md" | "lg";
  showText?: boolean;
}

export function Logo({ to = "/dashboard", className = "", size = "md", showText = true }: LogoProps) {
  const sizeClasses = {
    sm: "h-6 w-6",
    md: "h-7 w-7",
    lg: "h-10 w-10"
  };

  const textSizes = {
    sm: "text-base",
    md: "text-lg",
    lg: "text-2xl"
  };

  const content = (
    <div className={`flex items-center gap-2 group ${className}`}>
      <div className="relative">
        <img 
          src="/logos/tutorzero-icon-circle.png" 
          alt="TutorZero" 
          className={`${sizeClasses[size]} transition-transform group-hover:scale-110`}
        />
        <div className="absolute inset-0 bg-white/20 blur-lg opacity-0 group-hover:opacity-100 transition-opacity"></div>
      </div>
      {showText && (
        <span className={`font-bold ${textSizes[size]} tracking-tight`}>
          Tutor<span className="text-blue-300">Zero</span>
        </span>
      )}
    </div>
  );

  if (to) {
    return <Link to={to}>{content}</Link>;
  }

  return content;
}
