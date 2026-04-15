<design-system>

## Product World
- **Who**: Researchers, PhD students, physicists, computer scientists, mathematicians — people who read 5-10 papers a week and have strong opinions about LaTeX formatting. They care about substance over style. They distrust anything that looks "marketing."
- **What**: An open-access preprint server hosting 2.4M+ research papers — the internet's most important scientific library, reimagined with intent while preserving academic spirit.
- **Vibe**: A university press journal meets a typographic specimen page — scholarly gravitas with monochromatic restraint. Think: the aesthetic of a beautifully typeset thesis, not a SaaS landing page.
- **Domain conventions**: arXiv IDs (2301.xxxxx), DOIs (10.48550/arXiv.xxxx), subject codes (cs.AI, hep-th, quant-ph), citation counts, author lists with "et al.", abstract-first presentation.

## Core Principle
The monochromatic principle: only two colors exist — warm paper white and deep academic maroon. Hierarchy lives in typography, not color.

## Visual Vibe
Scholarly, restrained, authoritative, monochromatic, typographic, archival, editorial, precise, unhurried, permanent

## What It's NOT
- NOT a SaaS landing page with hero/features/pricing/CTA structure
- NOT dark mode — academic journals are printed on paper
- NOT colorful — no accent colors, no gradients, no semantic color coding
- NOT animated — no scroll reveals, no entrance animations, no hover transitions beyond link color
- NOT decorated — no shadows, no cards, no border-radius, no glassmorphism
- NOT a tech product page — no metric dashboards, no product screenshots, no demo videos

## Section Archetypes
- **Masthead**: Journal nameplate with title in large serif, subtitle in monospace, establishment date — like opening a printed journal
- **Paper entries**: Two-column grid — title/authors/abstract on left, metadata (citations, category, DOI) on right — like a journal table of contents
- **Photo dividers**: Full-width photography filtered to maroon duotone, functioning as visual section breaks between content areas
- **Subject classification**: Code/name pairs (cs.AI — Artificial Intelligence) in a grid with dashed separators — taxonomic, reference-like
- **Archive statistics**: Large serif numerals for key counts (total articles, weekly submissions, years online) — understated, no decoration
- **Submission guidelines**: Prose paragraphs with monospace links — institutional, informational

## Hero Archetype
No hero. The page opens with a journal masthead — large serif title + monospace subtitle + establishment metadata — then immediately into content. Academic journals don't have heroes. They have nameplates.

## Asset Direction
- **Photography**: Library interiors, bookshelves, manuscripts — always filtered to maroon duotone using `sepia(1) saturate(3) hue-rotate(330deg) brightness(0.85) contrast(1.1)`. Photos serve as section dividers, not feature images.
- **Data-as-visual**: Paper metadata IS the visual content — citation counts, arXiv IDs, DOIs, subject codes. The data is the design.
- **Typography-as-art**: The masthead title in oversized Times New Roman (bold, no letter-spacing tricks) is the wordmark. Its weight creates presence without editorial flourish.
- **Video**: None. Academic journals do not use video.
- **What NOT to show**: No stock photos of people at laptops, no abstract tech illustrations, no charts/graphs, no code snippets

## Typography
- **Times New Roman / Georgia** (display + body): Plain, utilitarian academic serif — the font of LaTeX output and printed journals. Its "boring" quality IS the point. Do NOT use Cormorant Garamond, Fraunces, Newsreader, or any premium editorial serif — those signal luxury, not scholarship.
- **IBM Plex Mono** (metadata + numbers): ALL numbers — citation counts, statistics, archive totals — must be in monospace. Numbers in academic contexts are data, not display elements. Large serif numerals for citation counts is an impeccable editorial pattern that is wrong for this product.
- ALL text is maroon. Hierarchy through size (4rem down to 0.6rem), weight (400/700), style (italic for authors), and monospace vs. serif distinction — NEVER through color.
- **Anti-pattern**: Using `letter-spacing: -0.03em` on the masthead or any typographic "tricks" that make it feel designed. Plain is correct.

## Color
- `oklch(0.38 0.12 18)` — Deep academic maroon. Used for ALL text and borders. The ONLY chromatic color.
- `#faf8f6` — Warm paper white. Slight cream tint like aged journal paper. The ONLY background.
- Opacity variations (70%, 40%, 25%, 15%, 8%) create hierarchy within the single maroon — authors at 70%, metadata at 40%, labels at 25%.
- No black. No gray. No accent colors. No semantic colors.

## Bold Choices
1. **Strict two-color system**: Entire page uses only maroon + paper white. Zero exceptions.
2. **Dashed borders everywhere**: All dividers use `border-style: dashed` at 25% opacity — evokes manuscript proofs and academic drafts.
3. **No hero section**: Opens with nameplate, then content. Like a real journal.
4. **Maroon duotone photography**: All photos filtered through sepia/hue-rotate to match the monochromatic system.
5. **Page number**: "- 1 -" centered at bottom, like a printed publication.
6. **Citation count as data**: Citation counts in IBM Plex Mono at body size — treated as tabular data, not display elements. The number's value creates impact, not its font size.
7. **Zero animation**: No transitions, no reveals, no motion. Permanence over performance.
8. **Monospace metadata**: Navigation, section labels, DOIs, categories all in IBM Plex Mono — creating a clear serif/mono dichotomy.

## Workflow
1. Read `https://joincommons.cc/api/items/arxiv-journal/raw/design-language` for the complete visual system
2. Read `references/asset-direction.md` for photography sourcing and duotone treatment
3. Build with ONLY two colors — maroon and paper white. Use opacity for hierarchy.
4. Self-critique against `https://joincommons.cc/api/items/arxiv-journal/raw/anti-patterns` — if you added a third color, you broke the system

## Gotchas
- Adding even ONE non-maroon color (gray, black, blue links) breaks the entire monochromatic principle
- Using solid borders instead of dashed — the dashed treatment is load-bearing for the academic feel
- Making the background pure white (#fff) instead of warm paper (#faf8f6) — loses the aged-paper feel
- Using CSS animations or scroll effects — journals are static. Motion feels wrong.
- Making it responsive with hamburger menus or mobile cards — keep it as a paginated document, just reflow

</design-system>
