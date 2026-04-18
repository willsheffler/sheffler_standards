# Kids Game Dev Dogfood V1

Status: CAP-converged
Created: 2026-04-16
Maintainer: Will + Lattice

## Purpose

Capture the narrowed v1 cut line agreed after multi-round CAP review with Loom and Madeira.

This is the implementation-facing dogfood target.

## Product shape

V1 is:

- one shared game-dev workspace
- one visible chat timeline
- one active agent context
- lightweight visible artifact capture
- a low-friction end-of-session summary/report flow

V1 is not:

- a generic component library first
- a heavy teaching workflow app
- a multi-project management surface

The primary product is a game-dev shell.
Reusable pieces should be extracted from it.

## Core UX contract

One page:

- game area/canvas
- collapsible DevPanel
- shared chat timeline
- inline trigger-mode control near the composer
- screenshot suggestion queue / artifact tray
- lightweight session wrap-up path

Default posture:

- freeform is the default
- shared timeline is the default
- project filtering stays loose for now
- capture-related behavior must stay visible and dismissible

## First dogfood build

Include:

- shared chat panel
- message rendering
- auth gate
- status indicator
- DevPanel shell
- screenshot capture flow
- agent-facing screenshot suggestion surface
- visible artifact tray/history
- inline trigger-mode control by the composer
- tiny non-primary settings drawer
- lightweight end-of-session summary/report save
- mic/voice placeholder surface

Defer:

- DM/private routing
- rich multi-project workflow
- deep project filtering
- rich report editing
- user-facing passive-capture tuning
- formal learning workflow as primary UX
- compiled standalone bundles
- BroadcastChannel / cross-window features

## Trigger model

The main control is whether a sent message will trigger the agent.

Requirements:

- active trigger mode must be visible near the composer
- changing trigger mode should happen inline, not only in settings
- users should be able to tell whether a sent message will trigger the agent

Candidate visible labels:

- `Agent mode: Auto`
- `Agent mode: Mention`
- `Agent mode: Manual`

## Passive capture stance

Passive capture is not yet a stable user-configurable product feature.

For v1 dogfood:

- expose agent-facing tools that enable capture suggestions
- keep outputs visible and inspectable
- do not expose rich capture-level tuning to users yet

What must stay visible:

- pending screenshot suggestions
- suggested labels
- accepted/edited/dismissed state
- artifact tray/history
- what was captured and when

## Agent-facing tooling contract

The frontend should support an explicit screenshot-suggestion contract.

Minimum contract:

- agent may emit a tag like `[suggest-screenshot: "label"]`
- frontend turns that into a visible suggestion/toast/queue item
- user can `accept`, `edit`, or `dismiss`
- accepted screenshot enters the visible artifact tray/history

This contract should be documented wherever the DevPanel/chat integration is implemented so agents can reliably use it.

## Tiny SettingsDrawer

Because trigger mode is inline and passive-capture tuning is deferred, the first drawer should stay small.

Good candidates:

- mic/device placeholder
- session-mode hint or summary preference
- maybe a simple dev-tools visibility toggle

Not in the drawer:

- primary trigger mode control
- passive-capture level tuning

## Main wrong-if-shipped risk

Hidden agent action.

If the agent appears to be silently collecting, suggesting, or saving artifacts without clear visible inspectability, trust will erode quickly.

So the key rule is:

- capture-related behavior must be visible enough to inspect
- agent suggestions must be dismissible
- users should be able to see where artifacts went

## Shared vs app-specific boundary

Shared/reusable:

- chat surface
- message rendering
- auth/session identity
- status/runtime state
- artifact capture plumbing

App-specific:

- game-dev shell layout
- project-scoped UX
- deliverable/report presentation
- teaching/workflow framing

## Build readiness

CAP outcome:

- no material blockers surfaced at temp 2
- the v1 cut line is considered ready for implementation
