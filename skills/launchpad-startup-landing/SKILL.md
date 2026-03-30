# Launchpad — Startup Landing Page Design Skill

## Design Context

**Target audience:** Developer-focused SaaS startups — platforms, dev tools, CI/CD products, API-first companies. Founders, engineering leaders, and growth teams.

**Use cases:** Product launch pages, developer platform homepages, SaaS marketing sites, free-trial acquisition funnels.

**Brand personality:** Confident, fast, technical but approachable. Signals competence without arrogance. The vibe is "Y Combinator portfolio company that actually ships." Think Linear, Vercel, Railway — polished but never corporate.

---

## Design Direction

**Tone:** Energetic precision. Every element earns its place. Clean lines, purposeful whitespace, zero decoration that doesn't also communicate.

**The ONE memorable thing:** The hero-right floating product mockup — a live deploy pipeline card (progress bar, step checklist, status badges) that visually proves the product works before a word is read. It's the product demo without the demo.

**References:** Linear.app, Vercel.com, Railway.app, Render.com — all share the same light-on-dark dark sections, Inter body type, Calistoga-style editorial serifs for headings, JetBrains Mono for technical labels.

**What makes it unforgettable:** The split hero (editorial left + animated product right), the animated rotating dashed orbit circles, floating badges that drift independently at different phases, and the dark stats bar with subtle dot-grid texture and radial glow bleeds from edges.

---

## Design Language Summary

### Typography
- **Display:** `Calistoga` (Google Fonts, Georgia fallback) — headings only, tight tracking `-0.03em`
- **Body:** `Inter` (400/500/600/700, italic 400) — all prose and UI copy
- **Mono:** `JetBrains Mono` (400/500) — labels, badges, section eyebrows, stats sublabels, terminal-style metadata

### Color System

| Token | Value | Role |
|---|---|---|
| `--bg` | `#FAFAFA` | Page background |
| `--fg` | `#0F172A` | Primary text, dark sections bg |
| `--muted` | `#F1F5F9` | Card fills, hover states, progress track |
| `--muted-fg` | `#64748B` | Secondary text, labels, metadata |
| `--card` | `#FFFFFF` | Card surfaces |
| `--border` | `#E2E8F0` | All dividers and card outlines |
| `--accent` | `#0052FF` | Primary blue (Coinbase-adjacent) |
| `--accent-2` | `#4D7CFF` | Gradient endpoint |
| `--gradient` | `linear-gradient(to right, #0052FF, #4D7CFF)` | CTAs, icon backgrounds, progress fills |
| `--success` | `#10B981` | Live badge dot, positive indicators |
| `--success-bg` | `#ECFDF5` | Live badge background |
| `--success-border` | `#A7F3D0` | Live badge border |
| `--star` | `#F59E0B` | Review stars |

### Shadows
- `--shadow-xs`: `0 1px 3px rgba(15,23,42,0.08)` — nav logo icon
- `--shadow-sm`: `0 2px 8px rgba(15,23,42,0.08), 0 0 0 1px rgba(15,23,42,0.04)` — subtle card lift
- `--shadow-md`: `0 8px 24px rgba(15,23,42,0.10), 0 0 0 1px rgba(15,23,42,0.04)` — hover state
- `--shadow-lg`: `0 20px 48px rgba(15,23,42,0.14), 0 0 0 1px rgba(15,23,42,0.05)` — hero card
- `--shadow-accent`: `0 4px 14px rgba(0,82,255,0.25)` — blue glow on primary buttons and icon wraps

### Radius
- `--radius-sm`: `8px` — nav buttons, small controls
- `--radius`: `12px` — standard cards, large buttons
- `--radius-lg`: `20px` — feature cards, pricing cards, testimonial cards

### Spacing
Max content width: `1200px`. Horizontal page padding: `32px`. Section vertical padding: `80–100px`. Hero top padding: `140px` (nav offset).

### Animations
- **fade-up**: opacity 0→1 + translateY 24px→0, `cubic-bezier(0.16, 1, 0.3, 1)` over 0.6s. Stagger delays: 0.1s, 0.2s, 0.3s, 0.4s, 0.5s. Triggered by IntersectionObserver at `threshold: 0.12`.
- **float**: translateY 0 ↔ -12px, `ease-in-out` over 4s, infinite. Applied to hero card and floating badges (offset phases: `-2s`, `-1s`).
- **rotate**: dashed orbit circles spin at 75s (CW) and 120s (CCW).
- **pulse-ring / pulse-expand**: 8px dot pulses with expanding ring halo, 2s cycle — used on section label pills.
- **spin**: 360° linear over 0.8s — active step spinner.
- **progress-fill**: width 65%→91% alternating, 2.5s ease-out infinite alternate.
- **count-up** (JS): stat numbers animate from 0 using `1 - (1-progress)^4` easing over 1600ms on scroll entry.

