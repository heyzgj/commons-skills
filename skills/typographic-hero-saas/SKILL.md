---
name: typographic-hero-saas
description: A SaaS landing page where Space Mono at 17vw replaces all photography — binary OKLCH palette (near-white/near-black), single accent green, ghost text layer at opacity 0.04, mix-blend-mode navigation, and scroll-kinetic letter-spacing reveals. Typography IS the visual system.
metadata: design-skill
---

# Typographic Hero SaaS

## What This Skill Does

Routes a typographic hero visual system into a full-page SaaS marketing landing page. Display type at extreme scales (17vw hero headline, 12vw manifesto, 8vw feature words) replaces all photography, illustrations, and icons. A strictly binary OKLCH palette alternates between near-white and near-dark sections with hard cuts — no gradients, no decorative elements. The page uses Space Mono 700 at architectural sizes contrasted with Newsreader 300 italic for prose, creating a visual language that communicates technical capability through typographic confidence.

## When to use

- Best for developer tool, API product, or infrastructure SaaS landing pages
- Best for analytics, data platform, and event-streaming products
- Best for open-source project marketing sites and CLI tool homepages
- Use when the audience is CTOs, VPs Engineering, and data team leads who evaluate tools by capability, not visual flash
- Use when you want the product's confidence expressed through typographic architecture, not imagery

## When not to use

- Avoid for consumer products requiring approachable, friendly imagery
- Avoid for e-commerce requiring product photography
- Avoid for healthcare or finance products where soft trust-building is required
- Avoid for products whose primary evidence is onboarding screenshots or UI demos
- Avoid for B2C mobile apps — the editorial register is wrong for casual audiences

## Default Workflow

1. Read this `SKILL.md` first to decide whether the system fits the product pressure.
2. Read `https://joincommons.cc/api/items/typographic-hero-saas/raw/design-language` when you need the full design language, section architecture, adaptive behavior, and accessibility logic.
3. Use `tokens.dtcg.json` when mapping the system into code or adapting token values.
4. Inspect `exhibit.html` when you need the most truthful reference for how sections are composed.
5. Read `https://joincommons.cc/api/items/typographic-hero-saas/raw/anti-patterns` before finalizing — run the 10-point checklist before shipping.

## Supporting Files

- `https://joincommons.cc/api/items/typographic-hero-saas/raw/design-language`: canonical design language — OKLCH binary palette, Space Mono / Newsreader type system, section architecture (8-section alternating inversion sequence), ghost text layer specification, motion spec (expo-out throughout), accessibility, and implementation invariants.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, font sizes, weights, letter-spacing, line-heights, spacing, animation durations.
- `exhibit.html`: full proof-of-concept — BOLDTYPE Analytics landing page with hero, metrics band, manifesto, customer composition, feature rows, SQL playground, pricing, and closing CTA.
- `https://joincommons.cc/api/items/typographic-hero-saas/raw/design-language`: extended design system documentation with per-section layout patterns and motion specification.
- `https://joincommons.cc/api/items/typographic-hero-saas/raw/image-kit`: photography policy (this skill uses zero photography) and guidance on when to use SVG vs type.
- `https://joincommons.cc/api/items/typographic-hero-saas/raw/anti-patterns`: eight topic-specific traps and universal AI slop checklist with self-critique protocol.
- `evidence/blueprints.json`: layout blueprint coverage (if present).
- `evidence/component-matrix.json`: component and state coverage (if present).

## Supporting References

- Reference sites (stripe.com, linear.app, sagmeister.com) are inspirational references only, not official upstream docs.
- Bundle-local files remain the default path. No external references are required to produce output in this style.

## Output Expectations

- Produce a single full-page HTML document with self-contained CSS and JS, no external dependencies except Google Fonts.
- Preserve the binary OKLCH palette — no third color, no gradients, no pure `#000`/`#fff`.
- Include all 7 non-negotiable bold choices: 12vw+ word, two color inversions, zero icons/photos, weight 700 vs 300 contrast, overlapping ghost text, scroll-triggered animation, monospace data metrics.
- Include `prefers-reduced-motion` media query disabling all transitions and reveals.
- Include `:focus-visible` outline on all interactive elements.
- Responsive: collapse multi-column layouts below 768px, hide ghost text, reduce gutter to 1.25rem.

## Reuse and Adaptation Guidance

- Keep these traits stable: Space Mono 700 display + Newsreader 300 italic body, binary OKLCH palette, hard section-color inversions, ghost text at opacity 0.04, mix-blend-mode: difference navigation, zero border-radius, zero shadows, zero photography.
- Safe variation knobs: product name, copy content, metric values, customer names (text only), feature words and descriptions, SQL/code example content, pricing amounts and tier names, number of feature rows.
- Do not add a third color, add photography or icons, use rounded corners or shadows, or soften the dark surface to gray.

## Non-negotiables

- At least one word/headline at 12vw+ — the type must fill the viewport, not sit inside it.
- Two or more hard color-inversion sections (no gradient transitions between them).
- Zero photographs, zero illustrations, zero icons of any kind.
- Space Mono 700 display contrasted with Newsreader 300 italic body — no other families.
- Ghost text layer at opacity 0.04 in at least one dark section.
- Scroll-triggered animation on at least one section using IntersectionObserver.
- Product metrics displayed in monospace at contained sizes — never in display type.

## Common Failure Modes

- Making headlines "just big" rather than architectural — the headline must have no max-width, must fill the gutter, must break naturally at the viewport edge.
- Introducing a third color for "brand identity" — the accent green's power comes from scarcity; a third hue reads as noise.
- Setting the ghost text opacity above 0.06 — it becomes visible clutter instead of barely-there depth.
- Centering display type — this system is left-aligned and asymmetric. Center alignment produces a corporate poster.
- Softening dark sections to `oklch(0.2 0.01 250)` gray — the near-black must be `oklch(0.12 0.01 250)` for the inversion to land.
- Adding icons alongside feature words — the feature WORD at 8vw IS the icon. Adding an icon next to it confirms the SaaS template look.
- Forgetting `mix-blend-mode: difference` requires the nav text to be `color: white` — without it the blend mode has no effect.
- Animating letter-spacing on body text instead of only display headlines — small text letter-spacing reveals are invisible and hurt readability.
