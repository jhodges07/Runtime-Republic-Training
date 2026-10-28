#!/usr/bin/env bash
# Checks the CONTROL documents in Control/ (CONTROL 04 §3).
#
# Errors (always fail):
#   - header first line does not match the file's CONTROL number
#   - missing Version:, Date: or Status: line
#   - last non-blank line is not "END OF DOCUMENT"
#   - two files share a CONTROL number
#   - a document is not listed in CONTROL 00
# Warnings (fail only with --strict):
#   - unfilled {{FILL...}}, {{PROJECT_NAME}} or {{DATE}} markers
#
# Usage: scripts/check-controls.sh [--strict] [control-dir]

set -uo pipefail

strict=0
if [[ "${1:-}" == "--strict" ]]; then
  strict=1
  shift
fi
dir="${1:-Control}"

if [[ ! -d "$dir" ]]; then
  echo "ERROR: folder not found: $dir"
  exit 2
fi

errors=0
warnings=0
index_file=""
# "NN|file name" per line; plain string so this runs on macOS bash 3.2.
seen=""

shopt -s nullglob
files=("$dir"/CONTROL\ [0-9][0-9]\ —\ *.md)
shopt -u nullglob

if [[ ${#files[@]} -eq 0 ]]; then
  echo "ERROR: no CONTROL documents found in $dir"
  exit 1
fi

for f in "${files[@]}"; do
  name="$(basename "$f")"
  num="${name:8:2}"
  [[ "$num" == "00" ]] && index_file="$f"

  previous="$(printf '%s\n' "$seen" | grep "^$num|" | head -n 1 | cut -d'|' -f2- || true)"
  if [[ -n "$previous" ]]; then
    echo "ERROR: $name — CONTROL $num also used by $previous"
    errors=$((errors + 1))
  fi
  seen="$seen$num|$name"$'\n'

  first_line="$(head -n 1 "$f" | tr -d '\r')"
  if [[ "$first_line" != "CONTROL $num"* ]]; then
    echo "ERROR: $name — first line must start with 'CONTROL $num' (found: '$first_line')"
    errors=$((errors + 1))
  fi

  for field in Version Date Status; do
    if ! grep -q "^$field: " "$f"; then
      echo "ERROR: $name — missing '$field:' header line"
      errors=$((errors + 1))
    fi
  done

  last_line="$(grep -v '^[[:space:]]*$' "$f" | tail -n 1 | tr -d '\r')"
  if [[ "$last_line" != "END OF DOCUMENT" ]]; then
    echo "ERROR: $name — last line must be 'END OF DOCUMENT'"
    errors=$((errors + 1))
  fi

  markers="$(grep -c '{{[A-Z_]*' "$f" || true)"
  if [[ "$markers" -gt 0 ]]; then
    echo "WARN:  $name — $markers line(s) with unfilled {{…}} markers"
    warnings=$((warnings + 1))
  fi
done

if [[ -z "$index_file" ]]; then
  echo "ERROR: CONTROL 00 — Document Index is missing"
  errors=$((errors + 1))
else
  while IFS='|' read -r num name; do
    [[ -z "$num" || "$num" == "00" ]] && continue
    if ! grep -q "CONTROL $num" "$index_file"; then
      echo "ERROR: $name — not listed in CONTROL 00"
      errors=$((errors + 1))
    fi
  done <<< "$seen"
fi

echo "Checked ${#files[@]} CONTROL documents: $errors error(s), $warnings warning(s)."

if [[ $errors -gt 0 ]]; then
  exit 1
fi
if [[ $strict -eq 1 && $warnings -gt 0 ]]; then
  echo "Strict mode: warnings count as failures."
  exit 1
fi
exit 0
