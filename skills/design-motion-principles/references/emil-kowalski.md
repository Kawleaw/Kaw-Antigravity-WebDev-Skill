# Emil Kowalski's Animation Principles

Emil Kowalski is a Design Engineer at Linear (previously Vercel). Creator of Sonner, Vaul, and the "Animations on the Web" course. His approach emphasizes **restraint, speed, and purposeful motion**.

This file is Emil's **philosophy and decision frameworks** — the judgment for *whether* and *when* to animate. Implementation code lives in `motion-cookbook.md` (cross-referenced below).

---

## Core Philosophy: Restraint & Purpose

Emil's defining contribution to motion design thinking is knowing **when NOT to animate**.

> "The goal is not to animate for animation's sake, it's to build great user interfaces."

His key question for any interaction: **"Should this animate at all?"**

### The Frequency Rule

Animation appropriateness depends on interaction frequency:

| Frequency | Recommendation |
|-----------|----------------|
| Rare (monthly) | Delightful, morphing animations welcome |
| Occasional (daily) | Subtle, fast animations |
| Frequent (100s/day) | No animation or instant transitions |
| Keyboard-initiated | Never animate |

**The Raycast example**: A tool used constantly throughout the day benefits from zero animation. Users with clear goals "don't expect to be delighted" and prioritize frictionless workflow.

### Speed is Non-Negotiable

> "UI animations should generally stay under 300ms."

A 180ms animation feels more responsive than 400ms. Speed creates perceived performance. When in doubt, go faster.

---

## The 7 Practical Animation Tips

Emil's decision checklist. Code for each is in the cookbook section noted.

1. **Scale your buttons** — Subtle `scale(0.97)` on `:active` for immediate tactile feedback. → cookbook §10
2. **Don't animate from `scale(0)`** — It creates unnatural motion. Start from `scale(0.9)` or higher. → cookbook §10
3. **Tooltip delay patterns** — First tooltip in a group: delay + animation. Subsequent: instant. → cookbook §10
4. **Custom easing is essential** — *"Easing is the most important part of any animation. It can make a bad animation feel great."* Built-in `ease`/`ease-in-out` lack strength; use custom Bézier curves (easing.dev, easings.co). → cookbook §2
5. **Origin-aware animations** — Motion should originate from its logical source; a dropdown expands from its trigger, not from center. → cookbook §13
6. **Keep animations fast** — Under 300ms for UI; remove animation entirely for high-frequency interactions.
7. **Use blur when nothing else works** — `filter: blur(2px)` masks imperfections during rough state transitions. → cookbook §10

---

## Signature Techniques (decision context — code in cookbook)

| Technique | When Emil reaches for it | Cookbook |
|-----------|--------------------------|----------|
| Clip-path animations | Reveals and tab transitions — hardware-accelerated, no layout shift, no extra DOM | §9 |
| Spring physics | Any value that should interpolate smoothly rather than snap (e.g. mouse position) | §12 |
| CSS transitions over keyframes | Anything the user can rapidly re-trigger — keyframes can't retarget mid-flight | §11 |
| Direct style updates | Frequent updates like drag — CSS variables cause cascade recalculation | §11 |
| Momentum-based dismissal | Swipe-to-dismiss — use velocity, not distance thresholds | §11 |

---

## Interruptibility

Great animations can be interrupted mid-play and respond naturally. Framer Motion supports this natively; CSS transitions allow smooth interruption before completion. **Test by clicking rapidly** — animations should blend, not queue.

---

## When to Use Each Approach

| Context | Approach |
|---------|----------|
| Keyboard shortcuts | No animation |
| High-frequency tool | Minimal or no animation |
| Daily-use feature | Fast, subtle animation (180-250ms) |
| Onboarding/first-time | Delightful animations welcome |
| Marketing/landing page | Full creative expression |
| Banking/serious UI | Minimal, functional motion |
| Playful brand | Bouncy, elastic easing appropriate |

---

## Invisible Quality: Lessons from Sonner & Vaul

Emil's open-source libraries (Sonner for toasts, Vaul for drawers) reveal his philosophy in shipped code. The throughline: every detail serves **invisible quality** — users shouldn't notice polished interactions, they should just feel right.

> "When a feature functions as you assume it should, you proceed without giving it a second thought, which is our goal."

