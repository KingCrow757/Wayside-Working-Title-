# Wayside — Production Edition Combat Pass 01

**Status:** Working proposal — not settled canon  
**Parent scope:** `docs/design/working/production-edition-boundaries-pass-02.md`  
**Purpose:** Rebuild Wayside combat from production constraints and player experience rather than from the older progression architecture.

> **Combat thesis:** Combat in Wayside should be deliberate, readable, dangerous, and satisfying — but it is a supporting verb inside the roadwarden loop, not the game’s primary content engine.

This pass intentionally does **not** restore Archetypes, Forms, large mastery trees, or the old level-50 progression assumptions. Progression will be designed after the combat vocabulary is stable.

---

## 1. What Combat Is For

Combat earns its place when it does at least one of the following:

- makes travel and neglected roads feel dangerous;
- creates material stakes around preparation, injury, supplies, and route choice;
- expresses differences between people, animals, and covenant-altered threats;
- provides one legitimate way to resolve or reshape an authored problem;
- creates consequences when violence is chosen, avoided, escalated, or ended;
- gives equipment and learned practical techniques tangible meaning.

Combat does **not** exist to:

- fill empty travel time;
- provide repeatable XP farming;
- justify dozens of weapons or skill nodes;
- function as a separate buildcraft game inside Wayside;
- turn every hostile encounter into mandatory killing.

### Production identity

The target is closer to **small tactical skirmishes with strong game feel** than to an action-RPG horde loop.

The player should usually be able to understand:

- who is dangerous;
- why they are dangerous;
- what space is safe or unsafe;
- what their own weapon is good at;
- whether retreat, surrender, stealth, or another approach remains available.

---

## 2. Core Combat Principles

### 2.1 Simple input, deep context

The player should learn the full basic control language early. Later depth comes from enemies, terrain, timing, equipment, preparation, and a small number of learned techniques — not from continuously adding new buttons.

### 2.2 Readability before simulation

At the painterly top-down camera distance, an attack or threat must communicate through large readable information:

- silhouette;
- wind-up;
- direction;
- reach;
- movement;
- sound;
- impact feedback.

A mechanic that requires the player to distinguish tiny hand positions, subtle footwork, or near-identical animation timing is a poor fit for the production art direction.

### 2.3 Enemy combinations create complexity

Individual ordinary enemies should be understandable. Difficulty should come largely from combinations, positioning, terrain, and competing threats.

Do not make every enemy individually clever, evasive, reactive, and counter-heavy. Complexity compounds rapidly once several enemies share the screen.

### 2.4 Violence should have context

Human enemies may flee, surrender, negotiate, or remember violence where authored content supports it. Combat should not mechanically imply that killing every opponent is always the optimal or morally neutral resolution.

### 2.5 Weapons remain viable

Wayside should avoid a vertical loot treadmill where a beloved sword becomes mathematically obsolete thirty minutes later.

New equipment should primarily offer different handling, reach, protection, utility, condition, provenance, or specialization — not simply larger numbers.

### 2.6 Game feel receives explicit production budget

A small combat system that feels excellent is more valuable than a large one that merely functions.

Before adding another weapon family or technique category, prioritize:

- input response;
- readable anticipation;
- hit confirmation;
- animation timing;
- contact sound;
- knockback / stagger clarity;
- controller comfort;
- enemy reaction.

---

## 3. Combat Share of the Game

Wayside is not primarily a combat game.

### Working content target

Across a critical-path playthrough:

- combat should occupy approximately **15–25% of active play time**;
- stretches of investigation, travel, dialogue, repair, and exploration without combat are expected;
- repeated combat should signal escalating danger rather than become routine filler.

### Encounter budget

For the full launch game, aim for approximately:

- **18–24 likely / critical-path combat encounters**;
- **8–12 optional or avoidable combat encounters**;
- **2 major climax encounters**, with a third only if production remains healthy.

These counts describe authored encounter placements, not unique enemy types.

Many human confrontations should permit at least one authored way to avoid, reduce, postpone, or end violence where it makes narrative and systemic sense. This is not required for predatory animals or inherently hostile covenant phenomena.

### Encounter duration

- ordinary skirmish: often **20–60 seconds** once fighting begins;
- dangerous multi-enemy encounter: roughly **1–2 minutes**;
- major climax: roughly **3–5 minutes** of actual combat, excluding dialogue/exploration/setup.

Longer fights must justify themselves through changing behavior or context rather than inflated health.

---

## 4. Baseline Player Combat Vocabulary

