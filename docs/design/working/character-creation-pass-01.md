# Wayside — Character Creation Design Pass 01

**Status:** Working proposal — not settled canon  
**Parent spec:** `docs/design/character-and-progression.md`  
**Purpose:** Develop the Archetype + Background model far enough to evaluate before promoting decisions into the canonical character/progression spec.

> This document is deliberately a working design pass. Nothing here supersedes the parent spec unless a later revision explicitly promotes it to **Settled** or **Current Direction** there.

---

## 1. Design Target

Character creation should give the player an immediate, readable mechanical identity without deciding who the protagonist must remain for the next fifty levels.

The desired structure is:

**Archetype → how I tend to approach problems at the start**  
**Background → where I came from and what I already know**  
**Learned Disciplines → what I become capable of through play**  
**Reputation and decisions → who the world believes I am**

The system should avoid both extremes:

- Fixed classes that dominate equipment, progression, dialogue, and long-term identity.
- Fully classless character creation that gives the player no readable starting shape and encourages immediate optimization from one giant menu.

---

## 2. Archetype Model

### Recommendation: four broad approach Archetypes

Four is the current preferred count for the first full design pass.

Three risks recreating the familiar warrior / rogue / mage triangle even if renamed. Five or more begins adding character-creation complexity before the player understands Wayside's systems. Four provides enough coverage for distinct starting playstyles while remaining broad.

The Archetypes should be defined by **approach**, not profession, weapon family, faction, or social identity.

### Archetype A — Direct / Steadfast

**Fantasy:** Meet danger head-on, control space, endure pressure, and solve physical problems decisively.

Likely mechanical lean:

- Brawn / Grit emphasis.
- Stronger initial defensive fundamentals.
- Early access to a guard, brace, control, or committed-power Technique/Form.
- Starting equipment biased toward physical protection or stability.

Must remain compatible with swords, axes, maces, spears, staves, bows, crossbows, or other equipment if the player invests appropriately.

### Archetype B — Mobile / Precise

**Fantasy:** Win through positioning, timing, precision, awareness, and controlled risk.

Likely mechanical lean:

- Deftness / Vigilance emphasis.
- Stronger initial repositioning, disengagement, aimed attack, or opportunistic Technique/Form.
- Starting equipment biased toward mobility and practical scouting.

This is not the “rogue” or “archer” class. It can support a spear fighter, mobile swordsman, crossbow user, staff fighter, scout, or other precise build.

### Archetype C — Prepared / Resourceful

**Fantasy:** Solve problems by arriving with the right knowledge, tool, plan, material, or contingency.

Likely mechanical lean:

- Wit plus a secondary attribute selected or influenced by the player's other choices.
- Early access to preparation, item, tool, trap, craft, investigation, or tactical-control benefits.
- Stronger opening flexibility rather than superior raw combat output.

This Archetype is important because Wayside is not purely a combat game. Character creation should support a player whose defining early strength is practical competence rather than direct fighting style.

### Archetype D — Attuned / Uncanny

**Fantasy:** Notice and interact with covenant failures, relational magic, wards, boundaries, and other abnormal forces more readily than most people.

Likely mechanical lean:

- Wit plus Vigilance, Bearing, or another secondary emphasis depending on implementation.
- Earlier access to a ward, mark, perception, redirection, or covenant-interaction Technique/Form.
- Greater opening fluency with supernatural problems without becoming a conventional spellcaster class.

This Archetype must not imply generic mana, elemental schools, or unrestricted combat magic. Its play should remain consistent with Wayside's relational and conditional magic.

**Important:** The protagonist already possesses unusual sensitivity to covenant failures as a fixed narrative anchor. This Archetype therefore cannot mean “the only character who can perceive the supernatural.” It should instead represent a character who begins with greater practical fluency, confidence, or learned response to that sensitivity.

### Working-name policy

The labels above are conceptual descriptors, not proposed final player-facing names. Final naming should happen only after the mechanical boundaries are accepted.

---

## 3. What Archetype Should Actually Change

### Recommendation: Archetype is a starting package, not a permanent class modifier

An Archetype should determine a small number of highly visible opening choices:

1. **Starting attribute emphasis** — modifies the initial distribution or recommended allocation, not permanent attribute caps.
2. **One starting foundational perk or Form** — establishes immediate playstyle identity.
3. **One early Technique or equivalent unlock** — gives the Archetype something tangible in the first combat/problem-solving sequences.
4. **Starting gear orientation** — armor weight, tools, prepared items, or utility equipment appropriate to the approach.
5. **Tutorial emphasis / early affordance** — the opening naturally demonstrates what that approach is good at.

