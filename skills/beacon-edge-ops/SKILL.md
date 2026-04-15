---
name: beacon-edge-ops
description: Public, live observability page for a global edge compute platform. Dark slate, mono-dense, no marketing. The credibility IS the telemetry. Use when designing public status pages, SRE-facing ops consoles, or any "show me the numbers" interface that needs to feel like real infrastructure, not a landing page.
---

<design-system>

## Product World

- **Who**: Site reliability engineers, platform engineers, and anxious customers checking if an edge platform is degraded before pinging support. They don't read marketing copy — they scan numbers. They decide if the platform is trustworthy in under 2 seconds. They admire: Fly.io status, Cloudflare Radar, OpenStatus, Plausible's live demo. They hate: vague "status: all good" pages, uptime badges with no data, cutesy illustrations on infra tools.
- **What**: A public, URL-addressable live ops console for a global edge compute platform ("STRATA · EDGE"). No login. This is the URL an SRE shares on Twitter to show off their infrastructure, or a customer visits before opening a support ticket.
- **Vibe**: Cloudflare Radar meets Fly.io status meets Datadog product screenshots. Ops software with a public URL. The opposite of a SaaS landing page.
- **Domain conventions**: RPS (requests per second), P50/P95/P99 latency, 2xx/3xx/4xx/5xx response codes, SLO/error budget, datacenter codes (iad1, fra1, nrt1), incident severity (sev-1 through sev-3), "draining" state for maintenance, UTC timestamps with millisecond precision.

## Core Principle

**The telemetry IS the page.** Credibility comes from watching numbers change in real time, not from copy about how reliable we are.

## Visual Vibe

Dense. Honest. Mono-dominant. Calmly alive. Deep slate (never pure black). Numbers you can feel updating. A handful of high-chroma status colors against a neutral sea. Like sitting behind an NOC display at 3am.

Real-world anchors: **Cloudflare Radar**, **Fly.io status**, **OpenStatus**, **Plausible live demo**, **Vercel observability**, **Datadog product screenshots**, **Bloomberg Terminal** (for information density, not the amber-on-black).

## What It's NOT

1. NOT a SaaS landing page — there is no hero headline, features grid, pricing, or "get started" button.
2. NOT hacker-movie cosplay — no Matrix green, no CRT scanlines, no pure `#000000`, no glitch text, no amber phosphor, no scrolling binary.
3. NOT a Datadog marketing page with a dashboard screenshot embedded — the dashboard IS the page, at scale.
4. NOT decorative — every number corresponds to a real concept (RPS, P95, 5xx rate, region health). No sparklines-as-garnish.
5. NOT glassmorphism, gradient borders, neon glows, or AI-slop dark mode. Tight 1px borders on flat surfaces. Restraint.
6. NOT a spec sheet — the numbers must be MOVING. A static version of this page is a failure.

## Section Archetypes

These are product-native panels arranged as a single dense grid, not "sections" with headings:

- **Primary live metric**: One huge mono number (RPS, active users, throughput) with a streaming line chart — the thing that proves the page is live in 1 second
- **Global edge grid**: Tiled regions with status dots, per-region RPS + latency, realistic distribution (mostly healthy, some degraded — honesty over 100% green marketing)
- **Latency distribution**: P50 / P95 / P99 as prominent mono numbers, not a chart
- **Response code breakdown**: Stacked horizontal bars for 2xx/3xx/4xx/5xx with percentages
- **Active incidents**: Empty state ("all systems operational · 127d since last sev-1") is the baseline; incident cards appear only when real
- **Live request log**: Streaming monospace table — timestamp, method, path, status, duration, region — rows fade in and dim with age
- **Header strip**: Wordmark + "live · streaming · no cache" label + UTC clock
- **Footer**: ONE thin line. Three or four muted text links. No multi-column, no newsletter, no social icons.

## Hero Archetype

**Data-as-hero**. The top of the page is the single most important number — current global RPS — rendered in large monospace (~78px) with a live 5-minute sliding line chart alongside it. The number updates every 1-2 seconds; the chart advances every second. No photo, no video, no illustration, no headline.

WHY: engineers evaluate infrastructure by watching it work. A streaming number is a better proof of aliveness than any marketing claim. This is the Factory.ai insight ("show the tool working") applied to ops: show the platform handling traffic.

## Asset Direction

**Zero photography. Zero illustration. Zero video.** Photography and illustration actively damage this aesthetic — they reintroduce the "marketing page with a dashboard embedded" energy that this exhibit exists to refute.

What IS the visual asset:
- **Live numbers**: One huge one, several medium ones, many small ones. Tabular numerals, monospace, always updating.
- **Tiny status dots**: 6-9px circles, tinted box-shadows, pulsing at slightly different rates per region.
- **Streaming SVG line chart**: drawn from a JS buffer of 60 samples, updated 1Hz via `setInterval`, NEVER hardcoded path data.
- **Monospace log rows**: path, method, status, duration, region — fading in at the top, dimming with age.
- **Stacked horizontal bars**: for response code distribution, widths via `style="--pct: 97.1%"` and `width: var(--pct)`.
- **Subtle radial gradient atmospherics**: two very faint color washes on the body, so the deep slate has depth without being flat.