The basic launch vocabulary should remain compact enough for immediate controller comprehension.

### Core actions

1. **Move**
2. **Aim / face**
3. **Light attack**
4. **Heavy attack**
5. **Defend**
6. **Quick-step / evade**
7. **Interact / contextual action**
8. **Technique 1**
9. **Technique 2**
10. **Weapon-set / prepared-weapon swap**, if retained after prototyping

This is a ceiling, not a requirement that every input be equally important at all times.

### Explicit exclusions

Do not build the baseline around:

- 8-direction attack selection;
- independent high/low guard directions;
- fighting-game combo inputs;
- stance cycling;
- MMO-style hotbars;
- animation-cancel mastery as an assumed skill floor.

### Aiming hypothesis

**Current Direction:** attacks resolve toward a clear current facing/aim direction. Keyboard/mouse and controller should both support direct directional intention without requiring lock-on.

**Open for prototype:** whether controller aiming is best handled by twin-stick aim, movement-facing plus aim correction, optional soft lock, or a hybrid.

The solution must work for a player who prefers controller without making mouse/keyboard second-class.

---

## 5. Attack Commitment and Tempo

Wayside should feel grounded without becoming intentionally clumsy.

### Light attacks

- quick, readable, relatively low commitment;
- main tool for ordinary pressure and finishing openings;
- short enough recovery that controls remain responsive;
- no long canned combo strings.

### Heavy attacks

- slower commitment;
- greater reach, impact, guard pressure, or situational value depending on weapon;
- clearly telegraphed to the player and enemies;
- should feel like a deliberate choice rather than simply “light attack but better.”

### Combo ceiling

A weapon family may have a **2–3 strike light chain maximum** where it improves feel. Do not design branching combo trees.

### Cancel philosophy

Do not rely on extensive cancel rules for depth. Basic movement and defensive recovery should feel responsive, but committed heavy actions should carry meaningful risk.

Exact cancel windows are prototype tuning, not paper-design canon.

---

## 6. Defense and Stamina

### Universal defense

Every character can attempt a short grounded **quick-step / evade**.

This should read more like getting out of danger than performing constant heroic somersaults.

### Guard

Defensive equipment changes **how** guarding works:

- shield: strongest conventional block, broader safety, higher defensive endurance;
- weapon guard: weaker / narrower protection but still viable;
- appropriate long weapon: may control space better than it blocks direct force;
- ranged weapon: poor emergency defense and stronger incentive to reposition.

### Parry

**Current Direction:** parry is **not** a universal frame-tight core mechanic.

If retained, it should appear as a learned Technique, equipment-specific option, or generous contextual counter. This prevents the entire enemy roster from requiring bespoke parry-readable attack animation.

### Stamina

Retain the older useful principle that stamina primarily governs **defensive and mobility expenditure**, not whether the player is allowed to perform ordinary basic attacks.

Candidate stamina costs:

- evade / quick-step;
- sustained guarding / absorbing impact;
- sprinting in combat;
- selected heavy or exceptional actions if needed.

This reduces “stand around waiting for the bar” downtime while still limiting panic defense.

Exact stamina rules remain prototype-dependent.

---

## 7. Weapon and Animation Architecture

### Hard launch ceiling: four core animation families

#### Family A — One-handed melee

Includes as feasible:

- swords;
- axes;
- maces / hammers;
- short practical weapons that can reuse the same locomotion and broad attack structure.

Subtype identity should come from timing, reach, arc, impact, damage character, guard behavior, sound, and selected animation substitutions — **not an entirely separate combat architecture for each object type**.

#### Family B — Long weapons

Includes as feasible:

- spears;
- polearms;
- quarterstaves.

Identity centers on reach, linear control, sweeping space, commitment, and distance management.

A small number of subtype-specific attack animations is allowed, but the family must share locomotion, rigging, and most transitions.

#### Family C — Bows

Core identity:

- mobile ranged preparation;
- draw time;
- limited ammunition / preparation cost;
- vulnerability while pressured.

#### Family D — Crossbows

Core identity:

- strong deliberate shot;
- discrete reload cycle;
- preparation and positioning;
- low attack cadence.

Bows and crossbows may share projectile and aiming technology even where animation differs.

### Knife rule

Knives / daggers do **not** automatically receive a fifth mastery and animation family.

They may serve as:

- utility tools;
- stealth / contextual weapons;
- compact one-handed variants;
- special authored items.

A full dedicated knife family must replace another family if later deemed essential.

### Shield / off-hand rule

