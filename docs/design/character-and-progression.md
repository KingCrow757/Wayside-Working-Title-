# Wayside — Character and Progression Design Spec

**Document version:** 0.1  
**Status:** Active subsystem canon and redesign workspace  
**Parent blueprint:** `docs/Wayside_Game_Design_Blueprint_v0.1.md`  
**Scope:** Character creation, character identity, attributes, progression, disciplines, specialization, retraining, and build identity

> This file is the detailed reference for Wayside's character and progression systems. The main Game Design Blueprint remains the authoritative overview of the whole game. Where this file contains a newer, more specific character/progression decision than the Blueprint, this file should be treated as the current subsystem reference until the Blueprint is refreshed.

---

## 1. Decision-State Legend

Use these labels deliberately so brainstorming does not silently become canon.

- **Settled:** Current design decision. Change only through an explicit revision.
- **Current Direction:** Preferred design direction, but still under active development.
- **Open:** Deliberately unresolved.
- **Provisional:** Working implementation target that must be tested.
- **Superseded:** Retained only for historical clarity; no longer part of the current design.

---

## 2. Core Design Goal

**Settled:** The player's mechanical identity should matter, but Wayside should primarily be about the player's decisions, relationships, reputation, learned experience, and consequences rather than about fulfilling a fixed class fantasy.

Character progression should support the following arc:

**How I started → where I came from → what I learned → what I did.**

The final category—what the player actually did—should carry the greatest narrative weight.

This means the game should preserve recognizable build identity without allowing a starting class label to become the protagonist's defining social, narrative, or mechanical fact for the entire campaign.

---

## 3. Character Identity Layers

### 3.1 Archetype

**Current Direction:** Character creation includes a broad **Archetype** choice.

The Archetype answers:

**“How does this character naturally tend to approach problems when the story begins?”**

It is primarily a gameplay foundation rather than a formal in-world profession.

Possible Archetype functions include:

- Starting attribute emphasis or weighting.
- Starting equipment.
- Initial techniques or progression access.
- Early familiarity with selected forms of combat or problem-solving.
- A modest aptitude that helps the Archetype remain legible after the opening hours.

The Archetype must **not** impose hard long-term equipment or discipline restrictions.

A character who begins with a frontline orientation may later become an excellent bow user. A character with an unusual or supernatural starting aptitude may later learn serious martial technique. Equipment remains softly specialized through attributes, mastery, technique compatibility, and investment rather than arbitrary class locks.

**Open:**

- Number of Archetypes.
- Archetype names.
- Exact mechanical effects.
- Whether Archetype benefits remain strongly relevant through level 50 or primarily shape the opening game.
- Whether Archetype is shown as a prominent permanent label on the character sheet.
- Whether NPCs ever recognize Archetype directly. The current preference is that they usually do not.

### 3.2 Background

**Current Direction:** Character creation separately includes a **Background** choice focused on history, upbringing, social context, and world integration.

The Background answers:

**“Where did this person come from, and what shaped them before the game began?”**

Background should primarily affect:

- Dialogue and recognition.
- Cultural or regional familiarity.
- Starting contacts or acquaintances.
- Knowledge and contextual understanding.
- Personal leads or alternate quest approaches.
- Minor practical proficiencies.

Background mechanical benefits should remain modest enough that roleplay is not routinely overridden by optimization.

A Background and Archetype may deliberately contrast. The system should support combinations such as a mechanically aggressive fighter from a scholarly household or a supernatural-leaning character from an ordinary rural upbringing.

The existing Blueprint currently lists **Origin, Former Trade, Formative Experience, and Personal Outlook** as separate chosen protagonist elements. These should be treated as material to consolidate, reinterpret, or partially preserve within the Background system rather than as four guaranteed independent selectors.

**Open:**

- Whether Background is one curated package or assembled from two or more smaller choices.
- Exact Background roster.
- Whether Former Trade remains a separate choice.
- Whether Personal Outlook belongs in character creation or is better expressed through dialogue and decisions.
- Exact balance between narrative and mechanical effects.