---

## Workflow

### Step 1 — Load design language
Read `https://joincommons.cc/api/items/launchpad-startup-landing/raw/design-language`. Internalize the full token set (colors, fonts, shadows, radius, spacing). All values used in the exhibit originate here.

### Step 2 — Load image kit
Read `https://joincommons.cc/api/items/launchpad-startup-landing/raw/image-kit`. This exhibit uses no Unsplash photography — it is a pure CSS/SVG implementation. Floating product mockups are built entirely with HTML/CSS. Do not add photography unless the brief explicitly calls for it.

### Step 3 — Build
Construct the page with these sections in order:
1. **Nav** — frosted glass (`backdrop-filter: blur(12px)`), 60px height, fixed, logo + links + ghost/primary CTAs
2. **Hero** — split grid `1.1fr 0.9fr`, editorial left (label pill + display heading + gradient word + body + dual CTA + trust row), animated product mockup right
3. **Logos bar** — mono uppercase label, faded brand wordmarks in display font
4. **Features grid** — 3-col, cards with gradient icon wraps + `--shadow-accent`
5. **Stats bar** — full-width `--fg` dark, dot-grid texture, edge glow radials, 4-col, display numerals + mono labels + count-up JS
6. **Pricing** — 3-col, center card uses gradient border trick + `scale(1.03)` elevation
7. **Testimonials** — 2-col, accent bar top stripe, italic quote, gradient avatar initials
8. **CTA (dark)** — full-width `--fg`, dot-grid, center glow ellipse, white + ghost-light button pair
9. **Footer** — minimal 1-line copyright + link row

### Step 4 — Self-critique
Before delivering, read the output back and check:
- [ ] Every heading uses `font-family: var(--font-display)` with `letter-spacing: -0.03em`
- [ ] Section eyebrow pills use `font-family: var(--font-mono)` + uppercase + 0.15em tracking
- [ ] Primary buttons use `--gradient` background and `--shadow-accent`
- [ ] Featured pricing card uses the gradient-border double-background technique, not a plain colored border
- [ ] Hero right floating card has the orbit circles and all three floating badges
- [ ] Fade-up class + IntersectionObserver present with stagger delays
- [ ] Count-up JS present for stat numbers
- [ ] Dark sections (`stats-section`, `cta-section`) both have dot-grid backgrounds + radial glow elements
- [ ] No external images introduced without explicit brief requirement

---

## Gotchas

1. **The gradient border on `pricing-featured` is a CSS trick, not a plain border.** It requires `border: 2px solid transparent`, then `background-image: linear-gradient(white, white), linear-gradient(to bottom, #0052FF, #4D7CFF)` with `background-origin: border-box; background-clip: padding-box, border-box`. Using a colored border instead breaks the effect.

2. **Font stack order matters.** Calistoga is display-only. Never use it for body copy or mono contexts. JetBrains Mono is exclusively for labels, badges, monospaced metadata. Mixing them ruins the typographic hierarchy.

3. **Dark sections require their own layering.** Both `stats-section` and `cta-section` use `position: relative; overflow: hidden` with absolutely-positioned dot-grid and radial-glow pseudo-elements at `z-index: 0`, and content at `z-index: 1`. Forgetting the z-index stacking makes content disappear under the texture.

4. **The float animation must have phase offsets.** The main card animates normally. The secondary badge needs `animation-delay: -2s` and the tertiary badge needs `animation-delay: -1s`. Without offsets all three badges bob in sync, looking mechanical instead of organic.

5. **The IntersectionObserver threshold is 0.12, not 0.5.** Using a higher threshold means elements on short viewports never trigger. The count-up observer uses `threshold: 0.5` intentionally — stat numbers shouldn't start until they're mostly in view.

6. **Gradient text requires `-webkit-text-fill-color: transparent`.** Using `color: transparent` alone doesn't work in all browsers. The full pattern is: `background: var(--gradient); -webkit-background-clip: text; background-clip: text; -webkit-text-fill-color: transparent`.

7. **Logo items in the logos bar use `--border` as their base color** (`#E2E8F0`), creating a deliberately faded/muted "trusted by" strip. Using `--muted-fg` makes them too prominent and competes with the hero section above.

8. **Responsive breakpoints:** At 900px, hide `.hero-right` entirely (don't just stack it — the orbit circles and floating card don't work responsively). Pricing featured card drops `transform: scale(1.03)` to none. Nav links hidden at 900px. Single-column features at 600px.
