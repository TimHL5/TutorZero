#!/usr/bin/env python3
"""
Extract figures from SAT practice test PDFs by rendering pages and cropping
chart/graph/table regions detected via vector drawing clusters.
"""

import fitz
import json
import os
import re
from collections import defaultdict

SAT_DIR = "/Users/Timmy/Documents/TutorZero/TutorZero/SAT Questions 2"
FIGURES_DIR = "/Users/Timmy/Documents/TutorZero/TutorZero/public/figures"
ENRICHED_FILE = "output/questions_enriched.json"
MANIFEST_FILE = "output/figures_manifest.json"
DPI = 250
SCALE = DPI / 72


def get_module_ranges(doc) -> list[dict]:
    modules = []
    current = None
    for pn in range(doc.page_count):
        text = doc[pn].get_text()
        if "Reading and Writing" in text and "DIRECTIONS" in text:
            if current:
                current["end"] = pn - 1
                modules.append(current)
            m = re.search(r"(\d+)\s+QUESTIONS", text)
            current = {"type": "rw", "start": pn, "qcount": int(m.group(1)) if m else 33}
        elif re.search(r"Math\s*\n", text) and "DIRECTIONS" in text:
            if current:
                current["end"] = pn - 1
                modules.append(current)
            m = re.search(r"(\d+)\s+QUESTIONS", text)
            current = {"type": "math", "start": pn, "qcount": int(m.group(1)) if m else 27}
    if current:
        current["end"] = doc.page_count - 1
        modules.append(current)
    return modules


def find_figure_clusters(page) -> list[fitz.Rect]:
    """
    Find figure/chart/table regions by clustering vector drawings.
    Returns list of bounding rects for distinct figure clusters.
    """
    drawings = page.get_drawings()
    pr = page.rect
    header_y = 55   # Skip page header
    footer_y = pr.height - 40

    # Collect all filled rectangles and paths (chart elements)
    elements = []
    for d in drawings:
        r = d.get("rect")
        if not r or r.y0 < header_y or r.y1 > footer_y:
            continue
        # Skip full-width elements (page border/header decorations)
        if r.width > pr.width * 0.6:
            continue
        # Skip tiny dots
        if r.width < 2 and r.height < 2:
            continue
        # Chart elements: filled shapes, lines, curves
        fill = d.get("fill")
        items = d.get("items", [])
        has_lines = any(it[0] in ("l", "c", "qu", "re") for it in items)
        if fill is not None or (has_lines and len(items) >= 2):
            elements.append(r)

    if len(elements) < 5:
        return []

    # Cluster elements by spatial proximity
    # Two elements are in the same cluster if they overlap or are within 20pt
    clusters = []
    used = [False] * len(elements)

    for i in range(len(elements)):
        if used[i]:
            continue
        cluster = [elements[i]]
        used[i] = True
        changed = True
        while changed:
            changed = False
            for j in range(len(elements)):
                if used[j]:
                    continue
                # Check if element j is near any element in the cluster
                ej = elements[j]
                for c in cluster:
                    # Expand rect by 20pt for proximity check
                    expanded = fitz.Rect(c.x0 - 20, c.y0 - 20, c.x1 + 20, c.y1 + 20)
                    if expanded.intersects(ej):
                        cluster.append(ej)
                        used[j] = True
                        changed = True
                        break

        # Only keep clusters with enough elements (charts have many draw commands)
        if len(cluster) >= 8:
            x0 = min(r.x0 for r in cluster)
            y0 = min(r.y0 for r in cluster)
            x1 = max(r.x1 for r in cluster)
            y1 = max(r.y1 for r in cluster)
            # Must be a reasonable size
            if (x1 - x0) > 30 and (y1 - y0) > 30:
                clusters.append(fitz.Rect(x0 - 15, y0 - 15, x1 + 15, y1 + 25))

    return clusters


def render_region(page, region: fitz.Rect, output_path: str) -> bool:
    """Render a cropped region of a page as PNG."""
    # Clamp to page bounds
    pr = page.rect
    clip = fitz.Rect(
        max(region.x0, pr.x0 + 5),
        max(region.y0, pr.y0 + 5),
        min(region.x1, pr.x1 - 5),
        min(region.y1, pr.y1 - 5),
    )
    mat = fitz.Matrix(SCALE, SCALE)
    pix = page.get_pixmap(matrix=mat, clip=clip)
    if pix.width < 80 or pix.height < 60:
        return False
    pix.save(output_path)
    return True


