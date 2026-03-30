# Liminal Space Gallery

A design skill for digital art galleries, immersive exhibitions, and cultural spaces that feel like wandering through an empty museum where every room is familiar but impossible.

## Design Context

**Audience**: Digital art collectors and culture-forward enthusiasts (22-38) who seek art *experiences*, not just art objects. The type who visits immersive exhibitions and empty-room installations.

**Use cases**: Online gallery exhibitions, digital art showcases, NFT/collecting platforms, artist retrospectives, curator-led shows, immersive cultural microsites.

**Brand personality**: Hauntingly beautiful emptiness. Uncanny institutional warmth. The visual language of a museum after hours — fluorescent-lit, symmetric, deeply atmospheric, never horror.

## Design Direction

**Tone extreme**: Liminal dreamcore — beautiful emptiness with institutional fluorescent warmth.

**The ONE memorable thing**: CSS perspective corridors that make scrolling feel like walking through connected rooms in an empty museum. Nested receding doorways visible on load.

**Reference sites**: Kubrick hotel corridor symmetry, Backrooms rendered in soft pastels, immersive Van Gogh exhibitions, Empty Room art shows.

**What this is NOT**: Not horror/creepypasta, not a Behance grid, not dark-mode neon, not vaporwave irony, not minimalist white-cube absence.

## Workflow

1. **Load design language** — Read `https://joincommons.cc/api/items/liminal-space-gallery/raw/design-language` for the full color/type/layout/motion system
2. **Load image kit** — Read `https://joincommons.cc/api/items/liminal-space-gallery/raw/image-kit` for verified Unsplash URLs and usage guidance
3. **Build** — Structure content as connected "rooms" (sections), each a distinct gallery space. Use CSS perspective for corridor effects, frosted glass for artwork cards, 200px+ gradient dissolves between rooms, breathing animations on ambient elements
4. **Self-critique** — Read `https://joincommons.cc/api/items/liminal-space-gallery/raw/anti-patterns` and check every item

## Gotchas

1. **Rooms must feel connected, not stacked** — Use gradient dissolves (200px+) between sections, not hard breaks or simple padding. The user should not be able to tell where one room ends and another begins.
2. **Emptiness is the design, not laziness** — The Empty Room (a section with one artwork and vast space) must feel intentional and eerie. Add a floor line, breathing glow, atmospheric color — not just `padding: 200px`.
3. **Fluorescent warm, never cool white** — Base is `oklch(0.96 0.008 95)` with warm tint. Pure white kills the institutional atmosphere.
4. **Glassmorphism serves the metaphor** — Artwork cards are frosted glass because they feel *projected onto walls*, not because glassmorphism looks trendy. Every glass surface needs a colored glow shadow beneath it.
5. **Perspective corridors are structural** — The receding doorway effect is the hero. It must use real CSS `perspective` and `translateZ`, not just smaller nested boxes with no depth.
6. **Room numbering is wayfinding** — Use `Azeret Mono` labels like "ROOM 01 · Curator's Note" to create institutional atmosphere. These are not decorative — they orient the visitor.
7. **Slow motion only** — All animations 8-20s duration, ease-in-out. Nothing bounces, nothing snaps. The building breathes.
