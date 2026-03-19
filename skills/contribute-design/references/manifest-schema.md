# Design Skill Manifest Schema

The `design-skill.json` manifest is the machine-readable identity of a design skill. It must conform to the `commons-design-skill-v1` schema.

## Required Fields

### Top-Level

| Field | Type | Constraints | Description |
|-------|------|-------------|-------------|
| `schema` | string | Must be `"commons-design-skill-v1"` | Schema version identifier |
| `slug` | string | Kebab-case (`^[a-z0-9]+(?:-[a-z0-9]+)*$`) | Unique skill identifier |
| `name` | string | Min 2 chars | Human-readable skill name |
| `summary` | string | Min 20 chars | One-sentence description |
| `version` | string | Min 3 chars (e.g. `"1.0.0"`) | Semantic version |
| `tags` | string[] | Min 3 items | Discovery tags |
| `best_for` | string[] | Min 1 item | Product types this skill suits |
| `avoid_for` | string[] | Min 1 item | Product types this skill is wrong for |
| `theme_support` | string[] | Min 1 item | e.g. `["Light"]`, `["Light", "Dark"]` |
| `density` | string | Min 2 chars | `"spacious"`, `"balanced"`, or `"compact"` |
| `motion_profile` | string | Min 2 chars | `"none"`, `"subtle"`, `"expressive"` |
| `a11y_target` | string | Min 2 chars | e.g. `"WCAG AA"` |
| `maturity` | string | Min 2 chars | e.g. `"production"`, `"experimental"` |

### `scope_classification`

One of:
- `"full-product-design-system"` (default)
- `"brand-inspired-visual-system"`

### `port_type` (optional)

One of:
- `"language-port"`
- `"product-system-port"`
- `"framework-aware-port"`

### `style_identity`

| Field | Type | Constraints | Description |
|-------|------|-------------|-------------|
| `signatures` | string[] | Min 2 items | Key visual traits that define the skill |
| `anti_patterns` | string[] | Min 2 items | Visual choices to explicitly avoid |

### `systems`

| Field | Type | Constraints | Description |
|-------|------|-------------|-------------|
| `temperature` | string | Min 2 chars | `"warm"`, `"cool"`, `"neutral"` |
| `surface` | string | Min 2 chars | e.g. `"matte"`, `"textured"`, `"glossy"` |
| `radius` | string | Min 2 chars | `"sharp"`, `"moderate"`, `"rounded"` |
| `typography` | string | Min 2 chars | e.g. `"serif"`, `"sans"`, `"mixed"` |
| `shadow` | string | Min 2 chars | e.g. `"none"`, `"subtle"`, `"layered"` |

### `coaching` (optional but recommended)

| Field | Type | Constraints | Description |
|-------|------|-------------|-------------|
| `identity` | string | Min 10 chars | One-sentence design philosophy |
| `signature_moves` | string[] | 2-5 items, each min 5 chars | Key visual decisions |
| `hard_constraints` | string[] | 2-6 items, each min 5 chars | Rules that must not be broken |
| `anti_patterns` | string[] | 2-5 items, each min 3 chars | Patterns to actively avoid |
| `contextual_routing` | Record<string, string> | Optional, values min 10 chars | Context-specific guidance |
| `next_action` | string | Optional, min 10 chars | Suggested next step for the agent |

### `coverage`

| Field | Type | Constraints | Description |
|-------|------|-------------|-------------|
| `blueprints` | string[] | Min 2 items | Page types covered (e.g. `"landing"`, `"dashboard"`) |
| `components` | string[] | Min 5 items | Component types covered (e.g. `"button"`, `"card"`, `"nav"`) |
| `states_required` | boolean | Required | Whether the skill defines component states |

### `quality`

| Field | Type | Constraints | Description |
|-------|------|-------------|-------------|
| `self_score` | Record<string, number> | Optional, values 0-100 | Self-assessment scores |
| `curation_target` | string | `"publishable"` or `"featured-ready"` (default) | Target quality tier |
| `curation_tier` | string | Optional: `"benchmark"`, `"catalog"`, `"archive"` | Assigned tier after review |

### `discovery`

