# Wayside — Game Design Blueprint

**Working title:** Wayside  
**Document version:** 0.1  
**Status:** Consolidated vision and systems blueprint  
**Primary platform:** Windows desktop  
**Engine:** Godot 4 with GDScript  
**Target length:** 25–30 hour critical path; 35–50 hour thorough playthrough  
**Genre:** Single-player, real-time 2D action RPG with road stewardship, investigation, crafting, and regional consequence

> This document records decisions already made. Items labeled **Open** remain deliberately undecided. Numerical values labeled **Provisional** are working targets for prototyping, not promises.

---

## 1. High Concept

Humanity once received safe passage through an ancient covenant. Roads, bridges, waystones, boundary markers, and roadside sanctuaries are physical expressions of that agreement. Within their recognized bounds, distance behaves properly, settlements remain stable, and hostile or incompatible powers are held beyond the edges.

The covenant is failing.

Road signs point toward places that do not exist. Familiar journeys take too long or arrive somewhere else. Travelers return with incompatible memories. Beasts cross boundaries they once avoided. Settlements cut off from maintained roads begin changing. Repairs can worsen the crisis because communities preserve rituals whose purposes they no longer understand.

The player arrives at the neglected crossroads settlement called Wayside as an independent traveler. Through practical necessity—not an early appointment or prophecy—they become an informal roadwarden: someone able to navigate both physical roads and the obligations encoded within them.

The central question is not simply whether civilization can be saved. It is whether restoring the old covenant preserves a necessary peace, perpetuates an injustice, or both—and what could replace it without destroying the lives now dependent upon it.

---

## 2. Design Pillars

### 2.1 Roads are the world

Roads are not lines between content. Their condition determines travel, trade, settlement stability, weather exposure, political reach, supernatural boundaries, and what futures are possible.

### 2.2 Stewardship has physical and moral weight

The player investigates failures, chooses grounded plans, gathers support, directs major works, and sees construction unfold. Every solution has beneficiaries, costs, and downstream effects.

### 2.3 Character growth expands choices

Progression adds weapon fluency, techniques, practical knowledge, social approaches, and interactions among learned disciplines. It avoids disposable loot and excessive percentage nodes. A completionist can eventually own every perk within the character’s developed paths, but limited loadouts preserve builds.

### 2.4 The world reacts without casually deleting content

Time passes, weather changes, projects stall, markets respond, and local actors make decisions. Most neglected situations transform rather than vanish. Rare hard deadlines are explicit and generous.

### 2.5 Grounded life, uncanny boundaries

The setting is technologically comparable to the 13th century. Ordinary labor, transport, arms, settlement, belief, and scarcity establish reality before supernatural violations become more frequent. Magic is relational, conditional, and costly rather than an unlimited elemental fuel.

---

## 3. Player Experience and Scope

- Single-player only.
- Desktop-first native Windows release.
- Keyboard/mouse and controller receive equal first-class support.
- Target 1080p at a stable 60 FPS on modest PCs, including reasonable modern integrated graphics where practical.
- Scalable lighting, weather density, particles, and post-processing.
- Critical path target: approximately 25–30 hours.
- Thorough first playthrough: approximately 35–50 hours.
- One thorough run can experience roughly 80–90% of major content, though outcomes, alliances, project forms, companion futures, and endings differ.
- A playable epilogue lets the player finish compatible content and witness the chosen ending’s regional consequences.

### Tone

Wayside explores death, injustice, displacement, faith, exploitation, trauma, obligation, and folk horror. Depiction remains restrained: the game does not linger on gore, torture, sex, or suffering for spectacle. Romance may acknowledge adult relationships but remains non-explicit.

---

## 4. World Structure

The strategic world is an interconnected node-and-road map centered on Wayside. Major destinations connect through routes whose time, safety, capacity, knowledge, and supernatural reliability can change.

Important destinations and incidents open into compact, freely navigable 2D top-down local maps. Local maps support exploration, investigation, stealth, environmental problems, gathering, and real-time combat in the same space.

### 4.1 Regional map

#### Wayside

The central crossroads and player-directed home settlement. It begins neglected and develops into a regional network hub. Its broad form is authored; the player shapes its priorities, operators, selected facilities, and restrained visual identity.

#### Riverfields

- Economy: grain, mills, river trade, landholding, market exchange.
- Failure: impossible fertility is being borrowed rather than created.
- Infrastructure: bridge, mills, field roads, water management.
- Movement pressure: prosperity makes denial and overexpansion attractive.
- Developed location: Millcross, a prosperous bridge-and-mill market town governed by a merchant-landholder council.

#### Elderwood

- Economy: timber, charcoal, game, herbs.
- Failure: logging exceeded seasonal rights of use.
- Road behavior: paths begin routing travelers according to intent.
- Covenant truth: humanity was granted use, not ownership.

#### Lower Marsh

