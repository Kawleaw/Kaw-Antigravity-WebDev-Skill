# Jakub Krehel's Animation Principles

Jakub Krehel is a design engineer known for his work at jakub.kr. His approach emphasizes **subtle production polish** — animations that enhance the experience invisibly, designed for real client work where users interact repeatedly.

This file is Jakub's **philosophy and decision frameworks** — the judgment for *how polished* and *how subtle* motion should be. Implementation code lives in `motion-cookbook.md` (cross-referenced below).

---

## Core Philosophy: Invisible Enhancement

> "The best animation is that which goes unnoticed."

His key question for any interaction: **"Is this subtle and polished enough for production?"**

Jakub's work embodies **refinement for production use**. His animations are:

- **Barely noticeable** — If users consciously notice the animation, it's probably too much
- **Production-ready** — Designed for real client work, not demos
- **Contextually appropriate** — Adapts to light mode, varied backgrounds, real content
- **Subtle over flashy** — The goal is to make interfaces feel smooth and responsive, not impressive

**The best compliment**: "This feels really nice" — not "cool animation!"

**The test**: If you remove the animation, do users feel something is missing? Good. If users comment "nice animation!" every time they see it? Too prominent.

---

## When to Apply Jakub's Mindset

- Production applications and client work
- Professional/enterprise interfaces
- When users will interact repeatedly (animations must not get tiresome)
- When accessibility and performance are critical
- When you need polish without distraction

---

## Signature Techniques (decision context — code in cookbook)

| Technique | When Jakub reaches for it | Cookbook |
|-----------|---------------------------|----------|
| Enter recipe (opacity + translateY + blur) | Any element appearing — blur creates a "materializing" feel more physical than fade alone | §1 |
| Subtler exits | Always — exits don't need the same movement or attention as enters; the user is moving on | §1 |
| Spring animations (`bounce: 0`) | Production motion — smooth deceleration without overshoot; reserve `bounce > 0` for playful contexts | §2 |
| Shadows instead of borders | Light mode on varied backgrounds — shadows adapt via transparency where solid borders clash | §3 |
| oklch gradients | Any gradient — interpolates through perceptually uniform space, avoiding muddy midpoints | §3 |
| Blur as a signal | Materializing in/out — blur→sharp = entering focus, sharp→blur = losing relevance | §3 |
| Optical alignment | Buttons with icons, play buttons, asymmetric shapes — trust your eyes over math | §4 |
| Animated icon swaps (opacity + scale + blur) | Contextual icon changes (copy→check) — instant swaps feel jarring and get missed | §5 |
| Shared layout via `layoutId` | Smooth FLIP transitions between different components (card→modal) | §6 |
| Targeted `will-change` | Specific properties about to animate — never global | see `performance.md` |

**Decision rules baked into the techniques:**
- Exits should always be subtler than enters — smaller movement, same blur.
- `bounce: 0` is the production default; bounce above zero reads as playful.
- Borders are fine in dark mode or when you want intentional hard edges.

---

## Common Mistakes (Jakub's Perspective)

- **Making enter and exit animations equally prominent** — Exits should be subtler
- **Using solid borders when shadows would adapt better** — Especially on varied backgrounds
- **Forgetting optical alignment** — Buttons with icons, play buttons, asymmetric shapes
- **Over-animating** — If users notice the animation itself, it's too much
- **Using the same animation everywhere** — Context should drive timing and easing choices
- **Ignoring hover state transitions** — Even small transitions (150-200ms) feel more polished than instant changes

---

## Jakub vs. Emil vs. Jhey

| Aspect | Jakub | Emil | Jhey |
|--------|-------|------|------|
| **Focus** | Subtle polish | Restraint & speed | Playful experimentation |
| **Key question** | "Is this subtle enough?" | "Should this animate?" | "What could this become?" |
| **Signature technique** | Blur + opacity + translateY | Frequency-based decisions | CSS custom properties |
| **Ideal context** | Production polish | High-frequency tools | Learning & exploration |

**When to use Jakub**: You've decided something should animate (passed Emil's gate) and need to make it production-ready and polished.

## Additional Rules (merged from jakub-better-ui)

- **Concentric border radius**: Outer radius = inner radius + padding. Mismatched radii on nested elements is a common issue.
- **Interruptible animations**: Use CSS transitions for interactive state changes (can be interrupted). Reserve keyframes for staged sequences that run once.
- **Split and stagger enter animations**: For staged entrances, break content into semantic chunks and stagger by ~100ms. Keep high-frequency interactions unstaggered.
- **Image outlines**: Give images a `1px` outline at low opacity (`oklch(0 0 0 / 0.1)` in light, `oklch(1 0 0 / 0.1)` in dark). Never use a tinted neutral to avoid it reading as dirt.
- **Scale on press**: Use `scale(0.96)` on click for tactile feedback. Anything below `0.95` feels exaggerated.
- **Skip animation on page load**: Use `initial={false}` on `AnimatePresence` to keep enter animations off the first render.
- **Suppress transitions on theme switch**: Inject `*,*::before,*::after{transition:none !important}`, force a reflow, then remove it on the next frame to prevent smeared transitions.
- **Transition only what changes**: Always name the exact properties (e.g., `transition-property: scale, opacity`), rather than generic `all` or `transform`.
- **Match icon stroke to text weight**: Give icons a `1.5px` stroke beside regular (400) text, and `2px` beside semibold (600).
- **One SVG, recolored per state**: Icons use `currentColor`. Use outline for default, fill for active state.
- **Motion restraint**: Give high-frequency interactions instant feedback, or a transition of ≤150ms on opacity and color. Every animated state change needs a static cue (color, icon, label).