## Typography

- **Commit Mono** (Google Fonts) — primary typeface for all numbers, log rows, region codes, status labels. Chosen over JetBrains Mono (overused in catalog) and IBM Plex Mono (too corporate). Commit Mono has gentle curves and perfect tabular numerals for streaming data; it's designed for code but reads beautifully at display sizes.
- **Overpass** (Google Fonts) — for the small amount of chrome/UI text (header labels, footer links). Designed by Red Hat specifically for data UIs, tight letterforms at small sizes, optimized for uppercase tracking.
- Tabular numerals enforced via `font-variant-numeric: tabular-nums` and `font-feature-settings: "tnum","zero","ss01"` so columns align pixel-perfect as values change.
- Scale is TIGHT: 10-11px for labels, 12-13px for body/log rows, 36px for P50/P95/P99, 78px for the primary RPS number. No sizes between 13 and 36 — the jump is intentional.

## Color

OKLCH, cool-tinted neutrals, high-chroma ONLY on status signals.

- `--bg: oklch(0.13 0.012 240)` — deep slate (NOT pure black). Cool hint of 240 hue.
- `--bg-elevated: oklch(0.155 0.013 240)` — panel fill, one step lighter than page
- `--surface: oklch(0.17 0.012 240)` — nested tile fill (region cards)
- `--line: oklch(0.235 0.014 240)` — 1px borders everywhere, never more
- `--text: oklch(0.93 0.008 240)` — off-white, faintly cool
- `--text-muted: oklch(0.62 0.018 240)` — secondary labels
- `--text-faint: oklch(0.34 0.012 240)` — tertiary / grid marks
- **Semantic status** (the only chroma on the page):
  - `--ok: oklch(0.74 0.17 145)` — healthy, 2xx, system operational, GET method tint
  - `--warn: oklch(0.80 0.155 80)` — degraded, 4xx, P95, POST method tint
  - `--crit: oklch(0.66 0.22 25)` — incident, 5xx, P99, DELETE method tint
  - `--info: oklch(0.70 0.14 235)` — 3xx redirects, neutral info, chart axis

Rule: if a color has chroma > 0.05, it means something. If it has chroma ≤ 0.02, it's chrome.

## Bold Choices

1. **No hero section** — the page opens directly into live telemetry. No headline, no tagline, no "infrastructure at scale" copy.
2. **Honest health distribution** — not every region is green. One or two amber, occasionally a red. Real ops pages are honest.
3. **78px mono RPS number** — one enormous live metric at the top. Typographically dominant, but it's data, not decoration.
4. **Streaming chart via computed SVG path** — JS maintains a 60-sample buffer, recomputes the path every second, slides left. Never hardcoded.
5. **Pulse staggering** — 28 region dots pulse at slightly different phases (JS sets per-element `animation-delay`) so the grid feels like a living organism, not a synchronized metronome.
6. **Request log with age dimming** — rows fade in fresh at the top, then step through opacity classes (0.92 → 0.30) as they age down the table. Time decay as a visual property.
7. **Footer is ONE line** — three muted links separated by borders. No copyright. No newsletter. No "built with love."
8. **SLO as data, not promise** — "30d slo · 99.95% · error budget 91.4% remaining" is shown as measured fact, not marketing guarantee.

## Workflow

1. Read `https://joincommons.cc/api/items/beacon-edge-ops/raw/design-language` for the complete visual system
2. Read `references/asset-direction.md` — note: zero photography/video/illustration for this domain
3. Build with CSS Grid for every layout relationship. Absolute positioning is forbidden for layout.
4. Every number must be generated by JS from a plausible data model. Hardcoded "fake live" data is a failure mode.
5. Self-critique against `https://joincommons.cc/api/items/beacon-edge-ops/raw/anti-patterns` before shipping

## Gotchas

1. **Fake-live is worse than static** — if numbers don't actually update in the user's tab, they'll notice in 3 seconds. Always drive updates from `setInterval` or `requestAnimationFrame`, never hardcode.
2. **Matrix green trap** — `oklch(0.85 0.25 145)` is terminal green. Use `oklch(0.74 0.17 145)` — the eye reads it as "healthy," not "hacker."
3. **Everything green is dishonest** — a real public ops console has 1-2 amber regions. 100% green reads as fake/marketing.
4. **Chart path hardcoding** — never write SVG path coordinates by hand. Always compute from a JS data buffer. LLMs cannot see spatial relationships.
5. **Marketing creep** — the instant you write "trusted by," "blazing fast," "99.9% uptime guarantee," "get started," or add a CTA button, you've broken the brief. This page does not sell; it reports.
6. **Pure black trap** — `#000` is the fastest way to make this look like AI slop. Use slate `oklch(0.13 0.012 240)`.
7. **Log row aging bug** — if you don't trim + re-apply age classes on every insert, old rows accumulate and the table grows forever.
8. **Region count drift** — hardcode the region list as a constant, render from it, and use the same constant for the "X active" count in the header. Never have two sources of truth for counts.

</design-system>
