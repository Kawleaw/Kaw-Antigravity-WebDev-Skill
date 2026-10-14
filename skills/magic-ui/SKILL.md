---
name: magic-ui
description: Comprehensive guide, CLI commands, and component catalog for Magic UI (magicui.design). Use when adding, styling, or animating UI components, text animations, background effects, bento grids, border beams, particles, or interactive landing page elements in React, Next.js, Tailwind CSS, and Framer Motion.
---

# Magic UI Skill Guide

Magic UI is an open-source (MIT License) collection of 150+ interactive and animated components built for React, Next.js, Tailwind CSS, and Framer Motion. It follows the **shadcn/ui** copy-paste architecture: components are placed directly into your repository, giving you 100% control and ownership without subscriptions or vendor lock-in.

---

## 1. Prerequisites & Project Setup

Magic UI components require:
- **Framework:** Next.js (App Router recommended), React 18/19, Vite, or Astro.
- **Styling:** Tailwind CSS (v3 or v4).
- **Animation Engine:** `framer-motion` (or `motion`).
- **Icons & Utilities:** `lucide-react`, `clsx`, `tailwind-merge`.

### Step 1: Initialize shadcn/ui (if not already done)
```bash
npx shadcn@latest init
```
This generates `components.json`, `tailwind.config.ts`, and `lib/utils.ts` with the `cn` helper:

```typescript
// lib/utils.ts
import { clsx, type ClassValue } from "clsx";
import { twMerge } from "tailwind-merge";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}
```

### Step 2: Install Base Dependencies
```bash
npm install framer-motion clsx tailwind-merge lucide-react
```

---

## 2. Component Installation Pattern

Magic UI components can be installed using either the shadcn CLI or the Magic UI CLI:

### Standard shadcn Registry Pattern (Recommended)
```bash
npx shadcn@latest add "https://magicui.design/r/<component-name>"
```

### Magic UI CLI Pattern
```bash
npx magicui-cli add <component-name>
```

---

## 3. Curated Component Catalog & Installation Commands

### A. Backgrounds & Ambient Decorations (ฉากหลังและละอองแสง)

| Component | Description | Install Command |
| :--- | :--- | :--- |
| **Particles** | Interactive floating particle canvas reacting to mouse movement | `npx shadcn@latest add "https://magicui.design/r/particles"` |
| **Retro Grid** | 80s synthwave perspective grid with scrolling horizon | `npx shadcn@latest add "https://magicui.design/r/retro-grid"` |
| **Animated Grid** | Subtle grid with randomly pulsating and highlighted squares | `npx shadcn@latest add "https://magicui.design/r/animated-grid-pattern"` |
| **Dot Pattern** | Clean dotted canvas with SVG radial mask | `npx shadcn@latest add "https://magicui.design/r/dot-pattern"` |
| **Flickering Grid** | High-tech cybernetic flickering matrix grid | `npx shadcn@latest add "https://magicui.design/r/flickering-grid"` |
| **Ripple** | Expanding concentric radial waves from center | `npx shadcn@latest add "https://magicui.design/r/ripple"` |
| **Meteors** | Falling shooting stars across dark backgrounds | `npx shadcn@latest add "https://magicui.design/r/meteors"` |
| **Interactive Grid**| Interactive grid pattern that responds on mouse hover | `npx shadcn@latest add "https://magicui.design/r/interactive-grid-pattern"` |

---

### B. Cards, Frames & Showcases (กรอบแสดงผลงานและการ์ดไฮไลต์)

| Component | Description | Install Command |
| :--- | :--- | :--- |
| **Magic Card** | Card with dynamic cursor-following spotlight gradient glow | `npx shadcn@latest add "https://magicui.design/r/magic-card"` |
| **Border Beam** | Luminous animated neon beam traveling along container borders | `npx shadcn@latest add "https://magicui.design/r/border-beam"` |
| **Shine Border** | Animated glowing gradient border wrapping around cards | `npx shadcn@latest add "https://magicui.design/r/shine-border"` |
| **Bento Grid** | Asymmetrical modern grid layout with responsive animated tiles | `npx shadcn@latest add "https://magicui.design/r/bento-grid"` |
| **Safari Mockup** | Realistic macOS Safari browser chrome for showcasing web screenshots | `npx shadcn@latest add "https://magicui.design/r/safari"` |
| **iPhone 15 Pro** | Photorealistic iPhone 15 Pro mockup frame for mobile UI/responsive demos | `npx shadcn@latest add "https://magicui.design/r/iphone-15-pro"` |

---

### C. Typography & Text Animations (หัวข้อและข้อความแอนิเมชัน)