| Field | Type | Constraints | Description |
|-------|------|-------------|-------------|
| `product_archetype` | string | Min 1 char | e.g. `"saas-dashboard"`, `"portfolio"` |
| `product_slice` | string | Min 1 char | e.g. `"full-product"`, `"landing-page"` |
| `preview_ready` | boolean | Required | Whether previews are available |
| `loading_strategy` | string | Must be `"lazy-staged"` | Always `"lazy-staged"` |
| `read_stages` | object | Required | Asset loading stages (see below) |

#### `read_stages`

| Field | Type | Constraints | Description |
|-------|------|-------------|-------------|
| `discovery` | string[] | Min 2, from asset keys | Assets loaded during browsing |
| `apply` | string[] | Min 2, from asset keys | Assets loaded during install |
| `curation` | string[] | Min 1, from asset keys | Assets loaded during curation |

Valid asset keys: `manifest`, `previews`, `design_language`, `skill`, `tokens`, `exhibit`, `showcase`, `evidence`

### `provenance` (defaults to `{}`)

| Field | Type | Description |
|-------|------|-------------|
| `model` | string | Optional. AI model used (e.g. `"claude-3.5-sonnet"`) |
| `authoring_agent` | string | Optional. Agent that created the skill |
| `derived_from` | string | Optional. Parent skill slug if derived |

### `assets`

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `design_language` | string | Yes | Relative path to DESIGN.md |
| `skill` | string | Yes | Relative path to SKILL.md |
| `tokens` | string | Yes | Relative path to tokens.dtcg.json |
| `exhibit` | string | Yes | Relative path to exhibit.html |
| `showcase` | string | No | Relative path to showcase.html |
| `agents_openai_yaml` | string | No | Relative path to OpenAI agents YAML |
| `card_preview` | string | No | Relative path to card preview PNG |
| `detail_preview` | string | No | Relative path to detail preview PNG |
| `blueprints_evidence` | string | No | Relative path to blueprints JSON |
| `component_matrix_evidence` | string | No | Relative path to component matrix JSON |
| `usage_notes` | string | No | Relative path to usage.md |

---

## Submission Payload

Design skills are submitted via `POST /api/submissions` with `Authorization: Bearer <api_key>`.

```json
{
  "slug": "pencil-draft",
  "title": "Pencil Draft",
  "description": "Hand-drawn notebook aesthetic with ruled-paper grids.",
  "tags": ["hand-drawn", "notebook", "sketch"],
  "collections": ["design-skill"],
  "bestFor": ["landing pages", "portfolios"],
  "theme": "Light",
  "temperature": "warm",
  "model": "claude-3.5-sonnet",
  "design_skill": {
    "schema": "commons-design-skill-v1",
    "manifest": { ... },
    "design_md": "# Pencil Draft\n\n## One-Sentence Summary\n...",
    "skill_md": "---\nname: pencil-draft\n---\n# Pencil Draft\n...",
    "tokens_dtcg": { ... },
    "exhibit_html": "<!DOCTYPE html><html>...</html>",
    "showcase_html": "<!DOCTYPE html><html>...</html>",
    "evidence": {
      "blueprints": { ... },
      "component_matrix": { ... },
      "usage_md": "## Usage Notes\n..."
    },
    "previews": {
      "card_png_base64": "iVBORw0KGgo...",
      "detail_png_base64": "iVBORw0KGgo..."
    }
  }
}
```

### Validation Rules

1. `slug` must be kebab-case and unique
2. `title` must be at least 2 characters
3. `design_skill.schema` must be `"commons-design-skill-v1"`
4. `design_skill.manifest` must pass the full schema validation above
5. `design_skill.manifest.slug` must equal the top-level `slug`
6. `design_skill.design_md` must be at least 200 characters, no placeholder text
7. `design_skill.skill_md` must be at least 120 characters
8. `design_skill.exhibit_html` must be at least 200 characters and pass structural audit
9. Exhibit must score 12+ on the visual distinctiveness scale (0-30)
10. Preview PNGs: card min 960x540, detail min 1280x900 (auto-capture available as fallback)

### Response (Success)

```json
{
  "ok": true,
  "trace_id": "abc123",
  "slug": "pencil-draft",
  "status": "published",
  "item_id": "sha256hex...",
  "grade": "B",
  "quality_state": "publishable",
  "recommendation": "Catalog-Ready",
  "featured_ready": false,
  "render_ok": true,
  "design_language_url": "https://...",
  "design_skill_url": "https://...",
  "detailHref": "/style/pencil-draft",
  "viewHref": "/ai/pencil-draft?clean=1"
}
```
