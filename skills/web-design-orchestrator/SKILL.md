---
name: web-design-orchestrator
description: >-
  ใช้สกิลนี้สำหรับทุกงานที่เกี่ยวกับเว็บไซต์ UI/UX design, landing page,
  dashboard, frontend, component, animation หรือ motion design.
  Use when the user asks to build, design, redesign, audit, animate, or polish
  any web interface, landing page, dashboard, app UI, or frontend component.
  This is the ONLY skill you should activate for web/UI work — it will guide
  you to the correct specialist skill.
---

# Web Design Orchestrator

สกิลนี้เป็น **entry point เดียว** สำหรับทุกงานเว็บไซต์และ UI/UX
เมื่อ user ขอทำงานเว็บ ให้อ่านสกิลนี้ก่อน แล้ว route ไปยังสกิลที่เหมาะสม

> [!IMPORTANT]
> **แต่ละงานให้ route ไปสกิลเดียวเท่านั้น** เพื่อลดความสับสน
> ถ้า user ต้องการหลายสกิลพร้อมกัน ให้ทำทีละขั้นตอน

---

## Decision Tree — เลือกสกิลตามประเภทงาน

อ่านตารางนี้แล้วเลือกสกิลที่ตรงกับสิ่งที่ user ต้องการมากที่สุด:

| ถ้า user ต้องการ... | สกิลที่ควรเรียกใช้ | หมายเหตุ |
|---|---|---|
| สร้าง **landing page** / marketing page / conversion-focused page | `landing-page-design` | เน้น copywriting, vibe discovery, conversion psychology |
| ใช้ **design token**, palette generation, **anti-AI-slop** pipeline, asset sourcing (photos/icons) | `tastemaker` | มี Python scripts อัตโนมัติ, cross-project memory |
| **Audit, polish, shape, harden** app/dashboard/native UI, ใช้ 20+ commands (`/shape`, `/critique`, `/polish`, `/live`) | `impeccable` | รองรับ iOS/Android native ด้วย |
| สร้าง **slide deck**, data viz dashboard, interactive prototype, ใช้ brand recipe | `web-design-engineer` | มี 25 style recipes, Tweaks panel, multi-artifact |
| งาน **motion design**, animation audit, micro-interactions, transition physics | `design-motion-principles` | รวม Emil Kowalski + Jakub Krehel + Jhey Tompkins |
| **Cinematic scroll**, WebGL/Three.js 3D ในเว็บ, video reverse engineering | `mengto-skills` | เฉพาะทาง: 3D web, scrollytelling, GSAP |
| ใช้ **Magic UI components** (shadcn registry, React/Tailwind/Framer Motion) | `magic-ui` | Component library: Particles, Border Beam, Bento Grid, etc. |

---

## วิธีใช้ Decision Tree

1. **อ่านคำขอของ user** — ระบุว่าต้องการงานประเภทไหน
2. **จับคู่กับตาราง** — เลือกแถวที่ตรงที่สุด
3. **อ่าน SKILL.md ของสกิลนั้น** — แล้วทำตามคำแนะนำในสกิล
4. **ถ้าไม่แน่ใจ** — แสดงตารางนี้ให้ user เลือกเอง

### ตัวอย่าง Prompt → สกิล

| Prompt ของ user | สกิลที่ควรเลือก |
|---|---|
| "ทำ landing page ให้สวย" | `landing-page-design` |
| "audit UI ของแอปนี้หน่อย" | `impeccable` |
| "เพิ่ม animation ให้ smooth ขึ้น" | `design-motion-principles` |
| "ทำ dashboard ให้ดูเป็น Bloomberg terminal" | `web-design-engineer` |
| "ใส่ Bento Grid กับ Particles effect" | `magic-ui` |
| "ทำเว็บให้มี 3D scroll effect" | `mengto-skills` |
| "สร้าง design system สำหรับ startup" | `tastemaker` |
| "make this look good / build the frontend" | `tastemaker` |
| "ทำเว็บไซต์" (กว้างๆ) | แสดงตารางให้ user เลือก |

---

## สกิลที่อยู่ในกลุ่มนี้ (7 ตัว)

1. **`tastemaker`** — Automated design engine: token generation, asset pipeline, anti-AI-slop, cross-project memory
2. **`impeccable`** — App/native UI command suite: 20+ commands, iOS/Android, drift detection, live iteration
3. **`design-motion-principles`** — Motion & animation authority: 3 designers, create/audit modes, HTML report
4. **`landing-page-design`** — Conversion marketing specialist: vibe discovery, objection-handling, hero optimization
5. **`web-design-engineer`** — Multi-artifact builder: slide decks, dashboards, prototypes, 25 brand recipes
6. **`mengto-skills`** — Cinematic 3D web: WebGL, scrollytelling, video reverse engineering
7. **`magic-ui`** — Component registry toolkit: 150+ React/Tailwind/Framer Motion components via shadcn
