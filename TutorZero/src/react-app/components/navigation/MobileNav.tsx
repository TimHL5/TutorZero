import { useState } from "react";
import { Link, useLocation } from "react-router";
import { BookOpen, Menu, X, Home, Target, Play, BarChart3 } from "lucide-react";
import { cn } from "@/react-app/lib/utils";

interface MobileNavProps {
  variant?: "dark" | "light";
}

export function MobileNav({ variant = "dark" }: MobileNavProps) {
  const [isOpen, setIsOpen] = useState(false);
  const location = useLocation();

  const links = [
    { to: "/", label: "Home", icon: Home },
    { to: "/diagnostic", label: "Diagnostic", icon: Target },
    { to: "/practice", label: "Practice", icon: Play },
    { to: "/dashboard", label: "Dashboard", icon: BarChart3 },
  ];

  const isActive = (path: string) => {
    if (path === "/") return location.pathname === "/";
    return location.pathname.startsWith(path);
  };

  return (
    <>
      {/* Mobile Header */}
      <nav className={cn(
        "sticky top-0 z-50",
        variant === "dark" ? "bg-tz-navy text-white" : "bg-white text-foreground border-b border-border"
      )}>
        <div className="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex items-center justify-between h-14 sm:h-16">
            <Link to="/" className="flex items-center gap-2">
              <BookOpen className="h-5 w-5 sm:h-6 sm:w-6" />
              <span className="font-semibold text-base sm:text-lg">SAT Prep</span>
            </Link>

            {/* Desktop Nav */}
            <div className="hidden sm:flex items-center gap-6 text-sm">
              {links.slice(1).map(link => (
                <Link
                  key={link.to}
                  to={link.to}
                  className={cn(
                    "transition-colors",
                    variant === "dark" 
                      ? "hover:text-blue-200" 
                      : "hover:text-primary",
                    isActive(link.to) && (variant === "dark" ? "text-white font-medium" : "text-primary font-medium")
                  )}
                >
                  {link.label}
                </Link>
              ))}
            </div>

            {/* Mobile Menu Button */}
            <button
              type="button"
              onClick={() => setIsOpen(!isOpen)}
              className={cn(
                "sm:hidden p-2 -mr-2 rounded-lg transition-colors",
                variant === "dark" ? "hover:bg-white/10" : "hover:bg-muted"
              )}
              aria-label={isOpen ? "Close menu" : "Open menu"}
            >
              {isOpen ? (
                <X className="h-6 w-6" />
              ) : (
                <Menu className="h-6 w-6" />
              )}
            </button>
          </div>
        </div>

        {/* Mobile Menu Dropdown */}
        {isOpen && (
          <div className={cn(
            "sm:hidden border-t",
            variant === "dark" ? "bg-tz-navy border-white/10" : "bg-white border-border"
          )}>
            <div className="px-4 py-2 space-y-1">
              {links.map(link => {
                const Icon = link.icon;
                return (
                  <Link
                    key={link.to}
                    to={link.to}
                    onClick={() => setIsOpen(false)}
                    className={cn(
                      "flex items-center gap-3 px-3 py-3 rounded-lg transition-colors",
                      variant === "dark"
                        ? "hover:bg-white/10"
                        : "hover:bg-muted",
                      isActive(link.to) && (
                        variant === "dark" 
                          ? "bg-white/10 font-medium" 
                          : "bg-muted font-medium"
                      )
                    )}
                  >
                    <Icon className="h-5 w-5" />
                    <span>{link.label}</span>
                  </Link>
                );
              })}
            </div>
          </div>
        )}
      </nav>
    </>
  );
}
