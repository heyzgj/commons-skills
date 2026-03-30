# Exhibition Catalog — Design Skill

## Design Context

**Audience:** Contemporary art curators, galleries, museums, independent exhibitions, cultural institutions, artist portfolio sites, and academic art publications.

**Use cases:** Exhibition catalogs (catalog raisonne), artist CV/portfolio pages, gallery program brochures, curatorial essay platforms, museum collection indexes, art-world publication sites.

**Brand personality:** Institutional authority through typographic restraint. This is a catalog that trusts its content. Zero decoration, zero chromatic color — just the precise formal conventions of printed exhibition catalogs translated to the screen. The tone is curatorial: measured, sequential, and quietly rigorous.

---

## Design Direction

**Purpose:** Present exhibition histories, curatorial essays, and professional CVs with the formal precision of a printed catalog raisonne.

**Tone:** Museum-grade sobriety. Think the printed catalogs from Pace Gallery, Gagosian, or the Venice Biennale — not a creative agency portfolio, not a personal blog.

**The ONE memorable thing:** Completely achromatic. Zero chromatic color anywhere. The full palette is grayscale OKLCH (`oklch(L 0 0)`). Combined with oversized watermark plate numbers behind each entry, this creates a ghost-print effect that makes the page feel like a physical artifact.

**What makes it unforgettable:** The three-typeface system in pure grayscale — DM Serif Display (italic titles), Karla (body and labels), Space Mono (plate numbers and codes) — working together without any color to lean on. The watermark numerals, the structured metadata grids, the drop-cap essay opening, the self-documenting colophon. Every element references a print-catalog convention.

**Reference sites:** gagosian.com (gallery catalogs), pacegallery.com (exhibition pages), davidzwirner.com (artist pages), whitecube.com, perrotin.com

---

## Workflow

**Step 1 — Load the design language**
Read `https://joincommons.cc/api/items/exhibition-catalog/raw/design-language` fully. Internalize the achromatic OKLCH palette, the three-typeface register (serif = titles, body = text/labels, mono = numbers/codes), the section order (cover, essay, catalog entries, writings, CV, index, colophon), and the metadata grid pattern.

**Step 2 — Load the image kit**
Read `https://joincommons.cc/api/items/exhibition-catalog/raw/image-kit`. This exhibit uses no photography. All visual interest comes from typography, watermark numerals, and whitespace. Do not add images.

**Step 3 — Build**
Implement following the section order: cover (full-viewport, bottom-aligned, with oversized mono watermark) → opening essay (dark rule, drop cap, text-indent continuation) → numbered catalog entries (watermark plate number + metadata grid + prose statement each) → selected writings → CV sections → index (alphabetical, by venue, by year) → colophon (typography specimens, color documentation). Apply `.reveal` scroll animation to major blocks. Include navigation dots (fixed left sidebar). Include print and reduced-motion media queries.

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/exhibition-catalog/raw/anti-patterns` and run the checklist:
- Is the page completely achromatic? (Zero non-zero chroma values)
- Does every exhibition title use DM Serif Display italic?
- Does every label use Karla 600 uppercase with tracked letter-spacing?
- Does every plate number and catalog code use Space Mono?
- Does every entry have BOTH a foreground plate number AND a background watermark?
- Does the essay use `::first-letter` drop cap + `text-indent: 2em` on continuations?
- Does the metadata grid use `auto 1fr` with muted uppercase labels?
- Are there any decorative elements not in the exhibit (icons, gradients, shadows, color)?

---

## Gotchas — Failure Modes to Avoid

1. **Introducing any chromatic color.** The achromatic discipline is absolute. Even a warm beige background or a muted blue link color destroys the museum-catalog authority. All colors must be `oklch(L 0 0)`.

2. **Using a card grid instead of sequential entries.** Exhibition catalogs are numbered and sequential. The plate numbering system (No. 01 through No. 08) creates a reading order. A card grid or masonry layout eliminates this entirely.

3. **Forgetting the watermark layer.** Each entry needs the oversized near-white plate number (`oklch(0.94 0 0)`) positioned behind the header as a ghost-print watermark. Without it, entries become generic text blocks.

4. **Rendering the essay like a blog post.** The essay requires: drop-cap `::first-letter` (DM Serif Display, 3.2em), `text-indent: 2em` on continuation paragraphs (not margin-bottom gaps), italic title, and a byline. These are non-negotiable print conventions.

5. **Mixing the three font registers.** DM Serif Display is only for titles (always italic for exhibition names). Karla is for body text and labels. Space Mono is for numbers and codes. Using serif for body text makes it unreadable; using the body font for titles loses all editorial weight.

6. **Skipping the colophon.** The colophon is not optional — it documents the catalog's own typography with live specimens, declares the color system, and stamps the edition. This self-referential section is what elevates the design from "monochrome page" to "catalog raisonne."

7. **Insufficient vertical whitespace.** Section breaks should be 100-160px. Entry breaks should be 80-140px. The generous spacing is what creates the measured, unhurried pace of a physical catalog. Cramped spacing destroys the institutional register.
