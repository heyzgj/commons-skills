---
name: redpanda-streams
description: Dark, data-dense infrastructure landing page for real-time event streaming. Hot orange accent on warm near-black, benchmark terminal hero, Kafka comparison tables, Go/Rust code blocks, ops dashboard with partition health grid. Lexend Deca display with Fira Code mono. Data IS the visual.
---

<design-system>

## Identity
Torrent Streams is a design system for real-time event streaming platforms -- Kafka reimagined with no JVM, no ZooKeeper, and no tuning nightmares. The design communicates raw speed and engineering confidence through benchmark data, code blocks, and operational dashboards. Every element carries information; nothing is decorative.

**Target users**: Platform engineers and data engineers at companies processing >1M events/second. They've run Kafka for years, spent 40% of their time tuning JVM heap, rebalancing partitions, and babysitting ZooKeeper. They measure infrastructure in p99 latency and events/second/core. They write Go and Rust. They admire tools that get out of the way.

**Vibe**: confluent.io (data streaming authority, Kafka ecosystem vocabulary) meets cloudflare.com (infrastructure confidence, speed as identity, bold orange accent on dark).

**Domain conventions**: Topics, partitions, consumer groups, exactly-once semantics, offset management, schema registry, tiered storage. Performance measured in msg/s/core, p99/p999 latency. Config in YAML. Code in Go and Rust. CLI-first workflows.

**Core principle**: Infrastructure that works should be invisible -- the fastest thing you can show is a flat line on a throughput graph.

## Signature Moves
1. **Benchmark terminal as hero** -- animated CLI output showing `torrent bench` with throughput snapshots scrolling in. No video, no photo. The benchmark IS the hero.
2. **Head-to-head comparison table** -- Torrent vs Kafka with real metrics (throughput, p99, p999, memory, cold start). Engineers evaluate with numbers, not feature bullets.
3. **Flat throughput bar chart** -- 60 bars at nearly identical height. Deliberate boring stability. Most dashboards show exciting peaks; Torrent's chart is a flat line because that's what working infrastructure looks like.
4. **Partition health grid** -- 48 colored cells (46 green, 2 yellow, 0 red) communicating reliability at a glance without words.
5. **12-line YAML config as a section** -- the entire broker configuration IS the pitch. Simplicity demonstrated, not claimed.
6. **Go + Rust code side by side** -- complete, syntactically valid producer and consumer. The two languages this audience writes.

## Hard Constraints
1. Dark theme only -- all backgrounds oklch L < 0.12, hue 55 (warm-tinted, not cool blue).
2. Orange accent reserved for performance numbers, CTAs, and brand mark. Never for borders, backgrounds, or decorative use.
3. All code must be syntactically valid Go/Rust with real streaming concepts (topics, partitions, consumer groups, commits).
4. All benchmark data must be internally consistent -- throughput * duration = total messages. Engineers will do the math.
5. Lexend Deca for display/body, Fira Code for all code/data/terminal content. No other fonts.
6. No photography as primary content. Data patterns ARE the visual assets.

## Anti-Patterns
1. NOT Cloudflare's orange-everywhere maximalism -- orange is surgical: performance numbers and CTAs only.
2. NOT a generic SaaS hero-features-pricing-testimonials page structure.
3. NOT stock server/cloud imagery or abstract "speed" visuals -- data patterns ARE the visual assets.
4. NOT gradient text on headings -- the most common AI design tell.
5. NOT neon-on-dark hacker aesthetic with Matrix-style green terminal text.
6. NOT friendly, approachable, or playful -- this is infrastructure for engineers, not a consumer product.

## Section Archetypes
- **Benchmark Terminal Hero**: Live terminal showing `torrent bench` output with staggered line reveals. Throughput/latency numbers as the hero content. Stat strip above with large monospace numbers.
- **Performance Comparison Table**: Head-to-head Torrent vs Kafka metrics. Winner values in accent color. Real reproducible numbers.
- **Code Integration**: Go producer + Rust consumer side by side. Syntax-highlighted with copy buttons. Demonstrates Kafka API compatibility.
- **Architecture Primitives**: 6-cell numbered grid -- Topics & Partitions, Consumer Groups, Exactly-Once, Schema Registry, Tiered Storage, Raft Consensus.
- **Ops Dashboard**: Metrics strip (throughput, p99, consumer lag, disk) + flat bar chart + partition health grid. The "boring" dashboard.
- **Config Simplicity**: 12-line YAML + numbered benefits list showing what each section eliminates from Kafka operations.