- Economy: fish, ferries, reeds, peat, dyes, herbs.
- Failure: dikes and drainage forced rivers into permanent boundaries.
- Road behavior: causeways and crossings change with weather and season.
- Covenant truth: some boundaries were always meant to move.

#### Stone Uplands

- Economy: iron, stone, pasture, defensive works.
- Failure: quarrying removed ancient witness stones.
- Road behavior: tunnels connect the wrong hills; anchors lose geographic testimony.
- Covenant truth: waystones do not merely mark roads; they witness and stabilize them.

#### High Pass

- Economy: long-distance trade, wool, monasteries, messengers.
- Failure: temporal and geographic instability intensifies.
- Covenant truth: renewal once required a periodic boundary circuit by roadwardens.

### 4.2 Regional density

Each major region contains:

- One principal settlement.
- Two or three satellite communities or major landmarks.
- Approximately two defining infrastructure projects.
- A network of compact road sites, gathering opportunities, systemic travel events, and authored discoveries.
- Typical major exploration sites lasting 20–35 minutes.
- Short roadside sites lasting roughly 3–10 minutes.
- A small number of campaign landmarks reaching 45–60 minutes.

---

## 5. Political Movements

The borderlands have no single effective central authority. Four broad movements contest the crisis:

### Boundkeepers

Restore the original limits, renew old practices, and retreat from land or routes humanity was never granted permanently.

### Charter League

Replace supernatural dependence with human-made anchors, forts, engineering, controlled expansion, and enforceable charters.

### Concordance

Learn enough to renegotiate the covenant with the Wild and establish a new regional agreement.

### Holdfast Compact

Reject one universal solution. Empower settlements to make local pacts suited to their land, people, and nonhuman neighbors.

The player remains independent through most of the game. They can earn standing, titles, methods, internal trust, specialists, and obligations with several movements. A late commitment determines which approach receives actual power. A difficult coalition remains possible, but it is a costly compromise rather than a perfect ending.

### Reputation

Reputation has two layers:

- **Standing:** broad willingness of individuals, settlements, and factions to trust or cooperate.
- **Memories:** specific actions and policies others believe the player enacted.

The UI shows descriptive tiers and major reasons, not exact point totals. High standing cannot erase ideological conflict. There is no global morality meter.

---

## 6. Campaign Structure

Earlier level bands have been revised for the confirmed level-50 cap.

### Prologue — Arrival (levels 1–4)

Wayside, basic travel, one weapon family, a contained road failure, and the first hints that repairs involve obligations rather than only materials.

### Act I — Familiar Failures (approximately levels 4–14)

Riverfields and Elderwood open in structured freedom. The player learns investigation, roadwork, settlement relationships, and companion travel. They become recognized informally as a roadwarden.

### Act II — Competing Truths (approximately levels 12–26)

Lower Marsh and Stone Uplands expand the map, faction conflict, project delegation, economic consequences, and covenant history. A major anchor failure reframes the regional crisis.

### Act III — The High Pass (approximately levels 24–34)

The player reaches the renewal route, discovers the former boundary circuit, and confronts the covenant’s incomplete historical record. Advanced progression traditions continue to emerge during the wider midgame.

### Act IV — Implementations (approximately levels 32–43)

Movements begin applying their solutions at scale. The player builds support, resolves companion and specialist conflicts, and chooses which infrastructure can carry the future.

### Act V — The Last Circuit (approximately levels 42–50)

The player completes or breaks the regional circuit, revisits changed anchors, returns to Wayside, and enacts a final settlement.

### Ending families

- **Original Bounds:** Boundkeeper-aligned restoration and retreat.
- **Roads of Iron:** Charter-aligned human anchors and controlled expansion.
- **Second Covenant:** Concordance-led renegotiation.
- **Thousand Small Pacts:** Holdfast-led local agreements.
- **Wayside Accord:** hard-won coalition settlement with real concessions.
- **Unbound Road:** independent or deliberately fragmented resolution preserving selected places without a unified system.

The epilogue world reflects the chosen policy in roads, prices, settlement form, supernatural behavior, companion positions, and available projects.

---

## 7. Core Gameplay Loop

1. Receive or discover a lead through conversation, observation, travel, letters, rumors, project reports, or market conditions.
2. Consult the evolving map and imperfect route intelligence.
3. Prepare equipment, quick items, companion doctrine, transport, provisions, medicine, camp supplies, and tools.
4. Choose a road and simulate the journey through meaningful segments.
5. Enter local maps for investigation, gathering, stealth, environmental problems, or combat.
6. Determine the physical, political, and supernatural causes of a failure.
7. Choose and organize a solution: design, materials, labor, specialists, permissions, and ritual terms.
8. Direct critical project stages and respond to complications.
9. See persistent changes to travel, trade, settlement, ecology, faction standing, and covenant stability.
10. Return to Wayside to rest, refit, train, craft, develop facilities, and follow new consequences.

---

## 8. Travel and Cartography

### 8.1 Simulated journeys

