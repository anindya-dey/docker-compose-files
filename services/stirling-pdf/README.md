# Stirling PDF

Stirling PDF - Powerful locally hosted PDF manipulation tool.

## Quick Start

```bash
make up stirling-pdf
# or: docker compose up -d
```

## Access

- **Stirling PDF**: http://localhost:4000

## Features

- **Convert**: PDF ↔ images, Word, Excel, PowerPoint
- **Merge & Split**: Combine or split PDFs
- **Organize**: Reorder, rotate, remove pages
- **Edit**: Add images, text, annotations
- **Security**: Password protect, set permissions
- **OCR**: Extract text from images
- **Compress**: Reduce file size
- **Sign**: Digital signatures
- **Watermark**: Add watermarks
- **Forms**: Fill and flatten forms

## Common Commands

```bash
# View logs
make logs stirling-pdf

# Stop
make down stirling-pdf

# Remove volumes
make clean stirling-pdf
```

## Enable Login

Update `compose.yaml`:
```yaml
environment:
  - SECURITY_ENABLELOGIN=true
```

## Add OCR Languages

Update `compose.yaml`:
```yaml
environment:
  - LANGS=en_GB,fra,deu,spa
```

Languages: `eng` (English), `fra` (French), `deu` (German), `spa` (Spanish), `ita` (Italian), `por` (Portuguese), `rus` (Russian), `chi_sim` (Chinese), `jpn` (Japanese)

## Privacy

- All processing is local (files never leave your machine)
- No file size limits
- No tracking or analytics
