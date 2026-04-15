---
name: clawroom-noir-terminal
description: Noir operations center for agent collaboration infrastructure. Pure black void with high-contrast white wire-frame borders, three-font monospace-dominated typography (Space Mono display, IBM Plex Sans 300 body, JetBrains Mono code/meta), live room visualization with two-agent bridge panel, terminal transcript logs, pulsing status indicators, ambient video at 0.45 opacity (visible atmospheric texture), and infrastructure metrics dashboard. Green for active status, red for errors, nothing else.
metadata: design-skill
---

# ClawRoom Noir Terminal

<design-system>

## Identity
A monitoring station for machine-to-machine negotiation. Every pixel exists to make invisible agent collaboration legible. The design language is noir terminal severity -- pure black void, high-contrast white wire-frame borders, monospace typography dominating 80%+ of the page, and a single green accent for active status. This is infrastructure for engineers who build multi-agent systems, not a SaaS product page.

## Product World
- **Who**: AI agent developers building multi-agent systems. They use Claude Code, build with Agent SDK, understand tool use and context passing. They care about reliability, structured output, and clean infrastructure. They hate magic, handwaving, and anything that looks like a demo but doesn't work.
- **What**: Infrastructure for structured rooms where two AI agents collide their owners' contexts and produce machine-readable outcomes.
- **Vibe**: Bloomberg Terminal meets a submarine command center -- data-dense, high-contrast, zero decoration, everything visible and accountable.
- **Domain conventions**: Room IDs use `cr_` prefix with hex suffixes. Participants are "host" and "guest." Turns are bounded. Outcomes are machine-readable JSON. Status flows: INVITED -> JOINING -> ACTIVE -> DELIVERING -> CLOSED. Agents carry "owner context" -- confirmed facts, not inferred data.

## Signature Moves
1. **Two-agent bridge visualization**: Host and guest panels flanking a vertical bridge column with a green SYNC label -- makes the "two contexts colliding" concept visceral and architectural
2. **Live ticker simulation**: Session duration counts up, message count increments, session ID suffix rotates -- the page feels like active infrastructure running behind it
3. **Cursor blink on terminal input**: The last CLI command has a blinking underscore cursor in active green, suggesting the next command is imminent
4. **Wire-frame borders at 80% opacity**: Confident 2px white borders that make panels look like engineering schematics, not UI cards
5. **Luminance-only code syntax highlighting**: Keywords full white, strings 50% opacity, comments tertiary -- no color, just light levels

## Hard Constraints
1. Pure black #000000 background -- never dark gray, never tinted, never gradient
2. Zero border-radius on all rectangular elements -- only status dots (circle) and agent orbs (circle/squircle) are rounded
3. Three fonts with strict role separation: Space Mono display only, JetBrains Mono code/meta only, Inter 300 body only
4. Only two non-grayscale colors: green oklch(0.7 0.15 150) for active status, red oklch(0.65 0.2 25) for error status
5. 80%+ of page surface is monospace text -- the data IS the visual
6. All content references real agent-collaboration domain concepts (room IDs, owner context, bounded turns, outcome delivery)

## Anti-Patterns
1. Blue/purple accent creep -- any non-green/red hue breaks the duo-tone identity
2. Rounded corners on containers -- softens the architectural wire-frame feel
3. Chat bubble transcript layout -- this is a LOG with grid columns, not a messaging app
4. SaaS landing page structure (hero/features/pricing/CTA) -- this is infrastructure documentation
5. Gradient backgrounds or surface tinting -- background is always pure #000

## Visual Vibe
Surveillance-grade clarity. Wire-frame diagrams. Terminal transcripts. Bright borders on void. The precision of a flight recorder readout. The tension of watching two systems negotiate in real time. The restraint of infrastructure that doesn't need to sell itself.

