# Concrete Form Folio — Design Skill

## Design Context

**Brand archetype:** A brutalist architect's portfolio — board-formed concrete precision meets Le Corbusier's Modulor proportional system. Think Tadao Ando's Church of Light, not a coworking-space landing page.

**Target audience:** Architecture critics, museum curators, design faculty, prospective private clients, and competition juries who understand exposed concrete as a philosophical position. They read El Croquis, visit the Venice Biennale, and judge buildings by their section drawings.

**Use cases:** Architect portfolio, structural engineering firm, concrete fabricator showcase, brutalist architecture gallery, construction atelier, any practice where raw material honesty and mathematical proportion are central to the brand identity.

**Brand personality:** Austere. Monumental. Material. The voice is declarative and heavy — concrete does not apologize. Short sentences. No ornament. Every visual element maps to a real construction process (formwork, pour lines, tie holes, reveal joints).

---

## Design Direction

**Tone extreme:** A poured-concrete slab that happens to be a website. Every texture, shadow, and spacing value references physical concrete construction. The palette is monochromatic warm grey (OKLCH hue 80, chroma 0.01-0.02) with zero accent colors. Visual interest comes from texture layers, directional lighting, and Modulor proportions.

**The ONE memorable thing:** The concrete panel system. Every content block is a formed concrete panel with woodgrain formwork line overlays, edge bevel insets, and directional top-left shadows. Panels are separated by reveal joints — 2px dark grooves with highlight/shadow that simulate where physical formwork sections meet. The page IS a concrete wall.

**Reference sites:** tadao-ando.com (material reverence), peter-zumthor.com (austere minimalism), davidchipperfield.com (monochrome restraint), vfrarchitecture.com (project grid density).

**What makes it unforgettable:** The tie hole dot grid — a full-viewport repeating radial-gradient pattern at Modulor (89px) intervals that simulates the holes left by formwork tie rods. Combined with the Modulor scale ruler on the left edge (Fibonacci-spaced tick marks that animate on scroll) and pour-line breathing effects, the page feels like you are reading architectural drawings cast in concrete.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/concrete-form-folio/raw/design-language` in full. Every OKLCH color, Modulor spacing value, Saira Condensed weight, incised text-shadow spec, and panel construction detail is extracted from the exhibit. Do not invent new values.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/concrete-form-folio/raw/image-kit`. This design uses zero photographs. All texture is CSS/SVG-generated: feTurbulence noise, radial-gradient tie holes, repeating-linear-gradient formwork lines, inset box-shadow edge bevels. If adding architectural photos, desaturate to match the monochrome palette.

**Step 3 — Build**
Produce a single self-contained HTML file. Required sections in order:
1. **SVG filters** — hidden `feTurbulence` concrete noise filter, referenced by `body::after`
2. **Tie hole layer** — fixed full-viewport radial-gradient dots at 89px grid
3. **Modulor scale** — fixed left-edge ruler with Fibonacci-spaced tick marks
4. **Header panel** — name (h1, wt 700, incised-deep), title (wt 300), studio, blockquote with left border, tie-hole accent dots in corners
5. **Pour lines** — horizontal breathing marks between sections
6. **Projects grid** — 2-col CSS grid with reveal-joint gaps, each cell a concrete panel with project number (dot prefix), name, type, description, area/year meta
7. **Profile panel** — 2-col with vertical reveal joint divider, education + recognition sections
8. **Contact panel** — email link with underline hover, location, policy italic, corner tie-hole dots
9. **Footer mark** — centered, smallest text, widest tracking

Include: IntersectionObserver scroll reveal, tie-hole parallax, pour-line opacity breathing, modulor mark width animation, `prefers-reduced-motion` support.

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/concrete-form-folio/raw/anti-patterns` and check every item. Then verify:
- All panels have 4-stop gradient + formwork lines + edge bevels?
- Reveal joints are 2px with highlight/shadow, not simple borders?
- Shadows are directional (3px 4px offset), not centered?
- All colors on OKLCH hue 80 with chroma 0.01-0.02, no accent colors?
- Spacing uses Modulor values (8/13/21/34/55/89/144px)?
- Noise filter is SVG feTurbulence at opacity 0.35, not a texture image?
- Incised text-shadow has both bright highlight and dark shadow layers?

---

## Gotchas

1. **Dark mode brutalism.** This design is warm monochromatic grey (L=0.35 to L=0.88), not dark mode. No black backgrounds, no neon accents, no high-contrast pops.

2. **Stock texture backgrounds.** The concrete surface is SVG `feTurbulence` noise blended via multiply at opacity 0.35. Never use a tiled JPEG concrete texture — it pixelates and adds weight.

3. **Flat cards instead of panels.** Panels need all three layers: multi-stop gradient background, formwork woodgrain lines (repeating-linear-gradient at 17px, opacity 0.06), and edge bevel insets. Missing any layer makes it look like a Material Design card.

4. **Standard 8px spacing.** The Modulor system (8/13/21/34/55/89/144px) is load-bearing. The tie hole grid is 89px. The voids are 34/55/89px. Switching to a 4/8/16/24 grid destroys the proportional harmony.

5. **Centered shadows.** All shadows use directional offsets (3px 4px, 5px 7px) simulating a top-left light source. Centered shadows (0 4px) look generic and lose the architectural lighting reference.

6. **Color accents.** The entire palette is one hue (80) with minimal chroma. Adding any chromatic accent breaks the material truth — concrete has no brand color.

7. **Missing reveal joints.** Simple gaps between grid items are not reveal joints. Proper joints need the dark background (L=0.45), bright 1px highlight, and inset 1px shadow to create the 3D groove of a real concrete form joint.

8. **Wrong typeface.** Saira Condensed's narrow proportions echo architectural drawing lettering. Substituting Inter or Helvetica loses the industrial density. Load weights 200 through 700 — the hierarchy relies on weight contrast within a single family.