Shields may add a shared defensive overlay and equipment state without becoming an independent weapon family.

### Weapon differentiation axes

Prefer a small set of legible variables:

- reach;
- cadence;
- attack arc;
- impact / stagger;
- guard effectiveness;
- weight / commitment;
- ranged preparation where applicable.

Avoid dozens of secondary percentage statistics.

---

## 8. Actual Weapon Content Budget

The broader production boundary allows more item entries than combat profiles. This pass distinguishes them.

### Distinct gameplay profiles

Target roughly **12–16 meaningfully different combat weapon profiles** across the whole game.

Example distribution only:

- 5–6 one-handed profiles;
- 3–4 long-weapon profiles;
- 2–3 bow profiles;
- 2 crossbow profiles.

### Item / art variants

The game may contain more named or visually distinct weapons through:

- material;
- craftsmanship;
- provenance;
- condition;
- modest handling differences;
- visual variation.

But a new item does not earn a bespoke moveset merely because it has a new name.

### Ownership principle

Weapons should feel like possessions worth maintaining, learning, or replacing for a reason. The expected player inventory is a small useful toolkit, not dozens of disposable drops.

---

## 9. Learned Combat Techniques

The prior boundary of 8–12 Techniques is tightened for the combat-specific pass.

### Preferred launch target

- **6–8 total learnable combat Techniques** in the entire game;
- **2 equipped at once**;
- many should work across more than one weapon family;
- the player should not be expected to acquire every Technique in one normal playthrough.

### Technique design test

A Technique should earn its slot by doing at least one of the following:

- changing spatial decision-making;
- creating a clearly readable new tactical option;
- rewarding a learned enemy behavior;
- connecting combat to an in-world teacher, tradition, profession, or event;
- allowing one weapon to answer a problem in a new way without creating a new weapon family.

Avoid Techniques that are primarily:

- +X% damage;
- cooldown buttons with little positional meaning;
- slightly altered copies of basic attacks;
- elaborate animation showcases unsupported by repeated gameplay value.

### Provenance

Important Techniques should come from the world: a veteran, hunter, caravan guard, engineer, monastery tradition, roadwarden record, covenant practitioner, or comparable source.

This helps progression feel like accumulated experience rather than menu construction.

---

## 10. Enemy Architecture

The previous 8–10 enemy-archetype ceiling is tightened to a preferred **6–8 foundational behavior archetypes** at launch.

Visual / stat / equipment variants may expand apparent variety without multiplying AI architecture.

### Suggested behavioral coverage

A full roster probably needs some version of:

- **basic melee pressure**;
- **heavy / committed threat**;
- **mobile flanker / skirmisher**;
- **ranged pressure**;
- **predatory animal / pack behavior**;
- **large animal / territorial charger**;
- **covenant-altered rule-breaker**;
- optional second supernatural archetype if it introduces a genuinely different combat question.

Human enemies should reuse player-compatible rigs, weapons, and locomotion wherever practical.

### Intelligence budget

Ordinary enemies should have clear strengths and exploitable limitations.

Do not create an encounter where every enemy simultaneously:

- dodges projectiles;
- parries basic attacks;
- flanks intelligently;
- punishes healing;
- changes behavior dynamically.

Group complexity is already multiplicative.

### Encounter composition

Prefer encounter design such as:

- one durable enemy + one ranged pressure enemy;
- two simple melee enemies + terrain hazard;
- pack animals coordinating simple rushes;
- one supernatural enemy that changes a familiar rule.

This extracts variety from combinations instead of requiring thirty unique creatures.

---

## 11. Climax Encounters

### Launch target

**Two major bespoke combat climaxes** are the baseline.

A third is allowed only if the existing enemy and animation foundations can carry most of its production needs.

### Rules

A climax should:

- test familiar rules in a new composition;
- have strong readable phases or environmental changes;
- avoid giant health-bar attrition;
- connect to the region / covenant problem rather than exist as a detached boss spectacle.

Wayside does not need a Soulslike boss roster.

---

## 12. Hit Feedback and Visual Readability

Combat feedback receives higher priority than move-count expansion.

### Required feedback stack

Prototype and tune:

- anticipatory wind-up;
- contact frame clarity;
- sound matched to material / force;
- small appropriate enemy reaction;
- restrained hit-stop where useful;
- knockback / stagger that communicates force without making physics chaotic;
- health / injury feedback readable without UI overload;
- clear miss / block / armor-contact differentiation.

### Painterly-effects rule

Effects must preserve silhouettes.

