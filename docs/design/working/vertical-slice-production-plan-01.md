# Wayside — Vertical Slice Production Plan 01

**Status:** Approved-for-review paper plan only; no playable evidence exists.
**Purpose:** prove the smallest end-to-end version of Wayside's central promise before full production.

## 1. Slice thesis

The slice must prove: **investigate a road failure, prepare and travel, act under pressure, choose a material/covenant solution, and return to a visibly changed community that remembers.** It is not a miniature checklist of every release feature.

## 2. Content

- Wayside: one compact exterior plus common-room/project-ledger interior;
- one route with two selectable approaches and one authored travel event;
- one 10–15 minute local crossing site with exploration and five evidence nodes;
- one one-handed weapon profile, shield/guard, evade, and two Techniques;
- two enemy archetypes in one deliberate encounter, with avoidance and one human surrender state;
- one prototype companion using one doctrine and one signature command, with solo fallback;
- one project with two outcomes: restored span or maintained ferry/reroute;
- one covenant term that changes the meaning/cost of those outcomes;
- four named NPCs with bounded knowledge/reactions;
- one shop/repair interaction and one project cargo commitment;
- before/worksite/after visual states;
- route, price/availability, relationship, and journal consequences;
- save/load, keyboard/controller, assists, and debug state inspector.

Fatigue, second companion, other weapon families, full Wayside upgrades, final politics, multiple endings, and broad crafting are excluded.

## 3. Build stages and exit gates

### Stage 0 — Paper/data fixtures

Define IDs, state transaction, evidence graph, two project outcomes, asset list, and expected save states. Exit when validators can identify missing references from fixtures.

### Stage 1 — Feel box

Graybox movement, one weapon, defense, evade, two enemy behaviors, hit feedback, controller aim options. Exit only when players can read attacks and deliberately choose offense/defense. If not, simplify before content.

### Stage 2 — Journey and site

Implement route choice, event, arrival, investigation, journal source labels, and alternate encounter entry. Exit when players can explain how evidence changes their options.

### Stage 3 — Project transaction

Implement commitments, covenant term, two outcomes, autosave, reload, and idempotent consequence updates. Exit after automated and manual round-trip tests.

### Stage 4 — Return and presentation

Add Wayside reactions, service/price change, route revision, painterly/ink style target, audio, accessibility, and performance pass. Exit when the whole loop communicates without developer explanation.

### Stage 5 — Reproduction proof

Create a second tiny route event and second project fixture using the tools/data model. They need not be release-quality content. Exit only if reuse is materially cheaper than the first.

## 4. Evaluation

Measure task comprehension, input/readability failures, time per loop segment, state bugs, authoring hours by discipline, asset reuse, and whether players notice/understand four consequence channels. Do not use “players liked it” as the sole gate.

Greenlight full production only if:

- combat and movement are responsive/readable;
- travel creates a decision rather than delay;
- evidence causally changes project options;
- both outcomes feel materially and morally distinct;
- consequences are noticed and correctly attributed;
- save/load is robust;
- reproduction indicates the full content ledger is plausible.

## 5. References and philosophy

- **Supergiant's Bastion development:** borrow proving combat, narration/world reaction, and hub rhythm together; reject polishing broad content before pipeline evidence.
- **The “vertical slice” discipline:** representative quality across the riskiest end-to-end path, not a broad feature demo.
- **Preproduction kill gates:** a failed core loop causes redesign/cut, not a larger content investment intended to rescue it.
- **Minimum viable prototype versus slice:** graybox answers feel first; the slice answers production repeatability and product coherence.

## 6. Migration register

| Old slice element (§25) | Outcome | Disposition |
|---|---|---|
| Small Wayside, route, local site, project, visible change | Preserve | Core loop |
| One weapon family and two Techniques | Preserve | Stage 1 |
| Optional companion | Preserve | One prototype only |
| Weather/provisions/fatigue breadth | Replace | One route condition; fatigue excluded |
| Covenant problem with two solutions | Preserve | Combined with road project |
| One module choice | Supersede | Two authored outcomes; no module system needed |
| Market/travel consequence | Replace | Four-channel consequence proof |
| Second-content ease criterion | Preserve | Formal Stage 5 reproduction gate |

## 7. Decision rule

This document schedules evidence; it does not supply it. All N/F/S/Q/A/I/M/W/V/X and upstream E/T/P combat/progression gates remain unpassed until the relevant slice or focused prototype records results.
