import { useState } from "react";
import { Link, useLocation, useNavigate } from "react-router";
import { useAuth } from "@/react-app/lib/AuthProvider";
import {
  LayoutDashboard,
  Target,
  MessageSquare,
  TrendingUp,
  Calendar,
  Settings,
  Menu,
  LogOut,
} from "lucide-react";
import { cn } from "@/react-app/lib/utils";

const WORDMARK_LIGHT = "/logos/tutorzero-wordmark-dark.png";
const ICON_SQUARE = "/logos/tutorzero-icon-square.png";

interface NavItem {
  to: string;
  label: string;
  icon: React.ReactNode;
}

const navItems: NavItem[] = [
  { to: "/dashboard", label: "Dashboard", icon: <LayoutDashboard className="w-5 h-5" /> },
  { to: "/practice", label: "Practice", icon: <Target className="w-5 h-5" /> },
  { to: "/tutor", label: "AI Tutor", icon: <MessageSquare className="w-5 h-5" /> },
  { to: "/progress", label: "Progress", icon: <TrendingUp className="w-5 h-5" /> },
  { to: "/study-plan", label: "Study Plan", icon: <Calendar className="w-5 h-5" /> },
];

interface AppLayoutProps {
  children: React.ReactNode;
  title?: string;
}

export function AppLayout({ children, title }: AppLayoutProps) {
  const location = useLocation();
  const navigate = useNavigate();
  const { user, logout } = useAuth();
  const [sidebarOpen, setSidebarOpen] = useState(false);

  const profile = user?.profile;
  const displayName = profile?.displayName || user?.google_user_data?.given_name || "Student";
  const pictureUrl = user?.google_user_data?.picture;

  const handleLogout = async () => {
    await logout();
    navigate("/");
  };

  return (
    <div className="min-h-screen bg-tz-off-white flex">
      {/* Mobile overlay */}
      {sidebarOpen && (
        <div 
          className="fixed inset-0 bg-black/50 z-40 lg:hidden"
          onClick={() => setSidebarOpen(false)}
        />
      )}

      {/* Sidebar */}
      <aside className={cn(
        "fixed inset-y-0 left-0 z-50 w-64 bg-tz-navy flex flex-col transition-transform duration-300 lg:translate-x-0 lg:static",
        sidebarOpen ? "translate-x-0" : "-translate-x-full"
      )}>
        {/* Logo */}
        <div className="h-16 flex items-center px-5 border-b border-white/10">
          <Link to="/dashboard" className="flex items-center gap-3">
            <img src={ICON_SQUARE} alt="" className="w-8 h-8 rounded-lg" />
            <img src={WORDMARK_LIGHT} alt="TutorZero" className="h-5" />
          </Link>
        </div>

        {/* Navigation */}
        <nav className="flex-1 py-6 px-3 space-y-1">
          {navItems.map((item) => {
            const isActive = location.pathname === item.to;
            return (
              <Link
                key={item.to}
                to={item.to}
                onClick={() => setSidebarOpen(false)}
                className={cn(
                  "flex items-center gap-3 px-3 py-2.5 rounded-lg text-sm font-medium transition-all",
                  isActive
                    ? "bg-white/10 text-white"
                    : "text-white/60 hover:text-white hover:bg-white/5"
                )}
              >
                {item.icon}
                <span>{item.label}</span>
              </Link>
            );
          })}
        </nav>

        {/* Bottom section */}
        <div className="p-3 border-t border-white/10">
          {/* Settings */}
          <Link
            to="/settings"
            onClick={() => setSidebarOpen(false)}
            className={cn(
              "flex items-center gap-3 px-3 py-2.5 rounded-lg text-sm font-medium transition-all",
              location.pathname === "/settings"
                ? "bg-white/10 text-white"
                : "text-white/60 hover:text-white hover:bg-white/5"
            )}
          >
            <Settings className="w-5 h-5" />
            <span>Settings</span>
          </Link>

          {/* Profile */}
          <div className="flex items-center gap-3 px-3 py-3 mt-2">
            {pictureUrl ? (
              <img src={pictureUrl} alt="" className="w-8 h-8 rounded-full" />
            ) : (
              <div className="w-8 h-8 rounded-full bg-white/20 flex items-center justify-center text-white text-sm font-medium">
                {displayName[0]?.toUpperCase()}
              </div>
            )}
            <span className="text-sm text-white/80 truncate flex-1">{displayName}</span>
            <button
              onClick={handleLogout}
              className="p-1.5 text-white/40 hover:text-white hover:bg-white/10 rounded transition-all"
              title="Sign out"
            >
              <LogOut className="w-4 h-4" />
            </button>
          </div>
        </div>
      </aside>

      {/* Main content */}
      <div className="flex-1 flex flex-col min-h-screen">
        {/* Top bar */}
        <header className="h-16 bg-white border-b border-tz-gray-200 flex items-center px-4 lg:px-8 sticky top-0 z-30">
          <button
            onClick={() => setSidebarOpen(true)}
            className="p-2 -ml-2 mr-2 text-tz-gray-600 hover:bg-tz-gray-100 rounded-lg lg:hidden"
          >
            <Menu className="w-5 h-5" />
          </button>
          {title && (
            <p className="text-h3 text-tz-navy font-semibold">{title}</p>
          )}
        </header>

        {/* Page content */}
        <main className="flex-1 p-4 lg:p-8">
          {children}
        </main>
      </div>
    </div>
  );
}
