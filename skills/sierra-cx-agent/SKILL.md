---
name: sierra-cx-agent
description: Clean, product-led autonomous CX agent landing page. White background, blue accent, Inter 400-600 + JetBrains Mono. Three side-by-side chat conversation panels as hero visual (the product IS the design), agent reasoning flow with code blocks, contained demo video, asymmetric case study cards. Built for VP of CX at mid-market SaaS.
metadata: design-skill
---

# Sierra CX Agent

<design-system>

## Identity
Meridian is the autonomous CX agent that resolves 80% of support tickets without human intervention -- billing disputes, technical troubleshooting, appointment booking. Built for VP of Customer Experience at mid-market SaaS companies ($10M-$500M ARR) who manage 20-50 human agents, live in Zendesk/Intercom dashboards, track CSAT scores and cost-per-ticket obsessively, and are skeptical of chatbots after being burned by deflection-first tools. The vibe is Sierra.ai's clean professionalism meets Linear's operational precision -- the product demo speaks for itself, no decoration needed.

**Core principle**: The product IS the visual. Chat conversation demos showing real resolutions are the hero, the proof, and the design. Everything else exists to support that demonstration.

**Visual vibe**: Clean, professional, trustworthy, precise, operational, restrained, confident, product-led, white-space-generous, data-grounded.

**Domain conventions**: CSAT (1-5 scale), first response time (seconds), resolution rate (%), cost per ticket ($), auto-resolved vs escalated, confidence scores (0-1), ticket categories (billing, technical, booking).

## Signature Moves
1. **Three chat panels as hero visual**: No decorative hero image. The product demonstrations ARE the hero -- three real conversations happening simultaneously
2. **Metrics embedded in context**: Resolution time and CSAT score live inside each chat panel footer, not in a separate metrics section
3. **Terminal-style reasoning blocks**: Dark code blocks with syntax highlighting show exactly how the agent thinks -- fetch, check, action, send
4. **Horizontal reasoning flow**: Three steps connected by arrows, not vertical "3 steps" template. Each step has its own code block
5. **Single contained video**: Not ambient background -- a proper video player with play button, filename bar, and duration
6. **Asymmetric case study grid**: First card wider with photo, second and third cards text-only with different metric counts
7. **Text-only customer logos**: No logo images, just company names in a single muted row. Understated social proof
8. **Blue-tinted neutrals**: Every gray in the system has a hint of blue (hue 250) for subconscious cohesion with the accent color

## Hard Constraints
1. Cool-tinted white background: page body must be `oklch(0.985 0.005 250)` -- never warm cream, never dead gray, never hue 55-70
2. Blue accent `oklch(0.55 0.2 250)` for CTAs, section labels, user message bubbles. Not purple, not teal
3. Inter 400/500/600 for all display and body text. JetBrains Mono 400/500 for code blocks, timestamps, badges, metric values only
4. Chat conversations must use specific data -- plan names, dollar amounts, card endings, employee names. Generic dialogue destroys credibility
5. Video section must be a contained player frame with play overlay, NEVER ambient background
6. Metrics live inside chat panel footers, not in a separate metrics section
7. All neutrals tinted hue 250 (blue) -- no dead grays, no warm tints
8. Maximum 1 photograph on entire page, used in case studies only

## Anti-Patterns
- NOT warm cream or hospitality-themed (this is tech infrastructure, not a hotel concierge)
- NOT a chatbot landing page with floating widget screenshots
- NOT dark mode with glowing neon accents
- NOT ambient video as background atmosphere (video is contained in a player frame as product demo)
- NOT hero-features-pricing-CTA template structure
- NOT a feature grid with icon + heading + text repeated 6 times
- NOT three equal-column card grids (use asymmetric widths)
- NOT film grain, not SaaS template, not "How it works: 3 steps"
- NOT gradient text or gradient accents
- NOT robot/AI imagery, neural network graphics, circuit boards

