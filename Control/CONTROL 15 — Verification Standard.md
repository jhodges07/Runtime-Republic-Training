CONTROL 15 — Verification Standard

Version: 1.4
Date: 2026-10-29
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Core Principle

No essay is approved until its facts are checked. Checks are the working form
of the CONTROL documents.

---

# 2. Check Categories

| Category | What it proves | Runs |
|---|---|---|
| Control documents | Headers, index and markers (`scripts/check-controls.sh --strict`) | every push |
| Essay format | Header fields, status values, no citation markers, topic essays name their sources, every essay listed in its folder README, `Image header` line present and matching the `Series` line (`scripts/check-essays.sh`) | every push |
| Fact check | Every dated or numeric fact matches an entry in `SOURCES.md` | before `Approved` |
| Authority check | Topic essays match the control documents they name (CONTROL 10) | before `Approved` |
| Read-aloud pass | The essay is listened to start to finish and reads cleanly (CONTROL 03 §3) | before `Approved` |
| Image check | The essay has a supporting image that the Human Engineer accepts, with the header and footer in CONTROL 03 §7.2: the short title and series line at top center, matching the essay's `Image header` line, and BlueprintLiberty.com at the bottom center with RuntimeRepublic.com on the line directly below it. The image text is checked by eye. `scripts/check-essays.sh` fails an `Approved` or `Posted` essay with no `Image` line, or whose image path does not exist | before `Approved` |
| Link check | Links in the README, `SOURCES.md` and essay headers resolve | before `Posted` |

---

# 3. Rules

• Every new essay passes `scripts/check-essays.sh` in the same commit.
• A factual error found after approval returns the essay to `Draft` until fixed.
• A check that did not happen is reported as "not run", never as a pass.
• Manual check results are recorded in `Control/ARCHITECTURE_STATUS.md`.

---

# 4. Targets

| Milestone | Target |
|---|---|
| Phase 0 | Both scripts pass in CI |
| Phase 1 | All seven essays pass every check in §2 |

---

# 5. Manual Approval Checklist

Before the Human Engineer marks an essay `Approved`:

- [ ] Fact check against `SOURCES.md` done
- [ ] Authority check done (topic essays only)
- [ ] Read-aloud pass done
- [ ] Supporting image present and accepted (CONTROL 03 §7.1)
- [ ] Image header shows the short title and series line at top center, matching the `Image header` line (CONTROL 03 §7.2)
- [ ] Image footer shows BlueprintLiberty.com at the bottom center, with RuntimeRepublic.com on the line directly below it (CONTROL 03 §7.2)
- [ ] Result recorded in the verification log

---

# 6. Definition of Done

Scripts green in CI · essay listed in its folder README · CONTROL documents
still accurate · `ARCHITECTURE_STATUS.md` updated when a phase item completes.

---

# 7. Reserved for Software

If software is added (CONTROL 02 §5), unit, contract and architecture tests are
defined here by Human Engineer decision before any code is committed.

---

END OF DOCUMENT
