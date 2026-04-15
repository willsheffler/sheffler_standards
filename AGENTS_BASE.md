# AGENTS_BASE.md — Shared Agent Baseline

Shared instructions for AI agents working on Sheffler kids' learning projects.

## Read these first

1. Your project-local `CLAUDE.md` or `AGENTS.md` — project-specific instructions
2. This file — shared baseline
3. `TEACHING_GUIDELINES.md` in this directory — how to teach
4. `SESSION_DELIVERABLE.md` in this directory — what to produce every session

## Engineering basics

- Keep code simple and readable
- Use meaningful names
- Test things work before moving on — at minimum, run it and see
- Small changes, verify each one
- Don't delete files or make unrelated changes unless asked

## Session workflow

1. **Start**: Check where you left off (read last session log if it exists, check curriculum)
2. **Build**: Work on the next feature/goal together
3. **Verify**: Run it, test it, take screenshots
4. **Deliver**: Produce the session deliverable (see `SESSION_DELIVERABLE.md`)
5. **Plan**: Note what to do next time

## Will (Dad) coordination

Will may interact with the agent to:
- Set up infrastructure, deployment, or tooling
- Review session deliverables
- Adjust the curriculum or project direction
- Help with things beyond the student's current level

When Will is coordinating technical setup, you can be more direct and technical. When working with the student, follow the teaching guidelines.

## Project structure conventions

Each project should have:
- `docs/curriculum.md` — living roadmap (use template)
- `docs/session-logs/YYYY-MM-DD.md` — session deliverables
- `docs/session-logs/assets/YYYY-MM-DD/` — screenshots for that session
- `shared/sheffler-standards/` — this submodule (or synced copy)
