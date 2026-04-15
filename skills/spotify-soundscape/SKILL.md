---
name: spotify-soundscape
slug: spotify-soundscape
description: Near-black immersive music streaming experience where album art and concert imagery provide ALL color against an achromatic UI. Spotify Green as singular functional accent, pill geometry everywhere, persistent now-playing bar.
metadata: design-skill
---

# Spotify Soundscape

<design-system>

## Identity
A near-black immersive music streaming experience inspired by Spotify's design language. The UI disappears into darkness so the music can glow -- album art is the only color source, green is functional only. Concert photography and video bring the energy, emotion, and color that the achromatic interface deliberately lacks. This is Spotify's actual product aesthetic meets premium concert photography -- pill-shaped everything, dense and scannable, content-first.

## Product World
- **Who**: Music lovers who listen 2+ hours daily. Playlist curators obsessed with the perfect sequence. Podcast listeners following 10+ shows. College students sharing Blends. Commuters with noise-canceling headphones. Artists tracking streams and listener geography. They don't "use" Spotify -- they live in it.
- **What**: The world's largest audio streaming platform -- 600 million songs, podcasts, and audiobooks in a single dark immersive environment where your library IS your identity.
- **Vibe**: Spotify's actual product design meets premium concert photography -- near-black immersion where album art provides ALL color, with live music energy bleeding through the achromatic UI.
- **Domain conventions**: Playlist names (Discover Weekly, Release Radar, Daily Mix), stream counts ("1.2B streams"), monthly listener stats ("42.8M monthly listeners"), Wrapped personalization stats, genre tags (Indie Pop, Lo-fi Beats, Afrobeats, K-Pop), episode durations, podcast timestamps.

## Signature Moves
1. **Pill geometry everywhere**: 500px-9999px radius on all buttons, 50% on all circular controls. Square corners do not exist in this design language.
2. **Green as singular functional accent**: One brand color used ONLY for play buttons, active states, and primary CTAs. Never decorative, never as backgrounds, never on text (except badge labels).
3. **Heavy shadows on dark**: rgba(0,0,0,0.5) at 24px blur for dialogs, 0.3 at 8px for cards. Light shadows are invisible on dark backgrounds.
4. **Uppercase button labels**: All button text is uppercase with 1.4-2px letter-spacing, creating a systematic "label" voice distinct from content text.
5. **Now Playing bar**: Always-present fixed bottom bar with playback controls, progress, and volume. The persistent reminder that music is playing.
6. **Concert imagery as color source**: The achromatic UI frames vibrant concert photography. The contrast between the restrained UI and explosive imagery IS the design tension.
7. **4-quadrant gradient playlist art**: Playlist cards use 2x2 gradient grids instead of photography, making each playlist visually distinct through color palette alone.
8. **Play FAB on hover**: Green circular play button rises from bottom-right of playlist cards on hover -- the primary action reveals itself contextually.

## Hard Constraints
1. Dark-only always -- bg oklch(8% 0 0) through oklch(16% 0 0) with zero-chroma neutrals; never light mode, never pure white
2. Single chromatic accent -- Spotify Green oklch(75% 0.2 145) only; all other colors are achromatic or semantic status
3. Urbanist for all typography -- 400-900 weights, no second font, no monospace
4. Pill or circle radius on ALL interactive elements -- 500px+ for buttons, 50% for circular controls, 6-12px for containers; no sharp corners
5. Uppercase + 1.4-2px letter-spacing on ALL button labels; content text never uppercase
6. Heavy shadows -- rgba(0,0,0,0.3-0.5) at 8-24px blur; no light subtle shadows on dark backgrounds
7. Concert video at visible opacity (0.5+) in hero -- content, not subtle wallpaper
8. Album art / concert photography provides ALL color; UI chrome is achromatic only

## Anti-Patterns
1. Colorful UI surfaces -- the interface is achromatic (black/gray/white + functional green). No gradient backgrounds, no colored cards, no tinted surfaces.
2. Light mode or white backgrounds -- Spotify is dark-theater immersion, always. Any white surface breaks the identity.
3. Decorative green -- green backgrounds, gradient text, green section fills. Green appears ONLY on play buttons, active states, CTAs, section labels.
4. Square buttons or sharp-cornered cards -- breaks the pill-and-circle geometry that defines Spotify.
5. Spacious editorial layout -- Spotify is dense and scannable, built for browsing playlists. Large whitespace feels wrong.
6. Generic SaaS template (hero/features/pricing/CTA) -- structure follows the listening experience: playlists, wrapped, discovery, events, podcasts.
7. Subtle shadows on dark backgrounds -- light shadows are invisible. Heavy shadows (0.3-0.5 opacity) are required for visible elevation.
8. Stock photos of headphones, earbuds, or people listening to music -- concert imagery captures the energy of live music, not the device.
9. Auto-playing audio -- video is always muted.

## Section Archetypes
- **Personalized playlists**: Discover Weekly, Daily Mix, Release Radar cards with 4-quadrant gradient art, play FAB on hover, artist/description metadata
- **Wrapped / Year in Music**: Full-bleed concert photography + personalization stats (minutes listened, unique artists, top genre) in glass cards
- **Artist discovery**: Trending artist rows with rank number, circular avatar, genre tag, monthly listener count
- **Live events**: Event cards with date badge (month/day), venue name, availability tag
- **Podcast shelf**: Horizontal cards with square art, show name, host, episode duration + date
- **Now Playing bar**: Fixed bottom bar with track info, playback controls, progress bar, volume
- **Premium comparison**: Pricing cards with green featured border, checkmark feature lists, pill CTAs

## Supporting Files
- `https://joincommons.cc/api/items/spotify-soundscape/raw/design-language` -- Full visual system: OKLCH palette, typography scale, spacing, radius, shadows, motion, component patterns
- `references/asset-direction.md` -- Photography/video direction, data-as-visual patterns, album art simulation, verified starter assets
- `https://joincommons.cc/api/items/spotify-soundscape/raw/anti-patterns` -- Domain-specific visual, structural, content, and UX traps to avoid
- `assets/tokens.dtcg.json` -- DTCG design tokens with color, semantic, and typography groups
- `assets/exhibit.html` -- Reference implementation: self-contained HTML exhibit

## Workflow
1. Read `https://joincommons.cc/api/items/spotify-soundscape/raw/design-language` for the full visual system
2. Read `references/asset-direction.md` for asset sourcing guidance
3. Build following the product world and design system above
4. Self-critique against `https://joincommons.cc/api/items/spotify-soundscape/raw/anti-patterns`

## Gotchas
1. Green is not a theme color -- it's a functional indicator. If green appears anywhere other than play buttons, active states, or primary CTAs, you've broken the identity.
2. Dark-only always -- no light mode. Spotify's immersion depends on near-black backgrounds.
3. Pill or circle, never square -- every interactive element must have high border-radius.
4. Dense, not spacious -- tight spacing, compact typography, content-dense grids.
5. Album art IS the color -- the UI itself is achromatic. All other color comes from content.
6. Shadows must be heavy -- 0.3-0.5 opacity, 8-24px blur on dark backgrounds.
7. Uppercase on buttons only -- content text never uses uppercase or wide letter-spacing.

</design-system>
