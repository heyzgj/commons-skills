# Origami Fold Folio — Design Skill

## Design Context

**Brand archetype:** A creative technologist's portfolio built on a single physical metaphor — origami. Every UI element behaves like folded paper: creases, facets, diagonal clip-paths, and perspective transforms.

**Target audience:** Design studios, creative agencies, art directors, and tech-art recruiters who value conceptual coherence and craft. They frequent Awwwards, attend OFFF, and hire people whose portfolios feel like finished pieces rather than templates.

**Use cases:** Creative technologist portfolio, computational designer folio, interactive artist site, design engineer CV, generative art portfolio, any maker whose practice bridges physical craft and digital systems.

**Brand personality:** Precise and quiet. The voice is spare — origami rewards economy. Warm neutrals, not cold minimalism. Paper-like surfaces with just enough 3D depth to feel tactile. Light theme only; this is paper, not screens.

---

## Design Direction

**Tone extreme:** Paper-craft precision. Every surface is a facet of folded paper. Diagonal `clip-path` polygons on sections, cards, nav tabs, and contact links. Perspective `rotateY` transforms on the hero facets. Crease lines (1px highlight + 1px shadow) as section dividers. The page literally looks and behaves like a sheet of paper being unfolded.

**The ONE memorable thing:** Project cards that unfold on hover. The front panel has a diagonal `clip-path` bottom edge; on hover it straightens while a detail panel slides open below with a `rotateX(-6deg)` tilt. This single interaction — paper unfolding to reveal content — defines the entire experience.

**What makes it unforgettable:** CSS origami cranes as decorative elements (pure `clip-path` polygons, no images). A fortune-teller (cootie catcher) 2x2 grid for skills with triangular clip-paths meeting at center. Mountain/valley fold indicators as section annotations. Layered depth triangles as parallax decorations. Folded-corner note for the testimonial.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/origami-fold-folio/raw/design-language` in full. Every OKLCH color, clip-path polygon, font weight, easing curve, and layout pattern is extracted from the exhibit. Do not invent new values.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/origami-fold-folio/raw/image-kit`. This design uses NO photography. All visual interest comes from CSS clip-path shapes, geometric decorations, and the origami metaphor. The image kit documents the SVG/CSS-only approach.

**Step 3 — Build**
Produce a single self-contained HTML file. Required sections in order:
1. **Nav** — fixed top-right, paper tabs with trapezoidal `clip-path`, accent fill on hover
2. **Hero** — two angled facets (left/right) with perspective `rotateY`, name split across facets, tagline below, CSS crane decorations, scroll cue with bobbing arrow
3. **Work** — faceted-a background, project cards with unfold-on-hover interaction, numbered 01-06, detail panel with meta data
4. **Process** — faceted-b background, 4-step numbered grid (Score/Fold/Press/Unfold), depth-layer triangles, folded-note testimonial with dog-ear corner
5. **Skills** — fortune-teller 2x2 grid with triangular clip-paths meeting at center, crease crosshairs
6. **About** — two-facet side-by-side layout with opposing diagonal clip-paths, lists with ruled borders
7. **Contact** — faceted background with gradient fold, trapezoidal link buttons

Include: crease-line dividers between sections, mountain/valley fold indicators, IntersectionObserver scroll reveals with stagger, `prefers-reduced-motion` respect, hero parallax facet rotation on scroll.

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/origami-fold-folio/raw/anti-patterns` and verify every item. Then check:
- All section backgrounds use diagonal `clip-path` polygons, not flat rectangles?
- Project cards have the unfold interaction (clip-path + max-height + rotateX)?
- Crease lines are always 1px highlight + 1px shadow pair, never single borders?
- All colors are from the OKLCH token set, no hex or rgba?
- Geologica is at weight 500-800 (never 400), IBM Plex Sans at 300-500?
- Fortune-teller quadrants use triangular clip-paths meeting at center?

---

## Gotchas

1. **Flat rectangular sections.** Every major section uses a diagonal `clip-path` polygon (3-5% offset on top/bottom edges). Without these, the page loses its folded-paper dimensionality and becomes a generic portfolio.

2. **Standard card hover.** Project cards must unfold: the front diagonal clip-path straightens, a hidden detail panel slides open, and the inner wrapper tilts with `rotateX(-6deg)`. A simple scale or shadow hover is not this design.

3. **Missing crease lines.** Crease dividers are pairs of 1px lines (highlight `--crease-hi` + shadow `--crease-sh`), not single `border-bottom` rules. This dual-line technique creates the illusion of a physical fold in the paper.

4. **Cold palette.** The background is warm paper (`oklch(0.97 0.005 80)`), not white. Facets are `0.95` and `0.91` with a hue of 75-80 (warm). The accent is a muted red-brown (`oklch(0.55 0.15 15)`). Pure whites and cool grays destroy the paper metaphor.

5. **Photos or illustrations.** This design is deliberately image-free. Visual interest comes from geometric CSS shapes: origami cranes, depth-layer triangles, diamond decorations, fortune-teller quadrants. Adding stock photos breaks the paper-only materiality.

6. **Wrong font weights.** Geologica display headers use 700-800 weight for impact. IBM Plex Sans body uses 300 weight for lightness. IBM Plex Mono captions use 300-400 weight. Mixing these up (e.g., bold body text) undermines the hierarchy.

7. **Generic fold indicators.** Mountain and valley fold annotations use specific dashed-line patterns: mountain folds are 6px dash/4px gap with offset highlight; valley folds are 3px dash/5px gap. These reference real origami notation. Replacing them with plain dotted lines loses the domain specificity.
