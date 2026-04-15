---
name: arc-browser-landing
description: Colorful, keyboard-first browser landing page with four Space colors (blue/orange/violet/green) tinting the entire UI. Light mode, Sora + Instrument Sans, playful-but-precise tone. Product-native demos (command bar, auto-archive, split view) replace generic feature cards. Browser mockup cycles through Space colors as the hero visual. Built for creative professionals and power users aged 22-35.
metadata: design-skill
---

# Prism Browser Landing

<design-system>

## Product World
- **Who**: Creative professionals and power users (22-35) who live in their browser. Designers using Figma, developers on GitHub, PMs in Notion. They have 40+ tabs open, hate tab chaos, and care deeply about how their tools look and feel. They've tried every browser and they're all the same gray boxes.
- **What**: Prism is a browser that organizes browsing into colorful Spaces (work, personal, creative, side project). Each Space has its own color theme that tints the entire browser chrome. Built-in command bar, split view, auto-archive, AI page summaries.
- **Vibe**: arc.net (playful precision, colorful but structured, personality without chaos) meets linear.app (command-bar energy, keyboard-first, opinionated UX)
- **Domain conventions**: Browser terminology (tabs, bookmarks, history, extensions, split view), keyboard shortcuts with modifier keys, sidebar navigation with pinned tabs as icons, context switching between work/personal

## Core Principle
Fun is a feature -- color, personality, and structure work together so your browser feels like YOUR browser, not everyone's.

## Visual Vibe
Playful precision, colorful discipline, warm geometry, confident simplicity, spatial clarity, keyboard-first energy, soft-but-opinionated, structured joy

Real-world references: Arc Browser's sidebar + Space colors, Linear's command bar + keyboard-first ethos, Notion's clean warmth, Raycast's quick-action energy

## What It's NOT
- NOT a dark-mode dev tool aesthetic -- Prism is LIGHT and COLORFUL, not moody
- NOT a generic SaaS marketing page with hero/features/pricing/CTA template
- NOT gradient-text-on-everything -- color is SYSTEMATIC (each Space has a hue), not decorative
- NOT chaotic maximalism -- there's a strict color system underneath the playfulness
- NOT enterprise software -- the tone is irreverent, warm, slightly cheeky ("the app you swear will ship this month")
- NOT monochrome with one accent -- the whole identity IS that multiple colors coexist harmoniously

## Section Archetypes
1. **Browser mockup hero**: A live-feeling browser window that cycles through Space colors, showing the product's core visual identity
2. **Command bar demo**: Interactive-feeling command palette showing search results across Spaces with color-coded provenance
3. **Spaces showcase**: Four color-coded Space cards with real tab contents (Slack, Figma, GitHub, YouTube -- real tools real people use)
4. **Feature bento**: Split view, auto-archive, and AI summary as interactive-feeling demos, not generic feature cards
5. **Keyboard shortcut reference**: Actual shortcuts with `kbd` elements, showing keyboard-first philosophy
6. **Social proof from beta**: Testimonials from specific creative professionals (designer at Figma, engineer at Vercel) with real-sounding quotes about Spaces and the command bar
7. **Stats row**: Colored metrics showing real product outcomes (fewer tabs, faster tab-find, retention)

## Hero Archetype
**Browser mockup + typography**: The hero IS a stylized browser window that cycles through Space colors, paired with oversized headline typography. WHY: for a browser product, the product interface IS the most compelling visual. No stock photos, no video -- the browser mockup demonstrates the core concept (colorful Spaces) immediately. The headline uses gradient text matching the four Space colors to reinforce the "in full color" message.

## Asset Direction
- **Photography**: Used sparingly and ONLY inside UI demos (split-view panes). Real workspace photography showing screens and creative tools. NEVER lifestyle/stock imagery of "happy people browsing."
- **Data-as-visual**: Keyboard shortcuts as visual content (kbd elements in a reference table). Browser tabs with real app names (Slack, GitHub, Figma, Notion) as data.
- **Typography-as-art**: Oversized headline "Your browser, in full color" with gradient text. Stats as large colored numbers (47%, 2.3s, 12k, 98%).
- **CSS atmospherics**: Subtle colored radial gradients as atmospheric glows. Conic gradient for the Prism logo icon. Color-tinted card backgrounds for each Space.
- **What NOT to show**: No screenshots of actual Arc/browsers (legal). No generic UI illustrations. No people using computers. No abstract 3D renders.

