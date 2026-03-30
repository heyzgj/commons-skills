---
name: frutiger-aero-cloud
description: A cloud storage dashboard in the Frutiger Aero visual language — glossy gel buttons with visible top-half highlights, frosted glass panels over a sky-blue gradient background, layered blue-tinted shadows, and inner glow glass-lip details. Covers storage rings, file lists, upload progress, plan comparison cards, activity feeds, and glossy file-type icons.
---

# Frutiger Aero Cloud — Design Skill

## Design Context

**Audience:** People nostalgic for the 2006–2010 era of optimistic software, design enthusiasts who love the tactile feel of early smartphone UIs, users who want their cloud storage to feel premium and alive rather than sterile and flat.

**Use cases:** Cloud storage dashboards, file management UIs, SaaS productivity tools, any application that should feel like software from the golden age of glossy interfaces — when buttons looked like candy and glass panels floated over digital skies.

**Brand personality:** Glossy optimism. Like holding a crystal object that happens to store your files. The interface whispers: *technology used to be joyful, and it can be again.*

---

<design-system>
# Design Style: Frutiger Aero Cloud

## Design Philosophy
### Core Principle
**Software wants to be a window, not a wall.** Every panel is a frosted glass pane with sky behind it. Every button gleams like a polished river stone. Every surface catches light. The whole experience feels like holding a crystal orb that happens to be a computer.

### Visual Vibe
**Emotional Keywords**: Glossy, Optimistic, Transparent, Airy, Bubbly, Aquatic, Luminous, Friendly, Utopian, Fresh

Real-world references:
- Mac OS X Leopard's translucent menu bar floating over a galaxy desktop
- Windows Vista's Aero Glass frosted title bars catching the wallpaper behind them
- Early iPhone's gel buttons that looked genuinely wet to the touch — you wanted to press them
- iTunes and Skype circa 2008 — chrome, gradients, and a sky full of promises

### What This Design Is NOT
- NOT flat design — every surface has depth, light, and reflection
- NOT 2021 glassmorphism — that's minimalist frosted cards on dark. This is maximalist gloss on bright sky
- NOT dark mode — the entire philosophy is "nature through glass," which demands luminous light
- NOT neumorphism — no soft embossed surfaces. Aero is about transparent depth, not clay-like relief
- NOT muted or desaturated — colors are vivid, saturated, alive like jewels in sunlight
- NOT modern SaaS dashboard — no flat cards, no muted grays, no single-weight typography

### The DNA of Frutiger Aero
**Gel buttons:** Every clickable surface has a visible glossy highlight — a light-to-transparent gradient on the top half that makes the element look three-dimensional and slightly wet. On hover the highlight intensifies. The button looks like candy you want to press.

**Frosted glass panels:** Content containers use blur + semi-transparent white background. You can see the sky gradient bleeding through. Edges catch light with a bright inset border. Panels float over the background rather than sitting flatly on it.

**Layered shadow depth:** Multiple box-shadows at different offsets and blur radii create a Z-axis. Closer elements have tighter, denser shadows. Distant elements have wide, diffused, pale blue-tinted shadows.

**Rounded everything:** Minimum border-radius: 12px on small elements, 24px on large panels. Nothing has a sharp corner. The roundness is the character — optimistic, friendly, non-threatening.

**Inner glow:** The single detail that separates Aero from flat design — a thin bright inset line on the top edge simulates light hitting a glass rim. The "shine on the lip of a drinking glass" effect.

**Sky gradient background:** Vertical gradient from cerulean at top to near-white at bottom. The sky IS the UI background. Frosted panels let it bleed through, reinforcing "your files are stored in the cloud — literally."

## Typography
- **Display:** Nunito Sans — rounded, friendly, geometric sans. Weight 800–900 for headings, 700 for labels. Matches the bubbly Aero personality
- **Body:** Atkinson Hyperlegible Next — clean, highly readable, warm without being casual. Weight 400–600
- **Data/Meta:** Fira Code — monospace for file sizes, dates, storage metrics. Makes numbers feel precise and trustworthy

