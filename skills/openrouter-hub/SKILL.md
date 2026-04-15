---
name: openrouter-hub
description: Dark, code-centric developer tool design for unified LLM API gateways. Monospace-first typography (Geist Mono + IBM Plex Sans), data tables as product showcase, request log feeds as social proof, semantic color encoding (emerald-teal=fast, amber=cost, red=error). Built for backend engineers who judge products by API docs and uptime pages.
---

<design-system>

## Product World
- **Who**: Backend engineers and ML engineers building AI-powered products. They manage multiple LLM provider accounts, compare models by tokens/second and cost/million tokens, and hate vendor lock-in. They use VS Code or Neovim, live in terminals, and judge products by their API docs. They admire Stripe for developer experience and Vercel for deployment confidence.
- **What**: A unified API that routes requests across every major LLM through one endpoint. Smart routing picks the best model per request based on cost, latency, and capability.
- **Vibe**: stripe.com/docs (API-first, code-centric, developer trust) meets vercel.com (dark dashboard, deployment confidence, real-time status)
- **Domain conventions**: Model names follow provider conventions (claude-opus-4-6, gpt-4-turbo, gemini-2.0-pro, llama-3.1-405b). Pricing is per million tokens (input/output split). Latency is TTFT (time to first token) in milliseconds. Throughput is tokens/second. API keys prefixed with `nx-`. OpenAI-compatible endpoint structure.

## Core Principle
The API documentation IS the product -- engineers judge you entirely by your docs, your code examples, and your uptime page.

## Visual Vibe
Clinical precision, terminal confidence, data-dense, quietly powerful, trustworthy infrastructure, measured in milliseconds, zero decoration, code speaks louder than copy