## Hero Archetype
Terminal benchmark output + typography. The hero opens with `torrent bench` output scrolling into a terminal with staggered line animation. Platform engineers evaluate streaming platforms by running benchmarks -- this IS the product experience. Large stat numbers (Fira Code 2rem) above the terminal provide the punchline at a glance: 2,147,483 msg/s, 3.2ms p99, 10x less memory, 0 JVM dependencies.

## Typography
- **Lexend Deca** (display/body): Designed for readability at speed (literally optimized for reading velocity). Clean geometric proportions communicate engineering precision. Weights 300-800.
- **Fira Code** (code/data/terminal): Ligatures for code readability, established credibility with the Go/Rust audience. Every performance number, terminal line, and table cell uses this. Weights 400-600.

## Color
All OKLCH. Dark-mode only -- infrastructure tools live in dark terminals.
- **Background**: `oklch(0.06 0.008 55)` -- near-black tinted warm toward brand hue. 4-tier depth: base(0.06), surface(0.09), elevated(0.12), inset(0.04).
- **Accent (speed/brand)**: `oklch(0.72 0.19 45)` -- hot orange. Hover: `oklch(0.78 0.16 50)`. Ghost: 10% opacity.
- **Text**: 3-tier -- primary `oklch(0.93 0.008 55)`, secondary `oklch(0.60 0.012 55)`, muted `oklch(0.40 0.008 55)`.
- **Performance semantic**: fast `oklch(0.70 0.17 145)`, ok `oklch(0.72 0.14 85)`, slow `oklch(0.65 0.18 25)`.
- **Border**: `oklch(0.16 0.008 55)`. Active: accent at 25% opacity.

## Supporting Files
- `https://joincommons.cc/api/items/redpanda-streams/raw/design-language` -- complete visual system (colors, typography scale, spacing, motion, all component patterns)
- `references/asset-direction.md` -- data-as-visual patterns, code block direction, terminal formatting, photography policy
- `https://joincommons.cc/api/items/redpanda-streams/raw/anti-patterns` -- domain-specific visual, structural, content, and UX traps to avoid
- `https://joincommons.cc/api/items/redpanda-streams/raw/image-kit` -- photography guidance (minimal role) with verified Pexels URLs
- `assets/tokens.dtcg.json` -- DTCG design tokens (color, semantic performance/status/syntax, typography groups)
- `assets/exhibit.html` -- reference implementation (37KB self-contained landing page with 7 sections)
- `assets/design-skill.json` -- manifest with discovery metadata and quality scores

## Workflow
1. Read `https://joincommons.cc/api/items/redpanda-streams/raw/design-language` for the complete visual system (every OKLCH value, font size, spacing unit)
2. Read `references/asset-direction.md` for guidance on data-as-visual, code blocks, and terminal formatting
3. Build following the product world -- infrastructure for engineers, data is the design
4. Self-critique against `https://joincommons.cc/api/items/redpanda-streams/raw/anti-patterns` -- especially the "marketing site" trap

## Gotchas
1. **Orange overuse kills the palette.** Orange is for performance numbers and CTAs only. Using it for borders, backgrounds, or decorative elements turns this into a generic dark-mode site.
2. **Fake benchmark data breaks trust instantly.** All numbers must be internally consistent (throughput * duration = total messages). Engineers will do the math.
3. **Generic section names destroy product authenticity.** Use domain vocabulary: Benchmarks, Integrate, Architecture, Observe, Configure -- not Features, Benefits, Why Us.
4. **The flat throughput chart must actually be flat.** Variance >5% defeats the narrative. The visual point is stability, not performance.
5. **Code snippets must be syntactically valid.** Platform engineers will read every line. Invalid syntax = immediate credibility loss.
6. **Photography has almost no role.** A server rack photo adds nothing that a throughput chart doesn't.

</design-system>
