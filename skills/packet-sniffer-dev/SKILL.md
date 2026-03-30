# Packet Sniffer Dev — Design Skill

## Design Context

**Audience**: Security engineers, pentesters, detection engineers, CTF competitors, and infosec professionals who live in Wireshark, terminal emulators, and hex editors. They read hex dumps recreationally and find beauty in protocol headers.

**Use cases**: Developer/hacker portfolios, security researcher CVs, CTF team pages, infosec conference speaker bios, open-source tool landing pages.

**Brand personality**: Clinical precision meets hacker culture. The entire UI is a pixel-perfect Wireshark impersonation — title bar, menu bar, toolbar, display filter, three-pane split (packet list / protocol detail / hex dump), and status bar. Career events are literal network packets. The ONE memorable thing: **your resume is a pcap file** — every job, talk, cert, and CTF result is a captured packet you can click, inspect, and decode.

---

## Design Direction

**Tone**: Dead serious tool aesthetic. Zero decorative elements. Every pixel serves a function or mimics one from Wireshark. The humor is structural — the absurdity of encoding a career into network protocols — not visual.

**The one thing that must survive**: The three-pane Wireshark layout. Top: sortable packet table with protocol-colored rows. Middle: collapsible protocol dissection tree. Bottom: hex dump with offset/data/ASCII columns. Remove any pane and the identity collapses.

**Typography**: `Share Tech Mono` only. One font, one weight, multiple sizes (10–12px). Monospace is non-negotiable — Wireshark is monospace. No display fonts, no serifs, no sans-serif body copy.

**Protocol color system**: Each "protocol" (career category) gets a unique hue pair — a muted foreground and a dark-tinted background row. CAREER=blue-200, CTF=green-150, OSS=amber-60, EDU=purple-300, SPEAK=orange-30. Rows tint the entire background so you can scan protocols by color at a glance.

---

## Workflow

**Step 1 — Load design language**
Read `https://joincommons.cc/api/items/packet-sniffer-dev/raw/design-language`. Internalize the OKLCH token map (capture-bg, pane-bg, pane-border, 5 protocol color pairs, hex column colors, text-primary, text-muted), the single-font system, the 3-pane flex layout, and the 24px/28px/30px/22px chrome bar heights.

**Step 2 — Load image kit**
Read `https://joincommons.cc/api/items/packet-sniffer-dev/raw/image-kit`. This design uses NO images. All visuals are text, table rows, hex dumps, and CSS borders. Do not add photography, illustrations, or decorative SVG.

**Step 3 — Build**
- **Title bar**: Centered filename + app name, darkest bg (`oklch(0.10)`), 26px tall.
- **Menu bar**: Horizontal menu items with underline mnemonics, hover highlight, 24px tall.
- **Toolbar**: Icon buttons (20px squares, 2px border-radius), separators, protocol color legend swatches.
- **Filter bar**: "Display Filter:" label + full-width input + Apply/Clear buttons. Input border turns accent on focus.
- **File info bar**: Key-value metadata row (File, Format, Encapsulation, Interface, Snapshot length).
- **Packet list pane** (flex:4): Fixed-layout table with sticky header. Columns: No., Time, Source, Destination, Protocol, Length, Info. Each row colored by `data-proto` attribute. Selected row uses `--selected-row`.
- **Protocol detail pane** (flex:3): Collapsible tree with toggle arrows. Layer headers (Frame, Application, Transport, Network, Link). Fields as key:value pairs with key in `--hex-offset` color.
- **Hex dump pane** (flex:2.5): Three-column rows — offset (teal), hex data (muted blue), ASCII (warm light). Non-printable chars as styled dots. Selected-packet rows highlighted.
- **Status bar**: Left: capture indicator dot + file info. Right: packet counts, duration, avg rate. 22px tall.
- **Interactivity**: Row click populates detail + hex panes. Filter parses `protocol == X` and `info contains "Y"` syntax. Column sorting indicator.

**Step 4 — Self-critique**
Read `https://joincommons.cc/api/items/packet-sniffer-dev/raw/anti-patterns` and verify:
1. All three panes visible without scrolling the page itself (panes scroll internally)?
2. Protocol colors distinguish at least 3 categories visually?
3. Hex dump has three distinct columns (offset / data / ASCII)?
4. Only Share Tech Mono is used — no second font crept in?
5. Filter bar is functional (not decorative)?
6. Status bar shows realistic packet statistics?
7. No decorative elements (gradients, illustrations, rounded cards)?

---

## Gotchas

1. **Dashboard instead of tool** — This is NOT a metrics dashboard. It is a desktop application UI. No cards, no charts, no hero sections. Every element mimics Wireshark chrome.
2. **Rounded corners everywhere** — Wireshark uses 0–2px border-radius max. Rounded cards or pill buttons break the tool illusion.
3. **Multiple fonts** — One monospace font. Adding a display or sans-serif font destroys the terminal-tool feel.
4. **Decorative color** — Color is purely functional (protocol identification). No gradient backgrounds, no accent-colored sections, no color for mood.
5. **Missing pane** — All three panes (packet list, protocol detail, hex dump) must be present. Dropping one makes it a generic table page.
6. **Fantasy protocols** — Protocol names should map to real resume categories (CAREER, EDU, OSS, CTF, SPEAK). Inventing fake TCP/UDP names without clear career mapping confuses the metaphor.
7. **Unreadable hex dump** — The hex dump must be structurally correct: fixed-width offset column, 16 bytes per row in two groups of 8, ASCII sidebar. Random hex looks wrong to anyone who has used a hex editor.
