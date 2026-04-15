---
name: lunar-colony-ops
description: Mission control dashboard for a permanent lunar base. Dense, dark, data-driven operational interface for monitoring power generation, life support, crew health, surface operations, and resupply logistics. Saira Semi Condensed display, Fira Code mono for telemetry. Deep blue-void surfaces with operational status colors (nominal/caution/warning/critical). Data-as-hero approach -- solar output, O2 levels, and crew vitals as primary visual elements.
metadata: design-skill
---

# Selene Operations

<design-system>

## Identity
Mission control dashboard for humanity's first permanent lunar base at Shackleton Crater. Selene Operations manages power generation, life support, crew health, supply chains, rover dispatch, and communication windows from a single operational interface. Think Bloomberg Terminal for lunar ops: information density is the feature, every number has units and a trend arrow, status colors carry operational meaning. Built for mission operations engineers who run 24/7 shifts monitoring telemetry and coordinating EVAs.

## Product World
- **Who**: Mission operations engineers at NASA/ESA/SpaceX who run shifts in control rooms, monitor telemetry 24/7, plan EVAs around comm windows and radiation forecasts, and coordinate resupply missions 6 months out. They live in tabular-nums and UTC timestamps.
- **What**: The mission control dashboard for a permanent lunar base -- power, life support, crew, rovers, comms, supply chain.
- **Vibe**: spacex.com/launches (mission telemetry, countdown precision) meets Bloomberg Terminal (information density as a feature, monospace data, status-driven hierarchy)
- **Domain conventions**: UTC + Mission Elapsed Time dual clocks, subsystem status taxonomy (NOMINAL / CAUTION / WARNING / CRITICAL), telemetry log format (timestamp + system + reading + status tag), metric cards with units and trend arrows, crew manifests with vitals

## Signature Moves
1. **Fixed global status bar** — System health dot, crew count, EVA status, MET + UTC dual clocks pinned at the top. Never scrolls. This IS the heartbeat of the base.
2. **Three-column operations layout** — 220px sidebar (subsystem nav with live badges), flexible main (dense stacked panels), 320px right rail (comms countdown + events + telemetry feed). Desktop-native ops console.
3. **Data-as-hero** — The 4-up metric card grid with status dots, 28px monospace values, unit labels, and trend arrows IS the page's dominant visual element. No cinematic splash above it.
4. **Operational status color system** — Nominal green, caution amber, warning orange, critical red. Status dots with box-shadow glow for instant triage. Every badge, dot, and bar maps to this taxonomy.
5. **SVG gauge rings computed at runtime** — Life support readings (O2, CO2, humidity, pressure) as circular gauges with JS-computed stroke-dashoffset from data. Never hardcoded.
6. **Telemetry feed as ambient texture** — Monospace scrolling log in the right panel with timestamped system readings. The visual equivalent of a control room's ambient hum.
7. **Cinematic photo as breathing room, not hero** — Single astronaut photo mid-page, heavily darkened (brightness 0.5, saturation 0.5), gradient-faded, with mission context overlay. The dashboard data above is more visually prominent.
8. **Ping animation on map pins only** — Active positions have a subtle CSS pulse. The only repeating motion besides clock ticks. Restraint makes it noticeable.

## Hard Constraints
- All OKLCH colors; no hex, rgb, or hsl
- Surfaces tinted blue-void (hue 260, chroma 0.008-0.015); never pure black
- Status colors are semantic only: green=NOMINAL, amber=CAUTION, orange=WARNING, red=CRITICAL. Never decorative.
- All numeric displays use `font-variant-numeric: tabular-nums`
- Border-radius max 6px for panels, 3-4px for badges/buttons. No pill shapes.
- Zero box-shadow for depth — only status dot glow. Elevation via surface lightness steps.
- Desktop-ops-console-first. Mobile degrades gracefully (hide panels), not redesigned.
- No bounce/elastic easing. Only ease-out-quart or linear.

## Anti-Patterns
- NOT neon-on-dark sci-fi (no cyan glow, purple gradients, holographic effects)
- NOT a marketing landing page (no hero/features/pricing/CTA structure)
- NOT a consumer app (no friendly rounded corners, no playful copy, no emoji)
- NOT sparse minimal SaaS (information density IS the feature)
- NOT a space tourism site (users already work there)
- NOT dark-mode-with-glowing-accents (generic Dribbble dashboard aesthetic)

## Section Archetypes
- **Ops overview**: 4-up metric cards with status dots, values, units, trend arrows
- **Subsystem panels**: Power generation table with bar charts, life support gauge rings
- **Surface operations map**: Terrain overlay with live-position pins for base, rovers, infrastructure
- **Alert feed**: Severity bar + title + metadata + timestamp
- **Crew manifest**: Avatar + name + role + status tag + vitals readout
- **Resupply timeline**: Vertical timeline with completed/active/pending nodes, cargo manifests
- **Communication window**: Countdown timer with relay satellite info, signal delay, bandwidth
- **Telemetry log**: Monospace scrolling feed of timestamped system readings

## Typography
- **Saira Semi Condensed** (display/UI) — semi-condensed proportions maximize information density. Aerospace-influenced letterforms for heads-up display feel without generic monospace cliche.
- **Fira Code** (monospace/data) — precise tabular figures for telemetry, timestamps, metric values. Technical credibility for engineers who read code daily.

## Color
All OKLCH. Deep blue-void surfaces (0.08-0.22 lightness, hue 260, chroma 0.008-0.015). Status colors carry operational meaning:
- **Nominal**: oklch(0.72 0.18 155) — green, systems within parameters
- **Caution**: oklch(0.80 0.16 85) — amber, attention needed
- **Warning**: oklch(0.72 0.18 55) — orange, action required soon
- **Critical**: oklch(0.62 0.22 25) — red, immediate action
- **Accent**: oklch(0.68 0.14 240) — cold mission blue for identity and active states

## Gotchas
- Monospace fonts must use `font-variant-numeric: tabular-nums` or clock numbers jitter on width change
- Status colors must be semantically consistent across every panel
- Dark surfaces need blue tint (hue 260), not pure neutral
- Gauges and bars must be data-computed, not hardcoded widths
- Three-column layout is NOT responsive-first; it degrades gracefully by hiding panels
- Never use bounce/elastic easing — playful motion undermines operational trust
- All dates ISO 8601, all times UTC 24h, MET as DDD:HH:MM:SS

## Supporting Files
- `https://joincommons.cc/api/items/lunar-colony-ops/raw/design-language` — Complete surface/status/type/spacing system
- `references/asset-direction.md` — Data-as-visual approach, photo treatment guidance
- `https://joincommons.cc/api/items/lunar-colony-ops/raw/anti-patterns` — 20 domain-specific traps to avoid
- `assets/tokens.dtcg.json` — DTCG design tokens with semantic status/crew/timeline colors
- `assets/exhibit.html` — Reference implementation (three-column ops dashboard)
- `assets/design-skill.json` — Manifest with V4 fields

</design-system>
