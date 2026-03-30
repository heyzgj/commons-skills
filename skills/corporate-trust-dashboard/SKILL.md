# Corporate Trust Dashboard — Design Skill

## Design Context

**Audience:** Portfolio managers, CFOs, financial analysts at B2B SaaS or fintech companies. Users are data-literate professionals who make high-stakes decisions from this interface daily.

**Use cases:** Financial analytics dashboards, SaaS business dashboards, portfolio management tools, revenue operations views, executive reporting portals.

**Brand personality:** Authoritative yet approachable. Professional without being sterile. Indigo-violet as a trust signal — not banking-blue, not startup-teal. Feels like a well-engineered Bloomberg terminal that had a design refresh.

---

## Design Direction

**Tone:** Confident precision. Every number is large and legible. Every trend has a direction signal. The interface never whispers — it speaks clearly.

**The ONE memorable thing:** Indigo-to-violet gradient used as the single brand thread — it runs through the sidebar brand mark, the primary CTA button shadow, the KPI accent bars, the sparkline on the primary card, and the active nav indicator. Users feel it subliminally as a cohesion device without it being loud.

**What makes it unforgettable:** KPI cards each carry a unique accent color on their 3px top bar — indigo, emerald, violet, amber — giving a traffic-light-style visual scan at a glance. This lets users locate their quadrant instantly without reading labels.

**Reference sites to absorb:**
- Linear (linear.app) — sidebar navigation density, icon-label rhythm, subtle active state
- Stripe Dashboard (dashboard.stripe.com) — transaction table design, status pill system
- Vercel Dashboard — topbar search + date pill + icon-button cluster pattern
- Retool — data-dense card layout, chart annotation style

---

## Workflow

### Step 1 — Load design language
Read `https://joincommons.cc/api/items/corporate-trust-dashboard/raw/design-language` in full. Internalize the CSS custom property system, the 4-color KPI accent system, the shadow scale, and the gradient rule before writing a single line of code.

### Step 2 — Load image kit
Read `https://joincommons.cc/api/items/corporate-trust-dashboard/raw/image-kit`. This exhibit uses **no Unsplash images** — all visuals are CSS gradients and inline SVG. Do not add photography. Any charts must be built as inline SVG with the specified color palette.

### Step 3 — Build
- Use `Plus Jakarta Sans` (weights 400, 500, 600, 700, 800) exclusively. Load from Google Fonts.
- Apply the 6-stagger animation system (`rise` keyframe + `.d1`–`.d6` delay classes) to all major layout sections.
- Sidebar: fixed, 232px wide, white surface, with nav-group sections labeled in 10px uppercase.
- Topbar: sticky, 60px, frosted glass (`backdrop-filter: blur(10px)`, 88% opacity background).
- KPI grid: 4-column, each card with color-coded 3px top accent bar and inline sparkline SVG.
- Charts: inline SVG with gradient fills, dashed target lines, and a highlighted "current" data point with dark tooltip.
- Status pills: colored background at 10% opacity, colored text — never solid backgrounds.
- All cards: `border-radius: 12px`, 1px `#E2E8F0` border, indigo-tinted shadow.

### Step 4 — Self-critique gate
Before delivering, check:
1. Does the gradient (`linear-gradient(135deg, #4F46E5, #7C3AED)`) appear in at least 3 places (brand, CTA button, active nav)?
2. Are all 4 KPI top-bar gradients distinct (indigo, emerald, violet, amber)?
3. Is `Plus Jakarta Sans` the only typeface?
4. Do all status pills use 10% opacity backgrounds, not solid fills?
5. Are sparklines present on KPI cards?
6. Is the background `#F8FAFC` (not pure white, not gray)?
7. Does the topbar have `backdrop-filter: blur`?

---

## Gotchas

**1. Wrong blue for primary.** Do not use `#3B82F6` (Tailwind blue-500) or `#2563EB` (blue-600). The primary is `#4F46E5` (indigo-600). Using standard blue destroys the trust-brand character.

**2. Solid pill backgrounds.** Status pills must use transparent backgrounds (`rgba(color, 0.1)`), never solid. Solid pills read as loud warning labels, not clean metadata tags.

**3. Dark mode default.** This design is light-mode first. Do not add a dark mode variant or dark background. The `--bg: #F8FAFC` off-white is intentional — pure `#FFFFFF` makes it feel clinical.

**4. Adding photography.** This exhibit is intentionally photography-free. Do not inject Unsplash hero images into a financial dashboard. It signals distrust and breaks the data-focused aesthetic.

**5. Over-rounding.** All cards use `border-radius: 12px`. Do not apply `border-radius: 16px` or `24px` — that slides into consumer-app territory. Do not use `border-radius: 4px` — that reads as legacy enterprise.

**6. Missing gradient thread.** If the indigo-violet gradient (`linear-gradient(135deg, #4F46E5, #7C3AED)`) does not run through the brand mark, primary button, and active nav indicator simultaneously, the design loses its cohesion device and reads as generic.

**7. Chart color mismatch.** Chart lines must use the same color tokens as their KPI cards. The revenue chart line is `#4F46E5→#7C3AED`. Using a different gradient on the chart breaks the visual contract established by the KPI cards.

**8. Navigation density.** Nav items are 9px top/bottom padding, 13px font-size, grouped with 10px uppercase labels. Do not increase padding — dashboard nav must be dense, not airy.
