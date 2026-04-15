---
name: notion-workspace
slug: notion-workspace
description: Warm, approachable workspace landing page inspired by Notion's design language. Warm white surfaces alternating with pure white, whisper-thin borders, one-accent-color restraint (Notion Blue), paper-like General Sans typography with aggressive negative letter-spacing. Video-as-atmosphere hero, block showcase, template gallery.
metadata: design-skill
---

# Notion Workspace

<design-system>

## Identity
A connected workspace where docs, wikis, projects, and knowledge live together -- one tool that replaces five. The design language is warm, approachable minimalism: warm-white paper surfaces, whisper-thin borders, and a single blue accent color. This is Apple's restraint meets MUJI's warm utility. The interface disappears so the content can breathe, like a blank page that becomes anything you need.

## Product World
- **Who**: Startup teams running their entire company in one tool. Students organizing coursework. Content creators planning editorial calendars. Engineering teams documenting architecture decisions. People who have tried Trello, Confluence, Google Docs, Asana, and Evernote separately and want ONE place instead of five browser tabs.
- **What**: A connected workspace for docs, wikis, projects, and knowledge -- one tool that replaces five.
- **Vibe**: Apple's restraint meets MUJI's warm utility -- a blank page that becomes anything, built on blocks you drag like LEGO.
- **Domain conventions**: Block types (Text, Toggle, Database, Gallery, Calendar, Code, Synced blocks, Mentions), template names ("Meeting Notes", "Product Roadmap", "OKR Tracker"), workspace hierarchy (Workspace > Teamspace > Page > Sub-page), slash commands, @ mentions, database views (Table, Board, Timeline, Calendar, Gallery).

## Signature Moves
1. **Whisper borders everywhere** -- 1px solid rgba(0,0,0,0.1) creates structure without visual weight. If you can clearly see the border, it's too heavy.
2. **One accent color only** -- Notion Blue is the ONLY saturated color. Everything else is warm neutrals. This radical restraint makes every blue element magnetic.
3. **Multi-layer shadow stacks** -- 4-layer card shadows with sub-0.04 opacity per layer. Elements feel embedded in the page, not floating.
4. **Warm-tinted neutrals** -- every gray carries yellow-brown undertones (#f6f5f4, not #f5f5f5). The warmth creates a paper-like, analog feel.
5. **Compressed display typography** -- -2.5px letter-spacing at hero scale, relaxing to normal at body size. Headlines feel like quality print.
6. **Section alternation through warmth** -- white and warm-white sections alternate, creating rhythm without borders or color breaks.
7. **Video as atmosphere** -- hero video at 0.45 opacity with desaturation and white gradient overlay suggests productive energy without demanding attention.

## Hard Constraints
1. Light-mode only -- warm white (#f6f5f4) and pure white (#ffffff), never dark backgrounds
2. Single accent color -- Notion Blue oklch(55% 0.18 250) only; no teal, orange, or purple accents
3. General Sans 400/500/600/700 -- single font family with four-weight hierarchy
4. Warm-tinted grays only (hue 55-80) -- never pure gray, never cool-tinted
5. Whisper borders max opacity rgba(0,0,0,0.1) -- never heavier
6. Multi-layer shadows only -- 4-5 layers with sub-0.05 opacity each, never single-layer
7. Soft border radius -- 4px buttons, 12px cards, 16px featured, 9999px pills

## Anti-Patterns
1. Dark mode with glowing accents -- Notion is warm-white, never moody or terminal-like
2. Multiple accent colors -- Asana/Monday.com use rainbows; Notion uses ONE blue
3. Cold grays (#e5e5e5, #f5f5f5) -- every neutral must have warm yellow-brown undertones
4. Glassmorphism or gradient text -- avoid frosted-glass cards and glow borders; depth comes from whisper borders and layered shadows only
5. Heavy borders or single-layer shadows -- crude borders and flat shadows look cheap
6. Confluence-style enterprise chrome -- no heavy sidebars, no blue chrome
7. Decorative illustrations -- typography and workspace photography ARE the visual identity
8. Marketing buzzwords -- "docs, wikis, projects" not "enterprise knowledge collaboration platform"

## Visual Vibe
Warm, tactile, paper-like, approachable, quiet confidence, block-based, modular, editorial calm, tool-that-disappears, analog warmth in a digital shell.

## Section Archetypes
- **Block showcase**: Individual block types with typographic icons (T, //, @, </>) and descriptions
- **Workspace demonstration**: Split layout with contextual photo and feature check list
- **Template gallery**: Card grid with thumbnail imagery and category tags
- **Team use-case cards**: Horizontal cards by team function (Engineering, Design, Marketing, Operations)
- **Integration constellation**: Central icon surrounded by brand-colored integration pills
- **Pricing tiers**: Clean cards with feature lists, one highlighted as "Most popular"

## Hero Archetype
**Video-typography**: Ambient workspace video at 0.45 opacity behind white gradient overlay + bold compressed headline. The video suggests calm productivity; the typography conveys the product promise.

## Asset Direction
- **Photography**: Warm, minimal desk setups -- notebooks, pens, natural light. MUJI lifestyle aesthetic. Avoid cold corporate stock.
- **Video**: Calm workspace scenes, desaturated slightly, at low opacity as atmosphere. Never product demos.
- **Data-as-visual**: Typographic block-type icons (T, //, @, </>) instead of illustrations.
- **What NOT to show**: No app screenshots, no faces, no corporate meeting rooms, no colorful illustrations.

## Typography
**General Sans** -- geometric sans with human warmth. 400 read, 500 interact, 600 emphasize, 700 announce. Aggressive negative letter-spacing at display sizes (-2.5px at 72px) creates print-quality compressed headlines.

## Color
| Token | OKLCH | Hex | Meaning |
|-------|-------|-----|---------|
| Canvas White | oklch(100% 0 0) | #ffffff | Primary background |
| Warm White | oklch(96.6% 0.006 80) | #f6f5f4 | Alternating sections, warm paper tint |
| Near-Black | oklch(14% 0.005 60) | rgba(0,0,0,0.95) | Primary text |
| Warm Gray 500 | oklch(44% 0.01 55) | #615d59 | Secondary text |
| Warm Gray 300 | oklch(68% 0.01 60) | #a39e98 | Muted text, placeholders |
| Notion Blue | oklch(55% 0.18 250) | #0075de | THE singular accent |
| Badge Surface | oklch(97% 0.02 250) | #f2f9ff | Pill badge background |
| Badge Text | oklch(55% 0.17 255) | #097fe8 | Badge labels, focus rings |

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/notion-workspace/raw/design-language` | Full visual system: OKLCH palette, type scale, spacing rhythm, motion, component patterns |
| `references/asset-direction.md` | Photography/video sourcing guidance, data-as-visual patterns, verified starter assets |
| `https://joincommons.cc/api/items/notion-workspace/raw/anti-patterns` | 20+ domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG design tokens: color, semantic (badge, pricing, integration), and typography composites |
| `assets/exhibit.html` | Reference implementation -- self-contained exhibit at ~47KB |
| `assets/design-skill.json` | V1 manifest with coverage, discovery, and routing metadata |

</design-system>
