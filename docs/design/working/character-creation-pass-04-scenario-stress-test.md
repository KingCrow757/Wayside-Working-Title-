# Wayside — Character Creation Pass 04: Scenario Stress Test

**Status:** Working proposal — not settled canon  
**Parent spec:** `docs/design/character-and-progression.md`  
**Prior pass:** `docs/design/working/character-creation-pass-03-starting-techniques.md`  
**Purpose:** Run all four starting Techniques through the same combat and noncombat scenarios, identify overlap or dominant choices, and revise the Techniques where necessary.

> This pass keeps the four-Archetype model under evaluation. The Techniques remain learnable later by characters who began with other Archetypes and are not permanent exclusive class powers.

---

## 1. Shared Scenario Suite

Every Technique was tested against the same eight situations.

### Combat scenarios

1. **Single disciplined human opponent** — readable attacks, blocks, recovery windows, no environmental gimmick required.
2. **Three-enemy pressure fight** — mixed melee pressure where attention, spacing, and interruption matter.
3. **Ranged threat across partial cover** — enemy archer or crossbow user controlling an exposed lane.
4. **Charging beast** — fast approach, strong commitment, limited conventional guard behavior.

### Noncombat scenarios

5. **Environmental hazard** — unstable crossing, falling debris, flood surge, wind, or moving machinery.
6. **Investigation** — determine what happened at a damaged road site without requiring combat.
7. **Roadwork complication** — an active repair begins failing under pressure and the player must intervene.
8. **Travel / weather opportunity** — a temporary route, tide, weather break, caravan window, or changing condition creates a decision.

The goal is not for every Technique to be equally powerful in every scenario. The goal is for every Technique to produce a meaningful approach often enough that no Archetype feels like the wrong choice for a major part of Wayside.

---

## 2. Pass 03 Baseline

The previous Techniques were:

- **Resolute — Set the Line:** commit to position/action and resist ordinary interruption.
- **Opportunistic — Take the Opening:** reposition into an existing opening and exploit it.
- **Resourceful — Hasty Rig:** deploy a reusable temporary hindrance to manufacture an opening.
- **Perceptive / Adaptive — Read and Answer:** enter an attentive state and gain a cleaner response to a telegraphed commitment.

These looked distinct conceptually. Scenario testing exposed two important balance risks and one smaller overlap.

---

## 3. Scenario Matrix — Initial Pass

Ratings below are qualitative: **Strong**, **Useful**, **Situational**, or **Poor**. A Strong result is not automatically bad; repeated universal Strong results are the warning sign.

| Scenario | Set the Line | Take the Opening | Hasty Rig | Read and Answer |
| --- | --- | --- | --- | --- |
| Duel | Strong | Strong | Useful | Strong |
| Group pressure | Strong | Useful | Strong | Useful |
| Ranged threat | Useful | Strong | Strong | Useful |
| Charging beast | Strong | Strong | Strong | Strong |
| Environmental hazard | Useful | Strong | Useful | Strong |
| Investigation | Poor | Situational | Useful | Strong |
| Roadwork complication | Strong | Useful | Strong | Useful |
| Travel / weather | Situational | Strong | Useful | Strong |

### Immediate findings

1. **Hasty Rig is too broadly efficient in combat.** A reusable hindrance is simultaneously crowd control, anti-charge, spacing support, ranged setup, and chokepoint control. It risks being the obvious tactical-value pick even before later crafting or tool systems exist.
2. **Read and Answer is too broadly informational.** If it improves recognition of enemy commitment, environmental timing, investigation, and weather patterns, it can become the “see more of the game” Archetype.
3. **Take the Opening and Read and Answer overlap around timing.** One reacts after an opening; the other reacts before/during a commitment. The distinction is conceptually valid but needs harder mechanical boundaries.
4. **Set the Line is comparatively narrow outside active pressure.** That is acceptable, but it needs a clean noncombat expression so Resolute does not become the combat-only choice.

---

## 4. Revised Resolute Technique — Set the Line

### Core identity retained

**Core verb:** commit.

The player enters a brief committed state tied to one deliberate action or position. During that state, ordinary interruption, stagger, displacement, wind-up disruption, or environmental pressure is reduced enough that the chosen action can be completed if the threat is appropriate to withstand.

### Important revision: commitment applies to actions, not generic toughness

The Technique should work when the player is actively **holding or completing something under pressure**.

It should not be a temporary general defense buff.

Examples:

