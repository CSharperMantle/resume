#!/bin/sh

set -eu

PDF_ENTRIES_PLACEHOLDER='@@PDF_ENTRIES@@'
DATE_PLACEHOLDER='@@DATE@@'

entries=""
for f in $(find . -maxdepth 1 -name '*.pdf' -type f | sort); do
        name="$(basename "$f")"
        entry="$(printf '<li><a href="%s" type="application/pdf">%s</a></li>' "$name" "$name")"
        entries="$entries$entry"
done

date="$(date --iso-8601 seconds --universal)"
sed \
        -e "s|$PDF_ENTRIES_PLACEHOLDER|$entries|g" \
        -e "s|$DATE_PLACEHOLDER|$date|g" \
        "$1" >"$2"
