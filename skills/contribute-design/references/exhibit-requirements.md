# Exhibit HTML Requirements

The `exhibit.html` file is the renderable full-page proof that a design skill works as a real product page. It must pass both structural validation and visual distinctiveness scoring.

## Structural Requirements

All of these must be present. Failing any one causes a 400 rejection.

### Document Structure

- `<!DOCTYPE html>` declaration
- `<html>` and `<body>` root elements
- Minimum 2,200 HTML characters (total source)
- Minimum 320 visible text characters (after stripping tags/scripts/styles)

### Content Hierarchy

- 3+ headings (`<h1>` through `<h6>`)
- 2+ sub-headings (`<h2>` through `<h6>`)
- 4+ paragraphs (`<p>`)
- 1 primary hero heading (`<h1>`)

### Page Layout

- `<header>` or `<nav>` (top-level navigation)
- `<footer>` landmark
- `<main>` element OR 3+ section-level elements (`<section>`, `<article>`, `<main>`, `<aside>`)
- 4+ semantic blocks (`<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, `<aside>`, `<footer>`)
- 3+ page sections (`<section>`, `<article>`, `<main>`, `<aside>`)
- 14+ structural blocks (divs + semantic elements)
- 2+ interaction targets (`<a>` links or `<button>` elements)

## No Placeholder Text

The following patterns cause rejection:

- `lorem ipsum`
- `[TODO]` or `todo`
- `TBD`
- `placeholder`
- `replace me`

Two or more hits in the text content is an automatic fail.

## Self-Contained Rule

Exhibits must be fully self-contained HTML. The only allowed external requests are:

- **Google Fonts**: `fonts.googleapis.com` and `fonts.gstatic.com`

All other external requests (CDNs, images, scripts, stylesheets) are blocked during preview capture. Use inline styles, inline SVG, and data URIs.

## Quality Signals (Featured-Ready)

These are not hard requirements for publication, but are required for `featured-ready` curation tier:

| Signal | How to satisfy |
|--------|---------------|
| CSS custom properties | Use `--var-name` for colors, spacing, fonts |
| `focus-visible` | Include `:focus-visible` styles for keyboard navigation |
| `prefers-reduced-motion` | Include `@media (prefers-reduced-motion)` query |
| Responsive layout | Use `@media`, `@container`, or fluid grid (`1fr`, `repeat()`) |
| Dense surface | Include at least one `<table>`, `<pre>`, or `<code>` block |
| Form control | Include at least one `<input>`, `<textarea>`, or `<select>` |
| Non-default state | Show at least one `disabled`, `aria-invalid`, `error`, `loading`, `selected`, `checked`, or `is-active` state |

## Visual Distinctiveness Score (Slop Score)

Exhibits are scored 0-30 on visual distinctiveness. 10 metrics, each worth 0-3 points:

| Metric | What it measures | 3 points | 0 points |
|--------|-----------------|----------|----------|
| Font personality | Uses distinctive (non-AI-default) fonts | All fonts non-blocklisted | Only AI-safe fonts (Inter, Poppins, DM Sans, etc.) |
| Font family count | Number of distinct font families | 4+ families | 0-1 families |
| Border-radius coherence | Consistency of border-radius values | 0-1 distinct values | 5+ distinct values |
| Gradient density | Restraint in gradient usage | 0-3 gradients | 15+ gradients |
| Texture keywords | Physical material/texture references | 50+ keyword hits | 0 hits |
| Generic copy absence | Avoids marketing cliches | 0 generic phrases | 5+ phrases |
| Purple hex absence | Avoids AI-purple color codes | 0 purple hexes | 5+ purple hexes |
| Backdrop-filter restraint | Restraint in glassmorphism | 0-1 backdrop-filter | 10+ declarations |
| Container width variation | Layout width diversity | 4+ distinct widths | 0-1 widths |
| One-trick legibility | Coherent physical metaphor | 5+ cluster keyword hits | No concept detected |

### Bands

| Score | Band | Result |
|-------|------|--------|
| 22-30 | auto-publish | Published immediately |
| 12-21 | review | Published, may be reviewed |
| 0-11 | auto-reject | Rejected with guidance |

### Compound Penalties

- **No font identity + no physical concept**: -2 points
- **Gradient text** (`background-clip: text` + gradient): -1 point

## Anti-Patterns to Avoid

These are the most common reasons exhibits score poorly:

1. **Purple gradients**: AI defaults to purple (`#8b5cf6`, `#a855f7`, `#6366f1`, etc.). Use any other color.
2. **Generic copy**: Avoid "elevate your", "transform your", "the future of", "experience the power", etc.
3. **Safe fonts only**: Inter, Poppins, DM Sans, Space Grotesk, Roboto are AI defaults. Pick distinctive fonts.
4. **Component showcase layout**: Don't make a UI kit demo. Make a real product page.
5. **Labeled sections**: Don't add headings like "Hero Section", "Features Grid", "Testimonials". Write real content.
6. **Glassmorphism overload**: Limit `backdrop-filter: blur()` to 1-2 uses.
7. **`repeat(3, 1fr)` grids**: The generic three-column features layout is a strong slop signal.

## The Squint Test

Close your eyes halfway and look at the exhibit. If you can't tell it apart from any other AI-generated landing page, it needs more character. A good exhibit should be identifiable from its silhouette alone — distinctive typography, unique layout rhythm, and a coherent visual metaphor.
