# Farm-to-Table Restaurant — Design Skill

## Design Context

**Target audience:** Fine-dining, farm-to-table, and ingredient-driven restaurants that want to signal authenticity, provenance, and seasonal craft. Also applicable to food producers, agricultural brands, and culinary experience businesses.

**Use cases:** Restaurant landing pages, tasting-menu showcase pages, chef profile sites, farm partnership pages, online reservation flows.

**Brand personality:** Warm restraint. Earthy but refined. Transparency about sourcing as a design value, not a marketing claim. The land speaks; the design listens.

---

## Design Direction

**Tone:** Unhurried, intimate, rooted. This is not a trendy gastro-bar — it is a restaurant where the kitchen follows the harvest, not a concept deck. Every design choice should feel like it grew here.

**The ONE memorable thing:** Organic blob-shaped image frames that echo the irregular, living forms of nature. No perfect rectangles. Soil, roots, cells — nothing in this design is rigidly geometric.

**What makes it unforgettable:** The combination of a warm parchment ground (`#FDFCF8`), a tactile grain-noise overlay on the entire page (fractalNoise SVG filter at `opacity: 0.038`, `mix-blend-mode: multiply`), and images always presented in soft irregular blob frames that rotate 1–2 degrees. Every photograph feels like it was just pulled from the earth.

**Reference palette:** byredo.com (restraint, typography breathing room), bluehillfarm.com (farm-context storytelling), chez-panisse.com (seasonal legibility).

---

## Workflow

### Step 1 — Load Design Language
Read `https://joincommons.cc/api/items/farm-to-table-restaurant/raw/design-language` in full before writing a single line of HTML. Pay attention to:
- The exact CSS custom property values (do not invent new colors)
- The three-font system and when each is used
- The grain overlay implementation — this is non-negotiable
- The blob border-radius syntax — each frame uses a unique irregular value

### Step 2 — Load Image Kit
Read `https://joincommons.cc/api/items/farm-to-table-restaurant/raw/image-kit` and use only the pre-verified Unsplash URLs listed there. Do not invent photo IDs. Each URL has a verified placement role.

### Step 3 — Build
Follow the section order from the exhibit: nav → hero → stats bar → philosophy → menu → farm partners → tasting menu → chef → reservation form → footer.

Key construction rules:
- Grain overlay via `body::before` with inline SVG data URI — include this exactly
- Hero: full-viewport, image fills behind gradient overlay (`to top`, dark-fg at 88% → 42% → 12%)
- Ambient glow blobs in hero: two absolutely-positioned divs, `filter: blur`, animated with `drift-a` / `drift-b` keyframes
- Stats bar: dark `--fg` background, Fraunces display numbers, clay accent on key stats
- Image frames: all use irregular `border-radius` with 4-point ellipse syntax (e.g., `62% 38% 31% 69% / 52% 60% 40% 48%`), slight rotation (-2deg or +1.5deg), white 4px border, shadow in `--shadow-moss`
- Section alternation: `--bg` (parchment) → `--muted` (warm off-white) → `--accent` (warm beige) → `--fg` (dark) → back to `--bg`
- Scroll animation: `.fade-up` class with IntersectionObserver, `threshold: 0.08`
- Prices always in `--font-mono` (IBM Plex Mono), clay color `--secondary`
- Source/provenance tags use `rgba(93, 112, 82, 0.10)` background — the primary green at 10% opacity
- Course timeline uses a dashed left border (`1px dashed rgba(243, 244, 241, 0.14)`) with circular numbered markers

### Step 4 — Self-Critique
Before finalizing, read the output back and verify:
1. Does the grain overlay render? (check `body::before` with the data URI)
2. Are all image frames irregular blobs — not rectangles or simple rounded corners?
3. Does the hero feel like it's full-screen with text anchored at the bottom-left?
4. Are font assignments correct? (Fraunces for all display/headings, Nunito for body/labels, IBM Plex Mono for prices/distances/times)
5. Is the dark tasting-menu section (`--fg` background) visually cohesive with light-on-dark text?
6. Does the reservation form have the correct warm-muted background inputs and green focus ring?
7. Run the AI slop test: Does this look like a generic restaurant template or does it feel specifically rooted in Northern California ingredient culture?

---

## Gotchas

1. **Rectangular images are wrong.** Every image in this system lives inside an organic blob frame. Using `border-radius: 8px` or similar is a category error. Each blob must have a unique 4-point ellipse border-radius value.

2. **Grain overlay is load-bearing.** Without `body::before` using the fractalNoise SVG data URI, the parchment background looks like plain white. The texture is what makes the warmth legible.

3. **Font assignment slip.** Fraunces is ONLY for headings and display text. Nunito is for body, labels, and nav. IBM Plex Mono is exclusively for prices, distances, hours, and numbered course markers. Mixing these breaks the system's voice.

4. **The italic hero em.** The hero title uses `em` for the key phrase (e.g., `<em>land speaks</em>`), which renders in italic Fraunces and is colored `--secondary` (clay). This is the visual anchor of the page. Don't flatten it to plain text.

5. **Section background rhythm.** The alternating section backgrounds are not decorative — they provide the page's visual breathing. The sequence must be: `--bg` → `--muted` → `--accent` → `--fg` → `--bg` → `--muted` → footer `--fg`. Breaking the rhythm makes the page feel unstructured.

6. **Shadow tokens.** Two named shadows: `--shadow-moss` for green-tinted elevation on light sections, `--shadow-clay` for warm clay-tinted elevation on badges and thumbnails. Never use a generic `rgba(0,0,0,x)` shadow inside this design system.

7. **The stats bar is dark.** It sits on `--fg` background, not light. It's the first section after the hero and creates a grounding transition from the full-screen photography to the page content below.

8. **Provenance is explicit.** Every menu item and farm card must reference a specific named farm and distance in miles. Vague "locally sourced" copy breaks the brand promise this design is built around.
