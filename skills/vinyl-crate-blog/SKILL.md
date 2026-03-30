---
name: vinyl-crate-blog
description: A dark warm music blog where posts are vinyl record sleeves filed in a wooden crate. Record sleeves pull 70px on hover revealing excerpt strips, articles open as gatefold liner-notes overlays, and a spinning turntable widget anchors the corner. Built on Arvo / Lora / Barlow Condensed with a deep OKLCH walnut palette and antique gold accents.
metadata: design-skill
---

# Vinyl Crate Blog

## What This Skill Does

Applies a dark, warm music-blog design system where blog posts are presented as vinyl record sleeves filed in a wooden crate. The metaphor is fully physical: sleeves pull out on hover, articles open as gatefold overlays with liner-notes typography, and a spinning turntable widget adds ambient life. Suitable for any single-author music editorial product.

## When to use

- Music journalist personal blog or listening diary
- DJ mix archive or record review journal
- Vinyl culture or crate-digging editorial publication
- Music podcast companion site with long-form writing
- Any editorial product where a warm, tactile, slow-browse experience fits the brand

## When not to use

- Light-theme corporate or SaaS dashboards (dark-only, warm palette incompatible)
- Photography portfolios requiring full-bleed imagery (the crate constrains image display)
- E-commerce product catalogs (no product grids or cart patterns)
- Multi-author news publications with real-time feeds (single-voice, curated-pace design)

## Default Workflow

1. Read this `SKILL.md` to confirm the system fits the product pressure.
2. Load `https://joincommons.cc/api/items/vinyl-crate-blog/raw/design-language` for the full design language: colors, typography, layout, motion, components.
3. Load `https://joincommons.cc/api/items/vinyl-crate-blog/raw/image-kit` for verified Unsplash URLs and placement guidance.
4. Build all sections: header -> hero -> crate with record sleeves -> gatefold overlay -> mixtape archive -> about -> footer -> now-playing widget.
5. Run self-critique against `https://joincommons.cc/api/items/vinyl-crate-blog/raw/anti-patterns` before delivering.

## Supporting Files

- `https://joincommons.cc/api/items/vinyl-crate-blog/raw/design-language`: Full design language with color palette (14 OKLCH tokens), typography system (Arvo/Lora/Barlow Condensed), layout patterns, motion specs, component states, adaptive behavior, and accessibility guidance.
- `https://joincommons.cc/api/items/vinyl-crate-blog/raw/design-language`: Extended design-language reference (mirrors `https://joincommons.cc/api/items/vinyl-crate-blog/raw/design-language` with additional detail).
- `https://joincommons.cc/api/items/vinyl-crate-blog/raw/image-kit`: Five verified Unsplash image URLs with placement notes and variant techniques.
- `https://joincommons.cc/api/items/vinyl-crate-blog/raw/anti-patterns`: Eight topic-specific traps, AI slop checklist, and five self-critique questions.
- `assets/tokens.dtcg.json`: DTCG-format design tokens extracted from the exhibit CSS.
- `assets/exhibit.html`: Reference implementation showing the complete design in action.

## Supporting References

No external upstream references are required. This is an original design system, not a port. Reference sites (dustandgrooves.com, thevinylfactory.com, ra.co, waxpoetics.com) are for taste absorption only -- do not copy their layouts or code.

## Non-negotiables

- The record-pull hover must be 70px `translateY` with `cubic-bezier(0.22, 1, 0.36, 1)` -- this is the signature move.
- The crate container must use 6-stop `repeating-linear-gradient` wood grain with `::before`/`::after` side panels for depth.
- Articles must open as two-panel gatefold overlays (40% cover / 60% liner notes), not centered modals.
- The turntable widget must spin (20s infinite) with radial-gradient groove rings and a red needle tonearm.
- All colors must use OKLCH with warm hue angles (50-80). No cool-toned or neutral dark backgrounds.
- Three fonts only: Arvo (display), Lora (body, justified in gatefold), Barlow Condensed (labels, always uppercase).

## Common Failure Modes

- Replacing the horizontal-scroll crate with a standard vertical card grid -- destroys the crate-digging spatial metaphor entirely.
- Using a subtle 4-8px hover lift instead of the dramatic 70px record pull -- the exaggerated motion IS the design statement.
- Opening articles in a generic centered modal instead of the two-panel gatefold with cover art left / liner notes right.
- Flat brown `background-color` on the crate instead of the 6-stop repeating-linear-gradient wood grain texture.
- Static play-button icon instead of the spinning turntable widget with radial-gradient grooves, tonearm, and progress bar.
- Cool-toned (blue/neutral) dark palette instead of warm OKLCH hue 50-80 throughout -- breaks the walnut-and-gold warmth.
- Substituting Inter, Geist, or Plus Jakarta Sans for the three specified font families.

## Output Expectations

- Produce full-page HTML exhibits, not isolated component demos.
- Include all sections: header, hero, crate with sleeves, gatefold overlay logic, mixtape grid, about section, footer, now-playing widget.
- Record sleeves must function as clickable items that trigger the gatefold overlay.
- The gatefold must include tag pills, word count, track-section headers, and pullquotes with gold borders.
- The now-playing widget must be fixed-position with a spinning disc and progress bar.

## Reuse and Adaptation Guidance

- Keep stable: OKLCH warm palette, three-font hierarchy, crate horizontal scroll, 70px record pull, gatefold two-panel overlay, turntable widget.
- Safe to vary: Blog post topics, number of posts, divider category names, mixtape themes, author bio content, image subjects (within music domain), crate section label text.
- Adaptation: The record sleeve can represent any content unit (essays, mixes, reviews, episodes) -- adjust the spine meta and liner-notes structure to match.