Do not cover small top-down characters in constant particles, giant damage numbers, elemental auras, or overlapping status icons.

### Animation priority rule

One excellent light attack, heavy attack, guard response, evade, and hit reaction is worth more than five mediocre Techniques.

---

## 13. Terrain and Environment in Combat

Terrain should create tactical context using systems already valuable to exploration and travel.

Preferred factors:

- narrow bridge / road width;
- mud or poor footing;
- brush / visual obstruction;
- elevation edges where readable;
- doors / chokepoints;
- carts, logs, fences, rocks, or worksite obstacles;
- weather affecting visibility or ranged confidence in limited, readable ways.

Avoid a large catalogue of combat-only environmental gimmicks.

The strongest combat spaces should usually also make sense as places in the world.

---

## 14. Stealth, Avoidance, and Combat Entry

Stealth and combat should share the same local spaces.

Useful pre-combat advantages may include:

- scouting enemy count;
- choosing entry direction;
- bypassing part of a group;
- creating a distraction;
- gaining first positioning;
- avoiding violence entirely where authored content supports it.

Do not build a separate stealth-combat progression universe.

Once combat begins, transitions should be immediate; avoid loading into detached battle arenas.

---

## 15. Human Morale, Retreat, and Surrender

Retain surrender as a distinctive but deliberately bounded system.

### Human morale model

A simple authored/state-driven model may consider:

- severe injury;
- allies defeated / fled;
- leader defeated;
- being badly outnumbered;
- specific personality / faction behavior.

Possible outcomes:

- continue;
- retreat;
- surrender.

This does not need a visible morale meter or elaborate psychological simulation.

### Player options

When surrender occurs, context may allow:

- accept surrender;
- demand departure / disarmament;
- detain only in authored situations;
- continue violence, with appropriate remembered consequences.

### Hard boundary

No generalized prisoner-management or justice simulation.

---

## 16. Companion Combat

The active companion should add identity without creating party micromanagement.

### Baseline companion behavior

- follows intelligently;
- avoids obvious hazards;
- attacks / defends according to a simple role;
- attempts not to obstruct the player;
- can be temporarily downed or forced out of a fight rather than creating constant reload pressure.

### Player command ceiling

Prefer **one concise companion command or signature action** over a radial tactics interface.

Examples of command intent:

- focus / engage;
- fall back;
- signature support action.

Final command structure remains open to prototype.

### Equipment boundary

No deep companion equipment optimization layer. A companion may have limited authored upgrades or a small equipment choice where it creates meaningful identity.

---

## 17. Magic and Covenant Combat

Wayside should **not** assume a conventional combat-caster progression path at launch.

Supernatural combat tools, if present, should remain:

- rare;
- relational / contextual;
- clearly readable;
- expensive in narrative or practical terms;
- integrated into the learned-Technique or equipment framework where possible.

Do not create a parallel spellbook, mana economy, elemental resistance matrix, and caster animation suite merely because the setting contains magic.

A covenant interaction that changes one important fight is more on-theme than twenty interchangeable projectile spells.

---

## 18. Combat Rewards and Grinding

Combat should not create an incentive to farm respawning enemies.

### Preferred reward philosophy

Major growth comes from:

- resolving encounters / situations;
- learning from teachers;
- meaningful weapon use;
- discoveries;
- quests / projects;
- surviving notable threats.

### Current Direction

Avoid or minimize **per-kill generic XP**.

If weapon familiarity grows through use, repeated trivial enemies should rapidly stop providing meaningful progression. Training and milestone challenges can advance mastery more efficiently than grinding.

Loot from violence should be grounded and limited. Human enemies are not piñatas full of level-scaled equipment.

---

## 19. Defeat and Recovery

The old Blueprint’s desire to avoid a pure “reload every loss” structure remains useful, but the production implementation must stay small.

### Preferred baseline

When narratively/systemically appropriate, defeat may produce one or more of:

- retreat to a nearby safe location;
- passage of time;
- modest supply loss;
- temporary injury / recovery cost;
- changed local encounter state.

### Hard boundary

No generalized capture, imprisonment, rescue, ransom, equipment-theft, and recovery simulation all operating simultaneously.

Some special story encounters may script one of those outcomes.

Saving and accessibility remain generous; players who prefer conventional reload behavior should not be trapped by an experimental punishment system.

---

## 20. Combat Difficulty Philosophy

Difficulty should come from **reading and choosing**, not opaque stat checks.

### Prefer

- visible enemy wind-ups;
- clear ranges;
- understandable group roles;
- punishable mistakes;
- viable retreat;
- preparation advantages;
- adjustable assist options.

