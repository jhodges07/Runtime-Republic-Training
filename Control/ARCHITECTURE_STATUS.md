# ARCHITECTURE STATUS — Runtime-Republic Training

PHASE:
Phase 0 — Foundation (started 2026-10-30)

DIRECTION:
A training repository. It develops people's understanding of the AGCL, NBBF and NBEF
frameworks, AI and GitHub, and will create software that bridges the gaps so people can
work together asynchronously online to achieve the ideals of the AGCL (Human Engineer,
2026-10-30). Lessons are essays first, then narrated word for word as podcasts. Training
material teaches the frameworks but never sets their rules; the canonical control-document
repositories do.

CURRENT PRIORITIES:
- Human Engineer reviews and approves CONTROL 01, 02, 04 and 05 (all Draft)
- Supporting images for the five Building With Claude lessons
- Human Engineer sets lesson lists for the planned courses

COMPLETED:
- Repository created from Control-Engineering-Template
- Project initialized; CLAUDE.md adapted for a training repository
- CONTROL 01, 02, 04 drafted; CONTROL 05 Lesson Standard added
- CONTROL 03, 10, 15, 16 scoped to Phase 3 (software)
- Building With Claude course: 5 lessons in Draft
- Course pages for AGCL (NBLF), NBBF, NBEF, GitHub & Asynchronous Collaboration (planned)
- scripts/check-lessons.sh with 10 tests, run in CI
- Learner README and CC BY 4.0 license notice

NEXT:
- Approve the Phase 0 CONTROL documents (exit gate, CONTROL 02 §2)
- Phase 1: image standards; first framework course lessons

DECISIONS LOG:

| Date | Decision | Recorded in |
|---|---|---|
| 2026-10-30 | Project started from Control-Engineering-Template | — |
| 2026-10-30 | Repository is for training; essays and podcasts are delivery formats | CONTROL 01 |
| 2026-10-30 | Mission: frameworks, AI, GitHub, and bridge software for asynchronous collaboration toward AGCL ideals | CONTROL 01 §2 |
| 2026-10-30 | Training material is not authority; canonical control repositories win | CONTROL 01 §6 |
| 2026-10-30 | Human Engineer is sole lesson approver (assumed; confirm) | CONTROL 05 §4 |
| 2026-10-30 | Image standards deferred to Phase 1 | CONTROL 05 §5 |
| 2026-10-30 | Software license not yet chosen; decide before Phase 3 | LICENSE.md |

VERIFICATION LOG:

| Date | Build | Check | Result |
|---|---|---|---|
| 2026-10-30 | Phase 0 PR | scripts/test-check-lessons.sh | 10 passed, 0 failed |
| 2026-10-30 | Phase 0 PR | scripts/check-lessons.sh | 5 lessons, 0 errors |
| 2026-10-30 | Phase 0 PR | scripts/check-controls.sh | 0 errors; warnings only in Phase 3 documents |