### Recommendation: starting weapon family is selected separately

Archetype should **not** hard-code the player's starting weapon family.

A Direct character might start with a spear, sword, hammer, axe, staff, bow, or crossbow. A Mobile character might do the same. The weapon selection defines **what the player fights with**; the Archetype defines **how the character tends to approach the fight and surrounding problems**.

Separating these choices dramatically increases combination space without requiring more Archetypes.

### Recommendation: no exclusive permanent Archetype powers

Archetype-granted perks and Techniques should generally be learnable later by characters who began elsewhere if they meet the proper training or progression requirements.

The Archetype's value is:

- Early access.
- Initial synergy.
- Lower friction entering that style.
- A coherent starting package.

It should not grant an exclusive +X% scaling bonus, unique level-50 capstone, inaccessible equipment category, or permanent hidden efficiency multiplier.

This allows Archetype to matter strongly in the opening without turning it into a class under another name.

### Expected long-term effect

By the midgame, the original Archetype should remain **historically visible in the build**, but not mechanically sovereign.

A player who keeps investing along the starting tendency naturally deepens it. A player who deliberately retrains and cross-trains can become something very different.

---

## 4. Background Model

### Recommendation: Background is built from two primary components

Rather than one giant packaged Background or four independent biography selectors, use:

1. **Origin** — where and in what social environment the character was raised.
2. **Former Trade** — the practical work, service, apprenticeship, or livelihood that most shaped their competence before the campaign.

Together these create the Background presented to the player.

Example combinations:

- Rural origin + former caravan hand.
- Market-town origin + militia service.
- Monastic origin + craft apprenticeship.
- Upland origin + clerk or survey work.
- Road-raised origin + herbal or medical work.

The combinations should be allowed to cross expected stereotypes whenever they remain plausible.

### Why two components

**One package** is easy to understand but creates a large authoring burden if the game wants many combinations.

**Four independent selectors** — Origin, Former Trade, Formative Experience, Personal Outlook — create more character-creation friction and more narrative state than the game currently needs.

Origin + Former Trade provides enough combinatorial identity to make characters distinct while keeping dialogue flags and content authoring tractable.

---

## 5. Mapping the Existing Blueprint Choices

The Blueprint currently lists Origin, Former Trade, Formative Experience, and Personal Outlook.

### Origin

**Recommendation: preserve as a primary Background component.**

Origin can affect:

- Regional and cultural familiarity.
- Accents of knowledge rather than literal voiced accent.
- Recognition by some NPCs.
- Starting contacts.
- Local customs and historical context.
- Occasional alternate dialogue or investigation approaches.

### Former Trade

**Recommendation: preserve as the second primary Background component.**

Former Trade can affect:

- One minor practical proficiency.
- Tool familiarity.
- Starting equipment or supplies.
- Professional recognition.
- Deterministic noncombat approaches.
- A small number of personal leads or contacts.

Its benefits should be useful but modest enough that a roleplaying choice is not punished by a clearly superior optimization pick.

### Formative Experience

**Recommendation: do not make this a required full mechanical selector in the first implementation.**

Potential future uses:

- Optional character-history prompt.
- One early dialogue choice that establishes a past event.
- A narrative tag with little or no numerical effect.
- A personal lead or later callback.

This can be added later if Origin + Former Trade does not provide enough characterization.

### Personal Outlook

**Recommendation: remove as a fixed character-creation selector.**

Wayside's central design principle is that the protagonist should be defined primarily by decisions. Asking the player to predeclare a worldview risks telling the game who the character is before the player has inhabited them.

Outlook should emerge through:

- Dialogue choices.
- Promises.
- Project decisions.
- Treatment of factions and communities.
- Repeated patterns of conduct.

The game may remember those patterns, but it should not require the player to choose “Pragmatist,” “Idealist,” or an equivalent personality label before play begins.

---

## 6. Background Mechanical Budget

Background should primarily create **world affordances**, not combat power.

Recommended effect budget per component:

### Origin may grant

- One familiarity / knowledge tag.
- One contact, recognition opportunity, or relationship hook.
- One minor starting item, language/custom familiarity, or route-information advantage where appropriate.

### Former Trade may grant

- One practical proficiency or deterministic approach.
- One related tool or starting supply package.
- One professional recognition tag.

Background should avoid:

