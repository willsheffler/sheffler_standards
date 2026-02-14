# AGENTS.base.md

Shared baseline guidance for Sheffler projects.

## Core Principles
- Prefer clarity over cleverness.
- Keep changes small and testable.
- Preserve existing behavior unless a change is requested.
- Separate simulation logic from rendering/GUI when relevant.
- Use deterministic defaults (seed/config) before heavy randomness.

## Engineering Standards
- Python + PEP 8.
- Manage dependencies with `uv` and `pyproject.toml`.
- Use `pytest` for automated tests.
- If GUI is used, keep headless test paths available.

## Verification
- Run relevant tests after changes.
- If no tests exist, run a smoke check and report results.
- State explicitly when something cannot be verified.

## Documentation Workflow
- Use living specs in `docs/specs/`.
- Keep session logs in `docs/session-logs/`.
- Keep monthly reports in `docs/reports/`.
- Keep major technical decisions as ADRs in `docs/decisions/`.

## Evidence Expectations
- For each feature added, capture:
  - passing relevant tests,
  - a commit,
  - and a screenshot when GUI output is relevant.
- Use web-safe relative image paths under `docs/` so GitHub rendering works.
