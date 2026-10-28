#!/usr/bin/env bash
# Run ONCE in a new repository created from Control-Engineering-Template.
#
#   scripts/init-project.sh "My Project Name"
#
# Replaces {{PROJECT_NAME}} and {{DATE}} in every template file, swaps the
# template README for the project README, and prints the next steps.
# {{FILL: …}} markers are left for you (or an AI assistant) to complete.

set -euo pipefail

if [[ $# -ne 1 || -z "$1" ]]; then
  echo "Usage: scripts/init-project.sh \"Project Name\""
  exit 2
fi

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

if ! grep -rqs '{{PROJECT_NAME}}' Control CLAUDE.md scripts/README.project.md; then
  echo "Already initialized: no {{PROJECT_NAME}} markers left."
  exit 1
fi

export PROJECT_NAME="$1"
export TODAY="$(date +%Y-%m-%d)"

# perl handles any characters in the name (/, &, quotes) safely.
replace() {
  perl -pi -e 's/\{\{PROJECT_NAME\}\}/$ENV{PROJECT_NAME}/g; s/\{\{DATE\}\}/$ENV{TODAY}/g' "$1"
}

while IFS= read -r -d '' file; do
  replace "$file"
done < <(find Control CLAUDE.md .github scripts/README.project.md -type f \( -name '*.md' -o -name '*.yml' \) -print0)

mv scripts/README.project.md README.md

echo "Initialized \"$PROJECT_NAME\" ($TODAY)."
echo
echo "Next:"
echo "  1. Fill CONTROL 01 and 02 (goal, scope, phases)."
echo "  2. Fill CONTROL 03 §3–4 and CONTROL 04 §1 for your language."
echo "  3. Run scripts/check-controls.sh to see what is still unfilled."
echo "  4. Commit: [Repo] - Added - Project initialized from Control-Engineering-Template"