## What It's NOT
- NOT a colorful AI marketing page with gradient text and glowing orbs
- NOT a consumer product with friendly illustrations or mascots
- NOT a dark-mode-with-neon-accents "hacker" aesthetic (that's cosplay, not engineering)
- NOT a feature comparison grid with checkmarks -- show real data, not marketing
- NOT centered around photography or lifestyle imagery -- code IS the visual
- NOT a generic SaaS landing page (hero, features grid, testimonials, CTA)

## Section Archetypes
1. **API Demo** -- Live request/response showing the actual curl command and streaming output with real headers (x-model, x-latency, x-cost, x-tokens)
2. **Model Registry** -- Sortable comparison table with real model names, pricing per million tokens (input/output), TTFT, throughput, and context window
3. **Request Log Feed** -- Streaming dashboard showing recent API calls with model, status, latency, cost per request -- the kind of view an engineer checks 20x/day
4. **SDK Integration** -- Code snippets in Python, TypeScript, Go, cURL showing the drop-in replacement pattern (change one string to switch providers)
5. **Pricing Calculator** -- Pass-through pricing tiers (Developer/Team/Enterprise) with transparent cost + margin model
6. **Infrastructure Status** -- Edge latency by region, uptime blocks for last 90 days, provider health status

## Hero Archetype
**Code-as-hero** -- a terminal card showing a real curl request with streaming response headers. This is a dev tool; the first thing an engineer wants to see is whether the API works and what the DX looks like. The code block IS the product demo. Left side: headline + stats + install command. Right side: the API request flowing.

## Asset Direction
- **Code blocks are the primary visual**: Syntax-highlighted API requests, SDK examples, response headers. This is where the product lives.
- **Data as visual**: Model comparison tables with real pricing ($15/M, $75/M for Opus), real latency (340ms TTFT), real throughput (85 tok/s). Numbers are more convincing than any photo.
- **Dashboard patterns**: Request log feeds, cost charts (simple bar charts), uptime blocks (90-day grid). These are product-native visualizations.
- **Typography-as-emphasis**: Large stats (218 models, 12ms overhead, 99.97% uptime) as visual anchors.
- **NO photography**: This product has no physical form. No abstract network imagery, no stock photos of developers, no AI-generated illustrations.
- **NO video**: There is nothing to watch. The product is an API endpoint.

## Typography
- **IBM Plex Sans** (display/body): Technical authority without being cold. IBM's design language for developer tools -- credible, readable, slightly industrial. Not as overused as Inter but equally functional.
- **Geist Mono** (code/data): Modern monospace from Vercel's design system. Cleaner than JetBrains Mono, better for data-dense tables and code blocks. The mono font does most of the visual work in this product.

## Color
Dark-only palette. Cool blue-tinted neutrals (hue 260) for quiet professionalism.
- **Background**: `oklch(0.08-0.17 0.006-0.012 260)` -- deep blue-black surfaces at 4 elevation levels
- **Text**: `oklch(0.93 0.008 260)` primary, `oklch(0.65 0.012 260)` secondary, `oklch(0.45 0.01 260)` muted
- **Accent (success/live)**: `oklch(0.72 0.17 162)` -- a confident emerald-teal, not the AI-slop cyan. Used for live indicators, success states, speed metrics, active status
- **Cost/pricing**: `oklch(0.78 0.14 75)` -- warm amber for anything money-related (token costs, pricing, spend charts)
- **Error/down**: `oklch(0.65 0.19 25)` -- restrained red for rate limits, outages, failures
- **Info/capability**: `oklch(0.68 0.11 250)` -- subtle blue for informational badges and request counts
- **Border**: `oklch(0.2 0.01 260)` -- barely visible structural lines

## Bold Choices
1. **Monospace-first typography**: The mono font is the primary typeface, not just for code. Nav links, labels, badges, log entries -- all mono. Sans-serif only for headlines and body prose.
2. **Data table as product showcase**: The model comparison table IS the product pitch. Real pricing, real latency, real throughput -- no marketing abstraction.
3. **Request log as social proof**: Instead of testimonials or logos, show a live feed of API requests flowing through. Engineers trust traffic over testimonials.
4. **Tabular numerals everywhere**: Every number uses `font-variant-numeric: tabular-nums` for perfect column alignment. This is infrastructure -- precision matters.
5. **Color encodes meaning, not decoration**: Green = fast/live/healthy. Amber = cost/money. Red = error/down. Blue = info/capability. No color for decoration.
6. **Zero photography, zero illustration**: Every visual element is either code, data, or a dashboard component. The product has no physical form to photograph.
7. **Provider badges as taxonomy**: Tiny `oklch`-tinted pills (Anthropic, OpenAI, Google, Meta, Mistral) create visual scanning without icons.
8. **Uptime blocks as trust signal**: 90-day uptime grid at the bottom -- engineers scroll to this before signing up.

## Workflow
1. Read `https://joincommons.cc/api/items/openrouter-hub/raw/design-language` for the full visual system (all OKLCH values, type scale, spacing, components)
2. Read `references/asset-direction.md` for asset guidance (code blocks, data patterns, dashboard components)
3. Build with monospace-first approach. Every interactive surface should feel like a developer tool, not a marketing site.
4. Self-critique against `https://joincommons.cc/api/items/openrouter-hub/raw/anti-patterns` -- especially the "AI marketing page" and "generic SaaS" traps

## Gotchas
1. **Monospace doesn't mean terminal cosplay**: Use mono for precision and data density, not for "hacker vibes." No green-on-black, no scanlines, no Matrix references.
2. **Real model data or nothing**: Invented model names or pricing instantly breaks trust. Use actual provider names (Anthropic, OpenAI, Google) and realistic pricing ranges.
3. **Code examples must be syntactically valid**: Engineers will read the code. Invalid JSON, wrong SDK methods, or broken curl commands are worse than no code at all.
4. **Don't animate the dashboard**: Request logs and status pages should feel like real-time data, not choreographed animations. Entrance animations are fine; content-level animation is not.
5. **Cost/pricing needs the amber color**: Money-related numbers in the accent green will confuse the semantic system. Amber = money, always.
6. **The table IS the hero for returning users**: New visitors see the code hero. Returning users come for the model table. Both need to be strong.

</design-system>
