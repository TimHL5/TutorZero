/** @type {import('tailwindcss').Config} */
export default {
  darkMode: ["class"],
  content: [
    "./index.html",
    "./src/react-app/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        background: "hsl(var(--background))",
        foreground: "hsl(var(--foreground))",
        card: {
          DEFAULT: "hsl(var(--card))",
          foreground: "hsl(var(--card-foreground))",
        },
        popover: {
          DEFAULT: "hsl(var(--popover))",
          foreground: "hsl(var(--popover-foreground))",
        },
        primary: {
          DEFAULT: "hsl(var(--primary))",
          foreground: "hsl(var(--primary-foreground))",
        },
        secondary: {
          DEFAULT: "hsl(var(--secondary))",
          foreground: "hsl(var(--secondary-foreground))",
        },
        muted: {
          DEFAULT: "hsl(var(--muted))",
          foreground: "hsl(var(--muted-foreground))",
        },
        accent: {
          DEFAULT: "hsl(var(--accent))",
          foreground: "hsl(var(--accent-foreground))",
        },
        destructive: {
          DEFAULT: "hsl(var(--destructive))",
          foreground: "hsl(var(--destructive-foreground))",
        },
        border: "hsl(var(--border))",
        input: "hsl(var(--input))",
        ring: "hsl(var(--ring))",
        chart: {
          1: "hsl(var(--chart-1))",
          2: "hsl(var(--chart-2))",
          3: "hsl(var(--chart-3))",
          4: "hsl(var(--chart-4))",
          5: "hsl(var(--chart-5))",
        },
        sidebar: {
          DEFAULT: "hsl(var(--sidebar))",
          foreground: "hsl(var(--sidebar-foreground))",
          primary: "hsl(var(--sidebar-primary))",
          "primary-foreground": "hsl(var(--sidebar-primary-foreground))",
          accent: "hsl(var(--sidebar-accent))",
          "accent-foreground": "hsl(var(--sidebar-accent-foreground))",
          border: "hsl(var(--sidebar-border))",
          ring: "hsl(var(--sidebar-ring))",
        },
        // TutorZero brand palette — CSS vars live in src/react-app/index.css.
        // Without this mapping, classes like bg-tz-navy / text-tz-green compile
        // to nothing and render invisible (e.g. white text on white card).
        "tz-navy": "hsl(var(--tz-navy))",
        "tz-white": "hsl(var(--tz-white))",
        "tz-off-white": "hsl(var(--tz-off-white))",
        "tz-cream": "hsl(var(--tz-off-white))",
        "tz-blue": {
          DEFAULT: "hsl(var(--tz-blue))",
          50: "hsl(214 60% 97%)",
          700: "hsl(205 100% 30%)",
          900: "hsl(var(--tz-navy))",
        },
        "tz-light-blue": "hsl(var(--tz-light-blue))",
        "tz-green": "hsl(var(--tz-green))",
        "tz-light-green": "hsl(var(--tz-light-green))",
        "tz-orange": "hsl(var(--tz-orange))",
        "tz-red": "hsl(var(--tz-red))",
        "tz-gray": {
          50: "hsl(214 60% 98%)",
          100: "hsl(var(--tz-gray-100))",
          200: "hsl(var(--tz-gray-200))",
          300: "hsl(214 20% 84%)",
          400: "hsl(var(--tz-gray-400))",
          500: "hsl(215 16% 47%)",
          600: "hsl(var(--tz-gray-600))",
          700: "hsl(215 25% 27%)",
        },
      },
      borderRadius: {
        lg: "var(--radius)",
        md: "calc(var(--radius) - 2px)",
        sm: "calc(var(--radius) - 4px)",
        "4xl": "2rem",
      },
      keyframes: {
        "accordion-down": {
          from: { height: "0" },
          to: { height: "var(--radix-accordion-content-height)" },
        },
        "accordion-up": {
          from: { height: "var(--radix-accordion-content-height)" },
          to: { height: "0" },
        },
      },
      animation: {
        "accordion-down": "accordion-down 0.2s ease-out",
        "accordion-up": "accordion-up 0.2s ease-out",
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
};
