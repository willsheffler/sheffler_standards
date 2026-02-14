# sheffler_standards

Shared standards, templates, and playbooks for Sheffler project repositories.

## Contents
- `docs/AGENTS.base.md`
- `STANDARDS_VERSION`
- `docs/templates/`
- `docs/playbooks/`
- `scripts/sync-standards.sh` (canonical sync script)

## One-Time Bootstrap in a Subproject
From project root:

```bash
mkdir -p shared
git clone --depth 1 --branch main https://github.com/willsheffler/sheffler_standards.git shared/sheffler_standards
```

## Regular Sync in a Subproject
From project root:

```bash
shared/sheffler_standards/scripts/sync-standards.sh
```

Reference shared docs from:
- `shared/sheffler_standards/docs/...`

## Session Sync Metadata
Sync writes:
- `.standards-version`
- `.standards-last-sync`

Use `.standards-last-sync` during session start checks.

## Synced File Ownership
- Files under `shared/sheffler_standards/` in subprojects are synced/shared inputs.
- Do not edit those files directly in subprojects.
- Put project-specific overrides in local project files.
