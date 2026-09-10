# Wayside — Production Edition Foundation Pass 01

**Status:** Working proposal — not settled canon  
**Purpose:** Rebuild Wayside around a scope that Taylor + AI can realistically design, implement, test, and finish while preserving the game's distinctive identity.  
**Relationship to existing Blueprint:** This document does not supersede `docs/Wayside_Game_Design_Blueprint_v0.1.md`. It is an audit/reduction layer used to decide what the eventual Production Edition canon should contain.

> **Production rule:** Wayside is an authored adventure with systemic consequences, not a general-purpose fantasy-life simulation. The player should feel that the world responds deeply without requiring the game to simulate every process that could plausibly exist.

---

## 1. What Production Edition Must Preserve

The following are the current **non-negotiable identity candidates**. If a proposed cut damages several of these at once, the cut is probably too deep.

### 1.1 Roads are the central structure

Roads are not merely level transitions. Their condition, safety, meaning, ownership, and restoration affect travel, communities, trade, access, political power, and the covenant.

### 1.2 The player becomes a roadwarden through action

The protagonist begins as an experienced traveler without official authority. The game should not declare them important at character creation. Their identity develops because they repeatedly investigate problems, help or fail communities, make infrastructure decisions, learn the covenant, and accept responsibility.

### 1.3 Problems have material and moral dimensions

A broken bridge is not only a repair puzzle. Who uses it? Who pays? What land does it open? Who becomes vulnerable? What old agreement does it disturb? Most important projects should create at least one meaningful tradeoff.

### 1.4 The world visibly remembers consequences

The player should return to places and see that decisions mattered: routes change, traffic changes, people move or react, services appear or disappear, dialogue changes, prices or supplies shift, and the supernatural condition of a place may improve or worsen.

The game does **not** need a universal simulation to achieve this. Authored state changes are acceptable and often preferable.

### 1.5 Grounded life makes the uncanny matter

Most of the world should feel materially understandable: roads, tools, animals, food, weather, timber, stone, labor, trade, injury, shelter. Covenant phenomena become powerful because they interrupt an otherwise legible world.

### 1.6 The player has meaningful approach freedom

Wayside should not demand one solution type. Combat, negotiation, investigation, preparation, practical work, knowledge, companions, and route choice should provide multiple approaches where the content supports them.

This is **authored freedom**, not the North Star promise that every conceivable lifestyle is a fully simulated career.

---

## 2. Core Player Verbs

Production Edition should be designed around a small number of verbs that recur throughout the entire game.

### Primary verbs

1. **Travel** — choose routes, prepare, move through changing road conditions, and encounter consequences.
2. **Investigate** — inspect places, question people, compare accounts, read physical evidence, and determine what is actually wrong.
3. **Choose** — decide who to trust, what solution to support, what obligation to accept, and what cost is tolerable.
4. **Repair / Alter** — carry out or direct a concrete intervention in a road, crossing, boundary, settlement connection, or related infrastructure.
5. **Return / Witness** — revisit the world after intervention and observe persistent consequences.

### Supporting verbs

6. **Fight** — resolve some dangerous situations through readable, grounded action combat.
7. **Prepare** — select equipment, provisions, tools, medicine, route knowledge, and companion support.
8. **Learn** — gain practical techniques, world knowledge, and covenant understanding from experience, people, and places.

### Design consequence

A major system that does not materially deepen at least one primary verb — or several supporting verbs — is immediately suspect.

---

## 3. Core Loop — Production Edition

A representative loop should remain understandable in one sentence:

> **Hear about a problem → prepare and travel there → investigate what is really happening → deal with local danger/people → choose and carry out a solution → return later and see what changed.**

Expanded form:

1. Receive a lead or encounter a road problem.
2. Gather route and local information.
3. Prepare equipment, supplies, tools, and companion if relevant.
4. Travel through the road network.
5. Explore a compact local area.
6. Investigate causes and stakeholders.
7. Confront danger through combat, avoidance, negotiation, or another authored approach.
8. Select a practical solution with consequences.
9. Participate in the critical repair / ritual / intervention.
10. Allow time or travel to pass.
11. Return and witness persistent changes.
12. Carry new consequences, relationships, knowledge, and opportunities back toward Wayside.

If a feature cannot fit naturally into this loop, it should not automatically become a major subsystem.

---

## 4. Hard Production Constraints

These are proposed **design constraints**, not excuses to be revisited after systems are already built.

### 4.1 Team constraint

The game must be governable and finishable by:

- one human creative director / tester with no professional game-development background;
- AI assistance for design, programming, documentation, content production, debugging, and asset workflows;
- limited or no assumption of paid specialist labor.

A system that requires a dedicated economy designer, animator, technical artist, or simulation engineer to remain healthy is probably too large unless it is central to the game.

### 4.2 Art constraint

Gameplay remains **painterly low-detail 2D top-down** unless later prototyping disproves its feasibility.

Therefore:

- combat must read through large, clear silhouettes and motion;
- subtle body-language mechanics should not be required for comprehension;
- weapon families should reuse animation structure wherever possible;
- important techniques should create visibly distinct actions rather than tiny timing/statistical differences;
- environment production must favor reusable modular assets and strong composition over huge unique asset counts.

Ink-and-wash presentation can remain for maps, journals, portraits, diagrams, and major decisions where still images provide high value without animation burden.

### 4.3 Content constraint

