#!/usr/bin/env python3
"""
Download Commons design skill thumbnail previews to local disk.

Usage:
    python scripts/download_thumbnails.py '{"items": [...]}'
    python scripts/download_thumbnails.py --slugs pencil-draft,receipt-paper,chalkboard-menu
    python scripts/download_thumbnails.py --url "https://joincommons.cc/api/items?sort=trending&limit=5"

Downloads card thumbnail PNGs to .commons/previews/ and outputs JSON with local paths.
"""

import json
import os
import sys
import urllib.request
import urllib.error
import re
import argparse

CDN_BASE = "https://pub-962ae6531eaf4fc2b3cd95edcb026436.r2.dev"
API_BASE = "https://joincommons.cc"
OUTPUT_DIR = os.path.join(".commons", "previews")
USER_AGENT = "commons-find-designs/1.0"


def ensure_dir(path):
    os.makedirs(path, exist_ok=True)


def download_file(url, dest):
    """Download a file from URL to local path. Returns True on success."""
    try:
        req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
        with urllib.request.urlopen(req, timeout=15) as resp:
            with open(dest, "wb") as f:
                while True:
                    chunk = resp.read(8192)
                    if not chunk:
                        break
                    f.write(chunk)
        return True
    except (urllib.error.URLError, OSError) as e:
        return False


def fetch_api(url):
    """Fetch JSON from Commons API."""
    req = urllib.request.Request(url, headers={
        "User-Agent": USER_AGENT,
        "Accept": "application/json",
    })
    with urllib.request.urlopen(req, timeout=30) as resp:
        return json.loads(resp.read().decode("utf-8"))


def download_thumbnails(items, output_dir=OUTPUT_DIR):
    """Download card thumbnails for a list of API items. Returns results dict."""
    ensure_dir(output_dir)
    results = []
    errors = []

    for item in items:
        slug = item.get("slug", "")
        name = item.get("title", item.get("name", slug))
        card_url = item.get("cardThumbnailUrl", "")

        if not card_url or not slug:
            continue

        filename = f"{slug}-card.png"
        dest = os.path.join(output_dir, filename)

        # Skip if already downloaded
        if os.path.exists(dest) and os.path.getsize(dest) > 1000:
            results.append({
                "slug": slug,
                "name": name,
                "path": dest,
                "cached": True,
            })
            continue

        ok = download_file(card_url, dest)
        if ok:
            results.append({
                "slug": slug,
                "name": name,
                "path": dest,
                "cached": False,
            })
        else:
            errors.append({"slug": slug, "url": card_url, "error": "download failed"})

    return {
        "output_dir": os.path.abspath(output_dir),
        "downloaded": results,
        "count": len(results),
        "errors": errors,
    }


def main():
    parser = argparse.ArgumentParser(description="Download Commons thumbnails")
    parser.add_argument("json_input", nargs="?", help="JSON string with items array")
    parser.add_argument("--slugs", help="Comma-separated slugs to download")
    parser.add_argument("--url", help="API URL to fetch items from")
    parser.add_argument("--output", default=OUTPUT_DIR, help="Output directory")
    args = parser.parse_args()

    items = []

    if args.url:
        data = fetch_api(args.url)
        items = data.get("items", [])
    elif args.slugs:
        slugs = [s.strip() for s in args.slugs.split(",") if s.strip()]
        for slug in slugs:
            try:
                data = fetch_api(f"{API_BASE}/api/items/{slug}")
                item = data.get("item", data)
                if item:
                    items.append(item)
            except Exception:
                pass
    elif args.json_input:
        try:
            data = json.loads(args.json_input)
            items = data.get("items", data) if isinstance(data, dict) else data
        except json.JSONDecodeError:
            # Try reading from stdin
            pass

    if not items and not sys.stdin.isatty():
        raw = sys.stdin.read()
        try:
            data = json.loads(raw)
            items = data.get("items", data) if isinstance(data, dict) else data
        except json.JSONDecodeError:
            pass

    if not items:
        print(json.dumps({"error": "No items provided", "count": 0}))
        sys.exit(1)

    result = download_thumbnails(items, args.output)
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
