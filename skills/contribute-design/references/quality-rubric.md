# Quality Rubric

Design skills are graded A through D based on five evaluation dimensions. The grade determines curation tier and discovery ranking.

## Grades

### Grade A — Benchmark Candidate

All five dimensions score `strong`. The skill is a reference-quality example.

Characteristics:
- Distinctive identity grounded in a physical metaphor or clear concept
- 2+ unique (non-AI-default) fonts with intentional pairing
- Constraint commitment: hard constraints are specific, not generic
- Real copy that could ship in a product (no marketing cliches)
- All structural requirements met (header, footer, hero, sections, CTAs)
- Full accessibility: focus-visible, prefers-reduced-motion, responsive layout
- Complete bundle: tokens, evidence, previews, usage notes
- SKILL.md has all required sections with routing logic

### Grade B — Catalog-Ready

Average score >= 0.72 across all dimensions, with no dimension below `emerging`. Truthfulness >= 0.75, completeness >= 0.72, consistency >= 0.72, proof >= 0.70.

Characteristics:
- Clear visual identity, may lack the physical metaphor depth of Grade A
- Good font choices, may still use one AI-default alongside a distinctive font
- Solid structural completeness
- Most accessibility signals present
- Bundle is mostly complete (may be missing evidence or usage notes)

### Grade C — Seed-Only

Passes validation but falls below Grade B thresholds. Published to the catalog but ranked lower in trending/featured sorts.

Characteristics:
- Recognizable visual direction but not strongly distinctive
- May rely on AI-default fonts
- Structural requirements met but quality signals are sparse
- Missing some accessibility features
- Incomplete evidence coverage

### Grade D — Needs Revision

Fails schema validation or has a `draft` quality state. Not published.

Characteristics:
- Missing required manifest fields
- Placeholder text in DESIGN.md
- Exhibit fails structural audit
- Visual distinctiveness below auto-reject threshold (slop score < 12)

## Evaluation Dimensions

Each dimension is scored 0.0 to 1.0, then mapped to a band:

| Band | Score Range |
|------|------------|
| strong | >= 0.90 |
| solid | >= 0.72 |
| emerging | >= 0.50 |
| weak | < 0.50 |

### 1. Routing

Does the SKILL.md provide clear instructions for agents?

- **strong**: Has "What This Skill Does", "Default Workflow", "Supporting Files" headings. References DESIGN.md, tokens.dtcg.json, and exhibit.html.
- **weak**: Missing key sections or file references.

### 2. Completeness

How many bundle artifacts are present and substantial?

Scored as: (present artifacts) / 8

The 8 artifacts: DESIGN.md (200+ chars), SKILL.md (120+ chars), tokens, blueprints evidence, component matrix, usage notes, card preview, detail preview.

### 3. Consistency

Is the bundle internally coherent?

- **strong**: `read_stages.apply` starts with `"skill"` (SKILL.md is read first during install).
- **solid**: Apply stages present but skill is not first.

### 4. Proof

Does the exhibit demonstrate the design skill in action?

Scored as: (signals present) / 8

The 8 signals: card preview, detail preview, focus-visible, prefers-reduced-motion, responsive layout, form control, dense surface, non-default state.

### 5. Truthfulness

Does the manifest accurately represent the bundle's quality?

- **strong**: If `curation_target` is `"featured-ready"`, the bundle actually meets all featured-ready criteria.
- **weak**: Manifest claims `"featured-ready"` but the bundle fails curation checks.

## Presentation Assessment

Based on the grade and profile, the system assigns:

| Field | Values |
|-------|--------|
| `contractStatus` | `pass` or `fail` |
| `confidence` | `high`, `medium`, `low` |
| `recommendation` | `Benchmark Candidate`, `Catalog-Ready`, `Seed-Only`, `Needs Revision` |

### Recommendation Logic

| Grade | Quality State | Recommendation |
|-------|--------------|----------------|
| A | featured-ready | Benchmark Candidate |
| A or B | featured-ready | Catalog-Ready |
| C | publishable | Seed-Only |
| D | draft | Needs Revision |

## Scoring Signals Table

Quick reference for common slop signals and their impact:

| Signal | Good | Bad |
|--------|------|-----|
| Font choice | Distinctive typeface (e.g. Playfair Display, IBM Plex Mono, Bitter) | AI defaults (Inter, Poppins, DM Sans, Space Grotesk) |
| Border-radius | 1-2 consistent values | 5+ inconsistent values |
| Gradients | 0-3, purposeful | 15+, decorative overload |
| Purple hex | None | `#8b5cf6`, `#a855f7`, `#6366f1`, etc. |
| Generic copy | Real product copy | "elevate your", "the future of", "experience the power" |
| Texture keywords | 20+ material references | Zero texture/metaphor language |
| Physical metaphor | Coherent cluster (paper, ink, pencil) | No concept or scattered references |
| Gradient text | Not used | `background-clip: text` + gradient |
| Grid layout | Varied column counts | `repeat(3, 1fr)` everywhere |
| Black/white | Tinted neutrals | Pure `#000` and `#fff` everywhere |
