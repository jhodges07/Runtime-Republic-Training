# Episode 2: Working With Claude Like an Engineer

Series: Building With Claude (2 of 5)
Runtime: about 6 minutes
Status: Draft
License: CC BY 4.0

---

Welcome back to Runtime Republic. Last time we walked from Alan Turing to Claude. Today we get practical. These are the best practices for working with Claude, and almost all of them come down to one idea: treat Claude like a brilliant new engineer on your team who has never seen your project before.

Think about that new engineer. Smart. Fast. Eager. But on day one, they do not know your standards, your history, or what you tried last month that failed. If you hand them a vague request, you get a vague result. If you hand them a clear brief, you get great work.

So the first best practice is this: context beats cleverness.

People waste a lot of time hunting for magic prompt words. There are none. What works is telling Claude what you are trying to do, who it is for, what done looks like, and what to avoid. Instead of "write me a landing page," say: "Write a landing page for Know Your Loop, an iPhone app that turns checking where your tax dollars go into a five-minute monthly habit. The audience is busy Kansas homeowners. Keep it under three hundred words. No political attack language." Same tool. Completely different result.

The second best practice: write your rules down once, and make Claude read them every time.

This is where your background becomes a superpower. In aerospace, nothing important lives in someone's head. It lives in a controlled document, with a number, a revision, and an owner. You have already brought that discipline to your GitHub work. Your Control Engineering Template starts every project with numbered control documents: goal and scope, coding standards, layer separation, one change at a time, testing, release. And it includes a file called CLAUDE.md.

That file is the cheat code most people never find. When you work with Claude Code in a repository, it reads CLAUDE.md before it touches anything. Put your rules there. How code is organized. What it must never do. How to commit. Which control document governs which behavior. Now every session starts with Claude knowing the rules, instead of you repeating them.

In the Claude app, the same idea shows up as Projects. A project holds your instructions and your reference files, so every conversation inside it starts from the same foundation. One project per business line keeps things clean.

The third best practice: one change at a time.

Your control set already says this, and it is just as true with AI. When you ask Claude to fix the login screen, redesign the settings page, and update the database all at once, you get a tangle you cannot review. Ask for one logical change. Review it. Commit it. Then the next one. Small steps are faster, because you never have to untangle a mess.

The fourth best practice: verify everything.

Claude is trained to be honest, and it will usually tell you when it is unsure. But it can still be confidently wrong, especially about facts that change, like laws, prices, deadlines, and app store rules. So build verification into the work. For code, that means tests. Your District Alerts project says every behavior is governed by a control document and proven by tests. That is exactly right. For facts, ask Claude to search and cite its sources, then open the sources yourself.

The fifth best practice: keep the human in control.

You have said this in your own projects. In UNBKE, AI assists with retrieval while humans keep full control. In your Essay Audio Runtime, the voice engine reads the approved text exactly and makes no decisions. That is a design principle worth teaching everyone. Decide in advance what the AI may do on its own, what it must ask about, and what it must never touch. Write that down too.

The sixth best practice: pick the right tool for the job.

Claude comes in a few shapes now. The chat app is for thinking, drafting and research. Artifacts give you documents, slide decks, spreadsheets and small web apps you can edit and share. Claude Code works directly in your software projects, reading files, running tests, and committing changes. And the models come in sizes. Opus for the hardest reasoning, Sonnet for everyday work, Haiku for fast, simple jobs. Match the tool to the task and you save time and money.

The seventh and final best practice: let Claude remember the right things, and nothing else.

Claude can keep memory across conversations, so it knows your websites, your projects, and how you like to work. That is useful. But your real source of truth should be your repositories, under version control, where you can see every change. Memory is a convenience. GitHub is the record.

Let's recap. Context beats cleverness. Write your rules down once in CLAUDE.md and Projects. One change at a time. Verify everything. Keep the human in control. Pick the right tool. And keep your source of truth in GitHub.

If that list sounds less like AI tips and more like good engineering, that is the point. Claude rewards the habits you already have.

In Episode 3, we turn these habits into workflows: the repeatable moves, cheat codes and automations that let one person run like a whole studio.

This has been Runtime Republic. Thanks for listening.
