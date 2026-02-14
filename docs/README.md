# sheffler_standards

Shared standards, templates, and playbooks for Sheffler project repositories.

## Contents
- `docs/AGENTS.base.md`
- `STANDARDS_VERSION`
- `docs/templates/`
- `docs/playbooks/`

## Usage in Subprojects
Run:

```bash
scripts/sync-standards.sh
```

This clones/updates standards into:
- `shared/sheffler_standards/`

Reference shared docs from:
- `shared/sheffler_standards/docs/...`

## Session Sync Metadata
Subproject sync scripts write:
- `.standards-version`
- `.standards-last-sync`

Use `.standards-last-sync` during session start checks.

## Synced File Ownership
- Files under `shared/sheffler_standards/` in subprojects are synced/shared inputs.
- Do not edit those files directly in subprojects.
- Put project-specific overrides in local project files.
