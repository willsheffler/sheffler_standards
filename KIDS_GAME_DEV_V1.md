# Kids Game Dev V1

Status: draft, superseded for implementation by `KIDS_GAME_DEV_DOGFOOD_V1.md`
Created: 2026-04-16
Maintainer: Will + Lattice

## Purpose

Define the first practical version of the kids' AI-assisted game development workflow.

This is not just a component spec.
It describes the product behavior we want the frontend and supporting systems to enable.

For the narrowed implementation cut line after CAP review, see:

- `KIDS_GAME_DEV_DOGFOOD_V1.md`

## Core goal

Help the kids build games casually and often, while preserving enough evidence and structure to support:

- teaching
- review by Dad
- session deliverables
- later reuse in other chat/dev surfaces

## Main use case

Primary target for v1:

- one kid
- one persistent dev-helper agent
- Dad optionally looped in as an active participant

Default assumption:

- casual work should stay easy
- more formal teaching structure should be available when wanted

## Session modes

### 1. Freeform

Default low-friction mode.

Characteristics:

- kid can just start working
- no heavy ritual required
- system preserves context and artifacts automatically
- best-effort report can still be generated later

Expected outputs:

- summary if possible
- activity/evidence if captured
- next step if obvious

### 2. Light

Middle mode for short but meaningful work.

Expected outputs:

- short summary
- what changed
- at least one piece of evidence if relevant
- next step

### 3. Learning

More formal teaching mode.

Expected outputs:

- summary
- what changed
- annotated screenshots
- short agent-generated quiz
- next challenge / next plan
- one kid-written function used in the project

## Session controls

Session controls may be visible and tool-guided, but they are optional.

The system should support:

- explicit start/end session controls
- changing session mode during the session
- backfilling the best report possible from passive capture if the controls were not used

Priority:

- preserve information first
- enforce ceremony second

## Chat model

### Core behavior

The main chat surface is:

- kid ↔ agent by default
- Dad may join as an active participant

The agent can see shared history.

### Trigger behavior

Trigger behavior is context-sensitive.

Likely defaults:

- solo kid mode:
  - kid messages may trigger the agent by default
- multi-human mode:
  - more explicit routing may be used
  - messages to Dad should not necessarily trigger the agent

Current design direction:

- support human-to-human messages in the shared history without always triggering an agent turn
- agent still reads the history

We expect this area to evolve.

## Dad participation

Dad is an active participant, not just a read-only observer.

Desired behavior:

- Dad can send messages visible to the kid
- some Dad messages should not trigger agent action by default
- kid should also be able to leave messages for Dad without automatically triggering the agent

## Evidence capture

The system should preserve evidence continuously during work, not only at the end.

Important evidence types:

- chat history
- timestamps / duration
- screenshots
- screenshot captions
- rough activity log / milestones
- code changes when useful

## Screenshots

Screenshots are one of the most important evidence channels.

Behavior:

- aggressively suggest screenshots when new features/additions appear
- make capture/annotate/save very low friction
- for visual projects, screenshots are the main proof of progress

For more formal sessions:

- annotated screenshots should be part of the final deliverable

## Deliverables

Every session should produce something, but the strictness depends on session mode.

### Strong evidence types

1. short summary
2. concrete list of changes/features
3. annotated screenshots for new additions/features
4. short agent-generated quiz
5. next challenge / next session plan

### Learning-only evidence

For `learning` sessions, also require:

- one short function actually written by the kid
- the function should be used in the project, not just typed in isolation

The agent may provide:

- function signature
- return type
- stencil/scaffold
- hints and assistance

But the kid should write the meaningful function body.

## Automation goal

Deliverables should be as automatic as practical.

Target model:

- preserve artifacts as the session happens
- agent drafts the report
- user only needs light review/correction when possible

Do not depend on reconstructing the whole session from memory at the end.

## Product direction

Think of v1 as a **game-dev teaching kit** with a few key surfaces:

1. reusable chat / conversation surface
2. screenshot/evidence capture
3. session artifact store
4. deliverable draft/review flow
5. low-friction game-dev shell for desktop and phone

## Reuse implications

The reusable chat surface is important beyond the kids' use case.

Likely future reuse:

- game-dev agent chat
- Dad + kid + agent collaboration
- Cheryl / Iris / Will multi-way chat
- Pensieve/team multi-chat and meeting surfaces

So chat should be designed carefully as a reusable surface, even if the kids' game-dev workflow is the main driver.
