# ARCHITECTURE STATUS — Runtime-Republic Training

PHASE:
Phase 0 — Foundation (started 2026-10-28). Phase 1 essays saved as Draft.

DIRECTION:
A public repository of read-aloud training essays that teach the ideas behind
the Runtime Republic (NBLF, NBBF, NBEF) and the tools used to build them in the
open. Documents only for now; software may be added in a later phase, so the
software sections of CONTROL 03, 04, 10 and 15 are reserved rather than removed.

CURRENT PRIORITIES:
- Merge the setup pull request once CI is green (Phase 0 exit gate)
- Human Engineer review of the seven GitHub for Everyone essays (CONTROL 15 §5)

COMPLETED:
- Repository created from Control-Engineering-Template and initialized
- CONTROL 01–04, 08, 10, 11, 14–16 and 00 adapted for an essay repository
- `scripts/check-essays.sh` added; CI runs it and `check-controls.sh --strict`
- README, LICENSE (CC BY 4.0), SOURCES.md, essay folders
- GitHub for Everyone Parts 1–5 and Bonus Essays One and Two saved as Draft

NEXT:
- Create a supporting image for each essay (required before Approved)
- Replace the Part 1 image: it shows BlueprintLiberty.com but not RuntimeRepublic.com below it
- Human Engineer to define image standards in a later CONTROL 03 version
- Approve each essay in its own commit after the CONTROL 15 §5 checklist
- Define the Phase 2 exit gate before the first NBLF, NBBF or NBEF essay

DECISIONS LOG:

| Date | Decision | Recorded in |
|---|---|---|
| 2026-10-28 | Project started from Control-Engineering-Template | — |
| 2026-10-28 | Essay topics grouped as NBLF (Node-Based Liberty Framework, control documents in AGCL-Control-Documents), NBBF and NBEF | CONTROL 01 §6, CONTROL 04 §1 |
| 2026-10-28 | Documents only for now; software may come later, so software sections are reserved | CONTROL 01 §5, CONTROL 02 §5 |
| 2026-10-28 | License: CC BY 4.0 | LICENSE |
| 2026-10-28 | Essays saved as Draft; only the Human Engineer sets Approved or Posted | CONTROL 03 §7 |
| 2026-10-28 | Bonus Essay Two also copied to District-Alerts-iOS `essays/` as Draft; cleared for this public repository | CONTROL 16 §2 |
| 2026-10-28 | Changes arrive by pull request | CONTROL 14 §4 |
| 2026-10-28 | Every essay needs a supporting image before Approved; image standards to be set later | CONTROL 03 §7.1, CONTROL 15 §2 and §5 |
| 2026-10-28 | Every essay image shows BlueprintLiberty.com at the bottom center, with RuntimeRepublic.com on the line directly below it | CONTROL 03 §7.1, CONTROL 15 §2 and §5 |

VERIFICATION LOG:

| Date | Build | Check | Result |
|---|---|---|---|
| 2026-10-28 | docs/setup-essays | `scripts/check-controls.sh --strict` | Pass: 11 documents, 0 errors, 0 warnings |
| 2026-10-28 | docs/setup-essays | `scripts/check-essays.sh` | Pass: 7 essays, 0 errors |
| 2026-10-28 | docs/setup-essays | `scripts/check-essays.sh` image rule against 6 sample essays | Pass: the 2 invalid samples failed, the 4 valid samples passed |
| 2026-10-28 | docs/setup-essays | Fact check, read-aloud pass, image check | Not run; due before each essay is Approved |
