# Wayside — Production Edition Canon Migration Criteria

**Status:** Working governance document — not yet settled canon  
**Purpose:** Define the exact rules for deciding whether a Production Edition proposal preserves, replaces, supersedes, or leaves open an element of the existing Wayside Blueprint.

> **Migration principle:** The old Blueprint remains authoritative until a Production Edition proposal is explicitly promoted. Working documents may contradict it during the audit without changing canon.

---

## 1. Migration Outcomes

Every Blueprint element reviewed during the Production Edition audit must end in one of four states.

### PRESERVE

Use when the old Blueprint element remains valid **substantially as written**.

Criteria:

- its player-facing purpose still belongs in Production Edition;
- its implementation fits the new production boundaries;
- it does not create a hidden content, art, animation, UI, balancing, state, or QA burden beyond the current ceiling;
- it does not conflict with any accepted downstream Production Edition decision;
- no rewrite is needed beyond wording, numbers, or minor clarification.

**Rule of thumb:** if the old design could be copied into the new Blueprint with only editorial cleanup, preserve it.

---

### REPLACE

Use when the old Blueprint solved the **right player problem**, but the Production Edition proposal solves that same problem with a materially different implementation.

Criteria:

- the underlying fantasy / player need remains important;
- the old implementation violates current scope, readability, technical, art, or content constraints;
- the new implementation clearly states what function it inherits from the old one;
- the replacement is cheaper, clearer, or more coherent while preserving the intended player experience;
- the old and new versions should not coexist because they are alternative implementations of the same responsibility.

Examples:

- `Level 1–50 progression web` → compact Aptitudes/Familiarities/Techniques model.
- `Eight bespoke weapon mastery structures` → fewer shared animation families with differentiated weapon profiles.
- `Detailed regional economy simulation` → authored/aggregate supply-state consequences.

**Rule of thumb:** same job, new machinery = replace.

---

### SUPERSEDE

Use when the Production Edition audit concludes that the old Blueprint element **should no longer be part of the launch game at all**, or when its design assumptions no longer apply.

Criteria:

At least one of the following must be true:

- the feature does not materially reinforce the Production Edition core fantasy or recurring verbs;
- its value can be obtained more effectively through another retained system;
- it requires its own substantial progression, UI, animation, economy, simulation, or content pipeline without earning equivalent value;
- it creates combinatorial state growth disproportionate to its player-facing benefit;
- it belongs to North Star / sequel / expansion territory rather than the launch game;
- keeping it would force reduction of a more central feature;
- it depends on an upstream system that has itself been removed or replaced.

A superseded element may still be recorded historically, but must not remain ambiguously active in the new Blueprint.

**Rule of thumb:** the job itself is no longer required = supersede.

---

### DEFER / OPEN

Use when evidence is insufficient to choose Preserve, Replace, or Supersede.

Allowed reasons:

- prototype evidence is required;
- another unresolved upstream decision controls the answer;
- the feature appears viable but its production cost is not yet known;
- two alternatives remain genuinely competitive.

A deferred item must include:

1. the exact unresolved question;
2. the dependency or test needed to resolve it;
3. the latest point in production when it must be decided;
4. the default fallback if the test is inconclusive.

**Rule:** `Open` is temporary uncertainty, not permission to carry two full designs indefinitely.

---

## 2. The Mandatory Migration Tests

Every reviewed Blueprint element must pass through the following tests in order.

### Test A — Identity

**Question:** If this element disappeared, would Wayside become less distinctly *Wayside*, or merely less feature-rich?

Evaluate against the Production Edition core experience:

- roads are central;
- the player becomes a roadwarden through deeds;
- travel, investigation, stewardship, and consequence matter;
- problems have grounded physical and moral dimensions;
- the world visibly remembers important actions;
- the grounded world and covenant strangeness reinforce each other.

Results:

- **Strongly reinforces identity** → continue.
- **Useful but generic** → must justify itself through another test.
- **Mostly feature richness** → strong candidate for Supersede.

---

### Test B — Recurring-Verb Relevance

**Question:** Does this system materially support at least one recurring player verb?

Primary verbs:

- Travel
- Investigate
- Choose
- Repair / Alter
- Return / Witness

Supporting verbs:

- Fight
- Prepare
- Learn

A feature that touches only a rare edge case must not carry the implementation weight of a core system.

Results:

- **Repeatedly used and meaningful** → continue.
- **Rare but narratively essential** → may remain as authored content rather than a reusable system.
- **Rare and mechanically expensive** → Replace or Supersede.

---

### Test C — Production Cost

**Question:** What new pipeline does this proposal create?

Score its burden across:

- programming;
- UI;
- animation;
- environment art;
- character art;
- VFX;
- audio;
- writing;
- encounter design;
- balancing;
- save/state handling;
- QA;
- controller support;
- content authoring;
- maintenance/debugging.

#### Cost classes