Selecting a route begins a simulated journey. Time, weather, fatigue, supplies, animal condition, and road state advance across segments. Significant events interrupt with decisions or playable local maps.

Routes present imperfect intelligence:

- Known or estimated distance.
- Terrain and transport suitability.
- Reported threats and road damage.
- Weather forecast and confidence.
- Information age and source.
- Covenant stability where understood.

The game signals why information may be unreliable.

### 8.2 Evolving surveyed map

The map begins incomplete and occasionally inaccurate. Travel, surveys, local charts, conversations, restored markers, and waystones progressively correct it. Entries carry confidence states such as confirmed, reported, outdated, or disputed. Players may add pins and short notes without manually drawing roads.

### 8.3 Routine-route automation

Familiar, surveyed, and sufficiently stabilized routes can be auto-resolved. Time and supplies still pass; meaningful changes can interrupt. Routes may lose trusted status after major changes.

### 8.4 Transport

Animals and vehicles are strategic travel equipment:

- Riding animals increase speed.
- Pack animals increase capacity and terrain flexibility.
- Carts balance capacity and access.
- Wagons enable heavy project logistics but demand adequate roads.

Most local exploration and combat occurs on foot.

Owned animals are named individuals with condition, temperament, and modest traits. Routine danger can injure, frighten, separate, or retire them. Permanent death is possible only through clearly signaled exceptional risk knowingly accepted by the player. Full systemic mortality may be an optional campaign rule.

---

## 9. Time, Seasons, Weather, and Schedules

### 9.1 Calendar

The game uses a living calendar within a bounded seasonal campaign arc. Travel, healing, crafting, training, construction, and rest consume time. Broad seasonal thresholds advance the crisis and transform unresolved situations through soft consequences rather than surprise failure screens.

The interface clearly forecasts major thresholds. Exact hidden deadlines are avoided.

### 9.2 Local time

Time advances slowly and continuously during local exploration and combat. It pauses during menus, dialogue, journals, project planning, and skill management. Larger actions state their time costs explicitly.

### 9.3 NPC routines

Important characters use readable morning, workday, evening, and night schedule blocks. Learned routines help the player locate them. Essential services remain accessible through assistants, order systems, posted hours, or other reasonable safeguards.

### 9.4 Weather

Weather is meaningful and forecastable. It may affect:

- Route speed, access, footing, visibility, ranged attacks, and stealth.
- Camp quality, recovery, animal condition, and transport.
- Project schedules, safe construction methods, and material handling.
- Gathering availability and tracking.
- Market supply, demand, and caravan risk.
- Covenant rules, boundary visibility, and supernatural opportunities.

Ordinary weather creates manageable friction. Severe weather is telegraphed. Correct preparation reduces risk without requiring a wardrobe spreadsheet. Weather offers opportunities as well as penalties. Projects may stall or adapt but do not randomly lose completed progress.

---

## 10. Roadwork and Infrastructure

Major infrastructure uses **hands-on stewardship**, positioned between quest-choice abstraction and a construction simulator.

The player:

- Surveys the site.
- Investigates mundane and supernatural failure.
- Chooses among authored, plausible plans.
- Places a small number of consequential modules.
- Secures major materials, rights, labor, specialists, and protection.
- Establishes the worksite.
- Participates in critical construction, defense, and ritual stages.
- Responds to complications and witnesses completion stages.

The player does not manage individual nails, wages, or daily worker shifts.

### 10.1 Authored plans and modules

A bridge might support several authored approaches—stone span, timber span, ferry, raised crossing, reroute, abandonment—then allow limited placement of shelters, defenses, anchors, approaches, or service structures. Placement affects actual outcomes, not only appearance.

### 10.2 Reconstruction

Most major decisions can be revised through a costly new project. Physical structures can change; spent time, altered relationships, displacement, and historical consequences cannot be fully undone.

### 10.3 Simultaneous work

The roadwarden personally leads one major operation at a time. Trusted specialists can handle maintenance, routine repairs, and additional understood projects.

Delegated projects can fall behind or stall because of identifiable conditions such as weather, labor disputes, faction interference, missing materials, design discoveries, or covenant changes. Reports provide a generous response window. The player may intervene personally, send help, reassign a specialist, or approve a compromise.

If ignored, local people and the assigned specialist usually complete an altered or reduced solution. Delegation produces autonomy and consequences, not random timer failure.

### 10.4 Workforce

Projects combine recurring named specialists with local labor and knowledge. Specialists develop through the Wayside network; communities provide legitimacy, regional expertise, and techniques outsiders lack.

---

## 11. Wayside Settlement

Wayside uses **curated settlement customization**.

- Geography, main road structure, and broad growth stages are authored.
- The player chooses what occupies limited development plots.
- Essential services always fit.
- A few flexible specialty plots require priorities and can later be repurposed at meaningful cost.
- The player selects upgrades, alternate functions, and named operators.
- Restrained visual choices include materials, signs, banners, gardens, roadside shrines, and similar identity details.
- Faction relationships and regional materials alter appearance.
- There is no freeform terraforming or placement of every wall and chair.

