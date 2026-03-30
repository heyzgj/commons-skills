# Fashion Lookbook Atelier — Design Skill

## Design Context

**Audience**: Luxury fashion houses, independent ateliers, haute couture brands, fashion photographers, editorial teams
**Use cases**: Seasonal lookbook, campaign landing page, press kit, collection introduction, runway show schedule, wholesale/press enquiry portal
**Brand personality**: Unhurried, considered, quietly confident — a house that has "nothing to prove." Craft and restraint over spectacle. The voice is that of a curator, not a salesperson.

---

## Design Direction

**Tone**: Elegant restraint. Every element earns its place or disappears.
**The ONE memorable thing**: All photography starts grayscale and color-reveals only on hover — a deliberate, slow reveal that rewards attention and creates an editorial atmosphere unlike any commerce-first fashion site.
**References**: byredo.com, the-row.com, maisonmargiela.com — monastic whitespace, unhurried type scale, no decoration for decoration's sake.

---

## Design Language Summary

**Color palette (from CSS tokens)**

| Token | Hex | Use |
|---|---|---|
| `--alabaster` | `#F9F8F6` | Page background, inverted text on dark |
| `--charcoal` | `#1A1A1A` | Body text, borders, statement section bg |
| `--taupe` | `#EBE5DE` | Credits section background |
| `--warm-grey` | `#6C6863` | Secondary text, metadata, labels |
| `--gold` | `#D4AF37` | Accent: nav hover underline, gold rule, link reveals, statement tint |

**Typography**

| Role | Family | Weight | Size | Notes |
|---|---|---|---|---|
| Display / editorial headers | Playfair Display | 400 | clamp(5.5rem – 12rem) down to clamp(1.8rem) | Italic variants for expressive words |
| Body copy | Inter | 300 | 13–15px | line-height 1.85–1.9 |
| Labels / metadata | Inter | 500 | 10–11px | ALL CAPS, letter-spacing 0.22–0.28em |
| Garment table labels | Inter | 500 | 9.5px | ALL CAPS, letter-spacing 0.18em |
| Schedule dates | Playfair Display | 400 | 1.6rem | serif numeral as design element |

**Spacing system**: 4rem horizontal page padding. Vertical section padding 9–13rem. Look blocks 6rem vertical. All interior max-width constrained to 1400px.

**Motion (from CSS)**

| Variable | Value | Use |
|---|---|---|
| `--t-slow` | 1600ms | Grayscale → color image reveal |
| `--t-medium` | 800ms | — |
| `--t-fast` | 400ms | Nav, hover states, tile caption |

Scroll-triggered `.fade-in` class: `opacity:0 → 1` + `translateY(1.5rem → 0)` over 1100ms. Staggered by sibling index × 90ms.

**Signature patterns**
- Ghost numerals: Playfair Display, 9rem, `rgba(26,26,26,0.04)` — decorative watermark behind look titles
- Gold rule (`--rule--gold`): 36px × 1px, `--gold` color, 2rem vertical margin
- Full-bleed section divider rule: 1px `rgba(26,26,26,0.1)`
- Paper noise overlay: `body::after` SVG turbulence at 2.5% opacity, fixed, z-index 9999
- Grid scaffold: 4 vertical lines fixed position, `rgba(26,26,26,0.055)`, pointer-events none
- Image inset border: `box-shadow: inset 0 0 0 1px rgba(26,26,26,0.06)` on all photo frames

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/fashion-lookbook-atelier/raw/design-language` in full. Internalize: alabaster background, Playfair + Inter type pairing, the 5-token palette, and the grayscale-reveal signature.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/fashion-lookbook-atelier/raw/image-kit`. Use only URLs marked `[VERIFIED]`. Never invent photo IDs. If a URL is marked `[503 — UNRELIABLE]`, find a replacement via Unsplash search before using it.

**Step 3 — Build**
Structure the page as: Hero → Collection Intro → Looks (full-spread alternating) → Compact Grid → Designer Statement (dark section) → Behind Scenes → Materials → Schedule → Credits → Press → Footer.
- Hero must be full-viewport (`100svh`), photography-led, type at bottom-left
- All look photos must use `.img-reveal` grayscale-hover pattern
- Every section label uses `.label` class (10px, uppercase, warm-grey)
- The statement section inverts to charcoal background with gold tint radial
- Credits section uses taupe background
- Gold rule accents appear inside look copy blocks and BTS section

**Step 4 — Self-critique**
Read your output back. Apply these checks:
1. Does any image appear in color without user hover? (Fix: add `filter: grayscale(1)` to `.img-reveal`)
2. Are there more than 5 colors used? (Reduce to the 5-token palette)
3. Does any heading use a font other than Playfair Display or Inter? (Replace)
4. Is any section padding tighter than 8rem vertical? (Expand — the whole aesthetic depends on breathing room)
5. Does the page feel like it's "selling"? (It should feel like a curator presenting, not a shop)

---

## Gotchas

1. **The grayscale reveal is the soul of this design.** If you skip `.img-reveal { filter: grayscale(1) }` or the 1600ms transition, the entire editorial feeling collapses into a generic fashion site.

2. **Playfair Display italic is not decoration — it is structure.** The alternating roman/italic within headlines (`The Morning <em>Hour</em>`) creates visual rhythm. If you use italic inconsistently or skip it, the type system loses its character.

3. **Gold is not a primary color.** It appears exactly three places: nav hover underlines, the 36px gold rule, and link reveals. Any more gold and the restraint is broken.

4. **Ghost numerals must be nearly invisible.** `rgba(26,26,26,0.04)` is correct. At 0.1+ opacity they read as content rather than atmosphere. At 0 they do nothing.

5. **Section padding must be generous.** 10–13rem vertical. Cutting to 4–6rem makes the page feel commercial, not editorial. Whitespace is the primary luxury signal.

6. **Paper noise overlay is load-bearing atmosphere.** The 2.5% SVG turbulence body::after overlay creates the sense of physical paper. Without it, the alabaster background reads as plain white.

7. **The statement section must use `--charcoal` background with a gold radial glow at 4% opacity.** A plain dark section without the radial loses the warmth that connects it to the gold accent system.

8. **Never show a CTA button.** Contact is by email or "by appointment only" — commerce is implicit, never announced. Any button with `Buy Now`, `Shop`, or `Add to cart` breaks the house voice entirely.
