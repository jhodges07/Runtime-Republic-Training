CONTROL 03 — Writing Standards

Version: 1.0
Date: 2026-10-28
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Purpose

Defines how essays are written so they are clear when heard, accurate, and
safe for AI-assisted drafting and review. Software standards are reserved in §9.

---

# 2. Core Principle

An essay is written for the ear. If a listener cannot follow it without seeing
the page, it is not finished.

An essay must NOT invent authority, claim results or features that do not
exist, or present a contested position as settled fact.

---

# 3. Read-Aloud Rules

• Plain language. Define every term the first time it appears.
• Short sentences. One idea per sentence where possible.
• No tables, code blocks, bullet lists or citation markers in the essay text.
• Spell out what a listener needs to hear: say "State House District 57",
  not "ks-house-057".
• Each essay opens by linking to the previous one and closes with a short
  review and one thinking question.
• A series may start at a beginner level and rise in difficulty, part by part.

---

# 4. File Format

• One essay per Markdown file.
• File name: `NN-short-title.md` inside a series folder; bonus essays use
  `bonus-NN-short-title.md`.
• Header, then a rule (`---`), then the essay text exactly as it will be read:

```
# <Title>

- **Series:** <series name>, <part>
- **Date:** YYYY-MM-DD
- **Audience:** <who it is written for>
- **Format:** Read aloud
- **Status:** Draft | Approved | Posted
- **Audio:** <link, once recorded>          (optional)
- **Governing sources:** <control documents> (topic essays only)

---
```

---

# 5. Accuracy Rules

• Every dated or numeric fact appears in `SOURCES.md` with a link.
• Facts that change over time (counts, office holders, prices) state the date
  they were true.
• Planned features are described as planned, never as existing.
• Topic essays name the control documents they explain (CONTROL 10).

---

# 6. Fairness Rules

• When a topic is politically contested, the essay says so and states the
  main concerns of people who disagree.
• Essays explain how tools and frameworks work; they do not tell the listener
  how to vote.

---

# 7. Status Values

| Status | Meaning |
|---|---|
| Draft | Written; not yet approved by the Human Engineer |
| Approved | The Human Engineer approved the text |
| Posted | Published; the link is added to the header |

Only the Human Engineer changes a status to `Approved` or `Posted`.

---

# 8. Prohibited Content

• personal data, addresses or private information
• copied text from other works beyond a short attributed quote
• claims of users, results or features that do not exist
• content from private repositories that the Human Engineer has not cleared
  for public release

---

# 9. Software Standards (reserved)

This repository holds documents only. If software is added in a later phase,
language, naming, class design and error-handling rules will be added here by
Human Engineer decision before any code is committed (CONTROL 02 §5).

---

# 10. Enforcement

• `scripts/check-essays.sh` checks headers, status values and citation
  markers (CONTROL 15).
• Human Engineer review before any status change.

---

END OF DOCUMENT
