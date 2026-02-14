# AI-Agent Workflow Playbook

## Objective
Use AI assistance as a force multiplier while preserving engineering rigor.

## Loop
1. Clarify scope and acceptance criteria.
2. Implement the smallest useful slice.
3. Run tests/smoke checks.
4. Capture evidence (commit + screenshots when relevant).
5. Log what was learned and next step.

## Prompting Pattern
- Provide exact goal, constraints, and repository context.
- Ask for explicit assumptions before major design decisions.
- Prefer concrete acceptance criteria over broad instructions.

## Control Pattern
- One feature slice at a time.
- Require verification output after each slice.
- Track open decisions in ADRs.

## Quality Gates
- No silent behavior changes.
- No unrelated refactors unless requested.
- Keep docs and test coverage aligned with feature changes.