## Section Archetypes
- **Hero with terminal commands**: Product name + CLI examples showing room creation and joining
- **Live room visualization**: Two agent panels connected by a bridge, with real-time-looking data (room ID, session duration, message count, status)
- **Room transcript log**: Timestamped monospace entries showing agent-to-agent negotiation with system events
- **Operations dashboard**: Large monospace numbers for infrastructure metrics (rooms created, resolution time, delivery rate)
- **Participant lifecycle**: State machine diagram showing INVITED -> JOINING -> ACTIVE -> DELIVERING -> CLOSED with descriptions of each phase
- **Integration code blocks**: Real Python/CLI examples for creating rooms, writing owner context, joining, and polling

## Hero Archetype
Ambient video (opacity 0.45, visible atmospheric texture with reduced grayscale filter) + dominant monospace typography + terminal command blocks. The video adds depth to the black background without competing with data. Typography IS the visual -- large Space Mono heading at clamp(3rem, 2rem + 5vw, 6rem). A mini live-session panel floats right showing two agents connected by a bridge with real-time stats.

## Asset Direction
No photography. No illustrations. Visual richness comes entirely from data and structure:
- **Data as visual**: Room transcripts, session stats, metric numbers, room IDs, timestamps
- **Structural diagrams**: Agent panels connected by bridge lines with SYNC labels
- **Code blocks**: Real Python and CLI examples with luminance-only syntax highlighting
- **Status indicators**: Pulsing green dots for active state, red for errors
- **Typography density**: Monospace labels at multiple scales create visual texture
- **Wire-frame borders**: 2px white borders on black define structure like architectural drawings

## Typography
Space Mono (display headings, brand, section titles) -- squared monospace letterforms that feel like system identifiers. JetBrains Mono (terminal logs, timestamps, labels, code, metadata) -- developer standard, instant credibility. Inter at weight 300 only (body descriptions, prose) -- light and recessive against the monospace-dominated UI.

## Color
Pure black #000000 background. Pure white #FFFFFF for primary text and structural borders at rgba(255,255,255,0.80). White at 60% opacity for secondary, 35% for tertiary, 25% for mid borders, 10% for faint borders. Green oklch(0.7 0.15 150) for ACTIVE status only. Red oklch(0.65 0.2 25) for ERROR only. Zero other hues.

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/clawroom-noir-terminal/raw/design-language` | Full visual system: OKLCH palette, type scale, spacing rhythm, motion system, component patterns |
| `references/asset-direction.md` | Asset sourcing guidance: data-as-visual, code direction, video approach, what NOT to show |
| `https://joincommons.cc/api/items/clawroom-noir-terminal/raw/anti-patterns` | 15 domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG design tokens: color, semantic (status, lifecycle, code syntax), and typography composites |
| `assets/exhibit.html` | Reference implementation -- single-file self-contained exhibit at 1280px viewport |
| `assets/design-skill.json` | V1 manifest with coverage, discovery, and routing metadata |

## Workflow
1. Read `https://joincommons.cc/api/items/clawroom-noir-terminal/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world, section archetypes, and hard constraints above
4. Self-critique against `https://joincommons.cc/api/items/clawroom-noir-terminal/raw/anti-patterns`
5. Validate tokens against `assets/tokens.dtcg.json`

## Gotchas
1. **Duo-tone means duo-tone.** The only non-grayscale color is green for active status. No blue accents, no purple highlights, no gradient text.
2. **Zero border-radius everywhere.** All rectangular elements are sharp. Only status dots and agent orbs are rounded.
3. **Three fonts, three strict roles.** Mixing font roles (e.g., Space Mono for body text) breaks the visual hierarchy entirely.
4. **The page must feel alive.** Status dots pulse. Session tickers count. The terminal cursor blinks. Without motion, it's a screenshot.
5. **Content must be real domain data.** Room IDs, agent names, negotiation transcripts -- all must reference actual ClawRoom concepts.
6. **Borders are structural, not decorative.** 0.80 opacity for section dividers, 0.10 for internal separators. Never the same weight for both.
7. **This is infrastructure, not a product pitch.** No testimonials, no pricing, no CTAs. The page demonstrates by showing the product working.

</design-system>
