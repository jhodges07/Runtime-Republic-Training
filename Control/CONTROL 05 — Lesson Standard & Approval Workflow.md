CONTROL 05 — Lesson Standard & Approval Workflow

Version: 1.1
Date: 2026-10-30
Status: Draft — pending Human Engineer approval
Change: 1.1 shows the supporting image at the top of the lesson page (§3, §5, §7), at the Human Engineer's request.
Project: Runtime-Republic Training

---

# 1. Purpose

Defines what a lesson is, the header every lesson carries, and the steps a lesson
passes through from first draft to published podcast.

---

# 2. Core Principle

A lesson is written once and delivered many ways. The approved essay is the single
source: the podcast reads it exactly, word for word. Lessons teach the frameworks;
they never set framework rules (CONTROL 01 §6).

---

# 3. Lesson Header

Every `lesson.md` starts with this block, before the essay text:

```
# <Lesson title>

![<Lesson title>](<image file>)      ← only once the image exists

Course: <course name>
Lesson: <NN> of <total>
Status: Draft | Review | Approved | Narrated | Published
Runtime: about <N> minutes
Image: Pending | <file name in the lesson folder>
Podcast: Not recorded | Recorded <YYYY-MM-DD>
Sources: None | <links to the canonical control documents the lesson teaches>
Approved by: — | <name>, <YYYY-MM-DD>
License: CC BY 4.0

---
```

The essay text follows the `---` line. The image line sits in the header, above the `---`,
so the lesson page shows the picture with the essay while narration, which reads only the
text after `---`, is unchanged.

---

# 4. Status Workflow

```
Draft  →  Review  →  Approved  →  Narrated  →  Published
```

| Status | Meaning | Who may set it | Must be true |
|---|---|---|---|
| Draft | Being written | Anyone, including AI | Header complete |
| Review | Ready for the Human Engineer to read | Anyone, including AI | Header complete |
| Approved | Text is final | Human Engineer only | Image present; `Approved by` filled |
| Narrated | Podcast recorded from the approved text | Human Engineer only | Everything above; `Podcast: Recorded <date>` |
| Published | Released on RuntimeRepublic.com and BlueprintLiberty.com | Human Engineer only | Everything above |

Changing the text of an Approved lesson sends it back to Review, and any recording
made from the old text is withdrawn.

Approval authority: the Human Engineer is the sole approver until this document
names others.

---

# 5. Supporting Image

• Every lesson needs a supporting image before it can be Approved.
• The image lives in the lesson's own folder and is named in the `Image:` line.
• Once the image exists, the header also shows it with `![<Lesson title>](<image file>)`
  under the title, so one link shows the picture and the essay together.
• BlueprintLiberty.com appears at the bottom center of the image, with
  RuntimeRepublic.com on the line directly below it.
• Full image standards (size, style, format) are deferred by the Human Engineer to
  Phase 1 (CONTROL 02).

---

# 6. Writing for the Ear

Lessons become podcasts, so they are written to be heard:

• Short sentences; plain words.
• No tables, footnotes or "see above" references inside the essay text.
• Each lesson ends with a short recap, so a listener can join at any lesson.
• About 850–1,000 words for 5–7 minutes at roughly 150 words a minute.

---

# 7. Edge Cases (must be checked)

| Case | Handling |
|---|---|
| Header line missing | `check-lessons.sh` fails |
| Status not one of the five values | `check-lessons.sh` fails |
| Approved or later with `Image: Pending` | `check-lessons.sh` fails |
| `Image:` names a file that is not in the lesson folder | `check-lessons.sh` fails |
| `Image:` names a file but the header does not show it | `check-lessons.sh` fails |
| Approved or later with `Approved by: —` | `check-lessons.sh` fails |
| Narrated or later with `Podcast: Not recorded` | `check-lessons.sh` fails |
| Lesson folder not named `NN-lowercase-title` | `check-lessons.sh` fails |

---

# 8. Enforcement

`scripts/check-lessons.sh` checks every `Courses/*/*/lesson.md` against §3, §4, §5
and the naming rules in CONTROL 04 §3. `scripts/test-check-lessons.sh` proves the
check catches each edge case in §7. Both run in CI on every push and pull request.

Who set a status is checked by review, not by script: the pull request that moves a
lesson to Approved or later must be merged by the Human Engineer.

---

# 9. Relationship to Other Controls

• CONTROL 01 — Project Goal & Scope (authority of training material)
• CONTROL 02 — Development Phase Plan (image standards, podcasts)
• CONTROL 04 — Repository Structure (where lessons live, naming)
• CONTROL 08 — AI Development Interaction Protocol

---

# 10. Revision Policy

Changes require Human Engineer approval and a version bump with a one-line
`Change:` note under the header.

---

END OF DOCUMENT
