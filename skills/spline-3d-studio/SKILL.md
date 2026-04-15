---
name: spline-3d-studio
description: Dark canvas aesthetic for browser-based 3D design tools. Void-purple backgrounds with vibrant material gradients (purple-teal), simulated viewport hero with properties panel overlay, PBR material sliders, scene graph tree, collaborative cursors, code export blocks. Bricolage Grotesque display with Instrument Sans body.
---

<design-system>

## Identity
Dimension is a design system for browser-based 3D creation tools -- products where web designers drag objects, apply PBR materials, set up lighting, animate with keyframes, and export embeddable 3D directly into websites. The design language communicates creative workshop energy through simulated tool UI, real 3D domain data, and vibrant material gradients on a void-dark canvas.

**Target users**: Web designers and creative developers who use Figma for 2D and want the same collaborative, browser-based experience for 3D. They build portfolio hero sections, interactive product showcases, and immersive landing pages. They find Blender intimidating and Unity overkill. They care about real-time feedback, embeddable output, and not leaving their browser.

**Vibe**: spline.design (dark canvas, vibrant 3D gradients, depth as aesthetic) meets figma.com (collaborative canvas energy, the tool IS the product).

**Domain conventions**: PBR material properties (roughness, metalness, refraction, IOR), scene hierarchy (parent-child transforms), export formats (glTF, glb, embed code, React component, Lottie), physics terms (rigid body, soft body, cloth, restitution, damping), WebGPU rendering, keyframe animation curves.

## Signature Moves
1. **Simulated viewport as hero** -- the page opens looking like you're inside the tool: toolbar chrome with traffic-light dots, Design/Animate/Interact tabs, and a properties panel overlaying video of 3D shapes as the "scene."
2. **Tool ribbon** -- horizontal scrolling strip of creation tools (primitives, sphere, layers, lighting, camera, keyframes, timeline, events, physics) with icon + label, mimicking the actual toolbar palette.
3. **PBR sliders in the UI** -- material section has actual slider tracks with gradient fill and monospace values (roughness 0.12, metalness 0.85, clearcoat 0.64, refraction 1.52), making the page feel like the product's interface.
4. **Scene graph component** -- a real hierarchical tree with depth-indentation via CSS custom property, color-coded type icons (yellow=light, blue=camera, purple=mesh), and active selection highlighting.
5. **Animated collaborative cursors** -- named cursors (Aisha, Marcus, Yuki) in distinct colors drift across the canvas to sell multiplayer editing.
6. **Code blocks as export proof** -- four export formats (embed, React, glTF, Lottie) each show real, syntax-highlighted code with correct syntax.
7. **Gradient = material, not decoration** -- every purple-to-teal gradient references PBR iridescent material previews, not abstract marketing polish.
8. **Monospace data values throughout** -- transform XYZ, material properties, physics parameters in tabular-nums, reinforcing precision tool identity.

## Hard Constraints
1. Dark theme only -- all backgrounds oklch L < 0.15, hue 280 (purple-tinted). 3D viewports need dark canvas for material/lighting evaluation.
2. Bricolage Grotesque for display headings (700-800 weight). Instrument Sans for body. System monospace for data/code.
3. Material gradient is purple(295) > blue(255) > teal(195). Never vaporwave, never neon.
4. All code in export blocks must be syntactically valid -- real JSX, real HTML custom elements, real JSON.
5. Scene hierarchy must use real 3D conventions (lights, cameras, groups, meshes, HDRI, fog volumes).
6. PBR values must be in correct ranges (roughness 0-1, IOR 1.0-2.5, metalness 0-1).

## Anti-Patterns
1. NOT light mode -- 3D viewports are universally dark so materials and lighting read correctly.
2. NOT vaporwave/retrowave gradients as decoration -- gradients must reference PBR material properties.
3. NOT generic SaaS hero-features-pricing-CTA structure -- sections follow the tool's workflow.
4. NOT Blender-cluttered -- web-native simplicity, not 200-button toolbars. Show minimal simulated UI.
5. NOT neon-gamer RGB aesthetics -- professional creative tool, not gaming peripheral.
6. NOT feature cards with icon + heading + text repeated 6x -- show features through simulated UI components.
7. NOT fake 3D terminology -- use real PBR/scene/physics terms, the audience knows 3D.