### 3.3 Learned Disciplines

**Current Direction:** The player's later mechanical identity emerges through **learned disciplines, techniques, equipment mastery, mentors, organizations, discoveries, and practice** rather than through a permanent starting class.

Potential sources of progression access include:

- Trainers and mentors.
- Factions, schools, guilds, or traditions.
- Manuals and manuscripts.
- Exploration and discoveries.
- Weapon use and mastery trials.
- Major experiences or quest outcomes.
- Facilities and specialists developed through Wayside.

The goal is **curated freedom**, not unrestricted ability shopping.

A capability should often have an in-world reason for becoming learnable. The player may eventually learn broadly, but meaningful expertise requires enough investment that every character does not trivially converge on the same collection of strongest abilities.

**Open:**

- Final term: Discipline, Tradition, Practice, Vocation, or another term.
- Number and breadth of major progression paths.
- Exact discovery and prerequisite rules.
- Whether some disciplines require explicit membership, apprenticeship, reputation, or world-state conditions.
- Whether formal in-world titles emerge from training, affiliation, behavior, or some combination.

### 3.4 Reputation and Lived History

**Settled:** The player's actions should ultimately matter more to the world than their starting mechanical Archetype.

NPC and faction responses should primarily be grounded in things such as:

- People helped or harmed.
- Promises kept or broken.
- Settlements protected, altered, or abandoned.
- Infrastructure policies enacted.
- Factions supported or opposed.
- Relationships formed.
- Knowledge demonstrated.
- Organizations joined.
- Training visibly undertaken.
- Reputation and remembered conduct.

Two characters with the same Archetype and Background should be able to become meaningfully different people in-world.

---

## 4. Leveling and Advancement

### 4.1 Character Level

**Settled:** Character level cap is **50**.

**Settled:** There is currently no uncapped post-level Renown system planned.

Experience should come from broad accomplishment rather than repetitive grinding, including:

- Quests and investigations.
- Discoveries.
- Major projects.
- Combat firsts and significant encounters.
- Diplomacy and negotiation.
- Craft milestones.
- Training accomplishments.
- Major decisions and regional consequences.

Repetition should provide little character experience.

### 4.2 Progression Points

**Current Blueprint Baseline:**

- Character creation grants the first progression node.
- Levels 2–50 provide 49 additional progression points.
- Optional teachers, personal quests, manuals, discoveries, and mastery trials can provide additional points required for very broad completion.
- Points may be banked.
- Revealed perks are learned at safe rest sites.

**Open:** Exact point economy after the Archetype/Discipline redesign.

---

## 5. Progression-Web Structure

The old fixed-class structure has been discarded, but several progression-web principles remain useful.

### 5.1 Retained Principles

**Current Direction:**

- Interconnected webs with cross-links rather than strictly linear branches.
- Approximately 35 impactful nodes for a major primary path as a working scope target.
- Avoid filler nodes and excessive tiny percentage increases.
- Progressive revelation through prerequisites, experience, teachers, manuals, and discovery.
- Bankable points.
- Learning revealed perks at safe rest sites.
- Limited loadout slots preserve active specialization even after broad ownership.
- A completionist should eventually be able to own every perk within the character's legitimately developed paths.

### 5.2 Node Categories

**Current Direction:** Retain the following useful categories unless the redesign exposes a better structure.

- **Techniques:** Manually activated abilities. Current target: four equipped progression Techniques.
- **Forms:** Equipped passive or stance-like build definitions. Current target: three equipped Forms.
- **Augments:** Modifications or extensions to learned abilities, attacks, defenses, tools, or interactions.
- **Keystones:** Major build-defining passive choices. Current target: one equipped Keystone.
- **Foundational Perks:** Permanent learned competencies that remain active without occupying a loadout slot.

**Open:** Whether all four categories survive unchanged after Archetypes and Disciplines are finalized.