Potential advanced facilities include a master forge, ritual archive, caravan yard, infirmary, training hall, expanded market, or specialist workshop.

Wayside generates a modest capped surplus based on its facilities. Output enters shared storage automatically; there are no repetitive collection clicks. It supports expeditions and projects but never replaces contracts, exploration, trade, or relationships as the main progress sources.

---

## 12. Exploration, Puzzles, and Stealth

### 12.1 Local maps

Local maps use free continuous top-down movement over grid-authored terrain. The grid supports collision, hazards, encounters, effects, and map construction but does not constrain the player to discrete steps.

### 12.2 World-logic problems

Puzzles arise from materials, water, load, sightlines, local custom, seasonal rights, names, boundaries, witness stones, and covenant obligations. Most support several approaches based on observation, tools, attributes, companions, and knowledge.

Optional player-invoked hints escalate from a nudge to a governing principle, concrete action, and finally an explicit solution. Hints never reduce rewards.

### 12.3 Tactical stealth

Stealth meaningfully uses sight, sound, cover, darkness, weather, distraction, patrols, and scouting. It can avoid or reshape encounters but is not a full stealth-game simulation. Once prepared enemies engage, play transitions cleanly into direct combat.

---

## 13. Combat

### 13.1 Combat identity

Wayside uses direct real-time 2D action combat with deliberate skirmishes, typically against one to five meaningful enemies. Every attack results from player input. Direction, reach, spacing, timing, terrain, and commitment matter.

The system does **not** use target-selected automatic basic attacks or an MMO-style rotation.

### 13.2 Core actions

- Free top-down movement.
- Manual light and heavy weapon attacks.
- Equipment-shaped active defense.
- Up to two prepared weapon sets with a committed in-combat swap.
- Four equipped progression techniques.
- Prepared combat-item slots.
- Optional companion signature command and concise command radial.

Weapons begin with light and heavy foundations. Mastery unlocks combo branches, alternate finishers, counters, directional or contextual attacks, and integration with the character's learned disciplines. This approaches deep action combat through growth without requiring several complete stance systems for every weapon at launch.

### 13.3 Tempo and telegraphing

- Enemies use readable, fair attack cues.
- Strikes have meaningful reach and recovery.
- Positioning and space control matter more than crowd clearing.
- Climaxes vary among duels, creatures, defenses, rituals, pursuits, environmental crises, and negotiations.
- Not every major site ends in a conventional boss.

### 13.4 Stamina and defense

Stamina primarily pays for defense and mobility, not ordinary weapon attacks. Attack commitment comes from animation and recovery.

Every character has a modest responsive evasive action. Equipment determines the deeper defense:

- Shields sustain blocks.
- Bucklers and suitable weapons enable stricter deflection or parry.
- Light configurations improve evasion and disengagement.
- Staves and foci can create wards.
- Armor changes cost, stability, recovery, and movement.

### 13.5 Companions in combat

One major companion may accompany the player. Companions are competent under configurable doctrines and do not require micromanagement. Optional commands include signature technique, focus target, regroup, hold, and disengage. Difficulty never assumes constant command use.

### 13.6 Morale and surrender

Human enemies have morale as well as health. Circumstances, leadership, losses, reputation, and conduct can cause surrender, negotiation, flight, or betrayal. Animals usually retreat unless cornered, starving, altered, or protecting something.

Surrender leads to contextual choices such as disarm, question, treat, release, or transfer to an available authority. There is no routine prison-management layer.

### 13.7 Injuries and defeat

Ordinary damage reduces recoverable health. Persistent injuries arise from defeat, severe hazards, or clearly telegraphed exceptional attacks and choices.

On defeat:

- The roadwarden returns to an appropriate refuge through rescue, escape, or being left for dead.
- Time advances.
- A temporary injury or fatigue condition may remain.
- Some ordinary carried supplies remain in a recoverable field pack.
- Equipped gear, unique items, quest objects, and earned progression are protected.
- The encounter or site may change rather than reset identically.

The pack persists, but delays may reduce supplies or cause others to move it nearby. It is not destroyed automatically by a second defeat.

Major companions cannot die from routine AI mistakes or ordinary defeat. Permanent death is possible only through explicit, clearly signaled exceptional risks.

### 13.8 Recovery

Some health returns naturally after danger passes. Full recovery and persistent injuries require food, medicine, treatment, or safe rest. Recovery creates expedition attrition without constant potion maintenance.

---

## 14. Weapons, Armor, and Equipment

### 14.1 Weapon access

Equipment uses soft specialization. Most practical gear can be equipped by any character; attributes, mastery, perks, and technique compatibility determine effectiveness. Gear grants an action; training determines how well it is used.

### 14.2 Weapon families

The full game targets eight mastery families:

