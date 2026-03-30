# LINEARFLOW — Project Tracker Design Skill

A dark, keyboard-first project management UI inspired by Linear. Near-pitch-black background with indigo accent system, JetBrains Mono for all data, Inter for prose. Everything communicates velocity.

---

## Design Context

**Audience:** Engineering teams and product orgs that live in the terminal. Users who close modals by default and navigate with keyboard shortcuts. Developers who find Jira too slow and Notion too freeform.

**Use cases:**
- Sprint / cycle dashboards (progress, burn-down, remaining)
- Issue trackers with priority triage
- Gantt-style roadmap visualization (Q1–Q2 timelines)
- Team workspace sidebars with quick-nav

**Brand personality:** Surgical precision. Dark + focused. Fast transitions. No decorative chrome. Every element earns its presence.

---

## Design Direction

**Tone:** Ultra-dark productivity tool. Near-zero surface noise. Blurs and depth through carefully tuned box-shadows, not heavy borders.

**The ONE memorable thing:** The mouse-tracking radial glow on cards — `radial-gradient(300px circle at var(--cx) var(--cy), rgba(94,106,210,0.10) ...)` — makes the interface feel alive without distracting from content.

**What makes it unforgettable:** The three-layer atmospheric background (radial gradient + animated indigo blobs + fine dot-grid) creates depth without any images. The UI floats above its own atmosphere.

**Reference surfaces to absorb:**
- linear.app — source of truth for this aesthetic
- vercel.com/dashboard — dark nav patterns, ghost buttons
- raycast.com — keyboard-first surface language, kbd badges

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/project-tracker-linear/raw/design-language` fully. Internalize the token system before writing a single line of CSS. The color system has three layers (bg / surface / border), four priority tiers, three status states, and two font roles.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/project-tracker-linear/raw/image-kit`. This exhibit uses no photography — it is pure CSS/SVG. Do not add Unsplash images to this style. Any decorative element must be inline SVG, CSS gradient, or emoji icon.

**Step 3 — Build**
Apply the token system exactly. Key structural rules:
- Sidebar: 216px fixed, `backdrop-filter: blur(24px) saturate(1.4)`, border-right only
- Topbar: 46px height, `backdrop-filter: blur(12px)`, border-bottom only
- Content: CSS grid `1fr 272px`, 18px gap, 22px padding
- Cards: `border-radius: 10px`, triple-layer box-shadow, mouse-tracking `::after` glow
- All numeric data: JetBrains Mono, 10–20px
- All body copy: Inter 12.5–13px, -0.015em letter-spacing
- Active nav item: `--accent-12` background + 2px left accent bar
- Progress bars: 3px height, 700ms expo transition on width
- Issue rows: left 2px accent bar appears on `:hover`

**Step 4 — Self-critique**
Read back the output. Ask: Does it look like it came from a real SaaS product or does it look like a demo? Check these five things:
1. Are all mono numbers using `font-family: var(--mono)`?
2. Is the background `#050506` with blobs, not a flat dark color?
3. Do interactive elements have `:hover` state changes?
4. Are priority badges using the four-tier color system (urgent/high/med/low)?
5. Is the accent color `#5E6AD2` (Linear indigo) — not generic blue (#0070f3) or Tailwind indigo?

---

## Gotchas

1. **Wrong accent color.** Generic blues (`#3B82F6`, `#6366F1`, `#0070F3`) immediately break the Linear aesthetic. The accent is `#5E6AD2` — a specific, desaturated indigo. All glow colors, badge tints, and active states derive from this single value.

2. **Flat dark backgrounds.** Using a solid `#0f0f0f` or `#111` makes the UI look like a default dark mode template. The actual bg is `#050506` with a radial gradient top-highlight (`#0e0e1f`), three animated blur blobs, a noise texture (opacity 0.018), and a 40px dot grid (opacity 0.022). Skip any of these and the depth collapses.

3. **Missing mono font on data.** Issue IDs, progress percentages, kbd badges, cycle numbers, nav counts — all must use `font-family: 'JetBrains Mono', monospace`. Using Inter for these breaks the two-register typographic system.

4. **Heavy borders.** Borders are `rgba(255,255,255,0.065)` at rest and `rgba(255,255,255,0.14)` on hover. Never use solid opaque colors like `#333` or `border: 1px solid white`. Opacity-based borders let the atmospheric background show through.

5. **Forgetting the active nav indicator.** The left sidebar active item needs two things: `background: var(--accent-12)` AND a `::before` pseudo-element (`width: 2px; height: 14px; background: var(--accent); border-radius: 0 2px 2px 0`) positioned absolute at `left: 0`. Without the pseudo-element the active state looks flat.

6. **Progress bar colors collapsing to one style.** Active projects use `linear-gradient(90deg, #5E6AD2, #818CF8)`. Planning projects use `linear-gradient(90deg, #A855F7, #C084FC)`. Completed projects use `#8A8F98` at 0.8 opacity. Using a single accent for all three erases project-status meaning.

7. **Status dots without glow.** Active status dot needs `box-shadow: 0 0 7px rgba(34,197,94,0.7)`. Planning needs `box-shadow: 0 0 7px rgba(168,85,247,0.7)`. Done dot has no glow. Omitting the glow makes the live/in-flight status invisible at a glance.

8. **Expo easing everywhere.** The timing function `cubic-bezier(0.16, 1, 0.3, 1)` is stored as `--expo`. Use `--fast` (160ms) for hover state changes and `--med-t` (240ms) for card transforms and box-shadow transitions. Progress bars use 700ms expo. Never use `ease` or `linear` for interactive states.
