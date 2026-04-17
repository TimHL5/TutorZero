import { describe, it, expect } from "vitest";
import { cn } from "@/react-app/lib/utils";

describe("cn", () => {
  it("returns a single class unchanged", () =>
    expect(cn("foo")).toBe("foo"));
  it("merges multiple classes", () =>
    expect(cn("foo", "bar")).toBe("foo bar"));
  it("deduplicates conflicting tailwind classes (last wins)", () =>
    expect(cn("p-2", "p-4")).toBe("p-4"));
  it("handles conditional classes with falsy values", () => {
    const condition = false as boolean;
    expect(cn("foo", condition && "bar", undefined, null, "baz")).toBe("foo baz");
  });
  it("handles object syntax", () =>
    expect(cn({ "text-red-500": true, "text-blue-500": false })).toBe(
      "text-red-500"
    ));
  it("returns empty string for no arguments", () =>
    expect(cn()).toBe(""));
});
