# Standards Governance Session Playbook

Use this session type when `sheffler_standards/.git` is present alongside one or more project repositories.

## Objectives
- Review standards proposals from project repositories.
- Decide accepted/rejected/deferred.
- Implement accepted standards changes in `sheffler_standards`.
- Sync standards into affected projects.
- Close the loop by marking proposal status and commit reference.

## Intake
- Gather proposal files from project repos:
  - `docs/standards-proposals.md`
  - `docs/standards-proposals/YYYY-MM-DD-<slug>.md`
- Check each proposal has: rationale, scope, suggested implementation, priority.

## Decision Protocol
For each proposal, record one outcome:
- `accepted`: implement now in standards.
- `deferred`: postpone with clear reason and trigger.
- `rejected`: document reason.

## Implementation Protocol
When accepted:
1. Update standards files in `sheffler_standards/standards/`.
2. Commit and push standards changes.
3. In each affected project, run:
   - one-time bootstrap as needed: `shared/sheffler_standards/standards/scripts/sync-standards.sh`
   - regular sync: `shared/sheffler_standards/scripts/sync-standards.sh`
4. Confirm `.standards-last-sync` changed in affected projects.

## Closure
- Update proposal entries in project repos with:
  - status (`implemented` / `deferred` / `rejected`),
  - standards commit reference,
  - sync confirmation date.
- Add a standards session log in `sheffler_standards/logs/session-logs/`.
