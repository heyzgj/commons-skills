---
name: my-skill-slug
description: Brief description of what this design skill does and when to use it.
---

# [Skill Name]

## What This Skill Does

<!-- 1-2 sentences. What design identity does this apply? -->

## When to Use

<!-- Bullet list of scenarios where this skill is the right choice. -->

- <!-- Example: "The user wants a hand-drawn, approachable aesthetic" -->
- <!-- Example: "The project is a creative portfolio or personal blog" -->
- <!-- Example: "The brief mentions 'sketch', 'notebook', or 'hand-drawn'" -->

## When Not to Use

<!-- Bullet list of scenarios where this skill is the wrong choice. -->

- <!-- Example: "Enterprise SaaS dashboards that need to feel corporate" -->
- <!-- Example: "Financial or medical applications requiring formal gravitas" -->

## Default Workflow

1. **Read DESIGN.md** — understand the visual identity, color palette, typography, and pattern rules.
2. **Read tokens.dtcg.json** — extract design tokens and map to your framework (Tailwind, CSS variables, etc.).
3. **Scan the project** — identify existing styles, components, and layout patterns.
4. **Apply global styles** — set colors, typography, spacing from the token system.
5. **Apply signature moves** — implement the 3-5 specific visual decisions that define this skill.
6. **Respect hard constraints** — check every change against the anti-patterns list.
7. **Verify with exhibit.html** — compare your output against the reference exhibit for fidelity.

## Supporting Files

| File | Purpose | When to Read |
|------|---------|-------------|
| `DESIGN.md` | Full design language specification | Step 1 — always read first |
| `tokens.dtcg.json` | Machine-readable design tokens | Step 2 — during token mapping |
| `exhibit.html` | Reference implementation (full-page proof) | Step 7 — for visual comparison |
| `design-skill.json` | Manifest with metadata and routing info | Discovery phase only |

## Non-Negotiables

<!-- 3-5 rules that must never be broken. Copy from DESIGN.md anti-patterns + implementation invariants. -->

1. <!-- Example: "Never use drop shadows — only pencil-stroke borders" -->
2. <!-- Example: "Background must always be --color-paper (#f5f0e8)" -->
3. <!-- Example: "Primary font (Caveat) must be loaded, never substituted with a system font" -->

## Gotchas

<!-- Common mistakes agents make when applying this skill. -->

- <!-- Example: "Don't apply pencil borders to inline text elements — only block-level containers" -->
- <!-- Example: "The SVG filter for pencil strokes requires an inline <svg> definition, not a CSS-only approach" -->

## Adaptation Guidance

<!-- How to adapt this skill to different frameworks and contexts. -->

### Tailwind CSS

<!-- Specific guidance for Tailwind projects. -->

### Plain CSS / CSS Variables

<!-- Specific guidance for vanilla CSS projects. -->

### Component Libraries (shadcn/ui, etc.)

<!-- How to overlay this skill on existing component libraries. -->
