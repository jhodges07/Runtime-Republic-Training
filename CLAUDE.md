# Runtime-Republic Training — AI Assistant Rules

Read before any change. Full protocol: `Control/CONTROL 08 — AI Development Interaction Protocol.md`.

## Start of every task
1. Read `Control/ARCHITECTURE_STATUS.md` and the CONTROL documents the task names.
2. Only modify the files specified. Do not modify any other files.
3. Do not edit CONTROL documents unless the task says so.

## Authority (CONTROL 10)
```
Control repositories (NBLF, NBBF, NBEF)  →  Training essays  →  Publication
```
- Essays explain; control documents govern. If they disagree, fix the essay.
- Never fill a gap in a control document with invented content.
- Topic essays name their control documents in a `Governing sources` header line.

## Writing (CONTROL 03)
- Written to be read aloud: plain language, no tables, code or citation markers in essay text.
- Use the header format in CONTROL 03 §4.
- AI sets status `Draft` only. Only the Human Engineer sets `Approved` or `Posted`.
- An essay needs a supporting image (`Image` header line) before it can be `Approved`.
- Every image follows the header and footer standard in CONTROL 03 §7.2:
  - Header, top center: short title (four words or fewer), then the series line,
    for example `GitHub for Everyone • Part 2`.
  - Footer, bottom center: BlueprintLiberty.com, with RuntimeRepublic.com on the line
    directly below it.
  - The essay's `Image header` line records the header as `<short title> | <series line>`.
  Other image standards are not defined yet; do not invent them (CONTROL 03 §7.1).
- Planned features are described as planned. Never claim users or results that do not exist.

## Verification (CONTROL 15)
- Every dated or numeric fact has an entry in `SOURCES.md`.
- Run `scripts/check-essays.sh` and `scripts/check-controls.sh --strict`; report the real result.

## Commits (CONTROL 14)
- One logical change per commit: `[Layer] - [Action] - [Object]`
  e.g. `[Essays] - Added - GitHub for Everyone Part 1`
- Layers: `Essays`, `Docs`, `Control`, `Scripts`, `CI`, `Repo`.

## CONTROL documents (CONTROL 04 §3)
- New documents start from `Control/_TEMPLATE — New CONTROL Document.md`.
- Every document is listed in CONTROL 00.
- Run `scripts/check-controls.sh` after editing any CONTROL document.
- Replace `{{FILL: …}}` markers only with facts from the Human Engineer — never invent them.