Production Edition should prefer **fewer locations with stronger state changes** over a large world with thin content.

**Provisional target for later validation:** Wayside plus roughly 2–3 major regions, not five fully developed regions at launch.

### 4.4 Runtime-simulation constraint

Simulate only where ongoing systemic behavior creates visible player value.

Prefer authored or state-driven consequence systems for:

- local economic changes;
- NPC routine changes;
- project outcomes;
- settlement improvements;
- regional responses.

Avoid building a universal economy, universal NPC life simulator, or generalized construction simulation unless a later prototype demonstrates that one is essential.

### 4.5 Interface constraint

The player should not need to manage multiple overlapping progression currencies, profession dashboards, production chains, or settlement spreadsheets to understand their character or the world.

Depth should come primarily from decisions and context, not administrative UI.

---

## 5. North Star Quarantine Rule

North Star ideas remain valuable as **fantasy references**, not automatic Production Edition requirements.

When a North Star feature is considered for Wayside, ask:

1. What feeling or player fantasy was this feature supposed to create?
2. Is that feeling central to the roadwarden journey?
3. Can an authored state change, small reusable mechanic, or limited content set create the same feeling?
4. What new art, UI, code, balancing, simulation, content, and QA burden does the full feature create?
5. If the feature is removed, does Wayside become less distinctive — or merely less feature-rich?

Example:

- **North Star desire:** fully simulated regional economy.
- **Underlying feeling:** reopening a road changes who can trade and what communities can obtain.
- **Production implementation:** authored commodity/merchant/price state changes tied to major route conditions.

The player gets the consequence without the project inheriting an economy simulator.

---

## 6. Systems Under Immediate Reconsideration

The following existing Blueprint areas should be treated as **unsettled for Production Edition** until reviewed against the constraints above:

- 35–50 hour target.
- Five-region content target.
- Eight fully distinct weapon families.
- Four-Technique / three-Form / one-Keystone progression loadout.
- Archetype architecture.
- Large progression webs.
- Broad completionist ownership of progression paths.
- Layered armor/resistance granularity.
- Modular crafting breadth and eventual mastery of every trade.
- Simulated markets, caravans, production, and shortages.
- Detailed settlement facility/operator systems.
- Detailed NPC schedules.
- Six major companions.
- Six broad ending families plus highly reactive playable epilogue.

**Important:** “under reconsideration” does not mean “cut.” It means the feature must now justify its production cost from first principles.

---

## 7. Systems Presumed Safe Unless the Audit Finds Otherwise

These concepts currently appear strongly aligned with Production Edition and should be preserved unless implementation proves otherwise:

- Covenant roads and failing boundaries.
- Wayside as the central crossroads settlement.
- Informal roadwarden identity earned through play.
- Interconnected route map plus compact local exploration areas.
- Route knowledge and imperfect cartography.
- Weather affecting travel and local conditions in readable ways.
- Investigation before major interventions.
- Authored infrastructure solutions with real tradeoffs.
- Persistent consequence states.
- Political disagreement about the covenant and human expansion.
- One optional active companion at a time.
- Grounded equipment ownership rather than loot treadmill.
- Surrender, retreat, and nonlethal outcomes where context supports them.
- Deterministic knowledge/skill checks rather than random percentage rolls.
- Painterly gameplay with ink-and-wash presentation.
- Accessibility and generous saving.

---

## 8. First Scope Hypothesis

This is intentionally **Provisional** and exists to give the audit something concrete to attack.

A plausible Production Edition might target:

- **8–15 hours** for a thorough first playthrough.
- **Wayside + 2 major regions**, with a third only if production proves healthy.
- **2–3 major companions**.
- **3–5 readable weapon/animation families** rather than eight deeply bespoke combat families.
- a compact learned-skill/progression system rather than large interconnected trees.
- a small number of equipment pieces worth maintaining/refitting rather than a broad loot/crafting economy.
- **6–10 major infrastructure decisions/projects** with strong authored consequences.
- a limited set of Wayside upgrades directly tied to player priorities.
- **3–4 ending structures** whose differences can be meaningfully supported.

The exact numbers are not decisions. They are the current feasibility envelope to test.

---

## 9. Next Audit Order

Do not resume Archetype or progression design until the preceding layers are stable.

1. **Core fantasy and verbs** — validate this document.
2. **Combat** — define what painterly low-detail 2D can support elegantly.
3. **Progression** — determine what advancement the actual combat/world verbs require.
4. **Equipment** — preserve ownership/customization while controlling art and UI burden.
5. **Travel/weather/cartography** — identify which pieces deserve real simulation.
6. **Roadwork/projects** — define the smallest system that still produces meaningful stewardship.
7. **NPC/community consequence model** — determine what is authored, state-driven, or simulated.
8. **Crafting/economy** — retain only what directly supports the production game's recurring loop.
9. **Narrative scope** — regions, companions, factions, endings, epilogue.
10. **Vertical slice** — rewrite only after the above architecture is coherent.

---

## 10. Foundation Test

Production Edition is on course if the following pitch remains true even after major cuts:

> **Wayside is a top-down 2D RPG about an experienced traveler who becomes an informal roadwarden as ancient covenant roads begin to fail. The player travels a compact interconnected region, investigates why roads and communities are going wrong, deals with danger and competing interests, chooses how to repair or replace what has failed, and returns to a world visibly changed by those decisions.**

If the game can deliver that experience convincingly, it is Wayside.

Everything else must earn its place.