#!/usr/bin/env bash
# Checks every essay under essays/ (CONTROL 03 §4, CONTROL 10 §4, CONTROL 15 §2).
#
# Errors (always fail):
#   - first line is not a "# " title
#   - missing header line: Series, Date, Audience, Format, Status
#   - Status is not Draft, Approved or Posted
#   - Date is not YYYY-MM-DD
#   - citation markers left in the text (<cite ...>, [1], index="...")
#   - topic essay (nblf/, nbbf/, nbef/) without a "Governing sources" line
#   - essay not listed in its folder README.md
#
# Usage: scripts/check-essays.sh [essays-dir]

set -uo pipefail

dir="${1:-essays}"

if [[ ! -d "$dir" ]]; then
  echo "ERROR: folder not found: $dir"
  exit 2
fi

errors=0
count=0

while IFS= read -r -d '' f; do
  name="$(basename "$f")"
  [[ "$name" == "README.md" ]] && continue
  count=$((count + 1))
  folder="$(dirname "$f")"
  rel="${f#./}"

  first_line="$(head -n 1 "$f" | tr -d '\r')"
  if [[ "$first_line" != "# "* ]]; then
    echo "ERROR: $rel — first line must be a '# ' title"
    errors=$((errors + 1))
  fi

  for field in Series Date Audience Format Status; do
    if ! grep -q "^- \*\*$field:\*\* " "$f"; then
      echo "ERROR: $rel — missing '- **$field:**' header line"
      errors=$((errors + 1))
    fi
  done

  status="$(grep -m 1 '^- \*\*Status:\*\* ' "$f" | sed 's/^- \*\*Status:\*\* //' | tr -d '\r' || true)"
  if [[ -n "$status" && "$status" != "Draft" && "$status" != "Approved" && "$status" != "Posted" ]]; then
    echo "ERROR: $rel — Status must be Draft, Approved or Posted (found: '$status')"
    errors=$((errors + 1))
  fi

  date_value="$(grep -m 1 '^- \*\*Date:\*\* ' "$f" | sed 's/^- \*\*Date:\*\* //' | tr -d '\r' || true)"
  if [[ -n "$date_value" && ! "$date_value" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
    echo "ERROR: $rel — Date must be YYYY-MM-DD (found: '$date_value')"
    errors=$((errors + 1))
  fi

  if grep -qE '<cite|</cite>|index="[0-9]|\[[0-9]+\]' "$f"; then
    echo "ERROR: $rel — citation markers found; essays are read aloud (CONTROL 03 §3)"
    errors=$((errors + 1))
  fi

  case "$folder" in
    */nblf|*/nbbf|*/nbef)
      if ! grep -q '^- \*\*Governing sources:\*\* ' "$f"; then
        echo "ERROR: $rel — topic essay must name its control documents (CONTROL 10 §3)"
        errors=$((errors + 1))
      fi
      ;;
  esac

  if [[ ! -f "$folder/README.md" ]] || ! grep -qF "($name)" "$folder/README.md"; then
    echo "ERROR: $rel — not listed in $folder/README.md"
    errors=$((errors + 1))
  fi
done < <(find "$dir" -type f -name '*.md' -print0 | sort -z)

echo "Checked $count essay(s): $errors error(s)."

if [[ $errors -gt 0 ]]; then
  exit 1
fi
exit 0
