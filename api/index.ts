import { handle } from "hono/vercel";
import app from "../src/worker/index.js";

export default handle(app);
