---
name: web-audit
description: Comprehensive pre-launch website audit for both local website projects (source code, routes, content, components, localhost) and live URLs. Use when the user types /web-audit, asks to audit a website project, review a site before launch, check website copy and spelling, find broken links, or evaluate site conversion, messaging, and narrative flow.
---

# Web Audit — Pre-Launch Website & Project Review

Comprehensive website audit skill designed to evaluate **Website Projects (Local Codebase / Workspace / Localhost)** as well as **Live URLs** before launch. It inspects content quality, copywriting, UX structure, conversion mechanics, internal routing, and technical QA in one structured, actionable deliverable.

Refer to [checklist.md](checklist.md) for detailed granular criteria, common Thai spelling pitfalls, and US/UK English consistency rules.

---

## Phase 1: Target Resolution (Project vs Live URL)

Determine the audit target from the user prompt and active workspace:

| Target Type | Trigger / Condition | Mode |
|---|---|---|
| **Local Website Project** | In an active workspace/repo, or user says "audit project", or points to local folder/files | **Local Project Mode** |
| **Local Dev Server** | `http://localhost:...` or `http://127.0.0.1:...` | **Dev Server + Code Mode** |
| **Live / Staging URL** | User provides public URL (`https://...`) | **Live URL Crawl Mode** |

### Context Gathering (Discovery)
If not already clear from the project files or prompt, confirm:
1. **Product / Service Purpose:** What does this website offer or sell?
2. **Target Audience:** Who is this website for?
3. **Primary Language:** (Thai, English US/UK, bilingual)
4. **Launch Deadline / Pain Points:** Any specific areas of concern?

---

## Phase 2: Audit Execution

### Path A: Local Website Project Mode (Codebase & Workspace)

When auditing a local website project, analyze the codebase systematically:

#### 1. Framework & Route Discovery
- Identify project framework (Next.js, Astro, Vite + React/Vue, Nuxt, SvelteKit, Remix, or static HTML/CSS).
- Locate all page routes:
  - Next.js App Router: `app/**/page.{tsx,jsx,js}`
  - Next.js Pages Router: `pages/**/*.{tsx,jsx,js}`
  - Astro: `src/pages/**/*.{astro,md,mdx}`
  - Static HTML: `**/*.html`
  - Content Collections: `content/**/*.{md,mdx,json}`
- Compile a list of all internal pages and URLs.

#### 2. Static Analysis for Broken Links & Routing
- Scan all `href="..."`, `<Link href="...">`, or `<a href="...">` across components.
- Cross-reference internal links against the discovered route list:
  - If a component links to `/pricing` but no `pricing` page/route exists ➔ Flag as `🔴 CRITICAL: Dead Internal Link`.
  - Check for placeholder links: `href="#"`, `href=""`, `href="javascript:void(0)"`.

#### 3. Content & Copy Static Scan
- Grep codebase for placeholder markers:
  - `lorem ipsum`, `dolor sit`, `placeholder`, `sample text`, `TODO`, `TBD`, `coming soon`.
  - Zeroed metrics in UI: `"0+"`, `"0%"`, `"100% happy clients"`.
  - Dummy author/team data: `"John Doe"`, `"Jane Doe"`, `"Name Here"`, empty avatars.
- Inspect user-facing text in components, layouts, and markdown against [checklist.md](checklist.md):
  - **Thai Pitfalls:** สังเกต, อนุญาต, อัปเดต, ฟังก์ชัน, กราฟิก, โควตา, คำทับศัพท์ขัดแย้ง, สำนวนแปลแข็งทื่อ.
  - **English Consistency:** US vs UK spelling consistency (color/colour, organize/organise).

#### 4. SEO & Meta Tags in Templates
- Check layout files (`layout.tsx`, `Layout.astro`, `index.html`, or `<head>` components):
  - Are `<title>` tags dynamic or unique per page, or does every page have the default template title?
  - Are `<meta name="description">` tags populated with real copy?
  - Are Open Graph tags (`og:title`, `og:description`, `og:image`) configured?
  - Are `alt` attributes present on `<img>` / `<Image>` components?

#### 5. Conversion & UX Structure in Components
- Inspect key landing page sections in code:
  - Hero: Is there a clear H1, descriptive subheadline, and primary CTA?
  - Social Proof: Are customer logos, testimonials, or stats included before pricing?
  - Objection Handling: Is there an FAQ component with real answers?
  - Final CTA: Does the page conclude with a high-intent conversion block before the footer?

*(Optional: If a dev server is running or can be launched via `npm run dev`, fetch rendered pages at `http://localhost:[port]` for DOM inspection).*

---

### Path B: Live URL Mode (Crawl via HTTP / Browser)

When auditing a live deployed website via URL:

#### 1. Hybrid Crawl Sequence
- Start at Homepage, then follow main navigation, footer links, secondary pages, /terms, /privacy, and /404.
- Use `read_url_content` for fast Markdown extraction of visible text, links, and structure.
- If the page is a client-side rendered Single Page Application (SPA with empty body), use browser inspection / Playwright to render the DOM.

