---
name: mindloop-editorial
slug: mindloop-editorial
description: Dark editorial reading platform with deliberate typographic hierarchy. Newsreader serif + Space Mono UI type, ambient video, word-by-word scroll reveal, asymmetric essay feed, passage annotation viewer. A library for readers who treat attention as finite.
metadata: design-skill
---

# Mindloop Editorial

<design-system>

## Identity
A dark editorial reading platform for people who believe the essay is the highest form. Mindloop organizes writing by depth, not recency -- two essays each morning, chosen for quality of thought, not engagement metrics. The design language is austere typographic restraint: Newsreader serif for all literary content, Space Mono for all systematic UI, ambient video at near-invisible opacity, and zero chromatic accent. This is The Paris Review's editorial gravity meets Craig Mod's reverence for the reading act. The interface communicates seriousness through absence: no colors, no images, no decoration -- only words and the space between them.

## Product World
- **Who**: Serious readers and essayists -- literary-minded knowledge workers, writers, academics, and cultural critics who read 2,000+ word essays regularly. They use Instapaper, Readwise, Are.na, and RSS readers. They hate algorithmic feeds, engagement metrics, listicles, and the tyranny of "content." They admire Craig Mod's newsletters, The Paris Review, and n+1.
- **What**: A curated reading platform organized by depth, not recency. Two essays each morning, chosen for quality of thought. A personal commonplace book for annotations across everything you read.
- **Vibe**: The Paris Review (editorial gravity, literary seriousness) meets Craig Mod's Special Projects (reverence for the reading act, Japanese-inflected restraint). Opening a well-bound literary journal in a quiet room.
- **Domain conventions**: Issue numbers (Vol. XII, No. 14), word counts with read times, writer bylines as first-class entities, editorial labels (Lead essay, Writers in residence), commonplace book annotations with source citations (author, title, year). Reading rituals structured by time of day (Morning, Throughout, Weekly).

## Core Principle
Reading is a practice of sustained attention, not a feed of disposable content.

## Visual Vibe
Literary, austere, reverent, dark-ink-on-aged-paper inverted, typographically precise, unhurried, monastic, contemplative, editorial gravity, deliberate silence.

## What It's NOT
1. NOT a news aggregator or RSS reader -- no timestamps showing "3 min ago," no unread counts, no urgency
2. NOT a productivity reading tracker -- no streaks, no "books read this year" charts, no gamification
3. NOT Medium/Substack -- no clap buttons, no follower counts, no recommendation algorithms, no comment sections
4. NOT a bright white reading app -- the dark palette is deliberate: this is evening reading, not daytime skimming
5. NOT a content marketing platform -- no "trending" tags, no SEO-driven titles, no "you might also like" carousels
6. NOT a minimalist notes app -- the commonplace book is literary (passage + annotation + citation), not bullet journaling

## Section Archetypes
- **Hero / Opening Statement** -- Ambient video background (low opacity) + large serif headline announcing the product's philosophy. Scroll-prompt line at bottom.
- **Manifesto / Reading Philosophy** -- Word-by-word scroll reveal of a single sustained paragraph about the value of deep reading. No headings, no bullets -- pure prose.
- **Editorial Feed** -- Asymmetric two-column layout: one lead essay (large) on left, 3-4 compact essay entries on right, separated by a hairline divider. Labeled by issue number.
- **The Practice / Ritual** -- Ambient video section explaining the reading ritual. Two-column: philosophy text (left) + structured daily/weekly rituals (right).
- **Writers in Residence** -- Typographic list of featured authors: name, focus description (italic), essay count. Grid row layout with hover interaction.
- **Passage / Annotation Viewer** -- Centered column with a blockquote, source citation, and reader's annotation in an elevated panel. The commonplace book made visible.
- **Colophon** -- Not a footer. A publishing colophon: wordmark, tagline, navigation as editorial links, edition label, copyright. Two-column with rule separator.

## Hero Archetype
**Video-typography hero.** Ambient video at very low opacity (0.35) provides atmospheric texture -- not content. The video shows abstract movement (ink in water, light through paper, slow natural motion) behind heavy gradient overlays. The dominant element is a large Newsreader serif headline at weight 300 with tight letter-spacing. The video creates mood; the typography carries the message.

**Why**: A reading platform is fundamentally about words. The hero must demonstrate that words are the primary visual medium. The video adds sensory richness without competing.

## Asset Direction
- **Video**: Ambient, abstract, slow. Ink diffusing in water, light shifting through translucent surfaces, paper textures in motion. Two videos: hero (full-bleed) and practice section (half-screen). Opacity 0.35-0.45 with multi-stop gradient overlays.
- **Typography-as-art**: The primary visual language. Large serif headlines at weight 300, word-by-word scroll reveal, blockquote with left border, oversized issue numbers as visual anchors.
- **Data-as-content**: Essay metadata (word counts, read times, issue numbers, essay counts per writer) IS the visual texture. Presented in Space Mono at small sizes.
- **Photography**: NOT needed. This product is about text. If ever required (writer portraits), use high-contrast black-and-white only.
- **What NOT to show**: No book cover images, no reading progress bars, no social proof, no app screenshots, no device mockups.

## Typography
- **Newsreader** (editorial) -- Variable optical-size serif designed specifically for on-screen reading. Italic form is distinctively calligraphic. Weight 300 for headlines gives literary elegance without fragility. WHY: it signals "this is serious writing" in a way no sans-serif can. The font IS the product's identity.
- **Space Mono** (UI / metadata) -- Monospaced with mechanical, structured character. Used for labels, issue numbers, metadata, navigation. WHY: the contrast between flowing serif prose and rigid mono structure creates the tension between literary content and systematic curation.