- Finish a hammer swing through a light interruption.
- Keep a bow drawn while a weaker impact lands.
- Brace a spear against a charge.
- Hold a rope, lever, door, support, or injured person while the situation destabilizes.
- Continue a critical repair action through wind, shaking, or falling debris.

### Scenario results after revision

- **Duel:** Strong — lets the player choose commitment over flexibility.
- **Group pressure:** Strong but risky — committing against one threat leaves the player vulnerable to being surrounded or flanked.
- **Ranged threat:** Useful — maintain a shot, interaction, or crossing under light pressure; does not negate projectiles.
- **Charging beast:** Strong when the chosen weapon/action can credibly meet the charge; dangerous otherwise.
- **Environmental hazard:** Useful — complete a deliberate action through disruption.
- **Investigation:** Poor by design — there may simply be no pressure worth committing against.
- **Roadwork complication:** Strong — stabilize or finish one critical task under active failure.
- **Travel/weather:** Situational — useful during a dangerous crossing or sudden gust, not as a passive route bonus.

### Guardrail

Set the Line cannot convert fundamentally impossible actions into possible ones. It does not let the player hold a collapsing bridge alone, ignore a giant creature, or stand in lethal floodwater because they pressed the “determination” button.

### Verdict

**Keep with clarification.** Its occasional weak scenarios are healthy because its strong scenarios are distinctive and intuitive.

---

## 5. Revised Opportunistic Technique — Seize the Gap

**Pass 03 name:** Take the Opening  
**Revised working name:** **Seize the Gap**

### Core identity retained, trigger tightened

**Core verb:** exploit.

Seize the Gap can only be used when the world has entered a **real temporary opportunity state** created by something other than the Technique itself.

Examples include:

- An enemy is recovering from a committed miss, blocked heavy strike, failed rush, or interrupted action.
- A moving hazard has passed and briefly exposes a safe lane.
- A gate, ferry, patrol, weather break, or route condition creates a temporary opening.

The Technique provides a short controlled reposition or rapid transition into an immediately relevant action. It does **not** grant a universal damage bonus.

### Why this matters

Pass 03 risked turning the Technique into “mobility plus bonus attack.” The revised version is explicitly **state-dependent**.

The player cannot manufacture the triggering state by activating Seize the Gap. That is Resourceful territory.

### Combat reward

After using Seize the Gap during a genuine opening, the next context-relevant action receives one of the following implementation-level benefits:

- reduced recovery,
- improved positional leverage,
- better interruption against the exposed target,
- faster transition from movement to attack/interaction.

Avoid flat damage amplification whenever possible.

### Noncombat reward

Outside combat, Seize the Gap can capitalize on **visible temporary windows**, but never discovers those windows automatically.

Examples:

- Cross after a flood surge recedes.
- Move through a mechanism after its dangerous phase passes.
- Reach a caravan or ferry before a known departure.
- Exploit a short weather break to complete a exposed task.

### Scenario results after revision

- **Duel:** Strong only when the opponent genuinely overcommits.
- **Group pressure:** Useful — one opening may exist, but moving into it can expose the player to another enemy.
- **Ranged threat:** Strong if the enemy reloads, relocates, or loses line of sight; weak if no opening exists.
- **Charging beast:** Strong after a failed or redirected charge, not before it.
- **Environmental hazard:** Strong when the hazard cycles visibly.
- **Investigation:** Poor/Situational — it cannot reveal facts or clues.
- **Roadwork complication:** Useful when a temporary safe or effective work window appears.
- **Travel/weather:** Strong when a known temporary opportunity exists.

### Guardrail

No opening state, no Technique activation.

### Verdict

**Revise and keep.** Tightening the trigger separates Opportunistic from both generic mobility and Perceptive prediction.

---

## 6. Revised Resourceful Technique — Field Expedient

**Pass 03 name:** Hasty Rig  
**Revised working name:** **Field Expedient**

### Problem with Hasty Rig

A reusable hindrance zone was too universally good. It behaved like free crowd control against too many enemy types and risked creating a mini trap class.

### New core function

**Core verb:** prepare / modify.

Field Expedient lets the player rapidly create **one temporary practical modification** to an existing nearby object, surface, or piece of carried common kit.

The Technique does not summon a generic trap from nowhere. It requires a valid physical context.

For the vertical slice, implement one simple combat-capable interaction first, such as:

- quickly brace or anchor a loose object into temporary cover,
- secure a door/gate for a short delay,
- tension a visible rope or line already present at the site,
- stabilize an unstable object so it can be used safely once.