Details that matter: matching native motion curves for familiarity (Vaul uses iOS's `cubic-bezier(0.32, 0.72, 0, 1)`), damping near boundaries (*"things in real life don't suddenly stop, they slow down first"*), multi-touch protection, pointer capture during drags, pausing timers when the tab is inactive.

### Sonner Defaults

| Setting | Value | Rationale |
|---------|-------|-----------|
| Duration | 4000ms | Long enough to read, short enough to not annoy |
| Animation | 400ms ease | Smooth but snappy |
| Position | bottom-right | Convention, out of primary content |
| Dismissible | true | User control by default |

### Vaul Defaults

| Setting | Value | Rationale |
|---------|-------|-----------|
| Duration | 500ms | Match iOS sheet feel |
| Easing | cubic-bezier(0.32, 0.72, 0, 1) | iOS-native curve |
| Modal | true | Focus management, overlay |
| Direction | bottom | Convention for mobile sheets |

---

## Emil vs. Jakub vs. Jhey

| Aspect | Emil | Jakub | Jhey |
|--------|------|-------|------|
| **Focus** | Restraint & speed | Subtle polish | Playful experimentation |
| **Key question** | "Should this animate?" | "Is this subtle enough?" | "What could this become?" |
| **Signature technique** | Frequency-based decisions | Blur + opacity + translateY | CSS custom properties |
| **Ideal context** | High-frequency tools | Production polish | Learning & exploration |

**Synthesis**: Use Emil's framework to decide IF you should animate. Use Jakub's techniques for HOW to animate in production. Use Jhey's approach for learning and experimentation.

## Additional Rules (merged from emil-design-eng)

### Core Philosophy Additions
- **Taste is trained, not innate**: Good taste is a trained instinct developed by surrounding yourself with great work and reverse-engineering why things feel good.
- **Unseen details compound**: "All those unseen details combine to produce something that's just stunning, like a thousand barely audible voices all singing in tune." - Paul Graham. The aggregate of invisible correctness creates interfaces people love.
- **Beauty is leverage**: Good defaults and animations are real differentiators in a world where functional software is common.

### Review Format Requirement
When reviewing UI code, you MUST use a markdown table with `| Before | After | Why |` columns. Do NOT use a list format (e.g., "Before:" and "After:" on separate lines).

### Animation Decision Additions
- **Valid Purposes**: Spatial consistency, state indication, explanation, feedback, preventing jarring changes. (Do not animate if the purpose is just "it looks cool" for a frequently seen element).
- **Easing Rule**: **Never use `ease-in` for UI animations**. It makes the interface feel sluggish and unresponsive because it delays the initial movement.
- **Perceived Performance**: The perception of speed matters as much as actual speed. A fast-spinning spinner or a faster 180ms select makes the whole app feel faster.
- **Asymmetric Timing**: Pressing should be slow when deliberate (e.g., hold-to-delete), but release should always be snappy. Slow where deciding, fast where responding.

### Performance & Implementation Gotchas
- **Framer Motion Caveat**: Shorthand properties (`x`, `y`, `scale`) use `requestAnimationFrame` on the main thread and are NOT hardware-accelerated. Use `animate={{ transform: "translateX(100px)" }}` for hardware acceleration when the main thread might be busy.
- **Animate Enter States**: Use `@starting-style` in modern CSS to animate entry without JavaScript `mounted` state.
- **Only animate transform and opacity**: Animating padding, margin, height, or width triggers expensive layout and paint operations.
- **CSS over JS**: CSS animations beat JS under load. For programmatic control with CSS performance, use the Web Animations API (WAAPI).
- **Scale considerations**: `scale()` also scales children proportionally (fonts, icons). This is usually a feature, not a bug.

### Gesture Interactions
- **Multi-touch protection**: Ignore additional touch points after the initial drag begins to prevent UI jumping.
- **Friction vs walls**: Instead of hard stops, allow dragging past boundaries with increasing friction.

### Accessibility
- **Reduced Motion**: `prefers-reduced-motion` means fewer and gentler animations, not zero. Keep opacity and color transitions that aid comprehension, but remove positional motion.
- **Touch device hover**: Gate hover animations behind `@media (hover: hover) and (pointer: fine)` to avoid sticky hover states on touch screens.

### The Sonner Principles
1. **Developer experience**: No context/hooks, easy integration.
2. **Good defaults**: Ship beautiful out of the box.
3. **Naming**: Create an identity (e.g., "Sonner" instead of "react-toast").
4. **Invisible edge cases**: Pause timers off-tab, capture pointer events, fix stacking gaps.
5. **Transitions over keyframes**: For dynamic UI that might be rapidly re-triggered.
6. **Great documentation**: Interactive examples lower the barrier to entry.

### Debugging & Staggering
- **Stagger Animations**: Keep delays between items short (30-80ms). Never block interaction.
- **Testing**: Play animations in slow motion (2-5x slower), step through frame-by-frame, and test on real devices to spot timing and coordination issues. Review your work the next day with fresh eyes.