**Class 0 — Reuse**  
Uses existing systems/assets almost entirely.

**Class 1 — Minor extension**  
Adds modest logic/content with little new tooling or asset infrastructure.

**Class 2 — New subsystem**  
Requires a distinct implementation/UI/content pattern but remains bounded.

**Class 3 — New production pipeline**  
Requires recurring bespoke assets, specialized tooling, substantial balancing, or broad state interaction.

**Class 4 — Game-within-the-game**  
Creates its own progression/economy/content/animation/simulation loop.

Rules:

- Class 0–1: normally acceptable if identity/relevance tests pass.
- Class 2: must clearly justify itself.
- Class 3: requires explicit trade against another major system or major simplification.
- Class 4: presumed **Superseded** for Production Edition unless it is itself one of Wayside's core pillars.

---

### Test D — Content Multiplier

**Question:** Does adding this feature multiply work elsewhere?

Check whether it forces additional variants of:

- dialogue;
- quests;
- environments;
- enemy behavior;
- equipment;
- animations;
- companion reactions;
- endings;
- tutorials;
- balancing cases;
- save states;
- localization strings;
- accessibility handling.

Rate:

- **1× Local** — mostly self-contained.
- **2× Moderate** — several existing systems must acknowledge it.
- **3× Broad** — many content types need explicit support.
- **4× Combinatorial** — it changes the number of possible states/branches across large portions of the game.

Rules:

- 1×–2× may survive normally.
- 3× requires strong core-identity value.
- 4× is presumed Replace/Supersede unless the design can collapse the state space through abstraction or convergence.

---

### Test E — Player Visibility

**Question:** Can the player clearly perceive the benefit we are paying for?

A feature must produce legible player-facing consequences through one or more of:

- a new choice;
- a new route;
- a changed place;
- a changed relationship;
- a changed combat/travel option;
- a meaningful resource/preparation decision;
- a different outcome;
- a stronger sense of world causality.

If substantial simulation occurs but the player mostly cannot perceive or reason about it, simplify it.

**Rule:** invisible complexity receives almost no scope protection.

---

### Test F — Art and Readability

**Question:** Can the painterly top-down presentation communicate this mechanic at gameplay distance?

Reject or redesign mechanics that depend on:

- subtle hand/foot positions;
- tiny facial/body cues;
- many nearly identical equipment silhouettes;
- high numbers of bespoke animation transitions;
- visual effects that obscure silhouettes;
- information that requires constant UI overlays to understand.

Possible outcomes:

- readable with current visual language → continue;
- needs simplified representation → Replace;
- fundamentally incompatible → Supersede.

---

### Test G — Technical and State Robustness

**Question:** Can the system be implemented, saved, restored, debugged, and maintained without fragile hidden dependencies?

Check:

- deterministic enough to reproduce bugs;
- save-compatible state representation;
- no requirement for continuous background simulation when a simpler event/state model works;
- bounded interaction with quest/world states;
- recoverable failure states;
- testable through debug tools or automated checks where practical.

A design that is conceptually elegant but operationally opaque must be simplified.

---

### Test H — Reference Evidence

**Question:** What real design evidence supports keeping this feature or implementation?

For each major migration decision, document:

- at least two relevant game/interactive precedents where practical;
- what problem those designs solved;
- what Wayside is borrowing;
- what Wayside rejects;
- whether those examples depended on staff/resources we do not have;
- any relevant postmortem, talk, design note, paper, or official explanation.

References do **not** overrule production reality.

A strong precedent may prove that a mechanic can work; it does not prove that Wayside should build it.

---

### Test I — Prototype Requirement

**Question:** Is this primarily a "feel" question that cannot be settled on paper?

Prototype-required examples include:

- combat timing;
- controller aiming;
- stamina feel;
- route/travel pacing;
- frequency of interruptions;
- progression reward cadence;
- readability of layered environmental states;
- project interaction flow.

If yes, mark the element **Defer/Open** until tested.

**Rule:** paper design cannot promote a feel-dependent mechanic to settled canon without evidence when a cheap prototype can answer it.

---

## 3. Decision Matrix

Use the following default matrix after the tests.

### PRESERVE when

All are true:

- strong or clear contribution to Wayside identity / recurring verbs;
- fits current production ceiling;
- does not create unacceptable content multiplication;
- readable in the chosen art style;
- technically bounded;
- no accepted Production proposal solves the same job better.

### REPLACE when

All are true:

- the player-facing need remains valid;
- the existing implementation fails one or more Production tests;
- a new proposal provides the same or better player-facing value at lower total cost or higher coherence;
- keeping both would be redundant.

### SUPERSEDE when

Any of the following is decisive:

- weak connection to core identity;
- feature richness rather than core experience;
- Class 4 production burden without core-pillar status;
- unacceptable combinatorial multiplier;
- incompatible with visual/readability constraints;
- dependent on a system already removed;
- materially threatens completion of more central content;
- better treated as North Star, expansion, or sequel material.

