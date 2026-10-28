CONTROL 16 — Release, Security & Readiness

Version: 1.0
Date: 2026-10-28
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

# 1. Purpose

Defines what must be true before any essay is published outside this repository.

---

# 2. Security

• Secrets live in a secret store or CI secrets, never in the repository.
• Accounts with admin rights use two-factor authentication.
• `main` is protected: changes arrive by pull request with passing CI.
• Personal data: none is stored. Essays contain no names of private
  individuals, addresses or contact details (CONTROL 03 §8).
• Content from private repositories is published only when the Human Engineer
  has cleared it for public release.

---

# 3. Release Checklist

Before an essay is marked `Posted`:

- [ ] Status is `Approved` and the approval checklist (CONTROL 15 §5) is recorded
- [ ] CI green on the commit being published
- [ ] Links checked (CONTROL 15 §2)
- [ ] The post or audio link is added to the essay header in its own commit
- [ ] LICENSE credit (CC BY 4.0) shown where the essay is published

---

END OF DOCUMENT
