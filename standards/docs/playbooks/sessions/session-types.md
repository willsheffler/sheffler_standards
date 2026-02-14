# Session Types

## Project Session (default)
Treat the session as a Project Session when either condition is true:
- Only one git repository is available in the workspace, or
- A `sheffler_standards` repo with a `.git` directory is not present in the accessible workspace.

Required behavior:
- Do project work only.
- Do not modify shared standards directly.
- Capture standards-change ideas via the standards proposals workflow.

## Standards Governance Session
Treat the session as a Standards Governance Session when both conditions are true:
- A `sheffler_standards` repository is present with a `.git` directory, and
- One or more project repositories are also present and accessible.

Required behavior:
- Review project standards proposals.
- Decide accepted/rejected/deferred.
- Implement accepted changes in `sheffler_standards`.
- Sync standards back into projects.
- Mark proposal status as implemented with commit reference.