The exact first implementation should be chosen based on the slice environment rather than creating a universal deployable device.

### Combat identity

Resourceful creates advantage by **changing the environment before using the weapon**.

Examples:

- Brace a cart or timber into temporary cover before exchanging ranged fire.
- Secure a gate long enough to isolate one enemy from a group.
- Stabilize a loose platform to create a reliable firing or fighting position.
- Use an existing line, door, obstacle, or site object to influence an approach.

The Technique remains fully useful with swords, hammers, spears, bows, crossbows, and staves because its benefit changes the battlefield rather than the weapon.

### Noncombat identity

The same Technique can temporarily stabilize, brace, secure, redirect, or make safe **one simple physical element** during exploration or project complications.

It cannot:

- invent missing materials,
- solve a knowledge problem,
- replace actual crafting skill,
- permanently finish a road project,
- create arbitrary devices without environmental support.

### Scenario results after revision

- **Duel:** Situational — depends on usable terrain; deliberately not guaranteed.
- **Group pressure:** Strong when the site contains something that can divide, delay, or reshape pressure.
- **Ranged threat:** Strong if cover or a physical line can be improved; otherwise ordinary weapon play remains viable.
- **Charging beast:** Useful if a physical obstacle can be secured; no universal anti-charge trap.
- **Environmental hazard:** Strong for physical stabilization problems.
- **Investigation:** Useful only for experimental interaction or safely accessing evidence; it does not reveal conclusions.
- **Roadwork complication:** Strong — temporarily secure a failing element while a permanent solution is organized.
- **Travel/weather:** Useful when a real physical preparation can reduce risk.

### Guardrail

Field Expedient must be **contextual enough to avoid becoming free universal crowd control but common enough that Resourceful does not feel featureless**. Level design therefore needs a modest vocabulary of reusable “expedient-compatible” objects and surfaces.

### Verdict

**Major revision.** This is less universally dominant than Hasty Rig and fits Wayside's material, infrastructural world much better.

---

## 7. Revised Perceptive / Adaptive Technique — Learn the Pattern

**Pass 03 name:** Read and Answer  
**Revised working name:** **Learn the Pattern**

### Problem with Read and Answer

A button that immediately makes an incoming action easier to read risks becoming:

- the safest boss-fighting choice,
- a soft reaction-time accessibility advantage locked behind character creation,
- and the Archetype that receives superior environmental or investigative information.

That is too much value in one package.

### New core function

**Core verb:** observe / adapt.

Learn the Pattern rewards the player for **successfully experiencing or observing a repeatable behavior**, rather than granting foresight on demand.

After the player successfully responds to a recognizable enemy action, hazard cycle, or environmental pattern, they may briefly “learn” that pattern. When the same pattern occurs again during the relevant encounter or situation, a correct manually chosen response receives a modest execution benefit.

Possible benefits:

- slightly reduced stamina cost,
- slightly faster recovery after the correct defense,
- cleaner transition into a counteraction,
- reduced penalty from the repeated hazard.

The Technique does **not** slow time, extend the actual telegraph, show the correct answer, reveal hidden statistics, or automatically dodge/block.

### Why this separates it from Opportunistic

- **Seize the Gap:** recognizes a temporary opportunity that already exists and moves immediately to exploit it.
- **Learn the Pattern:** improves the player's second and later responses to a behavior they have already encountered successfully.

Opportunistic asks: **“What can I exploit right now?”**  
Perceptive/Adaptive asks: **“What have I learned about how this situation behaves?”**

### Combat examples

- Successfully evade a beast's first charge; later charges are cheaper to answer correctly.
- Block a swordsman's repeated overhead sequence; a later correct block recovers more cleanly.
- Survive a supernatural pulse and learn its cadence; repeating the same correct movement carries less recovery cost.
- Observe an archer's firing rhythm and respond more efficiently when that same pattern repeats.

### Noncombat examples

- Observe two flood pulses and become better at crossing on the next cycle.
- Learn the rhythm of a damaged mill mechanism before interacting with it.
- Recognize a repeated wind or structural oscillation during a project complication.

### Investigation restriction

Learn the Pattern can identify **repetition the player has actually observed**. It cannot reveal hidden clues, motives, lore, or causal conclusions.

If wagon tracks repeat in a suspicious way, ordinary investigation must first expose enough evidence for the player to notice the phenomenon. The Technique does not create evidence.

### Scenario results after revision

