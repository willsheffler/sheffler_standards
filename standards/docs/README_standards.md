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
From project root (download only the bootstrap sync script and run it):

```bash
curl -fsSL https://raw.githubusercontent.com/willsheffler/sheffler_standards/main/standards/scripts/sync-standards.sh -o /tmp/sync-standards.sh
bash /tmp/sync-standards.sh
```

After first sync, use:

```bash
shared/sheffler_standards/scripts/sync-standards.sh
```

## Session Sync Metadata
Sync writes:

- `.standards-last-sync`

Use `.standards-last-sync` during session start checks.

## Standards Proposal Process
- In project/teaching repos, capture proposed shared-standards changes in project docs (for example `docs/standards-proposals.md`).
- Use `shared/sheffler_standards/docs/templates/standards-proposal-template.md`.
- Resolve and implement proposals during Standards Governance Sessions in `sheffler_standards`.