## Section Archetypes
- **Simulated Canvas**: Hero viewport with toolbar chrome, properties panel overlay, and video of 3D shapes as scene content.
- **Tool Ribbon**: Horizontal scrolling strip of creation tool icons with labels.
- **Capability Grid**: 2-column grid with 1px gap dividers, gradient watermark numbers (01-04), technical tags.
- **Material Editor**: Split layout -- 3D render image + PBR slider overlay (roughness, metalness, clearcoat, refraction) + material chips.
- **Scene Graph**: Monospace hierarchical tree with color-coded type icons, depth indentation, active selection.
- **Collaborative Canvas**: Viewport with 3 named animated cursors showing real-time multiplayer.
- **Export Formats**: Cards with format badge, description, and syntax-highlighted code blocks.
- **Physics Playground**: 3D render with overlaid physics parameters + feature list with border-left accents.

## Hero Archetype
Video-as-canvas. The hero IS a simulated 3D viewport. Video of abstract 3D shapes plays inside a canvas frame with simulated toolbar (traffic lights, tabs for Design/Animate/Interact) and a properties panel showing transform values and material settings. The video is CONTENT -- it shows what the tool creates. The viewer feels like they've already opened the product.

## Typography
- **Bricolage Grotesque** (display): Quirky optical sizing with personality -- letterforms have slight eccentricity matching a creative tool's identity. Not sterile like geometric sans-serifs.
- **Instrument Sans** (body): Clean, contemporary, slightly humanist. Quieter than Bricolage -- doesn't compete for attention. Good at small sizes for UI labels.
- **System monospace** (code/data): ui-monospace stack for property values, code blocks, scene graph labels. Tabular nums for alignment.

## Color
All OKLCH. Void-purple backgrounds with vibrant gradient accents from PBR material previews:
- **Backgrounds**: 5-tier -- canvas(0.04), void(0.06), surface(0.10), card(0.12), elevated(0.14). All hue 280.
- **Text**: 3-tier -- primary(0.94), secondary(0.65), tertiary(0.44). All hue 280.
- **Accent purple** oklch(0.65 0.25 295) -- brand, CTAs, active selections.
- **Accent teal** oklch(0.72 0.14 195) -- data values, status, secondary accent.
- **Accent violet** oklch(0.58 0.22 310) -- emission materials, deep emphasis.
- **Accent blue** oklch(0.62 0.18 255) -- code attributes, links, cameras.
- **Hero gradient**: 135deg purple > blue > teal -- iridescent material preview signature.

## Supporting Files
- `https://joincommons.cc/api/items/spline-3d-studio/raw/design-language` -- complete visual system (colors, typography, spacing, motion, components)
- `references/asset-direction.md` -- photography, video, and data-as-visual sourcing guidance
- `https://joincommons.cc/api/items/spline-3d-studio/raw/anti-patterns` -- domain-specific visual, structural, content, and UX traps
- `assets/tokens.dtcg.json` -- DTCG design tokens (color, semantic, typography groups)
- `assets/exhibit.html` -- reference implementation (49KB self-contained landing page with 8 sections)
- `assets/design-skill.json` -- manifest with discovery metadata

## Workflow
1. Read `https://joincommons.cc/api/items/spline-3d-studio/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build dark-first -- the bg-void is the canvas, everything floats on it
4. Use the gradient (purple > blue > teal) as a material signature, not generic decoration
5. Self-critique against `https://joincommons.cc/api/items/spline-3d-studio/raw/anti-patterns`

## Gotchas
1. **Gradient = materials, not marketing.** If a gradient is decorating a heading unrelated to 3D rendering, it's misused.
2. **Monospace values must be real.** Transform XYZ coordinates, PBR properties (roughness 0-1), physics constants (gravity -9.81). Not invented marketing numbers.
3. **Scene hierarchy follows 3D conventions.** Lights, cameras, groups, meshes, HDRI, fog volumes. Not random words.
4. **Export code must be syntactically valid.** Real JSX imports, real HTML custom elements, real JSON configs.
5. **Dark canvas is non-negotiable.** A light version breaks the viewport metaphor and makes 3D objects unreadable.
6. **Collaborative cursors need distinct colors and real names.** Not "User 1, User 2" -- diverse names, non-adjacent hues.

</design-system>