#### 2. Live QA Checks
- Test for broken HTTP links (404 status).
- Check title tags and meta descriptions in fetched HTML headers.
- Inspect visible rendered copy, section order, and CTA buttons.

---

## Phase 3: The 6-Layer Audit Matrix

Evaluate the site (whether local project or live URL) against the 6 core layers:

1. **Layer 1: Content & Copy Quality:**
   Placeholder text, zeroed metrics, typos (Thai/English), dialect consistency, tone alignment, value clarity.
2. **Layer 2: UX Structure & Information Architecture:**
   5-second hero test, narrative flow (Problem ➔ Solution ➔ Proof ➔ Offer ➔ FAQ ➔ CTA), cognitive load, mobile density.
3. **Layer 3: Conversion & Persuasion:**
   CTA labeling, social proof placement, pricing presentation & anchoring, objection handling, urgency credibility.
4. **Layer 4: Visual & Creative Direction:**
   Heading hierarchy, section pacing, alt text completeness, brand terminology consistency.
5. **Layer 5: Technical QA & SEO:**
   Broken links, orphan pages, page titles, meta descriptions, Open Graph preview tags, duplicate content blocks.
6. **Layer 6: Specific Content Deep-Dive:**
   Product/pricing listings consistency, team profiles authenticity, legal policies.

---

## Phase 4: The Deliverable

Generate a clean Markdown audit report saved in the project root as:
`[project-or-site-name]-website-audit.md`.

### Report Template:

```markdown
# [Project / Site Name] — Pre-Launch Website Audit Report

> **Audit Date:** [Date]
> **Audit Target:** [Local Codebase: path / Live URL: url]
> **Audited by:** Antigravity (Web Audit Specialist)
> **Scope:** [Pages / Components reviewed]

---

## 1. Executive Summary
[3-4 sentences summarizing overall launch readiness, biggest strengths, and top critical blockers]

### Scorecard
| Dimension | Rating | Key Finding |
|---|:---:|---|
| Content & Copy Quality | Good / Needs Work / Critical | [Summary] |
| UX & Structure | Good / Needs Work / Critical | [Summary] |
| Conversion & Persuasion | Good / Needs Work / Critical | [Summary] |
| Technical QA & SEO | Good / Needs Work / Critical | [Summary] |

---

## 2. Critical Issues (Fix Before Launch)
- 🔴 `[CRITICAL]` **[Issue Title]** — *File/Route: [path]*
  - **Problem:** [Clear description of what is broken, missing, or placeholder]
  - **Impact:** [Why this damages conversion, credibility, or user flow]
  - **Recommended Fix:** [Code snippet, corrected route, or copy fix]

---

## 3. Content & Copywriting Corrections
### [File / Page Name]
- ⚠️ **[Typo / Phrasing]:**
  - **Original:** "[Current text]"
  - **Correction:** "[Corrected text]"
  - **Reason:** [Spelling rule, tone, or dialect consistency]

---

## 4. UX & Structure Improvements
- 🟡 `[IMPORTANT]` **[UX Gap]:** [Description & structural fix]
- 💡 `[SUGGESTION]` **[Flow Polish]:** [Recommendation for better cognitive pacing]

---

## 5. Conversion & Persuasion Gaps
- 🟡 `[IMPORTANT]` **[Conversion Issue]:** [Missing social proof, weak CTA, or pricing objection gap]
- 💡 `[SUGGESTION]` **[Copy Optimization]:** [More compelling action label or benefit headline]

---

## 6. Technical QA & SEO Findings
- 🔴 `[CRITICAL]` / 🟡 `[IMPORTANT]` **Routing & Meta Tags:**
  - [Route / Meta / Alt tag]: [Status & fix]

---

## 7. Priority Action Plan

| Priority | Action Item | Category | Target File / Page |
|---|---|---|---|
| 🔴 P0 (Before Launch) | [Fix critical item] | Code / Copy / Route | [File / URL] |
| 🟡 P1 (Week 1) | [Improvement] | Conversion / UX | [File / URL] |
| 🟢 P2 (Polish) | [Enhancement] | SEO / Polish | [File / URL] |
```

---

## Severity Markers
- `🔴 CRITICAL` — Must fix before launch (broken link, placeholder data, zeroed metric, major typo, missing CTA).
- `🟡 IMPORTANT` — Fix in week one (UX friction, weak copy, missing FAQ or social proof).
- `🟢 NICE TO HAVE` — Polish and refinement for future iterations.
- `⚠️` — Text / Copy / Spelling correction with exact replacement.
- `💡` — Strategic design / structure suggestion.

---

## Guiding Principles
1. **Be specific and actionable:** State the exact file path, component name, line number, or URL.
2. **Provide ready-to-use fixes:** Show exact replacement code or corrected copy rather than vague advice.
3. **Respect project architecture:** Adapt recommendations to the project's actual framework and design system.
4. **Summary in chat, detail in document:** Save the full report as `[name]-website-audit.md` in the project, and present an executive summary with the top 3-5 critical findings in chat.
