# Session Management Playbook

This playbook defines the shared session workflow for Sheffler project repositories.

## Required Sync Check
At session start, verify standards sync freshness before planning/coding:
- Run `shared/sheffler_standards/scripts/sync-standards.sh`.
- Confirm `.standards-last-sync` exists in repo root.
- Review `.standards-version` if present.

If `.standards-last-sync` is missing or older than 7 days, run sync and note it in session log.

## Session Start Protocol
When the user says `Start session`, do all of the following:
1. Ask for:
   - Participants
   - Planned duration
   - Primary goal
   - Stretch goal
   - Expected evidence (commits/screenshots/notes)
2. Run or confirm `shared/sheffler_standards/scripts/sync-standards.sh` and record sync status.
3. Create a dated session log in `docs/session-logs/`.
4. Add an initial `Next Session Draft` or current-session focus update in `docs/curriculum.md`.

## Will-Only Planning Sessions
When participants are Will-only:
- Focus on planning, architecture, and implementation sequencing before coding.
- Maintain/update a living feature spec in `docs/specs/` and identify open decisions.
- Explain workflow tradeoffs in plain language (prompting strategy, scope control, verification, evidence capture).
- Prefer short loops: spec update -> small implementation -> verification -> commit/evidence.
- Include a brief "AI-agent workflow lessons learned" note in the session log.

## During Session Protocol
When the user says `log this: ...`:
- Append concise notes to the active session log.
- Capture learning moments, blockers, and notable decisions.
- Include at least one 5-question quiz per teaching session.
- Include at least one function or class written by the student per teaching session.
- For each added feature, complete an evidence cycle:
  - run and pass relevant tests,
  - make a git commit for that feature,
  - capture at least one screenshot showing the feature working.
- Store screenshots in `docs/session-logs/assets/YYYY-MM-DD-<slug>/` using descriptive filenames.
- Complete multiple evidence cycles per session when multiple features are added.

## Session Definition of Done
A session is considered done when all are true:
- At least one feature has been added and verified.
- The feature has passing relevant tests.
- A git commit exists for each added feature.
- At least one screenshot exists for each added feature.
- Session notes are updated with learning moments and evidence.

## Reminder Protocol
If workflow is not being followed, provide gentle reminders:
- If coding starts before `Start session`, remind to start the session log.
- At/near start of session, if standards sync has not been run, remind to run `shared/sheffler_standards/scripts/sync-standards.sh`.
- If `.standards-last-sync` is stale/missing, remind to refresh standards.
- Mid-session after substantial work, remind to capture evidence.
- Before wrapping up, remind to run `End session`.

## Session End Protocol
When the user says `End session`, do all of the following:
1. Ask for a brief recap if needed.
2. Finalize the current session log.
3. Update `docs/curriculum.md`:
   - Move completed items to milestones.
   - Refresh `Next Session Draft`.
4. Update monthly report data in `docs/reports/`.
5. Provide a print-ready summary for school-credit records.
6. Include screenshots inline in the print-ready summary using Markdown image syntax (`![alt text](relative/path.png)`), with paths pointing to files under `docs/`.
7. Ensure image paths are web-safe relative paths that render on GitHub:
   - In `docs/session-logs/*.md`: `assets/YYYY-MM-DD-<slug>/image.png`
   - In `docs/reports/*.md`: `../session-logs/assets/YYYY-MM-DD-<slug>/image.png`
