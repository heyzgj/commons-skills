# Lumi Visual Prompt -- Design Skill

<design-system>

## Product World
- **Who**: Developers who use coding agents (Claude Code, Cursor, Codex, Gemini, Qwen, Trae). They live in terminals and IDEs, care about precision over polish, notice grid alignment, and distrust anything that smells like a marketing template. They read source code for fun and evaluate tools by their technical credibility, not their brand voice.
- **What**: A Chrome extension that gives coding agents visual eyes -- click, tweak, and annotate any webpage, then export a structured context pack the agent can apply.
- **Vibe**: Raycast meets an engineering notebook -- the precision of a schematic drawing rendered as a webpage. Every element looks like it was placed on a 40px grid with a ruler.
- **Domain conventions**: UNDERSCORE_CASE for CTAs (TRY_LUMI, STAR_ON_GITHUB, NOTIFY_ME, COPY_PROMPT). "FIG. 01" labels on visual panels. Dimension annotations ("|< 800px >|"). "Preview_Mode" status labels. Feature sections numbered 01, 02, 03. Agent names rendered as uppercase grid cells.

## Core Principle
The page itself is a technical artifact -- monospace everything, visible grid, hard shadows, zero ornamentation. The design proves the product's precision through its own construction.

## Visual Vibe
Mechanical, precise, engineered, paper-warm, grid-anchored, monospace-authority, brutalist-restrained, blueprint-functional, CLI-native, zero-fluff

Real-world references: engineering graph paper, rubber-stamp offset printing, VS Code dark theme, terminal output, technical specification documents

## What It's NOT
- NOT a gradient-washed SaaS marketing page (no linear-gradient backgrounds, no aurora blobs)
- NOT glassmorphism (no backdrop-blur cards, no frosted panels, no glow borders)
- NOT soft or rounded (no border-radius above 2px, no soft drop shadows)
- NOT multi-font (no pairing JetBrains Mono with Inter or a geometric sans)
- NOT multi-accent (no purple or teal alongside the blue -- one chromatic color only)
- NOT photography-dependent (no hero images, no stock photos of people coding)
- NOT a typical features/pricing/testimonials SaaS template

## Section Archetypes
- **Terminal mock**: Split-view dark panel showing live preview (left) with selection boxes and dimension annotations alongside generated context markdown (right). This IS the product demo.
- **Agent compatibility strip**: Full-width black bar with bordered cells showing each supported agent name and icon. Flat, not cards.
- **Numbered feature panel**: Massive watermark number (01, 02, 03) behind content side, with "FIG. XX" labeled visual panel on the other side. Panels show CSS-constructed product UI mocks (editor toolbar, annotation canvas, context export split-view).
- **How-it-works flow**: Three numbered steps (CLICK, TWEAK, EXPORT) connected by arrow characters, black square number indicators.
- **Dark CTA footer**: Black background with uppercase headline and hard-shadow email form.

## Hero Archetype
Code-as-hero with typography. The hero is a massive uppercase monospace headline ("VISUAL CONTEXT FOR [agent ticker]") with a cycling agent name in blue and a blinking cursor. Below it, a dark terminal mock shows the product in action -- this IS the visual proof. No photos, no video, no illustrations. The typography and the terminal mock do all the work.

## Asset Direction
- **No photography**: All visual interest comes from CSS constructions -- terminal mocks, annotation overlays, property panels, code blocks
- **Technical annotations as decoration**: "FIG. 01" labels, dimension rulers ("|< 800px >|"), "Preview_Mode" status indicators, selection boxes with element tags ("h1", "div.hero")
- **Floating labels**: Small bordered badges ("CONTEXT READY", "VISUAL DIFF") with hard shadows, slight rotation, and float animation
- **Agent ticker**: Vertical text rotation cycling through supported agent names, blue text with underline bar and blinking cursor
- **What NOT to show**: No product screenshots, no browser chrome mockups with rendered pages, no abstract geometric illustrations, no mascots

