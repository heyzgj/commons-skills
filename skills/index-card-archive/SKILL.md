---
name: index-card-archive
description: Personal research archive rendered as a physical card catalog with ruled-line cards, red margin rules, Dewey-style classification tabs, and library-stamp footer on archival cream.
---

# Index Card Archive — Design Skill

## What This Skill Does

Provides a complete design system for building personal research archives styled as physical 3x5 index card catalogs. The system includes: index cards with red ruled lines and classification numbers, tabbed drawer navigation with Dewey-style numbering, a library checkout card for about/bio content, and a rubber-stamp footer. All visual texture is CSS-only (SVG noise grain, repeating-gradient ruled lines, pseudo-element red rules). No photography.

## When to use

- Personal research archives and reading note collections
- Commonplace book or zettelkasten interfaces
- Academic card catalogs and essay index sites
- Writer/researcher portfolio and note collections
- Any content that benefits from a classification-and-filing metaphor

## When not to use

- E-commerce product grids (cards suggest purchase, not contemplation)
- Real-time dashboards (the analog metaphor fights live data)
- Social media feeds (the pacing is too slow and deliberate)
- Photo galleries (this design uses no photography)
- Dark-mode-first products (the archival cream palette is light-only)

## Default Workflow

**Step 1 — Load the design language.** Read `https://joincommons.cc/api/items/index-card-archive/raw/design-language` fully. Internalize the two-typeface system (Libre Baskerville for display, IBM Plex Mono for all metadata), the OKLCH color tokens, the card anatomy (header / red-rules / ruled-body / footer), and the 4pt spacing grid.

**Step 2 — Load tokens.** Read `tokens.dtcg.json` for exact values: all OKLCH colors, font sizes, spacing, easing curves, and shadow definitions. These are the source of truth.

**Step 3 — Build.** Implement the full page following component order: skip-link > archive-header > catalog-tabs > filing-stats > card-catalog grid (with drawer-dividers and index-cards) > checkout-card > footer-stamp. Key requirements:
- Every card must have both `::before` (horizontal red rule at top: 28px) and `::after` (vertical margin at left: 38px)
- Card body uses `repeating-linear-gradient` with 28px period; all text inside uses `line-height: 28px`
- Cards use staggered entry animation (40ms increment, ease-out-quart)
- Tabs filter cards by `data-drawer` attribute with `aria-live` count updates
- Cards at rest have subtle nth-child rotation; hover lifts with flat offset shadows
- Include both SVG noise overlays on body for paper grain
- Footer stamp uses `border: 3px double var(--stamp)` with rotation and ink-bleed pseudo

**Step 4 — Self-critique.** Check against `exhibit.html`:
- Does every card have both red rules?
- Does card body text sit on the ruled lines (line-height: 28px)?
- Are all metadata elements in IBM Plex Mono with uppercase + letter-spacing?
- Is the paper grain overlay present?
- Do hovers use flat offset shadows (no blur)?
- Are there any rounded corners? (Must be zero.)
- Does `prefers-reduced-motion` disable transforms?

## Supporting Files

| File | Purpose |
|---|---|
| `https://joincommons.cc/api/items/index-card-archive/raw/design-language` | Full design language: color tokens, typography, layout patterns, motion, signature moves, implementation invariants |
| `tokens.dtcg.json` | DTCG-format design tokens extracted from exhibit CSS custom properties |
| `exhibit.html` | Rendered full-page exhibit — the canonical proof of the design system |
| `https://joincommons.cc/api/items/index-card-archive/raw/design-language` | Extended design language reference with detailed type scale table |
| `https://joincommons.cc/api/items/index-card-archive/raw/image-kit` | Photography policy (none used), CSS-only visual element inventory |
| `https://joincommons.cc/api/items/index-card-archive/raw/anti-patterns` | 7 topic-specific failure modes + universal AI slop checklist + self-critique protocol |

## Supporting References

- `https://joincommons.cc/api/items/index-card-archive/raw/design-language` — Extended design language with detailed type scale, layout dimensions, and motion tokens
- `https://joincommons.cc/api/items/index-card-archive/raw/image-kit` — Photography policy (none used) and CSS-only visual element inventory
- `https://joincommons.cc/api/items/index-card-archive/raw/anti-patterns` — 7 domain-specific failure modes, universal AI slop checklist, self-critique protocol
- `evidence/blueprints.json` — Blueprint definitions (not yet generated)
- `evidence/component-matrix.json` — Component coverage matrix (not yet generated)

## Output Expectations

The output should be a single-page HTML file that feels like opening a researcher's desk drawer. Every card has red ruled lines, text sits on the rules, the tab system filters like physical drawer pulls, and the library stamp anchors the footer. The page should pass these tests:
- Sharp corners everywhere (zero border-radius)
- Only two fonts (Libre Baskerville + IBM Plex Mono)
- Warm cream background (not pure white)
- Paper-grain SVG noise overlay visible
- Flat offset shadows on card hover (no blur)
- Red rules on every card (both horizontal and vertical)

## Reuse and Adaptation Guidance

- **Content swap:** Replace card titles, excerpts, and tags. Keep the classification number system (NNN.NN format) and date format (YYYY-MM-DD).
- **Category adjustment:** Add or remove tabs. Each tab needs a `data-drawer` attribute matching card `data-drawer` values. Update drawer-dividers to match.
- **About section:** The checkout card pattern works for any bio/profile content. Keep the two-column metadata grid.
- **Extend with search:** Add a monospace-styled search input above the tabs. Filter cards by title/tag text match.
- **Scale up:** For large collections (50+ cards), add pagination or infinite scroll below the grid. Maintain the staggered entry animation for each batch.

## Non-negotiables

- Both red rules (horizontal + vertical) on every card using `var(--red-line)`
- Card body `line-height: 28px` matching the `repeating-linear-gradient` 28px period
- Zero `border-radius` on all elements
- Only flat offset box-shadows (zero blur-radius)
- Two fonts only: Libre Baskerville (content) + IBM Plex Mono (metadata)
- Paper grain SVG noise overlay on page background
- Warm cream palette (OKLCH), not pure white
- Preserve the token contract in `tokens.dtcg.json` and `https://joincommons.cc/api/items/index-card-archive/raw/design-language`

## Common Failure Modes

1. **Missing red rules.** Without the horizontal top rule and vertical margin line, cards are just bordered rectangles. Both `::before` and `::after` in `var(--red-line)` at reduced opacity are required.

2. **Text floating between ruled lines.** Card body text at the wrong line-height breaks the handwritten-on-paper illusion. `line-height: 28px` must match the gradient period.

3. **Kanban-board aesthetics.** Rounded corners, colored status badges, drag handles, or soft blur shadows collapse the index-card metaphor into generic project management UI.

4. **Extra colors.** The palette is cream, warm brown, and red-line pink. Using blue/green/purple for categories breaks the archival metaphor. Distinguish categories with classification numbers and drawer tabs.

5. **Wrong font assignment.** Content (titles, excerpts, bios) must be Libre Baskerville. Metadata (labels, tabs, dates, tags, classifications) must be IBM Plex Mono. Mixing them up loses the institutional/personal contrast.

6. **No paper grain.** Without the SVG noise overlay, the cream background reads as a flat CSS swatch. Include both `body::before` and `body::after` with `feTurbulence` data URIs.

7. **Overpowered hover.** The card hover is `translateY(-3px) rotate(-0.3deg)` with flat offset shadow. No `scale()`, no blur shadows, no glow, no bounce easing.