1. Swords
2. Knives and short blades
3. Axes
4. Maces and hammers
5. Spears and polearms
6. Bows
7. Crossbows
8. Staves and quarterstaves

Families contain subtypes with different reach, speed, damage profiles, defenses, and partial moveset variations. Basic shoving, grappling, and unarmed actions exist contextually without a ninth full tree.

### 14.3 Mastery

Combat use builds familiarity. Major techniques come from trainers, trials, manuals, distinctive wielders, and exploration. The system avoids rewarding repetitive attacks against harmless enemies.

### 14.4 Off-hands

One-handed weapons can pair with practical off-hands such as shields, bucklers, torches, ritual foci, tools, or an empty hand. Each changes defense or utility. Dual-wielding exists only through specific grounded authored pairings, such as sword-and-dagger or paired short blades.

The player may prepare up to two complete weapon and off-hand sets. They may switch during combat through a brief vulnerable animation. Full inventory changes remain unavailable until immediate danger ends. Swapping supports planned adaptation without becoming instant defense, combo, or cooldown cycling.

### 14.5 Armor

Armor is layered. Garments, padding, mail, rigid reinforcement, headgear, and weather clothing combine into an emergent burden and protection profile. Mobility follows total weight, flexibility, distribution, and training rather than fixed class labels.

Armor presents readable resistance to cutting, thrusting, impact, and environmental or supernatural hazards. Special attacks can exploit broad weaknesses; the game does not simulate invisible pixel-perfect anatomical hit locations.

### 14.6 Durable possessions

Equipment progression is primarily horizontal and transformational. Weapons and armor remain relevant through maintenance, refitting, component replacement, mastery, and history. New finds compete through handling, construction, provenance, and purpose rather than frequent higher-number tiers.

Condition declines slowly. Field care prevents ordinary penalties; neglected or severely damaged items require workshop repair but do not randomly vanish. Items can record maker, repairs, refits, and significant events without endless stat inflation.

---

## 15. Inventory and Loot

Inventory uses weight plus practical containers rather than spatial packing:

- Belt and pouches for combat items and small tools.
- Quivers or cases for ammunition and prepared magical tokens.
- Packs for expedition goods.
- Tool rolls for craft equipment.
- Saddlebags, carts, and wagons for transport.
- Committed project cargo tracked separately from adventuring inventory.

Prepared quick slots are the only inventory access during combat. Full packs become available after immediate danger ends.

Arrows, bolts, and similar ammunition are counted. Many intact projectiles are recovered automatically after combat; ordinary ammunition is inexpensive, while specialized ammunition is precious.

Loot is selective and grounded. Enemies provide plausible coin, supplies, documents, components, and notable visible equipment. Worthless clutter is ignored or summarized. Important equipment can be repaired, dismantled, returned, or recognized later.

Player crime is contextual rather than a universal sandbox. Authored situations may support theft, deception, smuggling, sabotage, or trespass with proper consequences. The player cannot steal every household object or attack civilians under a shallow global bounty system.

---

## 16. Gathering, Crafting, and Trade

### 16.1 Gathering progression

Gathering moves from contextual personal work toward delegation:

- Early: collect common and rare resources encountered during exploration.
- Midgame: identify deposits, stands, hunting grounds, gardens, and other productive sites.
- Secure access by resolving danger, rights, labor, ownership, and covenant complications.
- Later: locals supply ordinary bulk resources to Wayside.
- Throughout: personally recognize and recover rare, dangerous, or specialized materials.

Dedicated resource trips remain possible but are not the intended permanent loop.

### 16.2 Bounded modular crafting

Recipes define plausible equipment frameworks. Two to four meaningful components shape performance. A sword may vary by blade profile, steel, hilt, and treatment; a spear by head, shaft, grip, and butt. Insignificant pieces remain abstract.

Crafting quality is predictable from skill, design, facilities, materials, collaborators, and chosen time investment. There are no broad random quality rolls encouraging save-scumming.

### 16.3 Player and specialist labor

For advanced work, the player may:

- Commission a specialist.
- Learn and make the item personally.
- Collaborate on exceptional work.

The roadwarden can eventually master every trade with major investment in teachers, facilities, practice, challenges, and regional methods. Specialists remain faster, more efficient, and uniquely capable even after player mastery.

### 16.4 Economy

Ordinary exchange uses coin. Local scarcity supports barter. Political support, protected access, rare teaching, introductions, and community labor may require explicit promises and obligations.

The economy uses bounded simulation:

- Important necessities, bulk goods, and project materials are produced, consumed, and transported.
- Caravans and road state affect real availability.
- Prices respond within designed limits.
- The map communicates known surpluses and shortages.
- Merchant play is viable but does not dominate progression.
- Individual rare gear and shop clutter are not continuously simulated.

---

## 17. Character Progression

### 17.1 Leveling

