# Oscilloscope Folio -- Design Skill

## Design Context

**Audience:** Hardware engineers, embedded systems designers, IC designers, EE researchers, mixed-signal professionals, and technically rigorous makers who think in waveforms and datasheet specs.

**Use cases:** Personal portfolio, project showcase, technical CV, lab notebook presentation, engineering resume. Sections map to oscilloscope channels: About (CH1), Projects (CH2), Skills (CH3), Contact (CH4).

**Brand personality:** Precision instrument. The portfolio IS a piece of test equipment. Clinical phosphor-green readouts, bezel hardware chrome, CRT scanlines, and SVG waveforms that visualize each project as a signal type. Authoritative but warm through the glow of a phosphor screen.

---

## Design Direction

**Purpose:** Present a hardware engineer's career as oscilloscope telemetry -- each section is a channel, each project a captured signal, each skill a frequency measurement.

**Tone extreme:** Lab-instrument fidelity. Not "techy dark mode" -- actual oscilloscope UI. Rotary knobs with indicator lines, graticule grid overlays, CRT vignette + scanlines, status bars with BANDWIDTH / SAMPLE RATE / TRIGGER readouts.

**The ONE memorable thing:** Each project card contains a live SVG waveform (sine, square, sawtooth, triangle, damped, complex, noise) that characterizes the project domain. The waveforms have phosphor glow and subtle flicker animation -- the page feels electrically alive.

**References:** Keysight oscilloscope UIs, Tektronix instrument panels, analog lab bench aesthetics. The bezel-top bar with brand name + rotary knobs is a direct instrument-panel reference.

---

## Workflow

### Step 1 -- Load design language
Read `https://joincommons.cc/api/items/oscilloscope-folio/raw/design-language`. Internalize the OKLCH palette (all hue-150 greens + bezel neutrals), the Chakra Petch / Share Tech Mono font pairing, the bezel > CRT > channel content hierarchy, and the 4-channel color system.

### Step 2 -- Load image kit
Read `https://joincommons.cc/api/items/oscilloscope-folio/raw/image-kit`. This design uses zero photography. All visuals are procedural SVG waveforms generated via JS. The image kit documents the waveform types and their color assignments.

### Step 3 -- Build
- Start with `:root` custom properties: scope-bg, phosphor-green, phosphor-glow, phosphor-dim, grid-line, grid-major, bezel-surface/dark/edge, readout-text, channel-1 through channel-4
- Build the instrument bezel (border-radius 18px, 3px border, layered box-shadows)
- Build bezel-top bar: brand name (Chakra Petch 700, uppercase, 0.12em tracking) + knob row (radial-gradient circles with indicator lines)
- Build channel-bar navigation: 4 buttons with channel-color active state + bottom highlight bar
- Build CRT display area: scope-bg background, scanline overlay (repeating-linear-gradient 2px/4px), radial vignette, SVG graticule grid (10x8)
- Build status bar: Share Tech Mono 9-11px, phosphor-dim color, label/value pairs
- Build 4 channel-content sections with fade-in animation on switch
- CH1 About: 2-column grid, bio text + readout-cards (dotted-border rows)
- CH2 Projects: stacked cards with mini SVG waveform + specs row
- CH3 Skills: auto-fill grid, skill-bar with glow + mini background waveform
- CH4 Contact: monospace readout lines + step-response waveform
- Build bezel-bottom: scale displays (volts/div, time/div, trigger) + badge

### Step 4 -- Self-critique gate
1. Are ALL colors in the OKLCH green/neutral family? No stray hex colors or RGB blues?
2. Does every section use Share Tech Mono for labels and Chakra Petch for headings?
3. Do project cards each have a distinct waveform type (sine, square, sawtooth, etc.)?
4. Is the CRT scanline overlay present (`repeating-linear-gradient`, 2px transparent + 2px black at 0.04 opacity)?
5. Does the graticule SVG render a proper 10x8 grid with center crosshairs and tick marks?
6. Does channel switching update the status bar, bottom readouts, and content panel?

---

## Gotchas

1. **No photography.** This design is 100% CSS + SVG. Every visual element is procedural. Adding stock photos breaks the instrument metaphor completely.

2. **OKLCH only.** All colors use `oklch()`. Do not convert to hex or hsl. The phosphor glow effect depends on oklch lightness/chroma values.

3. **Two fonts, no substitutes.** Chakra Petch (display/body) and Share Tech Mono (labels/readouts). Do not use Inter, system-ui, or any other font. These two fonts carry the entire instrument aesthetic.

4. **Waveforms are not decorative.** Each waveform type maps to the project's domain (complex = mixed-signal, square = digital, sawtooth = scanning, damped = decay, noise = RF). Random assignment destroys the semantic mapping.

5. **Bezel is structural, not a card.** The outer `.instrument` container with its radial-gradient knobs, layered box-shadows, and top/bottom chrome bars is the primary design element. Flattening it into a plain dark card removes the entire concept.

6. **Scanlines + vignette are mandatory.** The `::before` scanline overlay and `::after` radial vignette on `.crt-area` create the CRT illusion. Without them, it is just green text on a dark background.

7. **Channel colors are fixed.** CH1 green (hue 150), CH2 amber (hue 60), CH3 purple (hue 280), CH4 cyan (hue 200). These match real oscilloscope channel conventions. Do not reassign.

8. **Phosphor glow uses text-shadow + filter.** The glow effect is `text-shadow: 0 0 8px` for text and `filter: drop-shadow()` / `box-shadow` with oklch alpha for SVG elements. CSS `filter: blur()` alone looks wrong.
