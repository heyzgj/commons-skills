---
name: raycast-launcher
slug: raycast-launcher
description: macOS-native dark launcher interface with near-black blue-tinted void, multi-layer inset shadows simulating physical depth, realistic keycap styling, and interactive command palette demo. Geist typography with positive letter-spacing, opacity-based hover transitions, and terminal benchmarks as marketing content.
metadata: design-skill
---

# Raycast Launcher

<design-system>

## Identity

### Product World
- **Who**: macOS power users who chain keyboard shortcuts — developers searching GitHub from a search bar, designers jumping to Figma files, engineers querying Jira/Linear/Slack without touching the mouse. They live in Cmd+Space. They measure productivity in keystrokes saved, not features listed. They hate Electron, love native, and notice when an app takes 200ms instead of 20ms.
- **What**: An extensible command palette launcher that replaces Spotlight — clipboard history, snippets, window management, AI chat, 1,000+ extensions, all invoked from one keyboard shortcut.
- **Vibe**: Apple System Preferences meets a hacker's terminal — the precision and restraint of macOS system UI with the power density of a command-line interface. Think raycast.com crossed with linear.app.
- **Domain conventions**: Keyboard shortcut notation (Cmd+Shift+V), extension install counts, command names as interface ("Search Jira Issues", "Clipboard History"), macOS window chrome (traffic light dots), terminal prompts and benchmarks.

### Core Principle
The interface should feel like a system utility carved from obsidian — fast, native, trustworthy, with personality expressed through precision rather than decoration.

### Visual Vibe
Obsidian, precision-instrument, macOS-native, dark-void, keyboard-tactile, airy-type, matte-metal, cold-blue-tinted, tool-confident, Swiss-watch

### Typography
**Geist** (display + body) — Vercel's geometric sans-serif has the same precision-tool quality as the product itself. Weight 500 as body baseline (not 400) — medium weight compensates for optical thinning on dark backgrounds. Positive letter-spacing (+0.2px) creates an airy quality unusual for dark UIs.

**Geist Mono** (code + terminal + shortcuts) — Same family, monospace variant. Used for terminal output, keyboard shortcut labels, extension metadata, and inline code.

### Color
- **Void** `oklch(6% 0.01 250)` — Near-black with cold blue tint. NOT pure black — the blue undertone makes it feel macOS-native
- **Surface 1** `oklch(10% 0.005 250)` — Cards, elevated containers
- **Text Primary** `oklch(97% 0.005 250)` — Near-white, cool tinted
- **Text Secondary** `oklch(83% 0.005 250)` — Body text, descriptions
- **Text Tertiary** `oklch(65% 0.005 250)` — Metadata, nav links
- **Raycast Red** `oklch(68% 0.2 15)` — Brand accent as PUNCTUATION only: hero keyword, featured stripe, errors
- **Interactive Blue** `oklch(72% 0.14 230)` — Links, focus rings, selected states
- **Success Green** `oklch(70% 0.15 155)` — Active indicators, fast benchmarks
- **Warning Yellow** `oklch(80% 0.15 85)` — Memory values, attention states

### Section Archetypes
- **Command palette demo**: Interactive launcher mock — the product AS the visual
- **Extension showcase**: Grid with real names (GitHub, Linear), install counts, shortcuts
- **Performance terminal**: Benchmark output in monospace — developers trust this format
- **AI conversation**: Real technical Q&A, not chatbot marketing
- **Keyboard shortcut map**: Action-to-shortcut pairs with physical keycap styling
- **Pricing comparison**: Tiered with feature checklists, red stripe on featured tier

### Hero Archetype
Ambient video + typography + product demo below fold. Dark atmospheric video at ~12% opacity behind clean headline. Floating command palette mock IS the demo.

## Signature Moves

1. **5-layer keycap shadows**: Gradient background + inset highlights + outer shadow creating physically realistic keyboard keys
2. **Opacity hover transitions**: All buttons fade to 0.6 opacity instead of changing background color — feels like pressing a physical surface
3. **Floating command palette**: Subtle translateY oscillation (6s) creating the illusion of a native macOS panel hovering above the void
4. **Typing animation**: Search input types through real commands with realistic timing
5. **Double-ring card containment**: Two concentric 1px ring shadows (outer + inset) instead of borders — macOS-native depth
6. **Terminal as marketing**: Performance benchmarks in actual terminal format with colored syntax
7. **Red as punctuation**: Raycast Red in exactly three places — hero keyword, featured stripe, error icons
8. **Positive letter-spacing on dark**: +0.2px tracking creates airy premium feel opposite from most dark UIs