- **Duel:** Useful/Strong against repeatable opponents, weaker against highly varied behavior.
- **Group pressure:** Situational — difficult to build pattern familiarity across several attackers.
- **Ranged threat:** Useful if the shooter has a readable repeated cadence.
- **Charging beast:** Strong only after successfully handling an earlier charge.
- **Environmental hazard:** Strong against cyclical hazards, weak against one-off surprises.
- **Investigation:** Situational — notices established repetition, not hidden truth.
- **Roadwork complication:** Useful when the failure repeats or oscillates.
- **Travel/weather:** Useful for recurring conditions, not generic forecasting.

### Guardrail

Accessibility features must remain independent. Players who need longer telegraphs, aim assistance, reduced reaction pressure, or stronger guidance should receive those through difficulty/accessibility settings, not through this Archetype.

### Verdict

**Major revision.** The Technique now rewards learning without owning perception, information, or reaction accessibility.

---

## 8. Revised Scenario Matrix

| Scenario | Set the Line | Seize the Gap | Field Expedient | Learn the Pattern |
| --- | --- | --- | --- | --- |
| Duel | Strong | Strong when opening exists | Situational | Useful/Strong vs repetition |
| Group pressure | Strong but risky | Useful | Strong with terrain | Situational |
| Ranged threat | Useful | Strong during reload/LOS gap | Strong with usable cover | Useful vs cadence |
| Charging beast | Strong with credible brace | Strong after failed charge | Useful with terrain | Strong after first successful read |
| Environmental hazard | Useful | Strong with visible window | Strong for physical stabilization | Strong for repeated cycles |
| Investigation | Poor | Poor/Situational | Useful for safe physical interaction | Situational for observed repetition |
| Roadwork complication | Strong | Useful | Strong | Useful if cyclical |
| Travel/weather | Situational | Strong for known windows | Useful through preparation | Useful for recurring conditions |

This matrix is healthier than Pass 03 because no Technique is Strong across nearly every combat and noncombat situation.

---

## 9. Dominance Review

### Highest general combat reliability: Set the Line

This is acceptable only if commitment creates real vulnerability to flanking, unsuitable attacks, and mistiming. It should feel reliable, not safe against everything.

### Highest temporary-window value: Seize the Gap

Its trigger restriction is essential. If designers mark nearly every enemy recovery as an opening, it will become the default damage/mobility choice. Opportunity states must be meaningful rather than constant.

### Highest environmental agency: Field Expedient

This is intentional, but it must depend on real physical context and never substitute for actual crafting, project resolution, or knowledge.

### Highest repeated-threat efficiency: Learn the Pattern

This is intentional, but it must require prior successful observation and cannot improve the telegraph itself or reveal the correct response.

### Overall

No revised Technique appears dominant across the full scenario suite.

Each owns a **method**, not a domain:

- Resolute owns **commitment**, not defense.
- Opportunistic owns **exploitation**, not mobility or damage.
- Resourceful owns **physical preparation**, not crafting or crowd control.
- Perceptive/Adaptive owns **adaptation to repetition**, not information or reaction speed.

---

## 10. Cross-Technique Interaction Check

These Techniques should also interact rather than behave like isolated class buttons.

Examples:

- A later-trained Resourceful character uses Field Expedient to create cover; an Opportunistic character exploits the enemy's relocation afterward.
- A Perceptive character learns a beast's charge pattern; a Resolute character instead chooses to brace against it.
- An Opportunistic character waits for a machine cycle to expose a safe window; a Resourceful character changes the machine's physical conditions so a safer window can exist.

Because all four Techniques may eventually be learned outside the starting Archetype, these interactions matter for later build design.

They should not create mandatory combos. Limited Technique slots and progression cost remain the primary constraint.

---

## 11. Recommendation After Scenario Testing

The four-Archetype structure survives this test, but two starting Techniques should change substantially.

### Keep with clarification

- **Resolute — Set the Line**

### Revise

- **Opportunistic — Seize the Gap** (formerly Take the Opening)
- **Resourceful — Field Expedient** (formerly Hasty Rig)
- **Perceptive / Adaptive — Learn the Pattern** (formerly Read and Answer)

The revised set now produces four cleaner player questions:

- **Set the Line:** *What am I willing to commit to despite pressure?*
- **Seize the Gap:** *What temporary opening can I exploit right now?*
- **Field Expedient:** *What physical condition can I change before acting?*
- **Learn the Pattern:** *What repeated behavior have I learned to handle better?*

This is strong enough to justify moving next to starting Forms/foundational perks, but not yet strong enough to promote the Archetypes to Settled canon before those passive identities are tested.
