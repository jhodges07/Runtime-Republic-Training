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
#   - Approved or Posted essay with no Image line, or an image path that does not exist
#   - Image line without an Image header line, or an Image header that is not
#     '<short title> | <series name> • Part N|Bonus N|Essay N', has a short title
#     over four words, or names a series that differs from the Series line
#     (CONTROL 03 §7.2)
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

  has_image="$(grep -c '^- \*\*Image:\*\* ' "$f" || true)"
  image_header="$(grep -m 1 '^- \*\*Image header:\*\* ' "$f" | sed 's/^- \*\*Image header:\*\* //' | tr -d '\r' || true)"
  if [[ "$has_image" -gt 0 && -z "$image_header" ]]; then
    echo "ERROR: $rel — Image line without an '- **Image header:**' line (CONTROL 03 §7.2)"
    errors=$((errors + 1))
  elif [[ -n "$image_header" ]]; then
    if [[ "$image_header" != *" | "* || "${image_header#* | }" == *" | "* ]]; then
      echo "ERROR: $rel — Image header must be '<short title> | <series line>' (CONTROL 03 §7.2)"
      errors=$((errors + 1))
    else
      short_title="${image_header%% | *}"
      series_line="${image_header#* | }"
      words="$(printf '%s' "$short_title" | wc -w | tr -d ' ')"
      if [[ "$words" -lt 1 || "$words" -gt 4 ]]; then
        echo "ERROR: $rel — Image header short title must be 1 to 4 words (found $words) (CONTROL 03 §7.2)"
        errors=$((errors + 1))
      fi
      series_value="$(grep -m 1 '^- \*\*Series:\*\* ' "$f" | sed 's/^- \*\*Series:\*\* //' | tr -d '\r' || true)"
      series_name="${series_value%%,*}"
      expected_prefix="$series_name • "
      place="${series_line#"$expected_prefix"}"
      if [[ "$series_line" != "$expected_prefix"* ]]; then
        echo "ERROR: $rel — Image header series line must start with '$expected_prefix' (CONTROL 03 §7.2)"
        errors=$((errors + 1))
      elif [[ ! "$place" =~ ^(Part|Bonus|Essay)\ [0-9]+$ ]]; then
        echo "ERROR: $rel — Image header place must be 'Part N', 'Bonus N' or 'Essay N' (found: '$place') (CONTROL 03 §7.2)"
        errors=$((errors + 1))
      fi
    fi
  fi

  if [[ "$status" == "Approved" || "$status" == "Posted" ]]; then
    image="$(grep -m 1 '^- \*\*Image:\*\* ' "$f" | sed 's/^- \*\*Image:\*\* //' | tr -d '\r' || true)"
    image_target="$(printf '%s' "$image" | sed -E 's/^.*\]\(([^)]*)\).*$/\1/')"
    if [[ -z "$image" ]]; then
      echo "ERROR: $rel — $status essay has no '- **Image:**' line (CONTROL 03 §7.1)"
      errors=$((errors + 1))
    elif [[ "$image_target" != http://* && "$image_target" != https://* && ! -f "$folder/$image_target" ]]; then
      echo "ERROR: $rel — image not found: $image_target (CONTROL 03 §7.1)"
      errors=$((errors + 1))
    fi
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
