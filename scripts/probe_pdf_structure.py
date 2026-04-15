#!/usr/bin/env python3
"""
Probe SAT Question Bank PDFs to determine extraction method.
Checks if PDFs have text layers (use PyMuPDF text extraction) or are image-only (need OCR).
"""

import os
import fitz  # PyMuPDF

SAT_DIR = "../TutorZero/SAT Questions"


def probe_pdf(path: str) -> dict:
    """Check a PDF for text layer vs image-only content."""
    doc = fitz.open(path)
    result = {
        "path": path,
        "pages": len(doc),
        "has_text_layer": False,
        "has_images": False,
        "text_chars": 0,
        "image_count": 0,
        "sample_text": "",
    }

    for page in doc:
        text = page.get_text().strip()
        images = page.get_images()

        if len(text) > 50:
            result["has_text_layer"] = True
            result["text_chars"] += len(text)
            if not result["sample_text"]:
                result["sample_text"] = text[:200]

        if images:
            result["has_images"] = True
            result["image_count"] += len(images)

    doc.close()
    return result


def main():
    print("=" * 70)
    print("PDF Structure Probe — SAT Question Bank")
    print("=" * 70)

    # Find all PDFs
    pdf_files = []
    for root, dirs, files in os.walk(SAT_DIR):
        for f in files:
            if f.endswith(".pdf"):
                pdf_files.append(os.path.join(root, f))

    pdf_files.sort()
    print(f"\nFound {len(pdf_files)} PDFs\n")

    text_layer_pdfs = []
    image_only_pdfs = []

    for pdf_path in pdf_files:
        result = probe_pdf(pdf_path)
        short_path = pdf_path.replace(SAT_DIR + "/", "")

        if result["has_text_layer"]:
            text_layer_pdfs.append(result)
            status = "TEXT"
        else:
            image_only_pdfs.append(result)
            status = "IMAGE-ONLY"

        print(f"  [{status:10s}] {short_path}")
        if result["has_text_layer"]:
            print(f"             chars={result['text_chars']:,}  images={result['image_count']}")

    print(f"\n{'='*70}")
    print(f"SUMMARY")
    print(f"{'='*70}")
    print(f"  Text layer PDFs:  {len(text_layer_pdfs)} (can use PyMuPDF text extraction)")
    print(f"  Image-only PDFs:  {len(image_only_pdfs)} (require OCR)")
    print(f"  Total PDFs:       {len(pdf_files)}")

    if text_layer_pdfs:
        print(f"\n  Sample text from first text-layer PDF:")
        print(f"  {text_layer_pdfs[0]['sample_text'][:150]}")


if __name__ == "__main__":
    main()
