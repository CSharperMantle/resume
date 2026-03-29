#!/bin/sh

set -eu

PLACEHOLDER='<!-- @PDF_ENTRIES@ -->'

entries=""
for f in $(find . -maxdepth 1 -name '*.pdf' -type f | sort); do
        name="$(basename "$f")"
        entry="$(printf '<li><a href="%s" type="application/pdf">%s</a></li>\r\n' "$name" "$name")"
        entries="$entries$entry"
done

sed "s|$PLACEHOLDER|$entries|g" "$1" > "$2"
