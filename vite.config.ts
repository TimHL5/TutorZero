import path from "path";
// vitest/config re-exports Vite's defineConfig with the `test` property in
// the type — required because we keep vitest config in this same file.
import { defineConfig } from "vitest/config";
import { loadEnv, type Plugin } from "vite";
import react from "@vitejs/plugin-react";

// Vite dev plugin: mount the Hono worker on /api/* so `npm run dev` serves
// AI/agent routes without needing `vercel dev`. In production the same Hono
// app is served by api/[[...route]].ts via the Vercel adapter.
function apiDevPlugin(): Plugin {
  return {
    name: "tutorzero-api-dev",
    apply: "serve",
    async configureServer(server) {
      // Make .env.local visible to the Node process so the worker's checks
      // for OPENAI_KEY / SUPABASE_SECRET_KEY etc. resolve. loadEnv("", ...)
      // ignores prefix-filtering and pulls every var.
      const env = loadEnv("development", process.cwd(), "");
      for (const [k, v] of Object.entries(env)) {
        if (process.env[k] === undefined) process.env[k] = v;
      }

      // Lazy-import the worker so any error inside it surfaces on the first
      // request rather than killing dev startup.
      // Use a loose type — the Hono app is a dynamic ESM import and Vite's
      // node loader returns its own shape; we only care that .default.fetch
      // exists at call time.
      let appPromise: Promise<{ default: { fetch: (req: Request) => Promise<Response> } }> | null = null;
      const getApp = () =>
        appPromise ??
        (appPromise = import("./src/worker/index.ts") as unknown as Promise<{
          default: { fetch: (req: Request) => Promise<Response> };
        }>);

      server.middlewares.use(async (req, res, next) => {
        if (!req.url || !req.url.startsWith("/api/")) return next();
        try {
          const { default: app } = await getApp();
          const url = new URL(req.url, `http://${req.headers.host || "localhost"}`).toString();

          const headers = new Headers();
          for (const [k, v] of Object.entries(req.headers)) {
            if (Array.isArray(v)) headers.set(k, v.join(", "));
            else if (typeof v === "string") headers.set(k, v);
          }

          const method = (req.method || "GET").toUpperCase();
          let body: Buffer | undefined;
          if (method !== "GET" && method !== "HEAD") {
            const chunks: Buffer[] = [];
            for await (const chunk of req) chunks.push(chunk as Buffer);
            if (chunks.length > 0) body = Buffer.concat(chunks);
          }

          const request = new Request(url, { method, headers, body });
          const response = await app.fetch(request);

          res.statusCode = response.status;
          response.headers.forEach((v, k) => res.setHeader(k, v));
          const buf = await response.arrayBuffer();
          res.end(Buffer.from(buf));
        } catch (err) {
          console.error("[api-dev] Hono error:", err);
          res.statusCode = 500;
          res.setHeader("Content-Type", "application/json");
          res.end(JSON.stringify({ error: "Dev API plugin failed", detail: String(err) }));
        }
      });
    },
  };
}

export default defineConfig({
  plugins: [react(), apiDevPlugin()],
  server: {
    allowedHosts: true,
  },
  build: {
    chunkSizeWarningLimit: 5000,
  },
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
    },
  },
  test: {
    globals: true,
    environment: "jsdom",
    setupFiles: ["./src/test/setup.ts"],
    include: ["src/**/*.{test,spec}.{ts,tsx}"],
    coverage: {
      provider: "v8",
      reporter: ["text", "json", "html"],
      include: ["src/**/*.{ts,tsx}"],
      exclude: [
        "src/test/**",
        "src/**/*.d.ts",
        "src/react-app/main.tsx",
        "src/react-app/vite-env.d.ts",
      ],
      thresholds: {
        lines: 30,
        functions: 30,
        branches: 30,
        statements: 30,
      },
    },
  },
});