### Avoid

- bullet-sponge health;
- hidden resistance puzzles;
- tiny timing windows as the default skill gate;
- enemies tracking through committed attacks unnaturally;
- difficulty created primarily by camera or control friction.

### Accessibility candidates

Prototype support for:

- aim assistance;
- generous input buffering;
- adjustable combat damage taken / enemy pressure;
- stronger telegraph presentation;
- optional reduced timing pressure.

Accessibility settings should alter difficulty without invalidating the core combat language.

---

## 21. Combat Prototype — Minimum Proof

Do **not** animate four weapon families before proving one.

### Prototype A — Graybox feel test

Build only:

- one-handed weapon;
- light attack;
- heavy attack;
- guard;
- quick-step;
- health / basic stamina;
- one simple melee enemy;
- controller + keyboard/mouse input.

Pass criteria:

- movement feels good in an empty room;
- striking a stationary target feels good;
- one enemy is readable without UI explanation;
- missing / blocking / hitting are unmistakable;
- the player can intentionally disengage.

### Prototype B — Encounter-composition test

Add:

- heavy enemy;
- ranged enemy;
- three-enemy compositions;
- basic terrain / chokepoint;
- surrender / retreat test for humans.

Pass criteria:

- challenge emerges from composition without visual chaos;
- player can identify which threat to answer first;
- no enemy needs excessive intelligence to create pressure.

### Prototype C — Breadth test

Only after A and B succeed, add:

- long-weapon family;
- one ranged family;
- two learned Techniques;
- one companion prototype.

Pass criteria:

- new options genuinely change decisions;
- animation reuse is visible in production cost but not distracting in play;
- combat still fits the roadwarden game rather than demanding expansion into its own genre.

### Kill criteria

If the basic one-handed prototype cannot become satisfying without adding large move lists, directional stance systems, or animation volume beyond this budget, rethink the combat model before content production begins.

---

## 22. References and Lessons

### Hyper Light Drifter — Heart Machine

**Relevant lessons:**

- Heart Machine emphasized fast, intentional combat with strong visual/audio feedback.
- The team found through playtesting that simple enemies become substantially harder when combined; encounter composition can create tactical depth without making each enemy individually complex.
- Strong silhouettes and wind-up animations help communicate danger quickly.
- Playtesting led to systemic changes rather than merely numeric tuning.

**Borrow for Wayside:**

- readable anticipation;
- encounter-composition complexity;
- strong hit feedback;
- early repeated playtesting.

**Do not copy directly:**

- Hyper Light Drifter’s speed, enemy density, chained mobility, or highly acrobatic combat identity. Wayside should be more grounded and less combat-dominant.

Sources:
- PlayStation Blog, “Creating the World of Hyper Light Drifter on PS4 and PS Vita”: https://blog.playstation.com/2014/03/14/creating-the-world-of-hyper-light-drifter-on-ps4-and-ps-vita/
- Game Developer, “How Hyper Light Drifter balances difficulty with fairness”: https://www.gamedeveloper.com/design/how-i-hyper-light-drifter-i-balances-difficulty-with-fairness
- NYU Game Center IGF interview: https://gamecenter.nyu.edu/2017-igf-interviews-hyper-light-drifter/

### Death’s Door — Acid Nerve

**Relevant lessons:**

- Death’s Door was developed around a very small core team and used outside art support selectively.
- The developers deliberately reduced punishing friction while preserving challenge.
- Its melee/ranged relationship gives different tools interdependence rather than creating entirely isolated combat modes.
- Mark Foster described needing direct control over animation implementation because combat feel depended on transitions and small connective pieces.

**Borrow for Wayside:**

- production-aware combat scope;
- friction reduction;
- animation designed alongside mechanics rather than handed off late;
- different equipment categories should interact coherently.

**Do not copy directly:**

- mandatory melee-to-recharge-ranged resource loop;
- boss-heavy Zelda structure;
- arcade-fast tone if it undermines Wayside’s grounded setting.

Sources:
- Stevivor, Acid Nerve interview: https://stevivor.com/features/interviews/acid-nerve-talks-deaths-door-interview/
- NME, Acid Nerve developers on making Death’s Door: https://www.nme.com/features/acid-nerve-developers-david-fenn-and-mark-foster-on-making-deaths-door-3203321
- Game Developer, “Emotion in motion”: https://www.gamedeveloper.com/art/animation-feature

### Bastion — Supergiant Games