---

## 6. Attributes

### 6.1 Working Attribute Set

**Provisional:** Six attributes remain the working model.

- **Brawn:** force, heavy handling, labor, physical obstacles.
- **Deftness:** coordination, precision, fine craft, stealthy movement.
- **Grit:** health, stamina, resistance, carrying strain, harsh travel.
- **Vigilance:** perception, tracking, ranged judgment, route scouting.
- **Wit:** investigation, lore, planning, technical work, covenant analysis.
- **Bearing:** persuasion, leadership, negotiation, composure.

Attributes should remain specialized rather than all reaching maximum.

**Provisional:** Attribute increases are manually assigned every few levels; every three levels is the current working cadence.

**Open:**

- Whether Archetype modifies starting values, growth, caps, or only initial allocation.
- Exact interaction between attributes and deterministic noncombat checks.
- Exact numerical scaling.

---

## 7. Build Identity Without Hard Classes

**Settled Goal:** Freedom must not collapse into build homogenization.

Wayside should prevent “character soup” primarily through **opportunity cost and loadout limits**, not arbitrary prohibitions.

Potential constraints include:

- Progression-point cost.
- Prerequisite chains.
- Depth requirements before advanced techniques become available.
- Trainer, discovery, reputation, or organizational access.
- Equipment compatibility.
- Attribute requirements or effectiveness scaling.
- Limited equipped Technique, Form, and Keystone slots.
- Mutually competing Forms or active specializations.
- Time and resource investment.
- Mastery trials or practice requirements.

The desired philosophy is:

**“Yes, you can learn this—but becoming excellent at it requires meaningful investment.”**

The system should allow unusual combinations while ensuring that deep specialization still has a recognizable advantage over shallow collection of unrelated high-value nodes.

---

## 8. Equipment and Mastery Relationship

**Settled:** Equipment uses **soft specialization**.

Most practical gear may be equipped by any character. Effectiveness depends on:

- Attributes.
- Weapon or equipment mastery.
- Learned Techniques and Forms.
- Handling characteristics.
- Training and compatible progression investment.

Gear grants access to actions; training determines how effectively and flexibly those actions can be used.

**Settled:** Weapon families remain mastery-based rather than class-locked.

Current full-game weapon-family target:

1. Swords.
2. Knives and short blades.
3. Axes.
4. Maces and hammers.
5. Spears and polearms.
6. Bows.
7. Crossbows.
8. Staves and quarterstaves.

Major weapon techniques come from trainers, trials, manuals, distinctive wielders, and exploration rather than repetitive low-risk grinding.

---

## 9. Retraining and Specialization Changes

**Settled:** Attribute and spent-perk redistribution should be costly but repeatable at Wayside through time, resources, and appropriate instruction.

The goal is to prevent permanent early-game mistakes without enabling instant counter-build switching before every encounter.

**Current Direction:** Changing among already learned specializations should be cheaper and conceptually distinct from a full respec. It should occur through preparation at safe rest sites and may cost time or minor supplies.

**Open:** Exact specialization structure after the Discipline redesign.

---

## 10. Completionism

**Settled Goal:** Wayside should support meaningful long-term breadth without requiring the player to permanently lock away large portions of the progression system.

**Current Direction:** A completionist may eventually own every perk within the character's **legitimately developed paths**.

This does **not** necessarily mean one character can automatically unlock every Discipline in the game.

Build identity should survive broad ownership through:

- Four equipped Techniques.
- Three equipped Forms.
- One equipped Keystone.
- Equipment and mastery choices.
- Attribute specialization.
- Companion doctrine.
- Any additional active-specialization structure that survives redesign.

**Open:** Define the exact completion boundary: what counts as a legitimately developed path, whether all Disciplines can be opened on one save, and what world-state requirements can permanently or temporarily limit access.

---

## 11. In-World Recognition

