---
name: n8n-automations
slug: n8n-automations
description: Light, spacious canvas design for visual workflow automation platforms. Semantic node colors (amber trigger, blue action, purple conditional, teal AI, green output) on a dot-grid canvas. CSS-rendered workflow demos, pipeline visualizations, execution logs, and integration mosaics. Instrument Sans + JetBrains Mono.
metadata: design-skill
---

# Flowline — Visual Workflow Automation

<design-system>

## Identity
A bright, spacious canvas where you drag nodes, connect wires, and watch data flow in real-time. Flowline is the visual workflow builder for people who think in systems but don't write code. The design language is constructive light -- warm off-white canvas with semantic node colors, dot-grid backgrounds, and the product surface itself as the primary visual. This is Figma's collaborative canvas energy meets Retool's builder-for-builders empowerment. Every visual decision makes you feel like you're building something, not reading about it.

## Product World
- **Who**: Operations teams and "technical non-engineers" -- RevOps, Marketing Ops, Support Ops, Product Ops. People who build Zapier automations but need more power. Also developers prototyping AI agent pipelines visually before writing code. They think in workflows, not functions. They use Slack, Notion, Airtable daily and hate waiting on engineering tickets.
- **What**: A visual workflow automation platform -- drag nodes onto a canvas, connect them with wires, build automations across 400+ tools. Open source, self-hostable.
- **Vibe**: Figma (collaborative canvas energy, the tool IS the product) meets Retool (builder-for-builders, empowering non-engineers). Light, spacious, constructive.
- **Domain conventions**: Node types (Trigger, Action, Conditional, Loop, AI Agent, Output). Real integration names (Slack, Stripe, OpenAI, PostgreSQL, Airtable, Notion). Wire connections between nodes. Execution logs with sub-second timestamps and node-by-node status. Workflow templates as pipeline visualizations.

## Signature Moves
1. **Canvas-as-hero** -- no marketing headline atop a stock photo. The first thing you see is a working workflow on a dot-grid canvas with 5 nodes connected by animated SVG wires.
2. **Semantic node-type colors** -- each node type has a distinct OKLCH hue that carries workflow meaning: amber trigger (origin), blue action (execution), purple conditional (decision), teal AI (inference), green output (delivery), coral loop (iteration).
3. **Wire flow animation** -- dashed SVG strokes with animated stroke-dashoffset showing data moving between nodes. Execution state is visible at a glance.
4. **Pipeline visualizations** -- workflow templates shown as horizontal chains of mini-nodes connected by arrows, not feature bullet points.
5. **Execution log as content** -- a dark terminal panel with animated log lines appearing in staggered sequence: real payment amounts, token counts, table names, sub-second timestamps.
6. **Integration mosaic with 1px gutters** -- tools in a continuous grid (no card gaps), creating a dense ecosystem visualization ending with "400+ and growing."
7. **Dot-grid canvas background** -- subtle radial-gradient dots at 24px intervals creating spatial canvas feel. Same background the actual product uses.

## Hard Constraints
1. Light-mode only -- warm canvas bg oklch(0.985 0.005 90), never dark mode (except terminal panels), never pure white
2. Six semantic node colors -- amber trigger, blue action, purple conditional, teal AI, green output, coral loop. Colors carry meaning, never random
3. Instrument Sans for display + body, JetBrains Mono for code/node internals only
4. All integrations use real names: Slack, Stripe, OpenAI, PostgreSQL, Airtable, HubSpot, Zendesk, Linear, GitHub, Shopify, Twilio
5. Neutrals tinted warm (hue 90) for surfaces, cool (hue 260) for text -- never pure gray
6. Execution data must be realistic: real payment amounts ($247.00), real latencies (340ms), real token counts (142 tokens, 1.2s)
7. No photography, no SVG illustrations, no video backgrounds -- the product's node-canvas visual language IS the asset

## Anti-Patterns
1. Dark mode with glowing nodes -- the canvas is light and airy, nodes provide color. Dark mode inverts the product's actual look
2. Neon/cyber/Matrix aesthetic -- workflow automation is practical and warm, not futuristic
3. Generic SaaS hero > features > pricing > CTA -- page structure follows product architecture: canvas > ecosystem > workflows > execution > community
4. Feature grid with icons above headings -- features are shown as pipeline visualizations (node chains), not 3-column icon grids
5. Zapier's linear flat style -- this is a 2D spatial canvas with branching and loops, not a left-to-right chain
6. Stock photography of people at laptops -- the product is entirely self-visualizing through canvas compositions
7. Random node colors for "visual variety" -- every color carries semantic workflow meaning
8. More than 6 nodes in a marketing canvas -- clarity > complexity; 4-6 nodes tells the story