**Relevant lessons:**

- Bastion places player movement, defense, terrain, and openings at the center of action rather than resolving victory purely from character statistics.
- Its weapons are intended to remain viable rather than forming a simple escalating replacement ladder.
- Progression increases options and customization rather than only raw numerical power.
- Its painterly presentation demonstrates that readable action can coexist with a strongly authored visual identity.

**Borrow for Wayside:**

- horizontal equipment viability;
- player-skill contribution;
- terrain relevance;
- progression as additional options rather than mandatory stat inflation.

**Do not copy directly:**

- Bastion’s larger weapon roster and action-RPG emphasis;
- constant combat density.

Sources:
- Supergiant Games, Bastion FAQ/combat explanation: https://www.supergiantgames.com/blog/19/
- Supergiant Games, “This Is Bastion”: https://www.supergiantgames.com/blog/this-is-bastion/

### Darkwood — Acid Wizard Studio

**Relevant lessons:**

- Acid Wizard chose top-down partly because it was easier for an inexperienced small team to produce.
- The perspective became a strength once paired with field-of-view and sound design.
- Darkwood also demonstrates a serious scope warning: a project initially imagined as a simple one-month tower-defense game grew into roughly five years of development.

**Borrow for Wayside:**

- treat the top-down perspective as a production advantage and an expressive constraint;
- let sound and visibility carry information that would otherwise require expensive animation;
- remain suspicious of systems that begin as “small additions.”

**Do not copy directly:**

- deliberately awkward or survival-horror-oriented combat friction;
- procedural world generation;
- punishing survival loops.

Sources:
- Push Square interview with Acid Wizard: https://www.pushsquare.com/news/2019/05/interview_exploring_darkwood_ps4s_creepiest_upcoming_indie
- PlayStation Blog on Darkwood development: https://blog.playstation.com/archive/2019/05/01/darkwood-is-a-ps4-survival-horror-that-favours-creepy-atmosphere-over-cheap-jump-scares/

### Game Feel — design framework

Steve Swink’s game-feel framing and later academic synthesis are useful because Wayside’s combat scope should be evaluated not only by mechanics count but by the quality of immediate control and feedback.

A 2021 IEEE survey groups game-feel design work around **tuning** physical behavior, **juicing** feedback, and **streamlining** interpretation of player intent.

**Apply to Wayside:**

- **Tuning:** movement speed, attack commitment, hitboxes, recovery, stamina, enemy motion.
- **Juicing:** sound, hit-stop, reactions, particles, camera response where restrained.
- **Streamlining:** buffering, aim assistance, forgiving interaction targeting, controller ergonomics.

Source:
- Jonasson et al., “Designing Game Feel: A Survey,” IEEE Transactions on Games: https://doi.org/10.1109/TG.2021.3072241

---

## 23. What This Pass Supersedes — If Later Promoted

If this combat pass is eventually promoted to Production canon, the following older assumptions should be marked **Superseded for Production Edition**:

- eight fully distinct combat weapon families;
- extensive directional/contextual mastery branches;
- four active Techniques as the expected combat loadout;
- three Forms plus one Keystone as combat progression layers;
- combat complexity that assumes subtle top-down body-language distinctions;
- combat as a major justification for large progression trees.

The older Blueprint remains intact until promotion is explicitly approved.

---

## 24. Open Questions for Prototype, Not Paper Debate

Do not resolve these solely through design discussion unless a production decision requires it first:

- twin-stick aiming vs movement-facing vs hybrid;
- whether light/heavy deserve separate buttons or a tap/hold relationship;
- optional soft lock / aim magnetism;
- exact stamina costs and regeneration;
- exact guard damage / stagger model;
- whether weapon swapping improves play enough to justify UI/input complexity;
- whether bows and crossbows both earn launch scope after one ranged prototype exists;
- whether a dedicated parry Technique is worth its animation/readability burden;
- exact injury consequences after defeat.

These are prototype questions because **feel is evidence**.

---

## 25. Current Combat Envelope

If this working pass survives prototype testing, Wayside Production Edition combat becomes:

> **A compact top-down skirmish system built around readable facing, light/heavy commitment, guarding, grounded evasion, terrain, a few learned Techniques, and small groups of clearly differentiated enemies. Four animation families are the absolute launch ceiling, ordinary fights are short, violence is often contextual rather than mandatory, and production effort goes first into control and impact rather than move-count.**

This is enough combat to make the road dangerous and the protagonist increasingly capable without turning Wayside into an action game wearing a roadwarden story as decoration.
