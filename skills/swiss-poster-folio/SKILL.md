# Swiss Poster Folio — Design Skill

## Design Context

**Target audience:** Graphic designers, art directors, and design studios presenting work in the Swiss International Style tradition. Clients are cultural institutions, corporate identities, editorial publishers, and architecture firms.

**Use cases:** Designer portfolio website, design studio showcase, art director personal site, creative agency landing page.

**Brand personality:** Systematic. Disciplined. Objective. Every element justifies its presence through function. Beauty emerges from the precision of the grid, not from decoration. The voice is confident and sparse, like a Muller-Brockmann poster.

---

## Design Direction

**Purpose:** A portfolio where the layout itself IS the proof of the designer's ability. The grid, type hierarchy, and restraint demonstrate mastery before a single project description is read.

**Tone:** EXTREME typographic discipline. Think Neue Grafik, 1959. Not "inspired by Swiss design" — it IS Swiss design methodology applied to a web page.

**The ONE memorable thing:** Oversized tabular project numbers (`01` through `08`) at weight 900 that turn swiss-red on hover. The numbers dominate the left column while structured metadata fills the right — a systematic catalog, not a gallery.

**What makes it unforgettable:** The visible 12-column grid lines in the background. You can literally see the structure the entire page is built on. Combined with a single red accent breaking an otherwise achromatic palette, the restraint is the statement.

**References:**
- Josef Muller-Brockmann grid systems
- Armin Hofmann's Basel School methodology
- Neue Grafik magazine layouts
- Swiss Federal Railways identity system

---

## Workflow

### Step 1 — Load Design Language
Read `https://joincommons.cc/api/items/swiss-poster-folio/raw/design-language` fully. Commit the OKLCH color values, 12-column grid assignments, type scale, and spacing rhythm to working memory before writing HTML.

### Step 2 — Load Image Kit
Read `https://joincommons.cc/api/items/swiss-poster-folio/raw/image-kit`. This exhibit uses **no photography**. All visual impact comes from typography, the red accent, borders, and the visible grid. Do not reach for Unsplash.

### Step 3 — Build
Apply the design language exactly:
- Set all CSS custom properties from the token set (`--white`, `--black`, `--gray-bg`, `--gray-text`, `--swiss-red`)
- Build the visible background grid: `repeating-linear-gradient(90deg, ...)` at 3% opacity per column
- Use 12-column grid for every section with `max-width: 1320px`, `padding: 0 24px`, `column-gap: 20px`
- Follow the label/content column split: labels in cols 1-3, content in cols 4-9, sidebar in cols 9-13
- Use `font-weight: 900` for all display type (hero, numbers, stats, email)
- Use `clamp()` for fluid heading sizes — never fixed px for display type
- Apply `font-variant-numeric: tabular-nums` on project numbers and stat numbers
- Use `3px solid var(--black)` for structural borders, `1px solid oklch(0.0 0 0 / 0.1)` for subtle dividers
- Implement scroll reveal with `translateY(16px)` + `opacity` at `0.5s cubic-bezier(0.16, 1, 0.3, 1)`
- Add a red impact section with full-bleed `--swiss-red` background and stat numbers
- Category tags: `9px` bold uppercase on solid red background, `border-radius: 0`

### Step 4 — Self-Critique
Before finalizing, read back your output and check against `https://joincommons.cc/api/items/swiss-poster-folio/raw/anti-patterns`:
- Does the palette stay within the 5 custom properties? No additional chromatic colors allowed.
- Are structural borders consistently `3px solid var(--black)`?
- Is the label/content column split consistent across all sections?
- Are project numbers oversized (56px-80px) weight 900 with tabular-nums?
- Is there any photography, gradients, border-radius, or blurred shadows? Remove all of these.
- Does the visible background grid show through?

---

## Gotchas

1. **One accent color only.** Swiss-red is the sole chromatic value. Adding a second color (blue, teal, green) destroys the achromatic-plus-one discipline that defines this system.

2. **Visible grid lines are intentional.** The background `repeating-linear-gradient` at 3% opacity shows the 12-column structure. This is not a debug artifact — it is a design feature. Do not remove it.

3. **No border-radius anywhere.** Tags are square (`border-radius: 0`). Cards have no radius. Buttons have no radius. The only curves are the text letterforms themselves.

4. **Project numbers must be oversized.** `clamp(56px, 5vw, 80px)` weight 900 with `font-variant-numeric: tabular-nums`. These numbers anchor the left column and create the visual rhythm. Shrinking them to body-text size removes the exhibit's most distinctive pattern.

5. **All labels are 9-10px uppercase with wide tracking.** Every section label, meta label, and stat label follows the same pattern: tiny size, `font-weight: 600`, `letter-spacing: 0.16-0.18em`, `text-transform: uppercase`. This consistency IS the Swiss voice.

6. **Font is Work Sans (900 weight) — not Helvetica, not Inter.** Work Sans at weight 900 has the geometric character needed for oversized display type. Substituting Inter or system-ui produces a tech-product feel. Substituting Helvetica Neue is historically appropriate but lacks the digital-native crispness.

7. **Header uses backdrop-filter blur at 96% opacity.** The sticky header has `background: oklch(1.0 0 0 / 0.96)` with `backdrop-filter: blur(8px)`. This lets the visible grid show through while keeping text readable on scroll.

8. **Responsive collapse at 720px is single-column.** All 12-column grids collapse to `grid-template-columns: 1fr`. Meta data that was in the right sidebar moves below its content block. Do not attempt a 2-column layout on mobile.