### DEFER / OPEN when

- prototype evidence is required;
- the answer depends on an unresolved upstream decision;
- production cost is unknown and materially changes the decision;
- competing options remain genuinely plausible.

---

## 4. Precedence Rules When Documents Conflict

Until canon migration is explicitly approved:

1. **Existing canonical Blueprint remains official canon.**
2. Production Edition working documents are proposals and may intentionally contradict canon.
3. Later working passes override earlier working passes **only inside the Production Edition proposal stack**, and only when the later document explicitly addresses the same question.
4. A specialized Production pass outranks a broad Production boundary document on implementation detail, but it may not exceed a hard ceiling without explicitly flagging the conflict.
5. The final Integration Audit resolves contradictions among Production proposals before any canon migration.
6. Only the Canon Migration Proposal may recommend promotion into the new Blueprint.
7. Canon changes occur only after Taylor explicitly approves promotion.

---

## 5. Hard Production Vetoes

Regardless of historical Blueprint status, a launch proposal cannot be promoted if it requires any of the following without an explicit scope trade and new approval:

- a third full launch region;
- more than two full companions;
- more than four combat animation families;
- a large class / perk / mastery web;
- generalized profession simulation;
- freeform settlement or infrastructure construction;
- universal autonomous NPC life simulation;
- full regional economy simulation at individual-agent resolution;
- multiplayer/network architecture;
- procedural world generation as a dependency;
- a mechanic whose viability assumes future AI capability rather than current tested tooling;
- a new major subsystem whose primary justification is only "this would be cool."

These are presumed North Star / sequel / expansion material unless Production scope is explicitly reopened.

---

## 6. Protection Rules for Wayside's Core

Scope reduction must not accidentally remove the game's identity.

The following receive **presumption of preservation** unless testing proves the implementation itself fails:

- roads as the organizing structure of the world;
- Wayside as recurring home/crossroads;
- becoming a roadwarden through actions rather than early appointment;
- investigation of physical + political + covenant causes;
- authored infrastructure/stewardship decisions;
- visible persistent consequences;
- meaningful return visits to changed places;
- grounded material culture contrasted with uncanny covenant behavior;
- multiple legitimate approaches to major problems;
- equipment as durable possessions rather than disposable loot.

Presumption of preservation protects the **player fantasy**, not the current implementation. A protected element may still be **replaced** if a cheaper implementation serves it better.

---

## 7. Scope Trade Rule

If a proposed Production feature exceeds an established ceiling, it may survive only if the migration proposal identifies a concrete trade.

A valid trade must specify:

- what is being added;
- its expected production class and content multiplier;
- what existing feature/content is being removed or reduced;
- why the net change improves Wayside's core experience;
- which downstream documents must be revised.

Invalid justification:

> "AI should make it easier."

Valid justification:

> "Adding a second supernatural enemy archetype costs one new behavior/VFX package, so the planned third bespoke climax encounter is removed and the new archetype is reused across both regions."

---

## 8. Migration Record Format

During the final audit, every major old Blueprint section should receive a record in this form:

```text
OLD ELEMENT:
Blueprint § / feature name

OUTCOME:
Preserve | Replace | Supersede | Defer/Open

PLAYER PURPOSE:
What experience/problem the old feature served.

PRODUCTION TEST:
Identity / recurring verb / cost class / content multiplier / readability / technical risk.

NEW HOME:
Which Production Edition document or replacement design now owns this responsibility.

REASON:
Short explicit rationale.

DEPENDENCIES:
Any unresolved prototype or downstream decision.
```

No major Blueprint feature should disappear from the migration without a recorded outcome.

---

## 9. Promotion Threshold

A Production Edition proposal is eligible to replace canon only when all of the following are true:

1. Its upstream dependencies have been audited.
2. It fits the agreed Production boundaries.
3. It has passed the relevant Mandatory Migration Tests.
4. Any required prototype evidence exists, or the item remains explicitly Open.
5. Its interactions with adjacent systems are documented.
6. Its art/animation implications are understood.
7. Its save/state and implementation implications are bounded.
8. References and Lessons have been documented where material.
9. The Integration Audit finds no unresolved contradiction that would materially alter it.
10. The Canon Migration Proposal explicitly maps it to the old Blueprint.
11. Taylor explicitly approves promotion.

Until item 11 occurs, the proposal remains working material.

---

## 10. Final Governing Rule

When choosing between preserving an old idea and adopting a Production replacement, use this priority order:

1. **Preserve Wayside's identity.**
2. **Preserve the recurring player experience.**
3. **Preserve clarity and readability.**
4. **Preserve the ability to finish the game.**
5. Preserve mechanical breadth only after the first four are satisfied.

> **The Production Edition is not judged by how much of the old Blueprint survives. It is judged by whether the finished game delivers the strongest possible version of Wayside that Taylor + AI can realistically complete.**
