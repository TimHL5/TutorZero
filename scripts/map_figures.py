#!/usr/bin/env python3
"""
Map extracted figures to questions using position-based correlation.
For each has_figure question, finds the corresponding image from the PDF.

Strategy:
- Each practice test has 4 modules across known page ranges
- Questions are sequential within each module
- Map question position -> approximate page -> images on that page
"""

import fitz
import json
import os
import re
from pathlib import Path

SAT_DIR = "/Users/Timmy/Documents/TutorZero/TutorZero — Your tutor. Zero cost./SAT Questions"
FIGURES_DIR = "/Users/Timmy/Documents/TutorZero/TutorZero/public/figures"
ENRICHED_FILE = "output/questions_enriched.json"
MANIFEST_FILE = "output/figures_manifest.json"

MIN_WIDTH = 80
MIN_HEIGHT = 60


def get_pdf_structure(pdf_path: str) -> dict:
    """Analyze PDF to find module boundaries and page-image map."""
    doc = fitz.open(pdf_path)

    modules = []  # [{type, start_page, end_page, question_count}]
    current_module = None
    page_images = {}  # page_num -> [image_info]

    for page_num in range(len(doc)):
        page = doc[page_num]
        text = page.get_text()

        # Detect module boundaries
        if "Reading and Writing" in text and "DIRECTIONS" in text:
            if current_module:
                current_module["end_page"] = page_num - 1
                modules.append(current_module)
            # Extract question count
            match = re.search(r"(\d+)\s+QUESTIONS", text)
            q_count = int(match.group(1)) if match else 33
            current_module = {"type": "rw", "start_page": page_num + 1, "question_count": q_count}

        elif re.search(r"Math\s*\n.*DIRECTIONS", text, re.DOTALL):
            if current_module:
                current_module["end_page"] = page_num - 1
                modules.append(current_module)
            match = re.search(r"(\d+)\s+QUESTIONS", text)
            q_count = int(match.group(1)) if match else 27
            current_module = {"type": "math", "start_page": page_num + 1, "question_count": q_count}

        # Record images on this page
        imgs = page.get_images(full=True)
        meaningful = []
        for img_info in imgs:
            xref = img_info[0]
            try:
                base = doc.extract_image(xref)
                if base and base.get("width", 0) >= MIN_WIDTH and base.get("height", 0) >= MIN_HEIGHT:
                    meaningful.append(img_info)
            except:
                pass

        if meaningful:
            page_images[page_num] = meaningful

    total_pages = doc.page_count
    if current_module:
        current_module["end_page"] = total_pages - 1
        modules.append(current_module)

    doc.close()
    return {"modules": modules, "page_images": page_images, "total_pages": total_pages}


def render_page_figure(pdf_path: str, page_num: int, output_path: str, dpi: int = 200) -> bool:
    """Render a specific page area containing figures as a PNG."""
    doc = fitz.open(pdf_path)
    page = doc[page_num]

    # Get image bounding boxes on this page
    img_rects = []
    for img in page.get_images(full=True):
        xref = img[0]
        try:
            base = doc.extract_image(xref)
            if base and base.get("width", 0) >= MIN_WIDTH and base.get("height", 0) >= MIN_HEIGHT:
                # Find the image rectangle on the page
                for inst in page.get_image_rects(xref):
                    img_rects.append(inst)
        except:
            pass

    if not img_rects:
        doc.close()
        return False

    # Calculate bounding box around all figure images with padding
    x0 = min(r.x0 for r in img_rects) - 10
    y0 = min(r.y0 for r in img_rects) - 10
    x1 = max(r.x1 for r in img_rects) + 10
    y1 = max(r.y1 for r in img_rects) + 10

    # Clamp to page
    page_rect = page.rect
    x0 = max(x0, page_rect.x0)
    y0 = max(y0, page_rect.y0)
    x1 = min(x1, page_rect.x1)
    y1 = min(y1, page_rect.y1)

    clip = fitz.Rect(x0, y0, x1, y1)

    # Render the clipped area
    mat = fitz.Matrix(dpi / 72, dpi / 72)
    pix = page.get_pixmap(matrix=mat, clip=clip)
    pix.save(output_path)

    doc.close()
    return True