**Current Direction:** Archetype should primarily be a character-creation/gameplay construct. NPCs should generally recognize things that actually exist in the fiction:

- Background and origin.
- Trade or upbringing where relevant.
- Equipment and visible technique.
- Formal training.
- Organizational membership.
- Titles earned.
- Reputation and remembered actions.

A formal in-world title may emerge later through explicit training, affiliation, achievement, or recognized behavior.

The game should avoid repeatedly reducing the protagonist to a starting Archetype label.

**Open:** Whether any Archetype receives limited direct in-world recognition in special contexts.

---

## 12. Protagonist Anchors

**Settled from the Blueprint unless later revised:**

- The protagonist is an experienced independent traveler.
- They possess practical road and survival knowledge.
- They arrive at Wayside without official roadwarden authority.
- They possess unusual sensitivity to covenant failures.

**Open:**

- Source of covenant sensitivity.
- Exact Background roster.
- How much prior competence can vary without contradicting the experienced-traveler anchor.
- Whether Background components alter starting contacts, regions of familiarity, practical skills, or personal leads.

---

## 13. Superseded Class Model

**Superseded:** The following early-prototype structure is no longer current canon:

- Vanguard.
- Ranger.
- Arcanist.
- Resolve, Momentum, and Focus resource loops.
- Their associated branch identities.
- Three derived hybrid classes.

Do not use these systems as assumptions when designing new progression content.

Their existence may still be useful as historical reference when identifying what did or did not work, but no new design should attempt to preserve them merely for continuity.

---

## 14. Open Decision Register

Resolve these roughly in order because later choices depend on earlier ones.

1. Define the number and conceptual breadth of Archetypes.
2. Decide exactly what an Archetype changes mechanically at character creation.
3. Decide whether Archetype has an enduring mechanical effect or mostly establishes the opening build.
4. Define the Background model: one package, multiple component choices, or a hybrid.
5. Determine how the Blueprint's Origin / Former Trade / Formative Experience / Personal Outlook concepts map into Background.
6. Choose the final term and structure for learned Disciplines or equivalent progression paths.
7. Define how Disciplines are discovered, taught, practiced, and unlocked.
8. Define cross-training and depth requirements.
9. Define the exact completion boundary.
10. Decide what, if anything, prevents one character from eventually opening every Discipline.
11. Confirm which progression node categories survive: Techniques, Forms, Augments, Keystones, foundational perks.
12. Define the relationship between Archetype, attributes, and the first progression node.
13. Define any resource loops required by specific disciplines without assuming conventional mana or resurrecting discarded class resources.
14. Define formal in-world titles and how they are earned.
15. Reconcile the completed character system back into the main Game Design Blueprint.

---

## 15. Vertical-Slice Requirements

The first playable slice does **not** need the final complete progression system.

It should prove only the pieces necessary to validate the broader design:

- One temporary or prototype Archetype implementation if Archetypes survive the redesign.
- One Background hook with at least one visible narrative consequence.
- One weapon family.
- Two prototype Techniques.
- A small number of foundational perks or Forms sufficient to test loadout identity.
- One trainer, discovery, or other in-world progression unlock.
- One safe-rest learning or specialization interaction.
- Evidence that equipment remains usable outside arbitrary class restrictions.

The slice should be structured so a second Archetype, Background, weapon path, or Discipline is easier to add than the first.

---

## 16. Revision Protocol

This file is intended to change often while the system is being designed.

When revising:

1. Update **Current Direction** material freely as the design develops.
2. Change **Settled** material only when the project explicitly reverses or materially revises a decision.
3. Move obsolete architecture to **Superseded** rather than leaving contradictory rules active in multiple sections.
4. Record a separate decision note under `docs/decisions/` only for major architectural choices or reversals whose rationale is likely to matter later.
5. Periodically refresh the main Game Design Blueprint so its overview remains consistent with this subsystem spec.

The purpose of this document is to let design conversations remain exploratory while giving the project one durable, inspectable statement of the character system's current state.
