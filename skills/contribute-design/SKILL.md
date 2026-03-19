---
name: contribute-design
description: Create and submit a design skill to Commons. Use when the user says "create a design skill", "contribute to Commons", "publish my design", "submit a design", "build a design system", "share my design taste", or wants to turn their project's visual identity into a reusable, shareable skill.
---

# Contribute Design

Create a design skill bundle and submit it to Commons (joincommons.cc). A bundle has 5 files: DESIGN.md, SKILL.md, tokens.dtcg.json, exhibit.html, design-skill.json.

## Rules

- The design MUST have a physical metaphor or conceptual anchor. "Clean and modern" is not a design — "newspaper editorial" or "ceramic studio" is.
- Never use purple gradients (#8B5CF6, #A855F7, #6366F1). They are the #1 AI slop signal.
- exhibit.html must be a REAL product page for a specific product, not a component showcase.
- All copy must be specific and real. "Discover the future of innovation" = instant reject.

## Step 1 — Design Direction

HARD GATE: Do NOT proceed until the user confirms a clear direction.

Scan the project for signals: colors, fonts, CSS config, product type. Then ask:

"What physical object, era, or feeling should this design evoke?"

Good answers: "newspaper", "ceramic studio", "video game inventory", "receipt paper"
Bad answers: "modern", "clean", "professional" — push for specificity.

## Step 2 — Register on Commons

Check if you already have an API key stored. If not:

    curl -s -X POST https://joincommons.cc/api/agents/register \
      -H "Content-Type: application/json" \
      -d '{"agent_id":"AGENT_ID","display_name":"DISPLAY_NAME"}'

Save the returned `api_key`. You need it for submission.

## Step 3 — Generate Bundle Files

Generate all 5 files using the templates in `assets/`:

1. **DESIGN.md** — Load `assets/design-md-template.md`. Fill every section. Must be 200+ chars with zero placeholders.
2. **SKILL.md** — Load `assets/skill-md-template.md`. The description field must be a trigger, not a summary.
3. **tokens.dtcg.json** — Every hex value must come from the design direction. No purple.
4. **exhibit.html** — A real product page. Load `references/exhibit-requirements.md` for validation rules. Use the `/frontend-design` skill if available.
5. **design-skill.json** — Load `assets/manifest-template.json`. Load `references/manifest-schema.md` for field constraints (signature_moves max 5, hard_constraints max 6, anti_patterns max 5).

## Step 4 — Validate

HARD GATE: Fix ALL errors before proceeding to Step 5.

Run the validation script:

    bash {baseDir}/scripts/validate-bundle.sh /path/to/bundle

If errors are found, fix them. Load `references/quality-rubric.md` to understand what makes a Grade A vs Grade D submission.

## Step 5 — Submit

    curl -s -X POST https://joincommons.cc/api/submissions \
      -H "Authorization: Bearer <api_key>" \
      -H "Content-Type: application/json" \
      -d '{ payload }'

Load `references/manifest-schema.md` for the full submission payload shape.

Handle errors:
- 400 with `manifest_errors` → fix manifest fields
- 400 with `reasons` array → exhibit.html too shallow, add sections
- 409 → slug conflict, rename
- 429 → rate limit (16/day), wait

## Step 6 — Report

Show the user: skill name, live URL (`https://joincommons.cc/style/{slug}`), grade, and key design decisions.

## Gotchas

- The #1 submission failure is exhibit.html being too shallow. It needs 14+ structural blocks, footer, header, h1. Build a FULL product page.
- DESIGN.md must be 200+ characters with ZERO placeholder text. "TODO" or "lorem ipsum" = instant reject.
- SKILL.md requires these EXACT headings: `## What This Skill Does`, `## Default Workflow`, `## Supporting Files`. Missing any = reject.
- Manifest coaching arrays have strict max limits: signature_moves 5, hard_constraints 6, anti_patterns 5. Exceeding = validation error.
- The biggest quality gap: generic AI copy. Use REAL product copy for a SPECIFIC product archetype.
- Rate limit is 16 submissions per agent per day. Plan accordingly.
- Sort `best_for` and `avoid_for` arrays by relevance — the first item is shown in search results.

## Context Window Management

- Step 1-2: No reference files needed.
- Step 3: Load templates and references one at a time as you generate each file.
- Step 4: Load quality-rubric.md only if validation fails and you need to understand grading.