- Character level cap: 50.
- No uncapped post-level Renown system is currently planned.
- Experience comes from broad accomplishment: quests, discoveries, projects, combat firsts, diplomacy, craft milestones, and major decisions.
- Repetition provides little character experience.
- Character creation grants the first progression node.
- Levels 2–50 provide 49 further progression points.
- Optional teachers, personal quests, manuals, discoveries, and mastery trials provide additional points needed for comprehensive completion.

### 17.2 Attributes

Six working attributes:

- **Brawn:** force, heavy handling, labor, physical obstacles.
- **Deftness:** coordination, precision, fine craft, stealthy movement.
- **Grit:** health, stamina, resistance, carrying strain, harsh travel.
- **Vigilance:** perception, tracking, ranged judgment, route scouting.
- **Wit:** investigation, lore, planning, technical work, covenant analysis.
- **Bearing:** persuasion, leadership, negotiation, composure.

Attribute increases are manually assigned every few levels, provisionally every three. Attributes remain specialized rather than all reaching maximum.

### 17.3 Retraining

Attribute and spent-perk redistribution is costly but repeatable at Wayside through time, resources, and appropriate instruction. It prevents permanent early mistakes without becoming an instant combat counter-pick.

Changing among already learned specializations is distinct: it occurs through preparation at safe rest sites and costs time or minor supplies, not a full respec. The exact specialization structure is being redesigned.

---

## 18. Progression Webs — Under Redesign

The Vanguard, Ranger, and Arcanist base classes were inherited from an early prototype and no longer define the current game. Their identities, resource loops, branch concepts, and three derived hybrids have been discarded. Resolve, Momentum, and Focus are not assumed systems.

The project is reopening whether Wayside should use formal classes, learned disciplines, life vocations, or an emergent classless web. Class count and hybrid structure are likewise open.

The following progression principles remain provisionally settled unless the redesign exposes a conflict:

- Interconnected webs with cross-links rather than strictly linear branches.
- Approximately 35 impactful nodes for a major primary progression path as a working scope target.
- Techniques, Forms, Augments, and Keystones as useful node categories.
- Avoid filler nodes and excessive tiny percentage increases.
- Progressive revelation through prerequisites, experience, teachers, manuals, and discovery.
- Bankable points.
- Learning revealed perks at safe rest sites.
- Four manually activated progression techniques.
- Foundational permanent perks remain active.
- Three equipped Forms and one equipped Keystone define passive build identity.
- Limited slots preserve specialization even after broad ownership.
- A completionist should eventually be able to own every perk within the character's legitimately developed paths.
- Equipment remains softly specialized rather than prohibited by arbitrary class locks.

**Open:** The meaning of the primary progression choice; whether formal classes exist; number and scale of primary paths; cross-training and specialization structure; resource loops; completion boundary; and whether anything resembling hybrid classes remains appropriate.

---

## 19. Magic and the Covenant

### 19.1 Prevalence

Common people know household charms, burial customs, planting observances, road offerings, and fragments of older rites. Reliable overt battlefield magic is rare.

### 19.2 Source

Magic operates through relationships and obligations involving places, materials, beings, names, histories, witnesses, and agreements. The playable resource model, if any, is open and should not be assumed to function as conventional mana.

Routine practitioners may use bounded obligations prepared in advance: marked tokens, knotted cords, inscribed fragments, measured offerings, and memorized forms. Whether this becomes a primary player-combat loop remains open.

Major workings clearly present their broad terms before commitment. They may demand access, service, material concession, empowered local agency, altered boundaries, or a lasting mark. Consequences can surprise, but the existence and nature of the bargain are not hidden traps.

### 19.3 Expression

Reliable magic centers on marks, wards, bindings, redirection, attention, protection, motion, boundaries, and revealed truths. Advanced workings reach uncanny transformations of bodies, places, perception, memory, or adjacency. Elemental effects exist only through specific relationships and materials rather than generic schools.

### 19.4 Open covenant questions

The working foundation is that humanity received safe corridors and bounded settlement in exchange for respecting territorial and seasonal limits, maintaining anchors, and periodically renewing the boundary circuit. Human expansion, ownership claims, drainage, quarrying, logging, and forgotten renewal collectively violated those terms.

Still open:

- The covenant’s precise original wording and participants.
- Whether its hidden cost primarily burdened the Wild, another people, particular beings, or the land itself.
- Who first concealed or simplified the truth.
- What the nonhuman claimants currently believe humanity owes.
- Why the final failure is occurring now rather than earlier.

The Wild remains plural and internally divided, not a single unified faction or species.

---

## 20. Quests, Dialogue, and Investigation

### 20.1 Discovery

Quests enter through organic leads: conversation, observation, travel incidents, letters, rumors, physical evidence, missing trade, project reports, and faction requests. A clear journal records rather than invents these opportunities.

Journal categories:

- Uninvestigated leads.
- Active undertakings.
- Promises and obligations.
- Roadwork projects.
- Time-sensitive developments.
- Resolved matters and outcomes.

### 20.2 Guidance

