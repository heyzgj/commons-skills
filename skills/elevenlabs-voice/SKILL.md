---
name: elevenlabs-voice
slug: elevenlabs-voice
description: Warm white design system for an AI voice platform. Ethereal weight-300 serif headings, warm-tinted shadows, translucent stone surfaces. Cormorant Garamond display + IBM Plex Sans body, atmospheric studio video hero, voice library cards with waveform animations.
metadata: design-skill
---

# ElevenLabs Voice

<design-system>

## Identity
AI voice platform — text-to-speech so real it is indistinguishable from a human recording. The design language is warm white with ethereal weight-300 serif headings, multi-layer warm-tinted shadows at sub-0.1 opacity, and translucent stone surfaces. Apple.com's premium restraint meets the intimate warmth of a professional recording studio. The palette is intentionally achromatic with warm undertones — no brand colors, no accents. Surfaces define themselves through the lightest possible touch.

## Product World
- **Who**: Audiobook publishers managing catalogs of hundreds of titles. Game studios shipping RPGs with thousands of NPC voice lines. Content creators localizing YouTube videos into 30+ markets. Enterprise teams building voice agents for customer support.
- **What**: AI voice platform — text-to-speech, voice cloning, dubbing, and conversational AI with human-indistinguishable quality.
- **Vibe**: Apple.com warmth meets a premium recording studio — ethereal typography floats over warm stone surfaces, as if sound itself had a texture.
- **Domain conventions**: Voice types (Narrative, Conversational, Dramatic, Whispery), MOS scores (mean opinion score, 1-5 scale), stability/expression sliders, character counts for usage, latency measured in sub-second, language counts (32+).

## Signature Moves
1. **Weight 300 serif headings at 64px** — where every other site uses bold, ElevenLabs uses ethereal lightness. Cormorant Garamond at 300 feels like sound waves rendered in type.
2. **Warm-tinted shadows** — `rgba(78,50,23,0.04)` instead of neutral black; shadows have color, creating tactile physicality.
3. **Inset half-pixel borders** — `0 0 0 0.5px inset` creates edges so subtle they are felt, not seen.
4. **Animated waveform bars** — CSS-only staggered span animations as ambient texture in hero and voice cards.
5. **Warm stone CTA block** — translucent `rgba(245,242,239,0.8)` surface with warm shadow.
6. **Pill-shaped everything** — 9999px radius on buttons, tags, interactive elements.
7. **Play button reveal** — voice card play buttons appear only on hover with warm stone background and upward slide.
8. **Positive letter-spacing on body** — +0.14px to +0.18px tracking on IBM Plex Sans for airy, unhurried reading.

## Hard Constraints
- **Weight 300 only** for display headings — weight 400+ destroys the ethereal quality
- **Shadows below 0.1 opacity** — visible shadows break the whisper-level depth
- **Warm-tinted shadows** on featured elements — `rgba(78,50,23,...)` not `rgba(0,0,0,...)`
- **No brand accent colors** — palette is achromatic with warm undertones only
- **Pill radius (9999px)** on all interactive elements — fully rounded buttons always
- **Card radius 20px minimum** — generous soft corners are structural to the warmth
- **Positive letter-spacing** on body text (+0.14px to +0.18px) — never negative
- **Video at 0.4 opacity max** with `saturate(0.7) brightness(0.6)` — atmospheric, never dominant

## Anti-Patterns
- NOT a dark-mode developer tool — voice is warm and human, not terminal-green
- NOT a music streaming service (Spotify vibes) — this is creation, not consumption
- NOT a chatbot interface — the product IS the generated voice, not a conversation
- NOT a tech demo with waveform SVG visualizations everywhere — CSS span bars only
- NOT a podcast hosting platform — the focus is generation and cloning, not distribution
- NOT aggressively colorful — the achromatic palette with warm undertones is the identity
- NOT heavy elevation shadows — surfaces barely exist through whisper-level depth

## Section Archetypes
- **Voice Library**: Grid of voice personality cards with inline waveform previews, play controls, and voice type labels
- **Voice Studio**: Side-by-side recording studio photo + interactive interface mock (text input, voice selector, stability/expression sliders, generate button)
- **Performance Metrics**: MOS score, language count, streaming latency in warm divided cells
- **Application Showcase**: Use-case cards with studio photography
- **Language Coverage**: Pill-shaped language tags in a flowing wrap layout
- **Social Proof**: Italic serif testimonial from a domain professional
- **Warm Stone CTA**: Translucent warm surface with ethereal heading and dark pill button

## Hero Archetype
**Video-typography**. Recording studio video at 0.4 opacity on a warm-dark background (`oklch(0.12 0.01 52)`), with gradient overlays. Weight-300 serif heading in white. Why: voice is inherently temporal and atmospheric — a still image cannot convey what this product creates.

## Typography
- **Cormorant Garamond** (display, weight 300): Thin serif strokes at large sizes feel like sound waves — delicate, precise, creating intrigue through restraint. Weight 300 is non-negotiable.
- **IBM Plex Sans** (body, weights 300-500): Technical reliability with humanist warmth. Positive letter-spacing (+0.14px to +0.18px) creates an airy reading rhythm.

## Color
Intentionally achromatic with warm undertones — no brand colors, no accents.
- `#ffffff` — primary canvas
- `#f5f2ef` — warm stone surface
- `#f5f5f5` — light gray differentiation
- `rgba(245, 242, 239, 0.8)` — warm stone translucent (CTA signature)
- `#000000` — primary text, dark buttons
- `#4e4e4e` — secondary text
- `#777169` — muted warm gray
- `rgba(78,50,23,0.04)` — warm shadow tint
- Voice identity: muted OKLCH at chroma 0.06-0.12, each voice gets a distinct hue

## Supporting Files
- `https://joincommons.cc/api/items/elevenlabs-voice/raw/design-language` — full visual system (shadows, typography scale, spacing, components)
- `references/asset-direction.md` — photography and video sourcing guidance with verified starter assets
- `https://joincommons.cc/api/items/elevenlabs-voice/raw/anti-patterns` — domain-specific traps across visual, structural, content, and UX categories
- `assets/tokens.dtcg.json` — DTCG tokens with color, semantic (voice identity colors), and typography groups
- `assets/exhibit.html` — reference implementation (self-contained HTML with video hero, voice cards, studio demo, metrics, use cases)
- `assets/design-skill.json` — manifest with V4 fields

## Gotchas
1. Never use bold serif headings — weight 300 is the entire typographic identity
2. Shadows must be warm-tinted on featured elements — brown-warm, not neutral gray
3. The warm stone surface is translucent (0.8 opacity) — not solid
4. Video is atmospheric mood, not a product demo — 0.4 opacity, desaturated
5. Waveform bars are CSS spans, not SVG — use staggered animation-delay values
6. Voice personality colors stay muted — OKLCH chroma 0.06-0.12 only

</design-system>