## Typography
**JetBrains Mono** -- the ONLY font, no exceptions. Monospace at display size (48-52px, weight 800) creates a mechanical rhythm that IS the design identity. At body size (15-17px) it reads as terminal output elevated to editorial quality. The tight tracking (-0.04em on headings) prevents the natural wide spacing of monospace from looking loose at large sizes.

Why JetBrains Mono: It signals "developer ecosystem" instantly. It has excellent legibility at both 10px annotation labels and 140px watermark numbers. The weight range (300-800) gives full hierarchy without needing a second font.

## Color
- **Cream #FBF9F1** -- page background, warm paper not clinical white. The warmth prevents the heavy black borders from feeling stark.
- **Black #000** -- structural borders (2px), hard shadows, nav background, dark sections. The ONLY border color.
- **Blue #3B82F6** -- the single accent. Hero ticker text, interactive highlights, annotation overlays, feature accents, selection boxes. Tailwind blue-500, signaling developer ecosystem.
- **Gray scale** tinted warm: #f3f1e8, #e5e2d6, #d4d1c5, #a8a59a, #7a776e, #5c5a52, #3d3b35, #2a2822, #1a1814
- **Status green #22C55E** -- terminal live dot, status indicators only. Not an accent color.
- **Terminal palette** -- VS Code dark: #1e1e1e background, #c084fc purple headers, #fde047 yellow values, #4ade80 green values, #93c5fd blue properties

## Bold Choices
1. **40px grid background on body** -- visible linear-gradient grid lines create the engineering-notebook metaphor. Removing it makes the page feel empty instead of minimal.
2. **Hard offset shadows with zero blur** -- 4/8/12/16px scale. The absence of blur references rubber-stamp printing and letterpress. Hover grows the shadow by +4px while translating the element -2px to simulate physical lift.
3. **Floating decorative labels** -- small bordered badges ("CONTEXT READY", "VISUAL DIFF") with slight rotation and CSS float animation, positioned absolute near the terminal mock.
4. **UNDERSCORE_CASE CTAs** -- "TRY_LUMI", "STAR_ON_GITHUB", "NOTIFY_ME" -- treating buttons as function calls, reinforcing the developer mental model.
5. **"FIG. XX" panel labels** -- each feature visual is labeled like a figure in a technical document, with dimension annotations below.
6. **Cycling agent name ticker** -- the hero headline includes a rotating agent name (Claude Code, Cursor, Codex, Gemini, Qwen) in blue with a blinking block cursor.
7. **Terminal mock as hero visual** -- instead of a screenshot or video, the hero visual is a CSS-constructed split-view terminal showing the product's actual output (live preview + generated markdown).
8. **All borders 2px solid black** -- every structural boundary uses the same 2px black border. This creates a unified "printed on paper" feeling where every element has equal weight.

## Workflow
1. Read `https://joincommons.cc/api/items/lumi-visual-prompt/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/lumi-visual-prompt/raw/anti-patterns`

## Gotchas
1. **JetBrains Mono at display size IS the aesthetic.** Swapping to Inter or Geist for headings because "monospace doesn't scale" destroys the identity. Use tight tracking (-0.04em) and weight 800 to compensate for monospace width.
2. **Shadows must be zero blur.** `8px 8px 0px 0px #000` -- the `0px` blur is structural. Soft shadows make this look like a 2021 SaaS template.
3. **The grid background is load-bearing.** The 40px grid transforms "minimal" from "empty" to "intentionally sparse." Never remove it; reduce opacity if needed.
4. **Cream is not white.** `#FBF9F1` for body background. `#FFFFFF` is only for card surfaces and inputs. White body = lost warmth.
5. **One accent color.** Blue `#3B82F6` only. Green exists for terminal status dots, not as a second accent.
6. **Feature visuals are CSS constructions.** Terminal mocks, annotation canvases, property panels -- all built with borders and backgrounds. Never replace with screenshots or SVG illustrations.
7. **No rounded corners.** `border-radius: 0` on everything structural. The only exception is `border-radius: 50%` on intentional circles (status dots).

</design-system>
