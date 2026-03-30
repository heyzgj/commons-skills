---
name: code-mono-devtool
description: A monospace-only warm cream paper landing page for developer CLI tools — JetBrains Mono only, code blocks as hero, terminal prompt prefixes, ASCII dividers, cursor blink as sole animation, zero decoration at 72ch.
metadata: design-skill
---

# Code Mono Devtool

## What This Skill Does

Routes a monospace-only, zero-decoration visual system into developer CLI tool landing pages. The design uses JetBrains Mono as the sole typeface, code blocks as hero sections, terminal prompt prefixes ($, >, #, ~) as semantic indicators, ASCII box-drawing dividers, a blinking cursor as the only animation, and a warm cream paper background at 72ch max-width. Should feel like a beautifully typeset technical manual, not a skinned terminal.

## When to use

- Best for CLI tool landing pages and open-source developer utility homepages
- Best for API documentation, changelog pages, and benchmark comparison sites
- Use when the audience evaluates by reading code, not marketing copy
- Use when the product IS the code and the code speaks for itself

## When not to use

- Avoid for consumer SaaS with photography or lifestyle imagery — there are zero images in this system
- Avoid for e-commerce or product catalogs — no grid layouts or card containers
- Avoid for creative portfolios — the aesthetic is utilitarian, not expressive
- Avoid for data dashboards with charts — this is a document, not an application

## Default Workflow

1. Read this `SKILL.md` first to decide whether the system fits the product pressure.
2. Read `https://joincommons.cc/api/items/code-mono-devtool/raw/design-language` when you need the full design language, color tokens, typography scale, layout patterns, and accessibility logic.
3. Use `tokens.dtcg.json` when mapping the system into code or adapting token values.
4. Inspect `exhibit.html` when you need the most truthful proof surface or a preview-aligned reference frame.
5. Check `https://joincommons.cc/api/items/code-mono-devtool/raw/anti-patterns` for topic-specific traps and a self-critique checklist.

## Supporting Files

- `https://joincommons.cc/api/items/code-mono-devtool/raw/design-language`: canonical design language — OKLCH color system, JetBrains Mono type scale, layout patterns, ASCII divider rules, cursor blink animation, responsive behavior, accessibility, and implementation invariants.
- `tokens.dtcg.json`: DTCG-format tokens for all colors, font sizes, weights, line-heights, spacing, border-radius (0px), and cursor animation timing.
- `exhibit.html`: the full proof-of-concept page — a fictional fast file-search CLI tool called "terminal" with install commands, usage examples, flags reference, benchmarks table, and changelog.
- `https://joincommons.cc/api/items/code-mono-devtool/raw/design-language`: extended design system documentation with code examples and signature moves.
- `https://joincommons.cc/api/items/code-mono-devtool/raw/image-kit`: image guidance (this skill uses zero photography — all visuals are monospace text).
- `https://joincommons.cc/api/items/code-mono-devtool/raw/anti-patterns`: eight topic-specific traps, a universal AI slop checklist, and a five-question self-critique protocol.

## Supporting References

- Reference sites (stripe.com/docs, linear.app/changelog, ripgrep.github.io) are inspirational references only, not official upstream docs.
- Bundle-local files remain the default path. No external references are required to produce output in this style.

## Output Expectations

- Produce a single full-page HTML document with `<header>`, `<main>`, `<section>`, and `<footer>` semantic elements.
- The hero must be a code block with a real command and realistic terminal output, not a marketing headline.
- Include `:focus-visible` outlines and `prefers-reduced-motion` media query.
- Include responsive behavior for narrow screens (< 600px font-size reduction, flags list stacking).

## Reuse and Adaptation Guidance

- Keep these traits stable: JetBrains Mono only, warm OKLCH palette (paper hue 85, ink hue 260), zero border-radius, zero box-shadow, ASCII box-drawing dividers, 72ch max-width, cursor blink as sole animation.
- Safe variation knobs: tool name, commands, flags, benchmark data, changelog entries, number of sections, badge content, ASCII logo text.
- Do not add sans-serif or display fonts, photography, icons, illustrations, border-radius, box-shadow, gradients, or any animation besides cursor blink.

## Non-negotiables

- JetBrains Mono is the only permitted typeface — no exceptions.
- The hero section must be a code block, not a marketing headline.
- Zero border-radius, zero box-shadow, zero gradients on all elements.
- Warm cream paper background (not white, not dark terminal).
- Cursor blink is the only animation — no hover transitions, no scroll reveals.
- Terminal prompt prefixes ($, >, #, ~) must be present in code blocks and navigation.
- Keep bundle claims truthful — this is a light-only, dense, single-page landing system.

## Common Failure Modes

- Defaulting to dark terminal green-on-black — this design is explicitly LIGHT cream paper.
- Using a marketing headline hero ("Ship faster!") instead of a real code block with output.
- Adding Inter, Helvetica, or any non-monospace font for "readability" — destroys the identity.
- Using border-radius on code blocks, badges, or buttons — every corner must be sharp.
- Making the layout spacious and airy — this should be DENSE like a man page, not luxurious.
- Forgetting terminal prompt prefixes ($, >, #, ~) — these are the semantic backbone.
- Adding icon libraries (Lucide, Heroicons) — the only visual vocabulary is ASCII characters.