| Component | Description | Install Command |
| :--- | :--- | :--- |
| **Blur Fade** | Smooth blur-to-sharp fade reveal on scroll or page entry | `npx shadcn@latest add "https://magicui.design/r/blur-fade"` |
| **Typing Animation**| Real-time character typewriter effect with configurable cursor | `npx shadcn@latest add "https://magicui.design/r/typing-animation"` |
| **Word Rotate** | Vertical rotating ticker cycling through dynamic keywords | `npx shadcn@latest add "https://magicui.design/r/word-rotate"` |
| **Hyper Text** | Matrix-style cybernetic letter-scrambling reveal effect | `npx shadcn@latest add "https://magicui.design/r/hyper-text"` |
| **Animated Shiny Text**| Subtle metallic light reflection sweeping across text | `npx shadcn@latest add "https://magicui.design/r/animated-shiny-text"` |
| **Sparkles Text** | Starburst sparkles twinkling around heading keywords | `npx shadcn@latest add "https://magicui.design/r/sparkles-text"` |
| **Gradual Spacing**| Letter-spacing contraction spring animation on entrance | `npx shadcn@latest add "https://magicui.design/r/gradual-spacing"` |

---

### D. Buttons & Micro-Interactions (ปุ่มและลูกเล่นตอบสนอง)

| Component | Description | Install Command |
| :--- | :--- | :--- |
| **Shimmer Button** | Sleek CTA button with continuous rotating light reflection edge | `npx shadcn@latest add "https://magicui.design/r/shimmer-button"` |
| **Interactive Hover**| Button with expanding sliding background and icon morph on hover | `npx shadcn@latest add "https://magicui.design/r/interactive-hover-button"` |
| **Pulsing Button** | Button with gentle radar-like expansion ring for high conversion | `npx shadcn@latest add "https://magicui.design/r/pulsing-button"` |
| **Animated Subscribe**| State-switching button transitioning from 'Subscribe' to 'Success' | `npx shadcn@latest add "https://magicui.design/r/animated-subscribe-button"` |

---

### E. Showcases & Advanced Visuals (คอมโพเนนต์พิเศษ)

| Component | Description | Install Command |
| :--- | :--- | :--- |
| **Marquee** | Infinite smooth horizontal/vertical ticker for logos, reviews, or tags | `npx shadcn@latest add "https://magicui.design/r/marquee"` |
| **Dock** | macOS-style magnifying dock with smooth spring magnification | `npx shadcn@latest add "https://magicui.design/r/dock"` |
| **Animated Beam** | Animated bezier light curves connecting icons or workflow nodes | `npx shadcn@latest add "https://magicui.design/r/animated-beam"` |
| **Icon Cloud** | 3D rotating interactive sphere of technology icons | `npx shadcn@latest add "https://magicui.design/r/icon-cloud"` |
| **Globe** | Interactive WebGL 3D Earth with customizable markers and arcs | `npx shadcn@latest add "https://magicui.design/r/globe"` |
| **Confetti** | Celebration particle burst triggered on click or form submit | `npx shadcn@latest add "https://magicui.design/r/confetti"` |

---

## 4. Architectural Rules & Best Practices

1. **Client Component Directive:**
   All components utilizing `framer-motion`, hooks (`useEffect`, `useState`), or window listeners MUST have `'use client';` at the very top of the file when used in Next.js App Router.

2. **Performance & Restraint (Anti-Overload):**
   - **Limit active Canvas contexts:** Avoid running `Particles`, `Globe`, and `FlickeringGrid` simultaneously on the same viewport. Stagger them across distinct sections or pause off-screen canvas loops using `IntersectionObserver`.
   - **Use pure CSS/SVG when possible:** Prefer `RetroGrid`, `DotPattern`, or `BorderBeam` (pure CSS keyframes) over full canvas loops for low-battery mobile devices.

3. **Accessibility (`prefers-reduced-motion`):**
   Ensure all continuous animations (Meteors, Marquee, Beams) gracefully slow down or halt when users have requested reduced motion:
   ```css
   @media (prefers-reduced-motion: reduce) {
     .animate-marquee, .animate-beam {
       animation-play-state: paused !important;
     }
   }
   ```

4. **Z-Index Hierarchy in Scrollytelling / Slide Decks:**
   - Backgrounds (Particles, Grid, Aurora): `z-0` or `z-[-1]` with `pointer-events-none`.
   - Section Content & Cards: `relative z-10`.
   - Sticky Overlays & Slide Indicators: `fixed z-50`.
   - Modals / Fullscreen Lightboxes: `fixed z-[100]`.
