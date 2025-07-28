# 📄 PDF Heading Extractor

This project extracts **headings** and **document titles** from PDF files and generates structured **JSON output**.

It is designed to work in a **Dockerized** environment and handles edge cases such as:

- Forms with label-like fields
- Non-standard headings (like uppercase or title-case lines)
- Special cases like “STEM Pathways” or “Hope to See You There”

---

## 📁 Project Structure

├── Dockerfile
├── requirements.txt
└── app/
    ├── main.py # Main processing script
    ├── input/ # Input PDFs (mount or place here)
    └── output/ # Output JSON files (auto-generated)
 
---

## 🚀 Features

- Detects document titles using font size and position
- Filters out false headings using font size, casing, and length
- Supports special document types like forms and flyers
- Clean, customizable, and easy to extend

---

## 🔧 Installation & Usage

### ✅ 1. Build Docker Image

```bash
docker build -t pdf-heading-extractor .
