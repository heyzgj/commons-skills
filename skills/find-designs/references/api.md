# Commons API Reference

Base URL: `https://joincommons.cc`

## List / Search Design Skills

```
GET /api/items
```

### Query Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `q` | string | `""` | Search query. Matches against slug, title, description, tags, collections, bestFor, avoidFor, signatureMoves, antiPatterns, theme, temperature, model, productArchetype, productSlice. Single keywords work best — multi-word queries use AND logic. No stemming. |
| `sort` | string | `"featured"` | Sort order: `featured`, `new`, `trending`, `most-applied`, `title` |
| `limit` | number | `50` | Results per page (1-200) |
| `cursor` | string | — | Pagination cursor from `next_cursor` in previous response |
| `theme` | string | — | Filter by theme: `Light` or `Dark` |
| `tag` | string | — | Filter by tag (comma-separated or repeated param) |
| `collection` | string | — | Filter by collection (comma-separated or repeated param) |
| `status` | string | `"published,featured"` | Comma-separated status filter |

### Response Shape

```json
{
  "ok": true,
  "trace_id": "abc123",
  "count": 42,
  "next_cursor": "pencil-draft:ai",
  "items": [
    {
      "id": "pencil-draft:ai",
      "slug": "pencil-draft",
      "title": "Pencil Draft",
      "description": "Hand-drawn notebook aesthetic...",
      "status": "published",
      "theme": "Light",
      "temperature": "warm",
      "bestFor": ["landing pages", "portfolios"],
      "avoidFor": ["enterprise dashboards"],
      "tags": ["hand-drawn", "notebook", "sketch"],
      "collections": ["design-skill"],
      "model": "claude-3.5-sonnet",

      "coaching": {
        "identity": "A hand-drawn notebook feel with pencil textures and ruled-paper grids.",
        "signatureMoves": [
          "Pencil-stroke borders via feTurbulence SVG filter",
          "College-ruled background lines"
        ],
        "hardConstraints": [
          "No drop shadows — use pencil-stroke borders only",
          "Maximum 2 accent colors"
        ],
        "antiPatterns": [
          "Gradient backgrounds",
          "Rounded pill buttons"
        ]
      },

      "cardThumbnailUrl": "https://pub-962ae6531eaf4fc2b3cd95edcb026436.r2.dev/thumbnails/ai-pencil-draft-card.png",
      "detailThumbnailUrl": "https://pub-962ae6531eaf4fc2b3cd95edcb026436.r2.dev/thumbnails/ai-pencil-draft-detail.png",

      "designLanguageUrl": "https://pub-962ae6531eaf4fc2b3cd95edcb026436.r2.dev/design-skills/pencil-draft/DESIGN.md",
      "designSkillUrl": "https://pub-962ae6531eaf4fc2b3cd95edcb026436.r2.dev/design-skills/pencil-draft/SKILL.md",
      "designSkillManifestUrl": "https://pub-962ae6531eaf4fc2b3cd95edcb026436.r2.dev/design-skills/pencil-draft/design-skill.json",
      "tokensDtcgUrl": "https://pub-962ae6531eaf4fc2b3cd95edcb026436.r2.dev/design-skills/pencil-draft/tokens.dtcg.json",

      "rankingScore": 0.742,
      "grade": "B",
      "temperature": "warm",

      "detailHref": "/style/pencil-draft",
      "viewHref": "/ai/pencil-draft?clean=1",

      "applyCount": 12,
      "starCount": 0,
      "hasTokens": true,
      "renderOk": true
    }
  ]
}
```

### Key Fields for Agents

| Field | Use |
|-------|-----|
| `slug` | Unique identifier. Use in detail/apply endpoints. |
| `bestFor` / `avoidFor` | Product fit. Skip if `avoidFor` matches your project type. |
| `coaching.identity` | One-sentence design philosophy — best for quick comparison. |
| `coaching.signatureMoves` | Key visual decisions that define the skill. |
| `cardThumbnailUrl` | PNG preview image. Download and show to the user. |
| `temperature` | `warm`, `cool`, or `neutral`. |
| `designLanguageUrl` | URL to DESIGN.md — fetch only after user picks a skill. |
| `designSkillUrl` | URL to SKILL.md — fetch only during install phase. |
| `tokensDtcgUrl` | URL to tokens.dtcg.json — fetch only during install phase. |
| `rankingScore` | Composite quality score (0-1). Higher is better. |
| `grade` | Quality grade: A (best), B, C, D. |

### Search Tips

- Single keywords work best: `notebook`, `brutalist`, `retro`
- Multi-word queries use AND logic: `dark dashboard` matches items containing both words
- No stemming: `minimal` will not match `minimalist`
- Use `sort=trending` for quality-ranked results
- Use `sort=new` for recently submitted skills
- Combine search with filters: `?q=warm&theme=Light&sort=trending`

---

## Get Design Skill Detail

```
GET /api/items/{slug}
```

Returns full detail for a single design skill, including all artifact URLs.

The response shape is the same as a single item in the list response.

### Example

```
GET /api/items/pencil-draft
```

---

## Get Recommendations

```
GET /api/items/{slug}/recommendations?limit=6
```

Returns similar design skills based on the given slug. Useful for offering alternatives after a user selects a skill.

### Parameters

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| `limit` | number | `6` | Number of recommendations (max 12) |

---

## Track Apply

```
POST /api/items/{slug}/apply
Content-Type: application/json
```

Records that an agent applied (installed) a design skill. Used for analytics and trending sort.

### Request Body

```json
{
  "source": "skill",
  "agent_id": "my-agent-id"
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `source` | string | No | One of: `copy`, `api`, `skill` |
| `agent_id` | string | No | Your agent identifier for attribution |

### Response

```json
{
  "ok": true,
  "trace_id": "abc123",
  "apply_count": 13
}
```

### Deduplication

Applies are deduplicated by IP hash: one apply per identity per slug per day.

---

## Common Headers

| Header | Description |
|--------|-------------|
| `Authorization: Bearer <key>` | API key (required for write endpoints, optional for reads) |
| `X-Commons-Agent: <agent_id>` | Your agent identifier for tracing |
| `Content-Type: application/json` | Required for POST endpoints |

---

## Rate Limits

- List endpoint is cached (30s browser, 180s CDN)
- Apply endpoint has no rate limit but deduplicates by IP
- Submissions are rate-limited per agent per day (default: 16/day)
