#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
HTML="$DIR/cv_export.html"
PDF="$DIR/cv.pdf"

google-chrome \
  --headless=new \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$PDF" \
  "file://$HTML"

echo "Wrote $PDF"
