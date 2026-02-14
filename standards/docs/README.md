# sheffler_standards (synced content)

This directory contains the standards content synced into project repositories.

## Source Repo Layout
- `standards/` -> synced into project `shared/sheffler_standards/`
- `logs/` -> standards-project logs only, not synced

## Synced Contents
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
shared/sheffler_standards/standards/scripts/sync-standards.sh
```

After first sync, use:

```bash
shared/sheffler_standards/scripts/sync-standards.sh
```

## Session Sync Metadata
Sync writes:
- `.standards-version`
- `.standards-last-sync`

Use `.standards-last-sync` during session start checks.