Default guidance provides written directions and appropriate map search areas. Exact markers appear when the character has exact knowledge. Accessibility settings may increase precision without changing rewards.

### 20.3 Noncombat checks

Checks are deterministic. Attributes, skill, knowledge, tools, relationships, and discoveries unlock approaches without random percentage failure. Outcomes may remain uncertain because information and motives are incomplete.

Unavailable choices appear only when the character understands that the approach exists. The UI then shows the broad missing requirement.

### 20.4 Failure and time

Most opportunities transform rather than simply expire. A missed escort may become a rescue; an ignored feud may become a blockade; a neglected settlement may require relief. Rare hard deadlines are explicit and generous.

---

## 21. Companions and Protagonist

### 21.1 Companion cast

Target approximately six major companions. Only one travels actively with the player at a time; others live, work, travel, or pursue concerns through the Wayside network.

Each companion has:

- Combat role and configurable doctrine.
- Personal values rather than a simple approval appetite.
- Regional or faction perspective.
- Camp and travel reactions.
- Personal undertaking with consequential futures.
- Practical expertise outside combat.
- Relationships with other companions and recurring characters.

A few authored romances are available. Every companion receives an equally substantive friendship path. Romance develops through compatibility and deliberate relationship choices, not gift-spamming or universal availability.

### 21.2 Protagonist

The protagonist has authored anchors plus a chosen background.

Fixed anchors:

- Experienced independent traveler.
- Practical road and survival knowledge.
- Arrives at Wayside without official roadwarden authority.
- Possesses unusual sensitivity to covenant failures.

Chosen elements:

- Origin.
- Former trade.
- Formative experience.
- Personal outlook.

These choices affect skills, contacts, recognition, dialogue, and personal leads without dictating morality or progression path.

The protagonist is provisionally fully silent. NPC dialogue is also unvoiced. Nonverbal exertion, pain, laughter, breaths, or crowd murmur may be considered later.

**Open:** Exact companion roster, protagonist backgrounds, romance paths, and the source of the protagonist’s covenant sensitivity.

---

## 22. Art, Audio, and Interface

### 22.1 Visual direction

Playable maps use painterly low-detail 2D art: restrained shapes, earthy color, strong silhouettes, textured terrain, and limited expressive animation.

The presentation layer uses ink-and-wash illustration:

- Regional maps.
- Journal and quest records.
- Skill webs.
- Covenant diagrams.
- Project plans.
- Important dialogue portraits.
- Major decision screens.

Both layers share palette, shape language, and material texture. The interface ink may distort, bleed, or redraw as the covenant changes.

Important conversations keep world sprites spatially present while ink portraits carry expression and detail. Minor exchanges may use sprites alone.

### 22.2 Animation

Use modular 2D skeletal rigs for locomotion, ordinary weapon chains, equipment changes, and reusable reactions. Add hand-drawn impact poses, magical distortions, major techniques, deaths, and story-specific accents to avoid a puppet-like result.

### 22.3 Audio

No spoken dialogue. Music is period-rooted and subtly uncanny: medieval instruments and modes acquire detuned doubles, impossible echoes, missing beats, and altered spatial behavior as the covenant intrudes. Restoration or ideological change can stabilize or replace local motifs.

### 22.4 HUD

Use an adaptive minimal HUD. Precise combat information appears when relevant and fades when danger ends. The journal and quick panels carry detailed travel, project, weather, and quest information. Players may keep selected elements visible.

Accessibility requirements include:

- Full control remapping.
- Scalable text and UI.
- Readable font alternatives.
- Color-independent signals and contrast controls.
- Reduced motion, flashes, and screen shake.
- Hold/toggle alternatives.
- Adjustable aiming assistance.
- Separate audio controls.
- Puzzle and quest guidance settings.
- Difficulty assists with no reward penalty.

---

## 23. Difficulty and Saving

Difficulty uses coherent presets plus separate assists. Players may independently adjust combat timing, incoming damage, survival pressure, guidance, project-response windows, and similar demands.

Saving uses manual saves outside immediate danger plus robust rotating autosaves before travel, major projects, consequential choices, and difficult encounters. The game does not rely on restrictive saving to manufacture consequence.

---

## 24. Technology and Production Architecture

### 24.1 Foundation

- Engine: Godot 4.
- Language: GDScript.
- Primary release: native Windows desktop.
- Renderer: begin with Compatibility for broad hardware and an easier web-preview path; reevaluate only if an essential feature requires it.
- Web builds: prototypes, feedback builds, or a limited demo—not the definitive performance standard.
- Later Linux support remains desirable but is not an initial parity requirement.

### 24.2 Performance philosophy

- Stable 60 FPS and responsive input take priority over dense effects.
- Simulation should update at appropriate coarse intervals rather than every entity every frame.
- Regions and local maps load in bounded scenes.
- Weather, economy, caravans, and projects use event-driven state where possible.
- Visual effects scale independently from gameplay readability.
- Performance budgets begin with the first combat prototype.

