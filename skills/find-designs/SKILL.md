---
name: find-designs
description: Find and apply a design skill from Commons to your project. Use when the user says "find me a design", "style my app", "make it look good", "find a design skill", "apply a design", "recommend a UI direction", "what style should we use", or wants to change the visual identity of their project.
---

# Find Designs

Browse Commons (joincommons.cc) to find a distinctive design identity for the user's project, then apply it as the project's design system.

## Rules

- Phase 0 (project scan) is COMPLETELY SILENT. Never tell the user what files you found.
- Download thumbnail images locally and show them to the user (see Phase 1B).
- This should feel like a conversation, not a tutorial. Don't dump walls of text.
- Read DESIGN.md and SKILL.md only AFTER the user picks a skill (not before).

## Phase 0 — Initialize (silent)

Scan silently — do NOT output any of this:
- package.json / tech stack
- Existing CSS, Tailwind config, theme files, design tokens
- Product type (dashboard, landing page, SaaS, blog, etc.)
- Target audience

Check for existing taste profile:
1. `.commons/taste.json` (project-level)
2. `~/.commons/global-taste.json` (global)

If taste profile exists, use it to skip or shorten Phase 2.

Say something brief: "I'll help you find a design style. Let me look at your project..."

## Phase 1 — Search & Download Previews

### 1A: Search Commons

Construct 2-4 search queries based on your scan:

    GET https://joincommons.cc/api/items?q={keywords}&limit=10
    GET https://joincommons.cc/api/items?sort=trending&limit=10

Key fields to evaluate:
- `bestFor` / `avoidFor` — product fit (skip if avoidFor matches your project)
- `coaching.identity` — one-sentence design philosophy
- `coaching.signatureMoves` — key visual decisions
- `cardThumbnailUrl` — PNG preview URL
- `temperature` — warm / cool / neutral

### 1B: Download Thumbnails

After selecting 5 candidates, download their card thumbnails locally so the user can see them:

    python skills/find-designs/scripts/download_thumbnails.py --slugs "slug-1,slug-2,slug-3,slug-4,slug-5"

This saves PNGs to `.commons/previews/` and outputs JSON with local file paths.

If Python is not available, download manually:

    mkdir -p .commons/previews
    curl -sL "{cardThumbnailUrl}" -o .commons/previews/{slug}-card.png

Then show the downloaded images to the user. Reference the local file paths (e.g., `.commons/previews/pencil-draft-card.png`).

If you cannot display local files, show the CDN URL as a clickable link:
`https://pub-962ae6531eaf4fc2b3cd95edcb026436.r2.dev/thumbnails/ai-{slug}-card.png`

## Phase 2 — Taste Convergence

Two rounds. Do not collapse into one.

### Round 1: Wide Exploration (5 options)

Pick 5 STYLISTICALLY DIVERSE candidates. For each show:
1. The downloaded thumbnail image (from .commons/previews/)
2. Name
3. One-line identity
4. 2-3 signature moves

Ask: "Which feel right? Which feel wrong?"

If user picks one directly → skip Round 2.

### Round 2: Narrow Refinement (3 options)

Based on Round 1 feedback, show 3 variants within the preferred direction.

### Returning user shortcut

If taste profile exists: skip Round 1, present 3 pre-filtered options or recommend 1.

## Phase 3 — Save Taste Profile

Copy `{baseDir}/assets/taste-profile.json` to `.commons/taste.json` and fill it with the user's preferences, liked/disliked skills, selected skill, and feedback notes from Phase 2.

Also merge into `~/.commons/global-taste.json` if writable.

## Phase 4 — Preview

1. Pick 1-2 existing project pages
2. Fetch: `GET https://joincommons.cc/api/items/{slug}`
3. Read `designLanguageUrl` (DESIGN.md)
4. Apply colors, typography, spacing to the page in preview mode
5. Ask: "Here's how it would look. Proceed or try a different skill?"

## Phase 5 — Install

### Download artifacts

From the detail response (`GET /api/items/{slug}`), save:
- `designSkillUrl` → `.commons/SKILL.md`
- `designLanguageUrl` → `.commons/DESIGN.md`
- `tokensDtcgUrl` → `.commons/tokens.dtcg.json`

### Track the install

    POST https://joincommons.cc/api/items/{slug}/apply
    Content-Type: application/json
    Body: { "source": "skill", "agent_id": "<your-agent-id>" }

### Generate framework tokens

Based on tech stack:
- **Tailwind**: Map to CSS custom properties + tailwind.config.ts theme.extend
- **CSS Variables**: Generate `:root {}` block
- **styled-components**: Generate theme object

### Apply the design language

Read `.commons/SKILL.md` — it has specific instructions. Follow it first. Then:
1. Update global styles
2. Apply signature moves
3. Respect hard constraints
4. Avoid anti-patterns

## Phase 6 — Fine-Tuning

Proactively offer: "Want to tweak anything? 'Make the primary color warmer', 'reduce border radius', 'use a serif font'."

Loop until user says "looks good" or "done". Update taste profile with every tweak.

## Phase 7 — Report

Summarize: skill applied, key decisions, files modified, link to `https://joincommons.cc/style/{slug}`.

## API Reference

Load `references/api.md` for full endpoint details, response shapes, and query tips.

## Gotchas

- Multi-word search uses AND logic — "dark portfolio" requires BOTH words. Use single keywords for broader results, or run multiple searches.
- `avoidFor` is CRITICAL — if a skill says "avoid: enterprise dashboards" and you're building one, SKIP IT. Don't rationalize.
- NEVER load DESIGN.md or SKILL.md during Phase 0-2. They're 2000+ words each. Only load after the user picks.
- `cardThumbnailUrl` is a full HTTPS URL to a PNG. Download it with the script. Show the image. Never just write the word "thumbnail".
- Sort by `trending` for best quality. The registry has 200+ skills — many are low quality. Trending surfaces the curated ones.
- If `taste.json` exists, skip the wide exploration round. Go straight to 3 refined options.

## Context Window Management

- Phase 0-2: list metadata only. Do NOT fetch DESIGN.md.
- Phase 4: fetch DESIGN.md only for the chosen skill.
- Phase 5: fetch SKILL.md + DESIGN.md + tokens only during install.
