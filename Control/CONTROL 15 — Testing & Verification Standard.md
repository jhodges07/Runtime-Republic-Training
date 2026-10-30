CONTROL 15 — Testing & Verification Standard

Version: 1.0
Date: 2026-10-30
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Core Principle

No behavior exists until a test proves it. Tests are the executable form of the
CONTROL documents.

---

# 2. Test Categories

| Category | What it proves | Runs |
|---|---|---|
| Domain | Model invariants | every commit |
| Logic | Business rules exactly match their CONTROL documents | every commit |
| Use case | Orchestration with fake ports, including failure paths | every commit |
| Contract | External formats (APIs, files) against recorded samples | every commit |
| Architecture guard | Layer rules (CONTROL 10), file headers (CONTROL 03 §8) | every commit |
| UI / end-to-end | Key user flows | pull requests |
| Manual checklist | What cannot be automated (§5) | each release |

---

# 3. Rules

• Every new public method in Domain, Logic or Application has tests in the same commit.
• Every bug fix starts with a failing test that reproduces it.
• Unit tests never touch real networks, databases or third-party services — use fakes.
• Every edge case listed in a CONTROL document has a named test.
• Arrange / Act / Assert; one behavior per test.
• Flaky tests are fixed or deleted the same day, never skipped indefinitely.
• A test run that did not happen is reported as "not run", never as a pass.

---

# 4. Targets

{{FILL: adjust to the project's size}}

| Milestone | Test count | Coverage (Logic / Application / Infrastructure) |
|---|---|---|
| Phase 0 | 30+ | 100% / 90% / 80% |
| First release | 80–120 | 100% / 90% / 80% |
| Production | 150–300+ | 100% / 90% / 85% |

---

# 5. Manual Release Checklist

{{FILL: steps a person runs before each release, results recorded in ARCHITECTURE_STATUS.md}}

---

# 6. Definition of Done

Tests green in CI · build succeeds · CONTROL documents still accurate ·
`ARCHITECTURE_STATUS.md` updated when a phase item completes.

---

END OF DOCUMENT