## Typography
- **Sora** (display): Geometric, slightly rounded, playful but precise. Its soft geometry mirrors the rounded corners of the browser UI while feeling more distinctive than typical geometric sans-serifs. The slight roundness says "fun" while the clean structure says "precise."
- **Instrument Sans** (body): Clean contemporary sans-serif with excellent legibility at small sizes. Pairs well with Sora's geometry without competing. Professional enough for UI copy, warm enough for marketing.

## Color
Four Space colors are the product identity -- each has SEMANTIC meaning tied to a browsing context:
- **Work** `oklch(62% 0.18 250)`: Calm productive blue -- focus, professionalism, concentration
- **Personal** `oklch(68% 0.16 55)`: Warm orange -- relaxation, personal time, comfort
- **Creative** `oklch(62% 0.2 305)`: Vivid violet -- imagination, inspiration, design
- **Side Project** `oklch(72% 0.2 150)`: Energetic green -- building, hacking, growth

Each Space color generates a scale: full (`oklch(62% 0.18 250)`), light (`oklch(94% 0.04 250)`), tint (`oklch(97% 0.015 250)`).

Base palette: Near-white background `oklch(98% 0.005 260)` with blue-tinted neutrals. Text `oklch(18% 0.02 260)`. Borders tinted toward the cool end to harmonize with the Space colors.

## Bold Choices
1. **Conic gradient logo**: The Prism icon is a conic gradient cycling through all four Space colors -- the logo IS the product concept
2. **Browser mockup as hero**: Not a static screenshot but a cycling animation that switches Spaces every 3 seconds, showing chrome color, URL, and sidebar all changing
3. **Color-coded everything**: Each testimonial avatar, each stat number, each feature label maps to a specific Space color. Color is never random.
4. **Real app names in demos**: Tabs show "Slack - #design", "GitHub - prism-ext", "Figma - Rebrand V3" -- not generic placeholders
5. **Slightly irreverent copy**: "the app you swear will ship this month", "YouTube rabbit holes and shopping you won't admit to" -- the tone matches users who are self-aware about their tab habits
6. **kbd elements as visual rhythm**: Keyboard shortcuts rendered as physical-feeling key caps throughout, reinforcing keyboard-first identity
7. **Four-column Space grid**: The Spaces section uses a 4-column grid where each card is tinted its Space color, creating a visual spectrum effect
8. **Dark CTA block with colored glow**: The shortcut visual section inverts to dark with colored radial gradients bleeding through, previewing how the command bar feels

## Workflow
1. Read `https://joincommons.cc/api/items/arc-browser-landing/raw/design-language` for the full visual system (all OKLCH values, type scale, spacing, motion)
2. Read `references/asset-direction.md` for photography and visual sourcing guidance
3. Establish the four Space colors as CSS custom properties FIRST -- they drive every other design decision
4. Build the browser mockup as a living component that accepts a Space color and tints everything accordingly
5. Use the Space colors systematically: each section, card, or element that references a Space uses THAT Space's color, never random
6. Self-critique against `https://joincommons.cc/api/items/arc-browser-landing/raw/anti-patterns`

## Gotchas
1. **Color system is NOT decorative**: Every color use must map to a Space or semantic meaning. Random purple accents break the system.
2. **Light mode is essential**: Prism is a colorful LIGHT product, not dark mode with neon. Dark backgrounds should only appear in high-contrast accent blocks (like the shortcut visual).
3. **The gradient text is ONE instance only**: The hero headline uses gradient text to introduce the color concept. Using it elsewhere cheapens it.
4. **Tab/app content must feel real**: "Tab 1", "Example.com" destroys authenticity. Use real product names that designers/developers actually use.
5. **Don't make every section colorful**: The rhythm is color → neutral → color. Sections alternate between tinted and clean white to prevent visual fatigue.
6. **The browser mockup needs the cycling animation**: Without it, the mockup is static and doesn't demonstrate the Spaces concept. The color transition IS the demo.

</design-system>
