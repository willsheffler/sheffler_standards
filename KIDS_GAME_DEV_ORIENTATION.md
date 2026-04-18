# Kids Game Dev Orientation

Status: active
Created: 2026-04-16
Maintainer: Will + Lattice

## Purpose

This note captures the current direction for the kids' game-dev system.

The goal is broader than "make reusable Svelte components."
The real goal is:

- help the kids build games casually and often
- make AI-assisted development easy and fun
- support Dad joining when useful
- preserve session evidence automatically
- make formal learning sessions possible without making casual sessions heavy

## Main use case

Current primary use case:

- one kid + one persistent dev helper agent
- Dad can be looped in as an active participant
- casual/freeform work should remain easy
- if enough context/evidence exists, generate the best session report possible

## Session modes

Likely session types:

- `freeform`
  - default casual mode
  - low friction
  - preserve artifacts/context automatically
- `light`
  - summary + evidence + next step
- `learning`
  - more formal session
  - includes quiz, stronger teaching evidence, and a kid-written function task

## Evidence / deliverable priorities

Important session evidence:

- short summary of what happened
- concrete list of changes/features
- annotated screenshots for new additions/features
- short agent-generated quiz
- next step / next challenge

For `learning` sessions, also capture:

- one short function actually written by the kid and used in the project

## Chat / collaboration direction

Current likely direction:

- one main persistent helper agent per kid
- shared history visible to the agent
- Dad can join as an active participant
- agent-trigger rules may vary by context
  - solo mode may trigger the agent by default
  - multi-human mode may require explicit agent mention or similar routing

This is still being refined.

## Product direction

Think in terms of a **game-dev teaching kit**, not just a component library.

Priority areas:

1. reusable chat / conversation surface
2. session artifact capture and report generation
3. screenshot evidence with captions
4. low-friction game-dev shell that can work on desktop and phone

## Guidance for kid dev-helper agents

- optimize for low friction and momentum
- preserve useful evidence as work happens
- help structure formal learning sessions when they happen
- do not force heavy ceremony on casual sessions
- prefer real progress over abstract architecture

## Naming note

Jonah's agent is called `Skynet`.