## Hard Constraints

1. Background must be `#07080a` (blue-tinted near-black), NEVER pure `#000`
2. Body text weight 500 minimum on dark surfaces — 400 looks anemic
3. Letter-spacing +0.2px on body text — positive, not negative or zero
4. Shadows always paired: outer ring + inset highlight. Never single-layer
5. Raycast Red for punctuation only — max 3 usage points, never backgrounds or gradients
6. macOS keyboard symbols only: Cmd, Shift, Opt, Ctrl — never spell out or use Windows notation
7. Extension names must be real: GitHub, Linear, Jira, Figma — never invented names
8. No stock photography of people — show keyboards, terminals, the product itself
9. Border radius: 5-6px buttons, 12px cards, 16px panels, 86px+ pills — not uniform
10. Geist font family only (Geist + Geist Mono) — Inter is banned

## Anti-Patterns

### Visual
- NOT neon-on-dark "hacker aesthetic" with Matrix green or glowing cyan — Raycast is refined, not edgy
- NOT glassmorphism with decorative blur cards — blur is nav-only and functional
- NOT gradient backgrounds or color washes — the void is flat, video provides texture
- NOT pure black (#000) — removes the macOS-native blue tint
- NOT RGB keyboard or gaming aesthetics — professional hardware photography only

### Structural
- NOT generic SaaS hero/features/metrics/testimonials/CTA — sections follow product evaluation flow
- NOT screenshot-driven — render the interface directly in HTML, not as images
- NOT documentation-style with sidebar nav — code appears as domain content only
- NOT carousel or slider galleries — developers scan grids, not slideshows

### Content
- NOT invented extension names — use real recognizable tools (GitHub, Linear, Figma)
- NOT marketing-speak performance claims — "14ms cold start" not "blazing fast"
- NOT chatbot-style AI marketing — show real technical Q&A with code answers
- NOT placeholder pricing features — list what developers actually evaluate (AI limits, SSO, sync)

### UX
- NOT hover-dependent functionality — keyboard-first product must work without mouse
- NOT modal-heavy — contradicts the command palette philosophy
- NOT scroll-jacking or parallax — feels slow, opposite of a 14ms launcher
- NOT embedded interactive demo — web can't match native speed, undermines positioning

## Supporting Files

| File | Purpose |
|------|---------|
| `https://joincommons.cc/api/items/raycast-launcher/raw/design-language` | Complete visual system: full OKLCH palette, typography scale, spacing, shadow system, component patterns, layout grids |
| `references/asset-direction.md` | Photography direction, data-as-visual patterns, video treatment, verified starter assets |
| `https://joincommons.cc/api/items/raycast-launcher/raw/anti-patterns` | Detailed domain-specific traps across visual, structural, content, and UX dimensions |
| `assets/tokens.dtcg.json` | DTCG design tokens: color, semantic (performance-fast, terminal-prompt, keycap-gradient), typography |
| `assets/exhibit.html` | Reference implementation — self-contained HTML with interactive command palette, terminal benchmarks, keycap shortcuts |
| `assets/design-skill.json` | V4 manifest with section archetypes, style signatures, coverage blueprints |

## Workflow
1. Read `https://joincommons.cc/api/items/raycast-launcher/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/raycast-launcher/raw/anti-patterns`

## Gotchas
1. **Pure black kills the feel**: #000 instead of #07080a removes the blue tint that makes it macOS-native
2. **Weight 400 on dark looks thin**: Body text needs 500 minimum. 400 is anemic and cheap
3. **Negative letter-spacing on body**: Raycast uses positive (+0.2px). Tight tracking makes dark UI cramped
4. **Single-layer shadows look flat**: macOS depth requires paired shadows (outer ring + inset highlight)
5. **Overusing red**: The brand color works because it's rare. Red backgrounds/gradients = error page
6. **People photography**: Keyboard-first dev tool. Showing people at laptops contradicts the identity

</design-system>
