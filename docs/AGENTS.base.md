# AGENTS.base.md

Shared baseline guidance for Sheffler project repositories.

## 1) Scope
This file defines shared agent instructions and high-level policy.
Project-specific context belongs in each repo's local `AGENTS.md`.
Detailed procedures belong in shared playbooks.

## 2) Core Principles
- Prefer clarity over cleverness.
- Keep changes small, testable, and easy to review.
- Preserve existing behavior unless change is requested.
- Separate simulation logic from rendering/GUI when relevant.
- Use deterministic defaults (seed/config) before heavy randomness.

## 3) Engineering Standards
- Use Python and follow PEP 8.
- Use `uv` and `pyproject.toml` to manage dependencies.
- Use `pytest` for tests.
- If GUI is used, ensure logic paths are testable headlessly.
- Avoid premature abstractions and deep class hierarchies.
- Keep parameters easy to tweak (board size, creature count, movement, encounter rules).

## 4) Validation and Scope
- Run relevant tests/checks after changes.
- If no tests exist, run a smoke check and report it.
- If something cannot be verified, state that explicitly.
- Do not delete files unless explicitly requested.
- Avoid unrelated refactors and unrelated file edits.

## 5) Session Workflow (Use Playbook)
Use:
- `shared/sheffler_standards/docs/playbooks/session-management.md`

Mandatory at session start:
- Run/confirm `shared/sheffler_standards/scripts/sync-standards.sh`.
- Confirm `.standards-last-sync` exists and is recent.

## 6) Documentation Outputs
Maintain these paths in each project:
- Living plan: `docs/curriculum.md`
- Living engineering specs: `docs/specs/<feature>.md`
- Archived spec proposals: `docs/specs/archive/YYYY-MM-DD-<slug>.md`
- Per-session logs: `docs/session-logs/YYYY-MM-DD-<slug>.md`
- Session image assets: `docs/session-logs/assets/YYYY-MM-DD-<slug>/`
- Monthly report: `docs/reports/<YYYY-MM>.md`
- ADRs: `docs/decisions/ADR-<NNNN>-<slug>.md`

## 7) Communication Expectations
In coding summaries, include:
- What changed
- Why it changed
- How it was verified
- What the student should learn from this step (brief)
- Suggested next incremental step

## 8) Shared Standards Integration
- `sheffler_standards` is the source of truth for shared policy/templates/playbooks.
- Sync into subprojects with `shared/sheffler_standards/scripts/sync-standards.sh`.
- Synced files are placed under `shared/sheffler_standards`.
- Do not edit synced shared files directly in subprojects.
- Keep project-specific instructions in local `AGENTS.md` and local docs.