## Color
- Sky background top: `oklch(0.82 0.10 230)` — soft cerulean
- Sky background mid: `oklch(0.91 0.05 220)` — pale horizon blue
- Sky background bottom: `oklch(0.97 0.01 230)` — near-white
- Blue gel button: `oklch(0.65 0.18 240)` → `oklch(0.55 0.20 240)`
- Green gel button: `oklch(0.72 0.16 155)` → `oklch(0.62 0.18 155)`
- Coral gel button: `oklch(0.72 0.14 25)` → `oklch(0.62 0.16 25)`
- Purple gel: `oklch(0.68 0.16 285)` — quick-access icons
- Amber gel: `oklch(0.78 0.14 70)` — folder icons
- Text navy: `oklch(0.22 0.05 250)` — deep blue-black, never pure black
- Panel glass: `rgba(255,255,255, 0.70–0.82)` with `backdrop-filter: blur(20px)`

## Bold Choices (Non-Negotiable)
1. Every button has a visible top-half gloss highlight — `linear-gradient(180deg, rgba(255,255,255,0.45) top half, transparent)`. This is non-negotiable.
2. At least 3 panels use `backdrop-filter: blur` showing the sky gradient through frosted glass
3. Shadows are always layered (2-3 box-shadows per element) with blue-tinted opacity, never flat single shadows
4. No sharp corners anywhere — minimum `border-radius: 12px` everywhere
5. Every panel has a bright inset top edge (`inset 0 1px 0 rgba(255,255,255,0.85)`) — the glass lip
6. Background is always a blue sky gradient (`175deg, cerulean → near-white`), never solid, never dark
7. File type icons are glossy 3D blobs — colored gel with dual highlight layers (top shine + bottom reflection)

## What Success Looks Like
Should feel like using a computer in 2008 when software was optimistic and shiny and technology felt like a window onto something beautiful. Should make someone nostalgic for a specific feeling they can't name but immediately recognize. Should NOT feel like a modern dashboard, a dark SaaS tool, or anything built after 2012.
</design-system>

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/frutiger-aero-cloud/raw/design-language` in full. Internalize the shadow system, the gel button construction, the inner glow detail, and the color tokens before writing code. Every value in this file came from the exhibit — do not invent new ones.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/frutiger-aero-cloud/raw/image-kit`. This design uses no photography — the glossy UI IS the visual language. All icons are SVG, all backgrounds are CSS gradients. Do not add Unsplash images.

**Step 3 — Build**
Produce a single self-contained HTML file with: sticky frosted topbar, left sidebar (upload button + storage ring + navigation), and a content grid (stat cards, recent files, quick-access icons, shared folders, storage plan comparison, activity feed). Animate: storage ring (SVG stroke-dashoffset reveal), progress bar (width grow), staggered fade-in-up on sections.

**Step 4 — Self-critique**
Before delivering, check: Does every button have a visible glossy top-half highlight? Are all backgrounds bright sky, never dark? Do panels have the inset top-edge glow? Are all shadows layered and blue-tinted? Is the typography using all three font families (Nunito Sans / Atkinson Hyperlegible Next / Fira Code)?

---

## Gotchas

1. **Forgetting the inner glow.** The single most important Aero detail is `inset 0 1px 0 rgba(255,255,255,0.85)` on panels and buttons. Without it, frosted panels look like flat cards. This is the "glass lip" that separates Aero from glassmorphism.

2. **Flat shadows.** A single `box-shadow: 0 4px 12px rgba(0,0,0,0.1)` is NOT Aero. Shadows must be layered (2-3 values) and blue-tinted (`oklch(0.50 0.03 240 / 0.10-0.16)`). Flat shadows flatten the Z-axis that Aero depends on.

3. **Muting the sky.** If the background gradient is too subtle (too close to white), frosted panels lose their purpose — there's nothing behind the glass. Keep the sky top cerulean at L≈0.82, not L≈0.94.

4. **Generic icon circles.** File type icons must look like glossy gel blobs — dual-highlight (top shine + bottom reflection), vivid gradient fills, strong colored drop-shadows. A simple colored circle with an SVG icon is not Aero.

5. **Dark mode temptation.** Never introduce dark surfaces. Any section that wants "contrast" should use a slightly stronger glass tint, not a dark background. Aero is constitutionally light.

6. **Missing gel gloss on buttons.** Using a flat colored `background-color` on buttons completely kills the aesthetic. Every interactive element needs the `::before` pseudo-element gradient highlight — top half light, bottom half transparent.
