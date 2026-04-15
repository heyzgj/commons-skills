<design-system>

## Product World
- **Who**: ML researchers, open-source contributors, AI engineers evaluating foundation models, academic labs seeking state-of-the-art open-weight models. They read arXiv daily, evaluate on HuggingFace, care about reproducibility and transparency above all.
- **What**: An open-source AI research lab that trains and releases foundation models with full transparency.
- **Vibe**: Cyanotype blueprint meets typewritten research report -- "a university department newsletter printed on a plotter"
- **Domain conventions**: Model cards, benchmark scores (MMLU, HumanEval, GSM8k), parameter counts, training methods (DPO, RLHF), Apache 2.0 licensing

## Core Principle
Two colors, one typeface, dashed lines. Radical restraint as the strongest design statement.

## Visual Vibe
Monochromatic, technical, blueprinted, restrained, typed, archival, clinical, precise, duotone, institutional

## What It's NOT
- NOT multi-color -- the ENTIRE page uses only teal (#0171A9) and white (#ffffff). No black text, no gray text, no secondary color hierarchy through color at all
- NOT a dark-mode hacker aesthetic -- this is light-only, white-only
- NOT a startup landing page with gradient CTAs and "Book a demo" buttons
- NOT a page with a hero section -- it opens with nav then immediately into content grids
- NOT a page with solid borders -- ALL dividers are dashed
- NOT using sans-serif anywhere -- every character on the page is monospace
- NOT animated -- the page is completely static, no scroll animations, no IntersectionObserver

## Section Archetypes
- **Content grid row**: Three-column grid with duotone photo | heading + body text | OUTPUT/SEED metadata badge
- **Dashed divider**: The consistent separator between every element
- **Footer**: Minimal credits and links, same monospace, same teal

## Hero Archetype
No hero. The page opens with a nav bar, then a dashed divider, then immediately the first content grid section. This extreme anti-hero approach communicates: the research speaks for itself.

## Asset Direction
- **Photography**: Nature scenes (forests, specimens, microscopes) with duotone teal filter: `filter: sepia(1) saturate(2.5) hue-rotate(160deg) brightness(0.9) contrast(1.1)`. Photos appear cyanotype-printed.
- **No video**: The original site has no video on the homepage
- **Data-as-visual**: OUTPUT/SEED metadata badges in each section act as the data-visual pattern
- **What NOT to show**: Server racks, code editors, people, abstract AI visualizations, any photography that is not duotone filtered

## Typography
- **Geist Mono** for EVERYTHING -- headings, body text, nav links, labels, footer. There is only one font on the entire page. Monospace creates the "typewritten research report" voice. Hierarchy is achieved through size, weight, and spacing alone -- never through font switching.

## Color
- **Background**: Pure white (#ffffff) -- zero chroma, zero tint
- **Everything else**: #0171A9 (teal) -- ALL text, ALL icons, ALL links, ALL SVG strokes. There is no black, no gray, no secondary color.
- **Dashed borders**: rgba(1, 113, 169, 0.30) -- same teal at 30% opacity for all dashed dividers
- **Hierarchy through opacity/weight/size only**: Heading text is larger and heavier. Labels are smaller and lighter weight. But the color is always the same teal.

## Bold Choices
1. **Exactly two colors** on the entire page -- white and one teal. Zero gray, zero black.
2. **Monospace for everything** -- body text, nav, headings, footer. One font family, zero pairing.
3. **Dashed borders only** -- not solid. Blueprint/technical drawing aesthetic.
4. **No hero section** -- nav then immediately content. Anti-marketing.
5. **Duotone cyanotype photography** -- photos filtered to appear as teal-on-white prints.
6. **ML metadata badges** -- OUTPUT: 01, SEED: 7293841 in each section as marginalia.
7. **Zero animation** -- the page loads static and stays static. No scroll effects, no transitions beyond basic link hover.
8. **Extreme content economy** -- 3 sections + nav + footer. Under 15KB total.

## Workflow
1. Read `https://joincommons.cc/api/items/nous-research-lab/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for duotone photography guidance
3. Build following the two-color, one-font, dashed-border constraints
4. Self-critique against `https://joincommons.cc/api/items/nous-research-lab/raw/anti-patterns`

## Gotchas
- Using ANY color besides #0171A9 and #ffffff destroys the identity -- not even black for headings
- Using solid borders instead of dashed borders breaks the blueprint aesthetic
- Adding a hero section contradicts the anti-marketing philosophy
- Using a second font (even for body text) ruins the monospace-everywhere voice
- Adding scroll animations -- the page is intentionally static
- Using photos without the duotone teal filter -- unfiltered photos clash with the two-color system

</design-system>
