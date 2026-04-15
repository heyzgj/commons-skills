<design-system>

## Product World
- **Who**: Developers and power users who self-host infrastructure, chain automations across messaging platforms, and want an always-on AI agent — not another chatbot UI. They run their own servers, use terminals daily, and value autonomy over convenience.
- **What**: Hermes Agent is a persistent AI daemon that lives on your server, connects to your tools (Telegram, Slack, email, CLI), and acts autonomously — triaging messages, scheduling, delegating to sub-agents, and growing smarter over time.
- **Vibe**: NousResearch meets Ghostty terminal — open-source credibility with magazine-editorial typography. The visual language says "this is serious infrastructure" while the serif display font says "we have taste."
- **Domain conventions**: CLI install flows (curl | bash), daemon terminology (uptime, pid, sessions), agent vocabulary (sub-agents, tool registry, reasoning core, memory store), versioning (v0.9.0, MIT License).

## Core Principle
Cool dark teal + warm cream glow creates temperature contrast that feels like seeing light from inside a server room — technical depth with human warmth.

## Visual Vibe
Teal-dark, editorial, luminous, magazine-typeset, autonomous, persistent, nocturnal, server-side, open-source-proud, minimal-radius

## What It's NOT
- NOT a chatbot landing page with friendly illustrations and rounded cards
- NOT neon-on-black cyberpunk (no cyan, no purple gradients, no Matrix green)
- NOT a SaaS dashboard demo with fake metrics and gradient cards
- NOT warm or cozy — the warmth comes ONLY from the cream accent against the cool teal, not from the base palette
- NOT a generic hero + features + pricing template — this is a daemon, not a subscription product
- NOT using glassmorphism or heavy blur cards — the aesthetic is flat, separated by 1px borders

## Section Archetypes
- **Install sequence**: Numbered CLI steps directly in the hero — `curl | bash` then `hermes setup`. The install IS the call-to-action.
- **Agent session log**: Terminal mockup showing a real overnight session — timestamps, inbox triage, calendar scheduling, sub-agent delegation. This IS the product demo.
- **Capabilities grid**: 6-cell grid separated by 1px borders, not cards. Numbered sequentially (01-06). Each capability described in 2 sentences max.
- **Architecture stack**: Layered list showing daemon components (Reasoning Core, Memory Store, Tool Registry, Scheduler, Sandbox, Connectors) — hover reveals detail.
- **Integration matrix**: 4-column grid of supported platforms with one-line protocol descriptions.
- **Open source CTA**: Version badge + MIT license + GitHub/docs buttons. Background atmospheric photo at low opacity.

## Hero Archetype
Video-typography with install steps. The hero uses atmospheric video (dark, teal-tinted) at 0.35 opacity as subtle texture behind the serif headline and numbered install commands. The install steps ARE the CTA — no separate button needed. The video provides environmental depth without competing with the text.

## Asset Direction
- **Photography**: Dark, moody, teal-adjacent. Abstract textures, close-up surfaces, nighttime atmosphere. ALL photos get `filter: brightness(0.6-0.8) saturate(0.5-0.7) hue-rotate(-10deg)` to push them into the teal palette. Photos are TEXTURE, not content.
- **Video**: One atmospheric video in the hero background. Dark, slow, abstract motion. Low opacity (0.35) with gradient overlay that darkens toward the bottom. Must have `poster` attribute.
- **Data-as-visual**: Terminal session logs are the primary visual content. Real timestamps, real agent actions (inbox triage, calendar scheduling, sub-agent delegation). The terminal mockup IS the demo.
- **What NOT to show**: No stock photos of people, no illustrations, no icons, no bright imagery. Every photo must feel like it belongs in a server room at 3 AM.

## Typography
- **Instrument Serif** (display): Large, uppercase, tracked. The serif brings magazine-editorial authority to a technical product. Creates crucial tension with the monospace body elements. Used for headlines and brand mark.
- **Geist** (body/UI): Clean, modern sans-serif for labels and descriptions. All navigation and labels are UPPERCASE with 0.1875rem (3px) tracking — creates the editorial magazine voice.
- **Courier Prime** (mono): For install commands and terminal output. Authentic terminal feel without being a tech cliche.

## Color
The palette is defined by TEMPERATURE CONTRAST — cool teal base + warm cream accent:
- `#041C1C` — Deep teal-black base. NOT pure black. The green undertone is the identity.
- `#071F1F` — Surface elevation (subtle lift from base)
- `#0A2828` — Elevated surface for hover states
- `#ffe6cb` — Warm cream accent. Used with `mix-blend-mode: plus-lighter` to create luminous GLOW effect. This is the single most distinctive visual trait.
- `#ffffff` — Primary text (not cream — cream is for accents only)
- `rgba(255,255,255,0.65)` — Secondary text
- `rgba(255,255,255,0.35)` — Tertiary text / labels
- `rgba(255,255,255,0.12)` — Border dividers (the structural rhythm of the page)
- `oklch(0.72 0.17 155)` — Success/ready state (green teal)

## Bold Choices
1. **mix-blend-mode: plus-lighter** on cream accent text creates additive glow — text appears to emit light against the dark background
2. **ALL labels and navigation are UPPERCASE with 3px tracking** — gives the entire page a magazine masthead voice
3. **Install steps IN the hero** as numbered CLI commands — the CTA is the product itself
4. **1px border grids instead of cards** — features and integrations use single-pixel dividers, not contained cards. Background changes on hover.
5. **Temperature contrast** (cool #041C1C + warm #ffe6cb) is the core identity — removing either breaks the design
6. **Near-zero border radius** — 2px max. Everything is angular, precise, terminal-native
7. **Photos as teal-tinted texture** — every image gets hue-rotate + desaturate to become part of the palette, not a separate element
8. **Serif display + mono code** pairing — the tension between editorial elegance and terminal utility defines the character

## Workflow
1. Read `https://joincommons.cc/api/items/hermes-autonomous-agent/raw/design-language` for the full visual system (OKLCH values, spacing, borders)
2. Read `references/asset-direction.md` for photo treatment (teal filter stack) and video placement
3. Build with the temperature contrast principle: cool teal base, warm cream accents with plus-lighter blend
4. Self-critique against `https://joincommons.cc/api/items/hermes-autonomous-agent/raw/anti-patterns` — especially check that cream is used sparingly (accents only, not all text)

## Gotchas
- Cream (#ffe6cb) is for ACCENTS ONLY — headlines, labels, highlights. Regular body text stays white. Using cream for everything kills the contrast.
- mix-blend-mode: plus-lighter only works on dark backgrounds. On light backgrounds it washes out.
- The uppercase + wide tracking on ALL labels is non-negotiable — dropping it on some labels breaks the editorial voice.
- Photos MUST be filtered to match the teal palette. An unfiltered bright photo destroys the atmosphere.
- The teal base is #041C1C — using pure black (#000) or warm dark (#1a1a1a) loses the identity entirely. The green undertone must be visible.
- Border dividers are structural — they separate sections and grid cells. Removing them collapses the visual rhythm.

</design-system>