## Color
All OKLCH. Dark-mode only -- this is a nighttime reading environment.

| Token | Value | Meaning |
|-------|-------|---------|
| bg | oklch(0.06 0.005 260) | Near-black with cool blue tint -- deep reading dark |
| bg-elevated | oklch(0.09 0.005 260) | Annotation panels, elevated surfaces |
| bg-surface | oklch(0.12 0.005 260) | Card surfaces, interactive regions |
| text-primary | oklch(0.93 0.005 60) | Warm off-white for body text -- not pure white |
| text-secondary | oklch(0.62 0.005 60) | Excerpts, body descriptions |
| text-tertiary | oklch(0.42 0.005 60) | Labels, metadata, issue numbers, mono text |
| border | oklch(0.18 0.005 260) | Section dividers, editorial header rules |
| border-faint | oklch(0.13 0.005 260) | Essay separators, subtle divisions |

Note: zero chromatic accent. The palette is entirely achromatic with warm/cool tinting. Color restraint mirrors the product's philosophy of reduction.

## Signature Moves
1. **Zero accent color** -- no brand color, no highlight, no call-to-action color. The product's identity is expressed purely through typography and spatial rhythm. This is radical restraint.
2. **Word-by-word scroll reveal** -- the manifesto section reveals words individually as you scroll, making the reader physically perform the act of slow reading. The medium IS the message.
3. **Asymmetric editorial grid** -- the feed uses 1fr | 1px | 1fr with a physical hairline divider, not a card grid. This references print newspaper layout, not web conventions.
4. **Monospace for all UI, serif for all content** -- strict typographic separation creates two layers: the system (Space Mono) and the literature (Newsreader). They never cross.
5. **Colophon instead of footer** -- publishing terminology signals editorial seriousness. "Spring edition" not "Follow us on Twitter."
6. **Writers as data rows, not cards** -- the writer list uses a three-column grid (name / focus italic / count) like a library catalog, not profile cards with avatars.
7. **Video at 0.35 opacity** -- barely visible, felt more than seen. The video is atmosphere, not content.
8. **Scroll-prompt as animated vertical line** -- a single 1px line with a scaleY pulse animation replaces "scroll down" text or chevron icons.

## Hard Constraints
1. Dark-mode only -- bg oklch(0.06 0.005 260), never light mode, never pure black
2. Zero chromatic accent -- achromatic palette with warm-tinted text (hue 60) and cool-tinted backgrounds (hue 260)
3. Newsreader for all editorial content + Space Mono for all UI -- no third font, no sans-serif
4. Zero border radius on all elements -- sharp edges reference print editorial
5. Zero shadows -- depth only through background color steps (0.06/0.09/0.12) and hairline borders
6. All Space Mono text: uppercase, letter-spacing >= 0.1em, sizes <= 0.6875rem
7. Video opacity never exceeds 0.45 -- always atmospheric, never competing with text

## Anti-Patterns
1. Light mode or bright backgrounds -- the dark palette IS the product identity, not a preference
2. Any chromatic accent color -- teal, gold, amber destroy the achromatic discipline
3. Card grids or Pinterest layouts -- essays use asymmetric columns and list rows, not cards
4. Hero photography or illustrations -- typography is the only visual; images make it generic
5. Social features -- no claps, shares, follower counts; reading is private
6. Productivity metrics -- no streaks, progress bars, reading velocity; slowness is the value
7. SaaS template structure -- hero/features/pricing/CTA is marketing, not editorial
8. Rounded corners -- zero radius is deliberate; rounding makes it feel like software, not print

## Workflow
1. Read `https://joincommons.cc/api/items/mindloop-editorial/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/mindloop-editorial/raw/anti-patterns`

## Gotchas
1. **The serif must be Newsreader, not Georgia/Playfair/Lora.** Newsreader's optical sizing and calligraphic italic are essential to the identity. Fallback to Georgia only.
2. **Never add a brand color.** The achromatic palette is the design decision. Adding a teal or gold accent destroys the literary restraint.
3. **Manifesto scroll reveal requires JS.** CSS-only solutions (scroll-driven animations) don't give word-level control. Use IntersectionObserver + scroll progress calculation.
4. **Video must have multi-stop gradient overlay.** Without it, the video competes with text. The overlay creates the reading surface ON the video.
5. **Space Mono labels must be tiny (0.5625-0.625rem).** If mono text is too large, it dominates the page and the editorial/UI separation breaks.
6. **Dark mode is the ONLY mode.** This is not a toggle preference. The product is designed for focused evening/night reading. Light mode contradicts the philosophy.

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/mindloop-editorial/raw/design-language` | Full visual system: OKLCH palette, type scale, spacing rhythm, motion system, component patterns |
| `references/asset-direction.md` | Asset sourcing guidance: video direction, typography-as-art, data-as-content, what NOT to show |
| `https://joincommons.cc/api/items/mindloop-editorial/raw/anti-patterns` | 25 domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG design tokens: color (bg, text, border), semantic (video opacity, manifesto states, interaction states), and typography composites |
| `assets/exhibit.html` | Reference implementation -- single-file self-contained exhibit with ambient video, scroll-driven word reveal, asymmetric editorial feed |
| `assets/design-skill.json` | V4 manifest with coverage, discovery, and routing metadata |

</design-system>
