# Runtime-Republic Training — AI Assistant Rules

Read before any change. Full protocol: `Control/CONTROL 08 — AI Development Interaction Protocol.md`.

## Start of every task
1. Read `Control/ARCHITECTURE_STATUS.md` and the CONTROL documents the task names.
2. Only modify the files specified. Do not modify any other files.
3. Do not edit CONTROL documents unless the task says so.

## Architecture (CONTROL 10)
```
Presentation  →  Application (use cases, ports)  →  Logic  →  Domain
                      ↑ implemented by Infrastructure
```
- Logic is the ONLY place business rules and state changes live.
- Presentation (UI / API) displays and transports only.
- Every source file starts with `// Layer: <Layer>` and `// Governed by: CONTROL xx`.

## Testing (CONTROL 15)
- Every behavior change ships with tests in the same commit.
- Run the tests and report the real result; "not run" is never reported as a pass.

## Commits (CONTROL 14)
- One logical change per commit: `[Layer] - [Action] - [Object]`
  e.g. `[Logic] - Added - OrderTotalCalculator`

## CONTROL documents (CONTROL 04 §3)
- New documents start from `Control/_TEMPLATE — New CONTROL Document.md`.
- Every document is listed in CONTROL 00.
- Run `scripts/check-controls.sh` after editing any CONTROL document.
- Replace `{{FILL: …}}` markers only with facts from the Human Engineer or the codebase — never invent them.