## Visual Vibe
Constructive, bright, spacious, systematic, satisfying, precise, approachable, technical-but-visual, Rube-Goldberg-delight, collaborative. A Figma canvas at 2pm with a workflow that just ran perfectly. Lego Technic for adults. The moment data flows through your pipeline and every node lights up green.

## Section Archetypes
- **Canvas Demo** (hero) -- interactive-looking node canvas with wires, toolbar, minimap, execution status. The product itself as the first thing you see.
- **Integration Ecosystem** -- grid of real tool integrations in 1px-gutter mosaic. Each tile: colored icon + name. Not abstract "features" but actual connectable nodes.
- **Workflow Templates** -- real pipeline visualizations with node chains showing data flow. Each template is a complete automation you can clone.
- **Execution Log** -- terminal-style real-time execution output showing data flowing through nodes. Timestamps, statuses, payloads.
- **Use Case Matrix** -- who builds with this (RevOps, Support, AI Engineers, Data) with concrete workflow examples per persona.
- **Open Source / Self-Host** -- community stats, Docker one-liner, contributor count. The OSS identity is a core feature.

## Hero Archetype
**Canvas-as-hero.** A CSS/SVG rendered workflow canvas with 5 nodes connected by curved wires, toolbar, minimap, and execution status badge. WHY: For a visual builder, the canvas IS the best marketing asset. Showing nodes connected by flowing wires communicates everything a headline can't: the spatial model, the visual grammar, the satisfying connectivity.

## Asset Direction
- **Data as the primary visual**: Node canvases, pipeline diagrams, execution logs, integration grids. The product's visual language (colored nodes + wire connections) IS the asset.
- **Typography-as-art**: Large display headlines, oversized execution stats (12,847 executions, 340ms latency, 99.7% success rate).
- **CSS atmospherics**: Dot-grid canvas backgrounds (24px spacing), subtle node shadows, animated wire flow.
- **Code blocks**: Terminal-style execution logs and Docker commands -- content, not decoration.
- **Photography**: NOT needed. The product is self-visualizing. If ever used (blog, about), show collaborative team screens.
- **What NOT to show**: No stock photos. No abstract "connection" illustrations. No decorative SVG art.

## Typography
- **Instrument Sans** (display + body) -- Clean, modern, slightly warmer than Inter. Approachable enough for ops teams, precise enough for technical content. The slight humanist curves signal "this is a tool for people, not just engineers."
- **JetBrains Mono** (code/mono) -- For node labels, execution logs, code blocks, terminal commands. The mono font appears where the product surface does: inside nodes, in the execution panel, in Docker commands.

## Color
All OKLCH. Light-mode only.

| Token | Value | Meaning |
|-------|-------|---------|
| canvas-bg | oklch(0.985 0.005 90) | Warm off-white canvas |
| surface-0 | oklch(0.992 0.003 90) | Card/node surfaces |
| surface-1 | oklch(0.96 0.008 90) | Section backgrounds |
| text-primary | oklch(0.18 0.015 260) | Blue-tinted near-black |
| text-secondary | oklch(0.42 0.02 260) | Body text |
| text-tertiary | oklch(0.58 0.015 260) | Labels, metadata |
| accent | oklch(0.58 0.17 260) | Links, CTAs (= action blue) |
| node-trigger | oklch(0.68 0.18 55) | Amber -- origin, spark |
| node-action | oklch(0.55 0.17 260) | Blue -- execution |
| node-conditional | oklch(0.58 0.19 310) | Purple -- decision |
| node-ai | oklch(0.58 0.14 175) | Teal -- intelligence |
| node-output | oklch(0.58 0.16 145) | Green -- completion |
| node-loop | oklch(0.60 0.15 30) | Coral -- iteration |
| exec-active | oklch(0.68 0.18 145) | Green -- data flowing |

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/n8n-automations/raw/design-language` | Full visual system: OKLCH palette, type scale, spacing rhythm, motion system, component patterns |
| `references/asset-direction.md` | Asset sourcing guidance: canvas compositions, pipeline diagrams, execution logs, what NOT to show |
| `https://joincommons.cc/api/items/n8n-automations/raw/anti-patterns` | 16 domain-specific traps across visual, structural, content, and UX categories |
| `assets/tokens.dtcg.json` | DTCG design tokens: color, semantic (node types, execution state), and typography composites |
| `assets/exhibit.html` | Reference implementation -- single-file self-contained exhibit at ~55KB |
| `assets/design-skill.json` | V1 manifest with coverage, discovery, and routing metadata |

</design-system>