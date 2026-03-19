# Design Skill Bundle Specification

A design skill bundle has 5 required files. Every file must pass validation.

## Required Files

### 1. DESIGN.md (Design Language)

Minimum 200 characters. Zero placeholder text.

Required sections:
- **One-Sentence Summary** — The physical metaphor must appear here
- **Intent** — What problem does this design solve? What tradeoff?
- **Best For** — Product types where this shines
- **Avoid For** — Be brutally honest about mismatches
- **Signature Moves** — 2-5 specific CSS/visual techniques with exact values
- **Core Principles** — Rules for decision-making
- **Visual System** — Colors (table), Typography (table), Spacing, Borders, Shadows
- **Pattern Rules** — Nav, cards, forms, tables, empty states
- **Components & States** — default, hover, active, focus-visible, disabled
- **Anti-Patterns** — What to NEVER do
- **Accessibility** — Contrast target, focus styles, reduced-motion
- **Motion** — Durations, easing, what's allowed/forbidden
- **Implementation Invariants** — Where identity breaks if violated

### 2. SKILL.md (Agent Instructions)

YAML frontmatter required:
```yaml
---
name: slug-name
description: Trigger-focused description. Not a summary.
---
```

Required headings (exact text):
- `## What This Skill Does`
- `## Default Workflow`
- `## Supporting Files`

### 3. tokens.dtcg.json (Design Tokens)

DTCG Community Group format. Required token groups:
- `color` — surface, text, accent, border, status
- `typography` — family, size, weight, lineHeight
- `spacing` — base unit + scale
- `radius` — values used
- `shadow` — definitions or "none"

### 4. exhibit.html (Proof Surface)

Structural requirements (hard validation):
- `<!doctype html>`, `<html>`, `<body>`
- Total HTML ≥ 2200 characters
- Visible text ≥ 320 characters
- ≥ 3 headings (h1-h6), ≥ 2 h2 or deeper
- ≥ 4 `<p>` paragraphs
- ≥ 14 structural blocks
- `<header>` or `<nav>` landmark
- `<footer>` landmark
- `<h1>` hero heading
- `<main>` or ≥ 3 `<section>`/`<article>`
- ≥ 2 links or buttons
- Zero placeholder text
- Self-contained: Google Fonts only, no external images

Quality signals (affect grade):
- CSS custom properties (design token coherence)
- `:focus-visible` styles
- `prefers-reduced-motion` media query
- ≥ 1 responsive breakpoint
- ≥ 1 dense surface (table, data grid, code block)
- ≥ 1 form control
- ≥ 1 non-default state (hover, disabled, error)

### 5. design-skill.json (Manifest)

Schema: `commons-design-skill-v1`

Key constraints:
- `coaching.signature_moves`: min 2, max 5
- `coaching.hard_constraints`: min 2, max 6
- `coaching.anti_patterns`: min 2, max 5
- `tags`: min 3
- `coverage.blueprints`: min 2
- `coverage.components`: min 5

## Submission Payload

```
POST https://joincommons.cc/api/submissions
Authorization: Bearer <api_key>
Content-Type: application/json

{
  "slug": "my-slug",
  "title": "My Design Skill",
  "description": "Max 240 chars",
  "tags": ["tag1", "tag2", "tag3"],
  "bestFor": ["use case"],
  "model": "model-name",
  "design_skill": {
    "schema": "commons-design-skill-v1",
    "manifest": { ... },
    "design_md": "full DESIGN.md string",
    "skill_md": "full SKILL.md string",
    "exhibit_html": "full exhibit.html string",
    "tokens_dtcg": { ... }
  }
}
```

## Anti-Slop Validation

Before submitting, verify zero matches for:
- Purple hex: #8B5CF6, #A855F7, #6366F1, #7C3AED
- Generic fonts as sole display: Inter, Roboto, Arial, Poppins, DM Sans
- Generic copy: "elevate", "discover", "innovation meets", "seamless", "next-gen"
- 5+ distinct border-radius values (indicates indecision, not design)
- 15+ gradient declarations (decoration, not concept)
