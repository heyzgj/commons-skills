---
name: redpanda-realtime
description: Infrastructure-grade design for a real-time data streaming platform. Warm orange on warm-tinted dark surfaces, JetBrains Mono dominant with Satoshi display headlines. Terminal benchmark as hero, performance comparison bars, Go and Rust SDK examples, TOML configuration showcase, sparkline observability cards.
---

<design-system>

## Identity
Conduit is a design system for real-time data streaming infrastructure -- the pipes that move events between every system in a company in under 3ms. The design language communicates raw speed and operational simplicity through benchmarks, real code, and configuration files. Every visual element is data. Nothing is decorative.

**Target users**: Platform engineers and data engineers at companies processing 10,000+ events/second. They've maintained Kafka clusters, debugged consumer lag at 3am, and fought ZooKeeper split-brain incidents. They use Go, Rust, and Terraform. They measure success in p99 latency and events per second per core.

**Vibe**: Cloudflare.com (infrastructure confidence, speed as identity, warm orange on dark) meets Stripe Docs (API precision, code examples that actually work, technical trust).

**Domain conventions**: Topics, partitions, consumer groups, exactly-once delivery, offset management, tiered storage, schema registry, commit log, replication factor, ISR, Raft consensus. Config in TOML. Performance in msg/sec/core and p99 latency.

## Signature Moves
1. **Terminal benchmark as hero** -- no video, no photo, no illustration. CLI output showing `conduit benchmark` with 2.4M msg/s throughput and p99 2.7ms IS the product demo.
2. **Performance numbers as typography-as-art** -- "2.4M", "<3ms", "10x" rendered at display scale with accent underlines. Data is the visual.
3. **Benchmark bars animated on scroll** -- Conduit fills to 100% in accent orange, competitors shrink in muted gray. The comparison sells itself.
4. **Real TOML config as a section** -- showing the entire config file IS the feature. Simplicity proved by showing it, not claiming it.
5. **Warm orange on warm-tinted darks** -- every neutral carries hue 55 (orange). Not the expected blue/cyan tech palette.
6. **Monospace body text at 90%+** -- JetBrains Mono everywhere. This is infrastructure; the entire interface reads like a terminal.

## Hard Constraints
1. Dark theme only -- all backgrounds oklch L 0.06-0.15, hue 55 (warm-tinted).
2. JetBrains Mono for 90%+ of page surface. Satoshi for headlines and metric values only.
3. Accent orange hue 55, chroma 0.15-0.19. Never cyan, never blue for accent.
4. All code must be real Go/Rust with correct streaming patterns -- no placeholder syntax.
5. No photography or video anywhere -- code, terminals, and data ARE the visuals.
6. Performance numbers must be specific and testable, never vague ("fast", "scalable").

## Anti-Patterns
1. NOT cyan-on-dark or purple-neon tech aesthetics -- warm orange IS the identity.
2. NOT stock photography of servers, data centers, or people at computers.
3. NOT generic SaaS hero-features-pricing-testimonials-CTA template structure.
4. NOT decorative SVG node diagrams with hardcoded coordinates -- use numbered cells and text flow.
5. NOT vague marketing copy ("blazing fast", "developer-friendly") -- show benchmarks and code instead.
6. NOT gradient text, glassmorphism, or glow borders -- solid surfaces, 1px borders, content is the interest.

## Section Archetypes
- **Terminal Benchmark Hero**: CLI output showing `conduit benchmark` with throughput, latency percentiles, memory usage, and exactly-once verification.
- **Metric Strip**: Four headline stats (<3ms, 2.4M/s, 10x, 0 dependencies) at display scale.
- **Performance Comparison**: Horizontal bar charts -- Conduit vs Kafka vs Pulsar vs RabbitMQ -- with adjacent detail grid.
- **SDK Code Examples**: Side-by-side Go and Rust producer/consumer code with syntax highlighting.
- **Architecture Flow**: Six numbered cells (produce, replicate, consume, tier, schema, exactly-once) with inline flow notation.
- **Configuration Showcase**: Full TOML config file with syntax highlighting. Feature list alongside.
- **Observability Cards**: Sparkline metrics for throughput, latency, consumer lag, disk I/O.

## Hero Archetype
Terminal-as-hero. A terminal window showing `conduit benchmark --producers 8 --msg-size 1KB` with real output: throughput (2,412,847 msg/sec), latency percentiles (p50 0.8ms, p99 2.7ms, p999 4.1ms), memory (312MB), CPU cores (1), exactly-once verification. Blinking cursor at the end. No video, no photo, no illustration.

## Typography
- **JetBrains Mono** (dominant, 90%+): Body, nav, terminals, code, labels, buttons, config. This IS a dev tool -- monospace is the correct interface language.
- **Satoshi** (display only, 700/900): Hero headline, section titles, metric values. Geometric contrast against mono body creates hierarchy without competing.

## Color
All OKLCH, warm-tinted backgrounds (hue 55), orange accent (hue 55):
- **Backgrounds**: 4-tier -- deep(0.06), base(0.09), surface(0.12), elevated(0.15). All hue 55.
- **Text**: 3-tier -- primary(0.93), secondary(0.62), muted(0.44). All hue 55.
- **Accent**: Orange oklch(0.72 0.19 55). Dim variant oklch(0.58 0.15 55).
- **Status**: healthy=green(155), error=red(25), warning=amber(85), info=blue(250).
- **Syntax**: keywords=purple(310), strings=green(155), functions=blue(220), types=orange(55).

## Supporting Files
- `https://joincommons.cc/api/items/redpanda-realtime/raw/design-language` -- complete visual system (colors, typography, spacing, motion, components)
- `references/asset-direction.md` -- data-as-visual, code, and typography sourcing guidance (no photography)
- `https://joincommons.cc/api/items/redpanda-realtime/raw/anti-patterns` -- domain-specific visual, structural, content, and UX traps
- `assets/tokens.dtcg.json` -- DTCG design tokens (color, semantic, typography groups)
- `assets/exhibit.html` -- reference implementation (44KB self-contained landing page)
- `assets/design-skill.json` -- manifest with discovery metadata

## Workflow
1. Read `https://joincommons.cc/api/items/redpanda-realtime/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/redpanda-realtime/raw/anti-patterns`

## Gotchas
1. **Don't invent streaming terminology.** Use real Kafka-compatible concepts (topics, partitions, consumer groups, offsets, ISR). Engineers catch fakes instantly.
2. **Don't use decorative node diagrams.** LLMs can't render spatial relationships. Use numbered cells with text flow notation.
3. **Performance numbers must include test conditions.** "2.4M msg/sec on c6g.2xlarge, 1KB messages, replication factor 3."
4. **Don't make it blue.** Infrastructure defaults to blue. The warm orange is the signature. Blue is reserved for info/cold-storage only.
5. **Don't add testimonials or pricing.** This is an engineering evaluation page. Benchmarks, code, and docs only.
6. **TOML config must be valid.** Engineers will try to parse it mentally. Real section names, real key-value pairs.

</design-system>
