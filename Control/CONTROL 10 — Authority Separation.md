CONTROL 10 — Authority Separation

Version: 1.0
Date: 2026-10-28
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Authority Flow

```
Control repositories (NBLF, NBBF, NBEF, Constitutional Engineering)
   ↓ explained by
Training essays (this repository)
   ↓ published to
Listeners, readers, websites
```

Authority flows down only. Nothing in this repository flows back up as authority.

---

# 2. Responsibilities

| Layer | Responsibility | May depend on |
|---|---|---|
| Control repositories | Define frameworks, rules and terms. The source of truth | Their own governance |
| Training essays | Explain control documents in plain language | Control repositories, `SOURCES.md` |
| Publication | Present approved essays (websites, audio, posts) | Essays with status `Approved` |

---

# 3. System Rules

• Essays explain; control documents govern. If an essay and a control document
  disagree, the control document wins and the essay is corrected.
• An essay never creates, amends or interprets control authority beyond what
  the control document states.
• A topic essay names the control documents it explains in its header.
• A gap in a control document is reported as a gap, never filled by an essay.
• Publication does not equal approval of a framework, and approval of an essay
  does not change any control document.
• Single source of truth: definitions are quoted or linked from the control
  repository, not restated differently here.

---

# 4. Enforcement

1. **Review:** the Human Engineer checks every topic essay against its named
   control documents before approval (CONTROL 15).
2. **Check:** `scripts/check-essays.sh` fails a topic essay with no
   `Governing sources` line.

---

# 5. Reserved for Software

If software is added (CONTROL 02 §5), its layer model is defined here by Human
Engineer decision before any code is committed.

---

END OF DOCUMENT
