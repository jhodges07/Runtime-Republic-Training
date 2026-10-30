# Runtime-Republic Training

Training that helps people understand the AGCL, NBBF and NBEF frameworks, AI and GitHub,
and builds the software that lets people work together asynchronously online to achieve
the ideals of the AGCL.

Lessons are written as essays, then narrated word for word as podcast episodes.

**BlueprintLiberty.com · RuntimeRepublic.com**

---

## Start here

New to all of this? Take the courses in this order:

1. [GitHub for Everyone](Courses/github-for-everyone/README.md): what GitHub is and how people build things together on it, from a beginner level up
2. [Building With Claude](Courses/building-with-claude/README.md): using AI under human control to build real things, alone or as a group
3. [AGCL — Node-Based Liberty Framework](Courses/agcl-nblf/README.md)
4. [NBBF — Node-Based Budget Framework](Courses/nbbf/README.md)
5. [NBEF — Node-Based Education Framework](Courses/nbef/README.md)

Full catalog with status: [Courses](Courses/README.md).

---

## Training teaches; control documents rule

These lessons explain the frameworks. They do not define them. The rules live in each
framework's own control documents, and where a lesson disagrees, the control document wins.

| Framework | Canonical source |
|---|---|
| AGCL — American Gold Contract for Liberty | [AGCL-Control-Documents](https://github.com/jhodges07/AGCL-Control-Documents) |
| NBBF — Node-Based Budget Framework | [NBBF-Control-Documents](https://github.com/jhodges07/NBBF-Control-Documents) |
| NBEF — Node-Based Education Framework | [NBEF-Control-Documents](https://github.com/jhodges07/NBEF-Control-Documents) |

Related: [Constitutional-Engineering](https://github.com/jhodges07/Constitutional-Engineering) ·
[Legislative-Manager](https://github.com/jhodges07/Legislative-Manager)

---

## How a lesson is made

```
Draft  →  Review  →  Approved  →  Narrated  →  Published
```

Every lesson carries a short header (course, status, image, podcast, approval) and needs
a supporting image before it can be approved. Only the Human Engineer approves.
Full rules: [CONTROL 05](Control/CONTROL%2005%20—%20Lesson%20Standard%20&%20Approval%20Workflow.md).

---

## Contributing

Anyone can propose a lesson or a fix, with or without an AI assistant:

1. Open an issue describing the lesson or change.
2. Work on a branch and open a pull request. One logical change per commit:
   `[Lesson] - Added - <course> <NN> <title>` (CONTROL 14).
3. Run the checks:
   ```bash
   scripts/check-lessons.sh       # every lesson against CONTROL 05
   scripts/check-controls.sh      # CONTROL documents
   ```
4. AI assistants: read [CLAUDE.md](CLAUDE.md) first.

Project goals: [CONTROL 01](Control/CONTROL%2001%20—%20Project%20Goal%20&%20Scope.md) ·
Phases: [CONTROL 02](Control/CONTROL%2002%20—%20Development%20Phase%20Plan.md) ·
Status: [ARCHITECTURE_STATUS.md](Control/ARCHITECTURE_STATUS.md)

---

## License

Training material (everything under `Courses/`) is licensed [CC BY 4.0](LICENSE): share and adapt
it with credit. Suggested credit: *From Runtime-Republic Training — RuntimeRepublic.com ·
BlueprintLiberty.com — licensed CC BY 4.0.*

No license has been chosen yet for scripts or future software; the Human Engineer will
choose one before Phase 3 (CONTROL 02).

Facts behind the lessons are listed in [SOURCES.md](SOURCES.md).
