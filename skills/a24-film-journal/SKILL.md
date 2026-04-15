---
name: a24-film-journal
description: Radical-minimal dark design for independent film studios where the films are the design. Pure monochrome on near-black (oklch 0.035 hue 260), zero accent colors, zero decoration. Barlow 400/500/700 for all UI, Newsreader italic for loglines only. Asymmetric poster grid. Contained 2.39:1 video player. Built for festival programmers, art house distributors, and cinephiles.
metadata: design-skill
---

# A24 Film Journal

<design-system>

## Identity

A screening room rendered as a website where the films are the only things that deserve visual weight. Pure monochrome — near-black background with cold blue micro-tint, white text, zero accent colors. The photography provides ALL visual richness. The website gets out of the way. Inspired by A24Films.com's radical minimalism: no grain, no letterbox, no decoration. This is for festival programmers evaluating submissions at 2am, art house distributors scanning for acquisitions, and cinephiles who judge a studio by the restraint of its website.

## Core Design Language

- **Colors**: Pure monochrome with cold blue tint (hue 260). Background oklch(0.035 0.003 260), text oklch(0.935 0.006 260), dim text oklch(0.58 0.005 260), muted text oklch(0.38 0.004 260), borders oklch(0.16 0.003 260). Zero accent colors.
- **Typography**: Barlow 400/500/700 for all UI — tracked uppercase for labels, negative letter-spacing for titles. Newsreader italic 400 ONLY for film loglines. Two fonts, strict roles, no mixing.
- **Spacing**: 4px base grid. Section padding 72-100px vertical. Component gaps 20-64px. Page max-width 1280px, 48px horizontal padding.
- **Radius**: Zero everywhere. Rectangular, architectural, no rounded corners of any kind.
- **Motion**: ease-out-quint (0.22,1,0.36,1) for entrances. 0.6-0.8s for image reveals, 0.2-0.3s for hover states. Transform + opacity only. Full reduced-motion support.

## Signature Moves

1. **No hero section** — the page opens with the studio name + nav, then directly into the featured film. No splash, no tagline, no mission statement. The featured film IS the hero.
2. **Asymmetric film grid** — 1 tall portrait card spanning 2 rows + 4 landscape cards. NOT a uniform grid. The variety mirrors a curated filmography, not a search results page.
3. **Hover-reveal loglines** — film cards show only image + title + year at rest. Hover reveals a one-sentence italic logline over a dark gradient overlay. Progressive disclosure that rewards engagement.
4. **Contained 2.39:1 video player** — the trailer plays in a proper anamorphic widescreen frame with native browser controls. User-initiated only. NOT ambient, NOT autoplay, NOT background.
5. **1px hairline borders as the only structural device** — no background color changes between sections, no decorative dividers, no cards with borders. Just hairlines separating content zones.

## Hard Constraints

1. Zero accent colors — monochrome only. All visual richness comes from film photography.
2. Zero border-radius — rectangular everywhere. No rounded corners, no pill buttons.
3. Zero decorative elements — no film grain (SVG feTurbulence), no letterbox CSS pseudo-elements, no reel-to-reel icons, no clapperboard illustrations.
4. Barlow for UI only, Newsreader italic for loglines only — these roles are strict and never mixed.
5. Video is content in a contained player — never ambient, never background, never autoplay.
6. Near-black background (oklch L < 0.04) with cold blue tint (hue 260) — never warm amber/sepia.

## Anti-Patterns

1. **Film grain overlay** — adding SVG feTurbulence noise to any surface. The photography already has texture. Grain overlay is a cinema METAPHOR used by people who don't trust the cinema itself.
2. **Warm amber/sepia palette** — the instinct to make a film site "cinematic" with warm tinting. A24's actual website is cold monochrome. Cold signals confidence.
3. **Netflix dark mode** — bright red accents, algorithm-driven thumbnail grids, autoplay previews. This is a studio site, not a streaming platform.
4. **Hero -> features -> pricing -> CTA** — this is a catalog, not a SaaS landing page. Go straight to content.
5. **Uniform card grid** — same-sized cards in a 3-column layout. The asymmetric poster grid (tall + landscape mix) is the signature.

</design-system>

## Supporting Files

- Read `https://joincommons.cc/api/items/a24-film-journal/raw/design-language` for the full design system (typography scale, color palette, spacing, motion, component patterns, layout grids)
- Read `references/asset-direction.md` for photography direction, video direction, and verified starter assets
- Read `https://joincommons.cc/api/items/a24-film-journal/raw/anti-patterns` for domain-specific failure modes across visual, structural, content, and UX categories
- Load `assets/tokens.dtcg.json` when generating code — contains all OKLCH color tokens, semantic tokens, and typography composites
- Inspect `assets/exhibit.html` as the reference implementation — 22KB, pure monochrome, 5 sections

## Default Workflow

1. Read `https://joincommons.cc/api/items/a24-film-journal/raw/design-language` to internalize the monochrome palette, two-font system, spacing rhythm, and component patterns.
2. Read `assets/tokens.dtcg.json` for exact token values when writing CSS custom properties.
3. Build the page: header with studio name + nav, featured film block, asymmetric film grid, one-paragraph about, text-only press/contact, footer.
4. Inspect `assets/exhibit.html` as the proof surface if any detail is ambiguous.
5. Self-critique against the hard constraints and anti-patterns above before shipping.

## When to Use

- Independent film studio website
- Film production company portfolio
- Festival submission hub
- Art house distributor catalog
- Cinematheque archive page
- Film director personal site

## When Not to Use

- E-commerce with shopping cart and pricing
- SaaS product landing page with feature sections
- Social media or streaming platform UI
- Corporate site needing team bios and testimonials
- Data-heavy dashboards or analytics