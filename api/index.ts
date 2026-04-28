// Vercel Node serverless adapter for the Hono worker. hono/vercel's handle()
// is Edge-only — on the Node runtime it returns a (Request) => Response
// handler that Vercel can't drain (res.end never fires, function hangs to
// 300s timeout). This adapter manually bridges Vercel's (req, res) to the
// Web Fetch shape Hono expects.
//
// At deploy time scripts/build-api.mjs replaces this file with a self-
// contained ESM bundle so the cross-directory import below resolves under
// Node ESM strict resolution at runtime.

import type { IncomingMessage, ServerResponse } from "node:http";
import { Readable } from "node:stream";
import app from "../src/worker/index";

export default async function handler(req: IncomingMessage, res: ServerResponse) {
  const protocol = (req.headers["x-forwarded-proto"] as string | undefined) ?? "https";
  const host = req.headers.host ?? "localhost";
  const url = `${protocol}://${host}${req.url ?? "/"}`;

  const headers = new Headers();
  for (const [key, value] of Object.entries(req.headers)) {
    if (Array.isArray(value)) headers.set(key, value.join(", "));
    else if (typeof value === "string") headers.set(key, value);
  }

  const method = req.method ?? "GET";
  const init: RequestInit & { duplex?: "half" } = { method, headers };
  if (method !== "GET" && method !== "HEAD") {
    // Stream the request body — Vercel Node passes IncomingMessage as a Readable.
    init.body = Readable.toWeb(req) as ReadableStream<Uint8Array>;
    init.duplex = "half";
  }

  const response = await app.fetch(new Request(url, init));

  res.statusCode = response.status;
  response.headers.forEach((value, key) => res.setHeader(key, value));

  if (response.body) {
    const reader = response.body.getReader();
    while (true) {
      const { done, value } = await reader.read();
      if (done) break;
      res.write(Buffer.from(value));
    }
  }
  res.end();
}
