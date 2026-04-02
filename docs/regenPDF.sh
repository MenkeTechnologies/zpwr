#!/usr/bin/env zsh
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: regenerate zpwr encyclopedia PDF from wizard pages
##### Notes: requires xelatex, python3
#}}}***********************************************************

set -e

DOCS_DIR="${ZPWR:-$HOME/.zpwr}/docs"
TEX_FILE="$DOCS_DIR/zpwr-encyclopedia.tex"
PDF_FILE="$DOCS_DIR/zpwr-encyclopedia.pdf"
PAGE_DIR="${ZPWR:-$HOME/.zpwr}/docs/wizard_pages"

if [[ ! -d "$PAGE_DIR" ]]; then
    echo "Error: wizard pages not found at $PAGE_DIR" >&2
    exit 1
fi

echo "Generating LaTeX from $(ls "$PAGE_DIR"/page_*.zsh | wc -l | tr -d ' ') pages..."

python3 "$DOCS_DIR/genEncyclopediaTex.py" "$PAGE_DIR" "$TEX_FILE"

echo "Compiling PDF (pass 1)..."
xelatex -interaction=nonstopmode -output-directory="$DOCS_DIR" "$TEX_FILE" >/dev/null 2>&1

echo "Compiling PDF (pass 2 for TOC)..."
xelatex -interaction=nonstopmode -output-directory="$DOCS_DIR" "$TEX_FILE" >/dev/null 2>&1

# Cleanup
command rm -f "$DOCS_DIR/zpwr-encyclopedia."{aux,log,out,toc} 2>/dev/null

echo "Done: $PDF_FILE ($(du -h "$PDF_FILE" | cut -f1))"