### 24.3 Content architecture

The project should be mod-friendly in foundation without promising public tools at launch. Quests, dialogue, items, recipes, enemies, skills, and balance values should remain structured and external to hard-coded logic where practical.

Reusable scenes or resources should represent:

- Characters and enemies.
- Weapons, armor components, items, and recipes.
- Road nodes, routes, events, and conditions.
- Quest states, requirements, consequences, and dialogue.
- Buildings, modules, specialists, and projects.
- Weather and market modifiers.
- Skills, Forms, Keystones, techniques, and progression links.

### 24.4 Onboarding

Use layered narrative onboarding. The prologue teaches movement, combat, basic travel, and a small road failure. Riverfields adds investigation, a companion, crafting, and a major project. Factions, delegation, economy, advanced progression, and complex covenant terms arrive gradually. Tutorials remain replayable and individually dismissible.

---

## 25. First Playable Vertical Slice

The first Godot build should prove the central experience, not attempt the full RPG.

### Required slice

1. A small playable Wayside scene.
2. One player character using one weapon family.
3. Direct movement, light attack, heavy attack, one equipment defense, one evade, and two prototype techniques.
4. One optional AI companion with a doctrine and signature command.
5. One node-based route with time, weather, and provisions.
6. One authored travel event.
7. One 10–15 minute local site combining exploration, investigation, and a deliberate combat encounter.
8. One surrender outcome.
9. One covenant-related environmental problem with two solutions.
10. One small roadwork project using an authored plan and one module choice.
11. A visible before/worksite/after transformation.
12. One downstream settlement, travel, or market consequence.
13. Save/load and keyboard/controller support from the start.
14. Temporary placeholder art clearly separated from final art production.

### Slice success criteria

- Movement and combat feel responsive at 60 FPS on the target modest PC.
- The route feels like gameplay rather than a loading screen.
- Investigation changes the available project solutions.
- The project feels physically and morally consequential without becoming construction micromanagement.
- The player understands why the world changed afterward.
- Data and scene structure make a second route, weapon, event, and project easier to add than the first.

---

## 26. Known Risks and Guardrails

### Scope accumulation

Wayside combines action combat, systemic travel, road construction, economy, crafting, companions, and branching narrative. Every feature must reinforce the road-stewardship loop. Systems that become independent minigames are candidates for reduction.

### Content-state explosion

Regional consequences can multiply dialogue and testing. Use a limited hierarchy of major policy states, local memories, and authored variations rather than bespoke reactions to every possible variable combination.

### Action-animation workload

Eight expandable weapon families are ambitious. Prove one family completely, then standardize rig, hitbox, timing, and data workflows before producing the others.

### Simulation opacity

Weather, markets, roads, projects, and reputation must explain their major changes. Hidden calculations may exist; hidden causes should be rare.

### Completion versus specialization

Players may eventually own all perks in their developed paths. Specialization survives through four technique slots, three Forms, one Keystone, equipment, companion doctrine, and whatever active-specialization structure survives the redesign.

### Consequence versus missing content

Prefer changed context and outcomes over disappearing questlines. Preserve difficult consequences without making guide-dependent perfect routing the expected play style.

---

## 27. Open Decision Register

The next design pass should resolve these in roughly this order:

1. Redesign character progression from first principles: formal classes, learned disciplines, life vocations, or an emergent classless structure.
2. Define the selected primary progression paths at branch level before writing individual nodes.
3. Define cross-training, specialization, completion, and any surviving hybrid structure.
4. Define the six companions and their functional coverage.
5. Define protagonist backgrounds and the source of covenant sensitivity.
6. Resolve the covenant’s exact original terms, hidden beneficiary or victim, historical concealment, and present claimant.
7. Define one complete weapon-family moveset and mastery track for the vertical slice.
8. Define the first road project and two valid solutions.
9. Create the Riverfields content map at production scope, using prior Millcross material without expanding it beyond the campaign budget.
10. Establish the exact calendar span, difficulty presets, control map, and initial economy values through prototype testing.
11. Create the production repository structure and the Godot vertical slice.

---

## 28. Current Decision Summary

Wayside is a 35–50-hour, Windows-first, Godot-built 2D action RPG about maintaining roads whose physical and supernatural functions arise from a failing covenant. The player explores an evolving node-based road network and compact painterly local maps, fights through deliberate direct-action combat, travels with one optional autonomous companion, gathers and crafts without a loot treadmill, and directly stewards major infrastructure through authored plans and consequential modules.

The world advances through a bounded living calendar, readable weather, caravans, markets, project complications, faction activity, and local autonomy. Most content changes rather than vanishes. The player remains an independent roadwarden aligned with—but not initially owned by—four movements. Their final settlement can restore, replace, renegotiate, localize, combine, or abandon the covenant system.

The game’s central promise is that rebuilding a road changes more than traversal. It changes who can live, trade, travel, remember, expand, and belong.