- Percentage damage bonuses.
- Permanent health or stamina superiority.
- Unique combat abilities unavailable elsewhere.
- Large attribute advantages.
- Bonuses strong enough to make one Background the obvious build choice.

The ideal Background benefit produces moments of **“my character knows how to handle this because of who they used to be”**, not **“I chose this because the spreadsheet says it has the highest DPS.”**

---

## 7. Relationship Between Archetype and Background

The systems should remain mechanically distinct.

### Archetype asks

**How do you tend to operate?**

It primarily changes the opening gameplay package.

### Background asks

**Where did you come from, and what did you do before this?**

It primarily changes knowledge, recognition, tools, and narrative affordances.

Neither choice should automatically determine the other.

A scholarly or monastic Background can pair with a Direct Archetype. A militia Background can pair with a Prepared Archetype. A rural Background can pair with an Attuned Archetype.

Unexpected but plausible combinations are a feature, not a problem.

---

## 8. In-World Recognition

### Recommendation: Archetype is mostly metagame; Background and later training are diegetic

NPCs generally should not say:

> “Ah, you're an Attuned.”

unless the final setting develops a genuine in-world concept that happens to map naturally to that category.

NPCs can recognize:

- Where the protagonist is from.
- Their former occupation.
- How they carry themselves or what equipment they use.
- Specific techniques.
- Training received from an organization or mentor.
- Formal titles.
- Reputation and remembered decisions.

Later **Disciplines** or equivalent learned traditions are the better place for class-like in-world identity because the player actually earns them through the fiction.

---

## 9. Why This Structure Fits Wayside

This model creates four separate layers without making any one layer carry the whole character system:

| Layer | Primary job | Stability |
| --- | --- | --- |
| Archetype | Starting gameplay identity | Flexible after the opening |
| Background | Biography and world context | Historically fixed |
| Discipline | Learned expertise | Expands through play |
| Reputation / decisions | Lived identity and consequence | Continuously evolving |

The result supports the desired character arc:

**How I started → where I came from → what I learned → what I did.**

The player's final identity is therefore neither classless mush nor a permanent class label.

---

## 10. Risks to Test

### Archetype becomes a class in disguise

Warning signs:

- Permanent exclusive abilities.
- Endgame Archetype trees.
- NPCs constantly identifying the player by Archetype.
- Weapons or Disciplines locked by Archetype.
- Strong permanent scaling tied to the creation choice.

### Archetype becomes meaningless

The opposite failure is possible if it changes only cosmetic starting gear.

The opening hours should feel meaningfully different through technique access, attribute emphasis, equipment orientation, and problem-solving affordances.

### Prepared becomes the “noncombat option”

All Archetypes must have both combat and noncombat relevance. Prepared should not become the choice for players who “don't care about fighting,” nor should Direct become useless outside combat.

### Attuned becomes mandatory for the main story

Because covenant investigation is central to Wayside, the Attuned Archetype cannot hold required perception or interaction abilities hostage. It should provide earlier or richer options, not exclusive access to the main plot.

### Background authoring explodes combinatorially

Dialogue should generally query Origin and Former Trade separately rather than requiring bespoke writing for every possible pair. Special combination-specific moments can exist sparingly.

---

## 11. Immediate Decisions Needed Before Pass 02

1. Keep **four** Archetypes or revise the count.
2. Confirm the four conceptual spaces: Direct, Mobile, Prepared, Attuned.
3. Confirm that starting weapon family is a separate choice.
4. Confirm that Archetype grants early access rather than permanent exclusive powers.
5. Confirm **Origin + Former Trade** as the Background structure.
6. Decide whether Formative Experience is deferred, optional, or removed entirely.
7. Confirm that Personal Outlook emerges through play instead of being chosen at creation.
8. Build the first actual Origin roster.
9. Build the first actual Former Trade roster.
10. Only after those decisions, move on to the learned Discipline architecture.

---

## 12. Current Recommendation Snapshot

If this pass were accepted unchanged, character creation would contain:

1. **Archetype** — one of four broad starting approaches.
2. **Origin** — upbringing / regional-social background.
3. **Former Trade** — prior practical experience.
4. **Starting weapon family** — selected separately from Archetype.
5. **Attribute allocation** — influenced by Archetype but still player-controlled.

The player would then acquire class-like in-world identity later through learned Disciplines, organizations, mentors, equipment mastery, titles, and reputation.

This is the current recommended foundation for Pass 02, not settled canon.