def map_practice_test(test_num: int, enriched: list[dict]) -> dict:
    """Map figures for a single practice test."""
    bundle_dir = os.path.join(SAT_DIR, f"full-length-sat-paper-practice-test_-bundle-{test_num}")
    pdf_path = None
    for fname in os.listdir(bundle_dir):
        if fname.endswith("-digital.pdf") and "scoring" not in fname and "answer" not in fname:
            pdf_path = os.path.join(bundle_dir, fname)
            break

    if not pdf_path:
        return {}

    # Get PDF structure
    structure = get_pdf_structure(pdf_path)
    modules = structure["modules"]
    page_images = structure["page_images"]

    if not modules:
        print(f"    No modules detected")
        return {}

    # Get questions for this test
    source = f"practice_test_{test_num}"
    test_questions = [q for q in enriched if q.get("source") == source]
    has_figure_qs = [q for q in test_questions if "has_figure" in q.get("tags", [])]

    if not has_figure_qs:
        return {}

    # Build question-to-page mapping
    # Questions are sequential within each module
    q_to_page = {}
    global_idx = 0

    for mod in modules:
        start = mod["start_page"]
        end = mod["end_page"]
        n_questions = mod["question_count"]
        n_pages = end - start + 1

        if n_pages <= 0 or n_questions <= 0:
            global_idx += n_questions
            continue

        # Skip the first page of each module (it's the directions page)
        content_start = start + 1  # directions takes ~1-2 pages
        content_pages = end - content_start + 1

        if content_pages <= 0:
            global_idx += n_questions
            continue

        q_per_page = n_questions / content_pages

        for q_idx in range(n_questions):
            page_offset = int(q_idx / q_per_page)
            estimated_page = content_start + page_offset
            estimated_page = min(estimated_page, end)

            if global_idx < len(test_questions):
                q_id = test_questions[global_idx]["id"]
                q_to_page[q_id] = estimated_page
            global_idx += 1

    # For each has_figure question, find and render the figure from its page
    mapping = {}

    for q in has_figure_qs:
        q_id = q["id"]
        if q_id not in q_to_page:
            continue

        est_page = q_to_page[q_id]

        # Search this page and nearby pages for images
        for offset in [0, -1, 1, -2, 2]:
            check_page = est_page + offset
            if check_page in page_images:
                # Render this page's figure area
                fig_name = f"fig-{q_id}.png"
                fig_path = os.path.join(FIGURES_DIR, fig_name)

                if render_page_figure(pdf_path, check_page, fig_path):
                    mapping[q_id] = fig_name
                    break

    return mapping


def map_question_bank(enriched: list[dict]) -> dict:
    """Map figures for question bank questions."""
    bank_dir = os.path.join(SAT_DIR, "SAT Question Bank")
    if not os.path.isdir(bank_dir):
        return {}

    # Get question bank has_figure questions
    bank_qs = [q for q in enriched if q.get("source") == "question_bank" and "has_figure" in q.get("tags", [])]

    if not bank_qs:
        return {}

    # Group by topic/subtopic to find source PDF
    mapping = {}

    # For question bank, figures are embedded in the question PDFs
    # We can't easily map by page since we don't know which PDF each question came from
    # Use the enriched data's position within each topic as a proxy

    # Group questions by topic
    by_topic = {}
    for q in enriched:
        if q.get("source") == "question_bank":
            topic = q["topic"]
            by_topic.setdefault(topic, []).append(q)

    # For each topic, find PDFs and try to map
    topic_pdfs = {}
    for root, dirs, files in os.walk(bank_dir):
        for fname in sorted(files):
            if fname.endswith(".pdf") and "Key" not in fname:
                topic_pdfs.setdefault(root, []).append(os.path.join(root, fname))

    for q in bank_qs:
        q_id = q["id"]
        # For bank questions, render the figure from the extracted images
        # Since we already have images in public/figures/, check if any match
        # by looking for bank-* images on approximate pages

        # For now, we'll use a heuristic: find bank images from the same topic directory
        topic = q["topic"]
        subtopic = q.get("subtopic", "")

        # Search for already-extracted images that might match
        # The bank images are named like bank-Math-Algebra-...-p3-0.png
        for fname in os.listdir(FIGURES_DIR):
            if fname.startswith("bank-") and topic.replace("_", "").lower() in fname.lower():
                # Found a candidate - for now, just assign it
                # This is imperfect but better than nothing
                fig_name = f"fig-{q_id}.png"
                src_path = os.path.join(FIGURES_DIR, fname)
                dst_path = os.path.join(FIGURES_DIR, fig_name)
                if not os.path.exists(dst_path):
                    try:
                        import shutil
                        shutil.copy2(src_path, dst_path)
                        mapping[q_id] = fig_name
                    except:
                        pass
                break

    return mapping


def main():
    print("=" * 60)
    print("Figure-to-Question Mapping")
    print("=" * 60)

    os.makedirs(FIGURES_DIR, exist_ok=True)

    # Load enriched data
    print("\n1. Loading enriched questions...")
    with open(ENRICHED_FILE) as f:
        enriched = json.load(f)

    has_figure = [q for q in enriched if "has_figure" in q.get("tags", [])]
    print(f"   {len(has_figure)} questions need figures")

    all_mappings = {}

    # Map practice tests
    print("\n2. Mapping practice test figures...")
    for test_num in [4, 5, 6, 7, 8, 9, 10, 11]:
        print(f"\n  Practice Test {test_num}:")
        mapping = map_practice_test(test_num, enriched)
        print(f"    Mapped {len(mapping)} figures")
        all_mappings.update(mapping)

    # Map question bank
    print("\n3. Mapping question bank figures...")
    bank_mapping = map_question_bank(enriched)
    print(f"   Mapped {len(bank_mapping)} bank figures")
    all_mappings.update(bank_mapping)

    # Write manifest
    print(f"\n4. Writing manifest...")
    manifest = {
        "total_mapped": len(all_mappings),
        "total_has_figure": len(has_figure),
        "coverage": f"{100 * len(all_mappings) // max(len(has_figure), 1)}%",
        "mappings": {str(k): v for k, v in all_mappings.items()},
    }

    with open(MANIFEST_FILE, "w") as f:
        json.dump(manifest, f, indent=2)

    # Clean up old bank-* files that aren't mapped
    mapped_files = set(all_mappings.values())

    print(f"\n{'=' * 60}")
    print(f"Mapped: {len(all_mappings)} / {len(has_figure)} has_figure questions ({manifest['coverage']})")
    print(f"Figure files: {len(os.listdir(FIGURES_DIR))}")
    print(f"{'=' * 60}")


if __name__ == "__main__":
    main()