def map_test(test_num: int, enriched: list[dict]) -> dict[int, str]:
    bundle = os.path.join(SAT_DIR, f"full-length-sat-paper-practice-test_-bundle-{test_num}")
    if not os.path.isdir(bundle):
        return {}

    pdf_path = None
    for f in os.listdir(bundle):
        if f.endswith("-digital.pdf") and "scoring" not in f and "answer" not in f:
            pdf_path = os.path.join(bundle, f)
    if not pdf_path:
        return {}

    doc = fitz.open(pdf_path)
    modules = get_module_ranges(doc)

    source = f"practice_test_{test_num}"
    test_qs = [q for q in enriched if q.get("source") == source]
    figure_ids = {q["id"] for q in test_qs if "has_figure" in q.get("tags", [])}

    if not modules or not figure_ids:
        doc.close()
        return {}

    # Build question_id -> estimated_page
    q_page = {}
    gi = 0
    for mod in modules:
        cs = mod["start"] + 2
        ce = mod["end"]
        np_ = max(ce - cs + 1, 1)
        qpp = mod["qcount"] / np_
        for qi in range(mod["qcount"]):
            pe = cs + int(qi / qpp)
            pe = min(pe, ce)
            if gi < len(test_qs):
                q_page[test_qs[gi]["id"]] = pe
            gi += 1

    # Pre-compute figure clusters for all relevant pages
    page_clusters = {}
    relevant_pages = set()
    for qid in figure_ids:
        est = q_page.get(qid)
        if est is not None:
            for off in range(-3, 4):
                p = est + off
                if 0 <= p < doc.page_count:
                    relevant_pages.add(p)

    for pn in relevant_pages:
        clusters = find_figure_clusters(doc[pn])
        if clusters:
            page_clusters[pn] = clusters

    # Map figure questions to their cluster renders
    mapping = {}
    used_clusters = set()  # (page, cluster_idx) to avoid reuse

    for qid in sorted(figure_ids):
        est = q_page.get(qid)
        if est is None:
            continue

        for off in [0, -1, 1, -2, 2, -3, 3]:
            pn = est + off
            if pn not in page_clusters:
                continue
            for ci, cluster in enumerate(page_clusters[pn]):
                key = (pn, ci)
                if key in used_clusters:
                    continue
                fname = f"fig-{qid}.png"
                fpath = os.path.join(FIGURES_DIR, fname)
                if render_region(doc[pn], cluster, fpath):
                    mapping[qid] = fname
                    used_clusters.add(key)
                    break
            if qid in mapping:
                break

    doc.close()
    return mapping


def main():
    os.makedirs(FIGURES_DIR, exist_ok=True)
    for f in os.listdir(FIGURES_DIR):
        if f.endswith(".png"):
            os.remove(os.path.join(FIGURES_DIR, f))

    print("Loading enriched questions...")
    with open(ENRICHED_FILE) as f:
        enriched = json.load(f)

    has_fig = sum(1 for q in enriched if "has_figure" in q.get("tags", []))
    print(f"  {len(enriched)} questions, {has_fig} need figures\n")

    all_maps = {}
    for tn in [4, 5, 6, 7, 8, 9, 10, 11]:
        print(f"Practice Test {tn}:", end=" ")
        m = map_test(tn, enriched)
        print(f"{len(m)} figures")
        all_maps.update(m)

    manifest = {
        "total_mapped": len(all_maps),
        "total_has_figure": has_fig,
        "coverage": f"{100 * len(all_maps) // max(has_fig, 1)}%",
        "mappings": {str(k): v for k, v in all_maps.items()},
    }
    with open(MANIFEST_FILE, "w") as f:
        json.dump(manifest, f, indent=2)

    fig_count = len([f for f in os.listdir(FIGURES_DIR) if f.endswith(".png")])
    print(f"\nTotal: {len(all_maps)}/{has_fig} mapped, {fig_count} PNGs")


if __name__ == "__main__":
    main()
