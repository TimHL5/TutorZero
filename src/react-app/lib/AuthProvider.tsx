import {
  createContext,
  useContext,
  useState,
  useEffect,
  useCallback,
  type ReactNode,
} from "react";
import { supabase } from "./supabase";
import type { User as SupabaseUser } from "@supabase/supabase-js";

export interface UserProfile {
  displayName?: string;
  hasCompletedOnboarding?: boolean;
  hasCompletedDiagnostic?: boolean;
  subscriptionTier?: string;
  targetScore?: number;
  testDate?: string;
  mathConfidence?: number;
  readingConfidence?: number;
  studyHoursPerWeek?: string;
  /** Server-authoritative predicted scores — Diagnostician seeds them,
   * Reviewer updates them after each practice session. */
  estimatedMathScore?: number;
  estimatedRWScore?: number;
  /** Server-authoritative streak (`user_profiles.streak_days`). The hook's
   * `progress.currentStreak` is a client-side mirror; prefer this when the
   * profile is loaded so Dashboard/Progress can't drift from the DB. */
  streakDays?: number;
}

export interface TutorZeroUser {
  id: string;
  email: string;
  google_user_data?: {
    given_name?: string;
    picture?: string;
  };
  profile?: UserProfile;
}

interface AuthContextType {
  user: TutorZeroUser | null;
  isPending: boolean;
  redirectToLogin: () => Promise<void>;
  exchangeCodeForSessionToken: () => Promise<void>;
  fetchUser: () => Promise<void>;
  logout: () => Promise<void>;
}

const AuthContext = createContext<AuthContextType>({
  user: null,
  isPending: true,
  redirectToLogin: async () => {},
  exchangeCodeForSessionToken: async () => {},
  fetchUser: async () => {},
  logout: async () => {},
});

function setAccessTokenCookie(token: string | null, expiresIn?: number) {
  const secure = window.location.protocol === "https:" ? "; Secure" : "";
  if (token) {
    const maxAge = expiresIn || 3600;
    document.cookie = `sb-access-token=${token}; path=/; max-age=${maxAge}; SameSite=Lax${secure}`;
  } else {
    document.cookie = `sb-access-token=; path=/; max-age=0; SameSite=Lax${secure}`;
  }
}

function mapSupabaseUser(
  sbUser: SupabaseUser,
  profile?: UserProfile
): TutorZeroUser {
  return {
    id: sbUser.id,
    email: sbUser.email || "",
    google_user_data: {
      given_name:
        sbUser.user_metadata?.full_name ||
        sbUser.user_metadata?.name ||
        sbUser.user_metadata?.given_name,
      picture:
        sbUser.user_metadata?.avatar_url || sbUser.user_metadata?.picture,
    },
    profile,
  };
}

async function fetchProfile(): Promise<UserProfile | undefined> {
  const ctl = new AbortController();
  const t = setTimeout(() => ctl.abort(), 5000);
  try {
    const response = await fetch("/api/users/me", {
      credentials: "include",
      signal: ctl.signal,
    });
    if (response.ok) {
      const data = await response.json();
      return data.profile;
    }
  } catch {
    // Timeout, network error, or non-OK — treat as "no profile yet"
  } finally {
    clearTimeout(t);
  }
  return undefined;
}

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<TutorZeroUser | null>(null);
  const [isPending, setIsPending] = useState(true);

  const loadUser = useCallback((sbUser: SupabaseUser) => {
    setUser(mapSupabaseUser(sbUser));
    fetchProfile().then((profile) => {
      if (profile) {
        setUser((prev) => (prev ? mapSupabaseUser(sbUser, profile) : prev));
      }
    });
  }, []);

  useEffect(() => {
    // Get initial session
    supabase.auth.getSession().then(({ data: { session } }) => {
      if (session?.user) {
        setAccessTokenCookie(session.access_token, session.expires_in);
        loadUser(session.user);
      }
      setIsPending(false);
    });

    // Listen for auth changes
    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((event, session) => {
      if (session?.access_token) {
        setAccessTokenCookie(session.access_token, session.expires_in);
      } else {
        setAccessTokenCookie(null);
      }

      if (
        event === "SIGNED_IN" ||
        event === "TOKEN_REFRESHED" ||
        event === "USER_UPDATED"
      ) {
        if (session?.user) {
          loadUser(session.user);
        }
      } else if (event === "SIGNED_OUT") {
        setUser(null);
      }
    });

    return () => subscription.unsubscribe();
  }, [loadUser]);

  const redirectToLogin = useCallback(async () => {
    const redirectTo = `${window.location.origin}/auth/v1/callback`;
    await supabase.auth.signInWithOAuth({
      provider: "google",
      options: { redirectTo },
    });
  }, []);

  const exchangeCodeForSessionToken = useCallback(async () => {
    const params = new URLSearchParams(window.location.search);
    const code = params.get("code");
    if (code) {
      const { error } = await supabase.auth.exchangeCodeForSession(code);
      if (error) throw error;
    }
  }, []);

  const fetchUserFn = useCallback(async () => {
    const {
      data: { user: sbUser },
    } = await supabase.auth.getUser();
    if (sbUser) {
      await loadUser(sbUser);
    }
  }, [loadUser]);

  const logout = useCallback(async () => {
    setAccessTokenCookie(null);
    await supabase.auth.signOut();
    setUser(null);
  }, []);

  return (
    <AuthContext.Provider
      value={{
        user,
        isPending,
        redirectToLogin,
        exchangeCodeForSessionToken,
        fetchUser: fetchUserFn,
        logout,
      }}
    >
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  return useContext(AuthContext);
}