## Section Archetypes
- **Live conversation panels**: Three side-by-side chat UIs showing different use cases (billing, tech support, booking) with embedded resolution metrics (time, CSAT) in each panel footer
- **Agent reasoning flow**: Three-step horizontal flow (context retrieval -> policy check -> execute & verify) with terminal-style code blocks showing real data lookups
- **Contained demo video**: Product walkthrough in a bordered video player frame with play button overlay -- NOT ambient background video
- **Customer case studies**: Asymmetric card grid with company name, pull-quote, and 2-3 metrics per card. One card has photography, others are text-only
- **Customer logo row**: Single horizontal line of text-only company names, understated

## Hero Archetype
Product-as-hero: headline + three chat conversation panels side-by-side. The panels look like real chat UIs with message bubbles, timestamps, resolution badges, and CSAT scores. No decorative imagery. The conversations demonstrate the product's value directly.

## Asset Direction
- **Primary visual**: Chat conversation mocks are the main asset. They must use realistic data -- plan names, dollar amounts, card endings, timestamps, confidence scores
- **Photography**: 1 image maximum, used in case studies section only. Professional team/workspace setting
- **Video**: One contained demo video in a player frame (not ambient background). Shows the agent working
- **Code blocks**: Terminal-style reasoning logs with keyword highlighting (fetch, check, action, send) -- makes the agent's intelligence visible
- **What NOT to show**: Robot/AI imagery, neural network graphics, ambient video backgrounds, stock photos of headset-wearing agents

## Typography
- **Inter 400/500/600** (display + body): Clean professional sans-serif. Weight 600 for headings creates confident hierarchy without being heavy. Professional register -- trustworthy, direct, modern.
- **JetBrains Mono 400/500** (agent reasoning + metrics): Terminal-style monospace for code blocks, resolution timestamps, and CSAT badges. The mono type makes operational data feel real and auditable.

## Color
OKLCH palette with cool-tinted white base (hue 250):
- `oklch(0.985 0.005 250)` -- page background (near-white, blue-tinted)
- `oklch(0.995 0.003 250)` -- card/panel surfaces
- `oklch(0.55 0.2 250)` -- blue accent (CTAs, section labels, user message bubbles)
- `oklch(0.50 0.22 250)` -- accent hover
- `oklch(0.18 0.015 250)` -- primary text, nav CTA background
- `oklch(0.42 0.015 250)` -- secondary text
- `oklch(0.60 0.15 155)` -- success green (resolved status, checkmarks)
- `oklch(0.90 0.01 250)` -- borders
- `oklch(0.14 0.015 250)` -- code block backgrounds (dark)

## Workflow
1. Read `https://joincommons.cc/api/items/sierra-cx-agent/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/sierra-cx-agent/raw/anti-patterns`

## Gotchas
1. Chat conversations must use specific data -- plan names, dollar amounts, card endings, employee names. Generic "How can I help?" destroys the product-as-hero concept
2. The video section must be a contained player, NEVER ambient background. Play button overlay, bordered frame, filename bar
3. No warm cream anywhere. Background is cool-tinted white (oklch 0.985, hue 250). This is tech infrastructure, not hospitality
4. Metrics live inside the chat panel footers, not in a separate "By the numbers" section. The product demo IS the proof
5. Code blocks in reasoning steps must look like real operational logs, not pseudo-code. Use fetch/check/action/send keywords with real-looking data
6. Agent message bubbles are light gray (oklch 0.96), user bubbles are blue (the accent color). The color asymmetry shows who's talking instantly

</design-system>

## Supporting Files

- `https://joincommons.cc/api/items/sierra-cx-agent/raw/design-language`: canonical design language -- full OKLCH color palette, typography scale, spacing system, motion patterns, component patterns, and layout grids.
- `references/asset-direction.md`: photography direction, video direction, conversation mock data patterns, and verified starter assets.
- `https://joincommons.cc/api/items/sierra-cx-agent/raw/anti-patterns`: domain-specific traps across visual, structural, content, and UX categories.
- `assets/tokens.dtcg.json`: DTCG-format tokens for colors, semantic tokens (resolution status, agent reasoning, user/agent bubbles), and typography composites.
- `assets/exhibit.html`: reference implementation -- three chat panel hero, agent reasoning flow, contained demo video, asymmetric case studies, and CTA.
- `assets/design-skill.json`: manifest with V4 schema fields for Commons discovery and curation.
