---
name: orchid-workflow-engine
slug: orchid-workflow-engine
description: Calm, warm, light-mode design system for a proactive AI work agent. Data-as-visual approach where morning briefings, activity feeds, and calendar comparisons replace traditional hero imagery. Orchid accent on warm cream, Sora + Instrument Sans typography.
metadata: design-skill
---

# Orchid Workflow Engine

<design-system>

## Identity
A morning briefing for people who are drowning in coordination work. Orchid connects to your email, calendar, Slack, and project tools, then handles tasks BEFORE you ask. The design language is warm calm -- cream backgrounds with tinted neutrals, a single orchid accent, and product data as the primary visual. This is Superhuman's premium polish meets Headspace's deliberate spaciousness. The interface communicates control through absence: what ISN'T there matters more than what is.

## Product World
- **Who**: Overloaded knowledge workers -- startup founders, VPs, senior ICs -- who spend 3+ hours/day on coordination work (email, scheduling, status updates). They've tried every productivity app and none stuck because they all require MORE input. They use Gmail, Google Calendar, Slack, Linear, Notion, GitHub daily. They admire Superhuman's speed and Headspace's calm.
- **What**: Proactive AI work agent that handles coordination tasks BEFORE you ask. You wake up and your day is organized.
- **Vibe**: Superhuman (premium, keyboard-first, speed) meets Headspace (spacious, calm, deliberate). Opening your laptop to discover someone incredibly competent organized everything while you slept.
- **Domain conventions**: Email subject lines are real and specific ("Re: Q3 headcount proposal"), calendar events use actual meeting names ("Eng all-hands"), Slack channels are hashtag-prefixed (#design-reviews), task IDs reference tools (Linear issues, GitHub PRs). Data uses real counts and timestamps with tabular-nums.

## Signature Moves
1. **Data IS the hero** -- no photography, no video, no illustration. A morning briefing card with real stats (44 handled, 3 need you, 2 rescheduled) is more compelling than any visual.
2. **One accent color discipline** -- orchid (hue 300) is the only chromatic accent. Everything else is warm neutrals. This restraint creates calm.
3. **Light mode only** -- dark mode contradicts the product's "morning briefing" identity. This is a 7am product.
4. **Tiny decision queue** -- the "3 things that need you" section is deliberately small. The smallness IS the message about what Orchid handles.
5. **Before/after calendar as data visualization** -- the time-reclaimed section uses actual calendar slots, not an abstract chart. It looks like the product's real output.
6. **Activity feed as evidence** -- the overnight feed reads like a git log. Every action is timestamped or tagged "Auto." Transparency builds trust.
7. **Integration stats are live** -- each tool cell shows a real number from the last session ("44 actions last night"), not a capability description.

## Hard Constraints
1. Light-mode only -- warm cream bg oklch(0.975 0.008 75), never dark mode, never pure white
2. Single chromatic accent -- orchid oklch(0.58 0.14 300) only; all other colors are warm-tinted neutrals or semantic status
3. Sora for display + Instrument Sans for body -- no third font, no monospace unless showing code
4. Semantic status colors: sage green (handled), orchid (needs-you), muted blue (scheduled), dim gray (low)
5. Neutrals tinted warm (hue 75) -- never pure gray, never cool-tinted
6. All content references real domain data: specific email subjects, actual meeting names, real Slack channels, tool-specific task IDs
7. No photography, no video, no SVG illustrations -- data-as-visual and typography are the visual assets

## Anti-Patterns
1. Dark mode with glowing accents -- this is a morning product, not a late-night developer tool
2. Busy dashboard with sparklines, charts, and competing status badges -- Orchid is the opposite of information overload
3. Hero photography or video backgrounds -- the briefing card IS the visual; adding images makes it generic
4. Feature grid with icons ("Smart triage", "Auto-scheduling") -- show evidence, not marketing bullets
5. Settings/configuration UI -- Orchid's promise is ZERO configuration; showing rules contradicts the value
6. Marketing buzzwords -- "AI-powered intelligent workflow orchestration" is wrong; "Your day is already organized" is right
7. Generic meeting names -- "Meeting with Team" is fake; "Q3 planning sync -- need your input on headcount" is real
8. Logo parades for integrations -- show what each tool DOES with a live stat, not a row of logos

## Visual Vibe
Spacious, warm, morning light, organized, premium, quiet confidence, editorial calm, lavender undertone, unhurried, precise. A well-organized desk at 7am with coffee. A Muji store. The moment after you check off every item on a list.

## Section Archetypes
- **Morning Briefing** -- hero pattern: today's date, greeting, three stats (handled/needs-you/rescheduled), and a short decision queue. This IS the product surface.
- **Overnight Activity Feed** -- chronological log of what Orchid did while you slept. Each item: dot status + title + detail + timestamp or "Auto" badge. Evidence, not marketing.
- **Decision Queue** -- 2-3 cards showing ONLY items that require human judgment. Each has priority, context paragraph, and source tool. Deliberately small.
- **Time Reclaimed** -- before/after calendar comparison. Left: chaotic day with conflicts. Right: organized day with focus blocks. Big stat at bottom.
- **Thinking Flow** -- 4-step vertical timeline (Observe, Propose, Act, Learn) with real pattern-detection examples at each step.
- **Integration Mesh** -- grid of connected tools with live stats, not logo-heavy.

## Hero Archetype
**Data-typography hero.** The morning briefing card IS the hero visual -- real product data paired with a large, light-weight headline. No photography, no video, no illustration. The product's data answers the user's first question: "what happened while I was asleep?"

## Asset Direction
- **Data-as-visual**: Primary asset. Real email subjects, calendar events, Slack channels, task counts, timestamps. Format: tabular-nums for numbers, dot-status for priority, muted badges for auto actions.
- **Typography-as-art**: Hero headline is the dominant visual. Large, weight 300, with a single em/accent word. Section headings use real statements ("Three things. That's it.").
- **CSS atmospherics**: Warm cream background with orchid tinting. Frosted glass nav. Soft elevated surfaces.
- **Photography**: NOT needed. If ever used (blog, about page), abstract only -- light through blinds, clean surfaces.
- **What NOT to show**: No email client screenshots. No inbox before/afters. No stock "productivity" photos. No abstract blobs or gradient meshes.

## Typography
- **Sora** (display) -- Geometric sans with slightly rounded terminals. Calm and precise without being cold. Weight 300 for headlines, 500 for emphasis.
- **Instrument Sans** (body) -- Crisp, modern, slightly condensed. Excellent readability at small sizes for dense activity feeds. Weight 400/500/600.

## Color
All OKLCH. Light-mode only.

| Token | Value | Meaning |
|-------|-------|---------|
| bg-primary | oklch(0.975 0.008 75) | Warm cream |
| bg-secondary | oklch(0.96 0.006 75) | Deeper cream for sections |
| bg-elevated | oklch(0.99 0.004 75) | Card surfaces |
| text-primary | oklch(0.22 0.01 75) | Warm near-black |
| text-secondary | oklch(0.45 0.01 75) | Descriptions |
| text-tertiary | oklch(0.62 0.008 75) | Metadata |
| accent | oklch(0.58 0.14 300) | Orchid -- the ONE accent |
| accent-soft | oklch(0.75 0.08 300) | Lighter orchid |
| accent-deep | oklch(0.42 0.16 300) | Deep orchid |
| status-handled | oklch(0.55 0.12 155) | Sage green -- done |
| status-needs-you | oklch(0.58 0.14 300) | Orchid -- attention |
| status-scheduled | oklch(0.55 0.08 250) | Muted blue -- time |
| status-low | oklch(0.65 0.008 75) | Dim -- archived |

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/orchid-workflow-engine/raw/design-language` | Full visual system: OKLCH palette, type scale, spacing rhythm, motion system, component patterns |
| `references/asset-direction.md` | Asset sourcing guidance: data-as-visual, typography-as-art, what NOT to show |
| `https://joincommons.cc/api/items/orchid-workflow-engine/raw/anti-patterns` | 20 domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG design tokens: color, semantic (status, calendar), and typography composites |
| `assets/exhibit.html` | Reference implementation -- single-file self-contained exhibit at ~41KB |
| `assets/design-skill.json` | V1 manifest with coverage, discovery, and routing metadata |

</design-system>
