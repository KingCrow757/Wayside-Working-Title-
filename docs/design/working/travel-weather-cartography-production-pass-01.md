# Wayside — Travel, Weather & Cartography Production Pass 01

**Status:** Working proposal for audit; not canon; no prototype evidence claimed.  
**Canon authority:** [Blueprint v0.1](../../Wayside_Game_Design_Blueprint_v0.1.md) remains authoritative until Taylor explicitly approves promotion. All outcomes below are proposed migration recommendations, including rows called Preserve.  
**Inputs:** [Boundaries Pass 02](production-edition-boundaries-pass-02.md), [Combat Pass 01](combat-production-pass-01.md), [Progression Pass 01](progression-production-pass-01.md), and [Canon Migration Criteria](canon-migration-criteria.md).  
**Parallel interface:** [Equipment & Inventory Pass 01](equipment-inventory-production-pass-01.md).  
**Convergence:** [Roadwork Pass 01](roadwork-infrastructure-production-pass-01.md).

## 1. Thesis and protected experience

The road should be a choice the player understands, a place they sometimes inhabit, and a record of their interventions. It should not become a continuous survival simulation that consumes the production budget before a changed road can be witnessed.

Retain an authored road graph connecting Wayside and no more than two major regions. Use abstract journeys between meaningful local sites, with active movement inside those sites. Safe familiar returns should be brief; first discoveries and changed places should receive attention. Road knowledge is something the protagonist acquires through investigation, reports, and deeds, not a purchased numerical navigation skill.

This pass does not allocate new maps or encounters beyond Boundaries §§2 and 9. A travel incident, camp discovery, covenant interruption, or road witness scene occupies an existing roadside/site/project allocation. The ceiling of 10–16 small incidents includes travel incidents; there is no separate random-event library. Travel knowledge uses the progression pass's shared 12–20 knowledge unlocks and existing Fieldcraft familiarity. No travel perk tree is added.

## 2. Journey contract: choose, commit, encounter, arrive

At a road node, present destinations and a short route card: known access, estimated duration, provisions cost, relevant preparation, reported danger, weather notice, and source/confidence of important intelligence. Uncertainty concerns an identified report or unresolved condition. Do not disguise a known fixed price as a probability.

On confirmation, create a journey record with origin, destination, chosen route, current route revision, quoted cost, and next unresolved segment. A segment resolves once. Ordinary transit uses a short map transition and arrival summary. Significant authored encounters enter an existing local map or concise decision. Give the player an explicit continuation choice after an interruption, with the revised cost before committing.

Unknown roads do not require walking through empty terrain. Their first traversal can expose a survey, investigation, or authored obstacle. Known stable roads offer routine resolution. A relevant material change invalidates trust in that route and offers the changed site before normal automation resumes; it does not reset the whole map.

Active maps support the combat pass's movement, avoidance, investigation, and readable terrain. Do not continuously drain provisions while the player explores, pauses, reads dialogue, or retries movement. Combat exists because the encounter needs it, never as a travel interruption quota.

The exact transition length, interruption cadence, and first-trip versus return balance are **Open T1**. Start with a two-route greybox rather than authoring a network around untested timing. All durations in prototype cards are test values, not release promises.

## 3. Preparation, provisions, fatigue, and camp

Equipment owns one stored provisions count and the ordinary inventory rules. Travel owns consumption rules and route forecasts. A confirmed journey or rest event requests one idempotent inventory change; neither system independently decrements the count. One party-level charge covers the protagonist and optional active companion. Medicine remains a distinct equipment resource; food is not a combat healing item.

Trial rule: charge provisions only at explicitly quoted travel/rest boundaries. The confirmation states total cost, balance afterward, and whether enough remains for a known return. A discovered change cannot silently spend beyond the quote: it offers continuation, an affordable detour, or retreat. No thirst, calorie, food spoilage, animal feed, or per-companion inventory simulation.

A durable weather kit grants a preparation capability checked by authored travel events. It has no independent cold/wetness meter and does not require equipment permutations by weather. Shared tool capability flags can expose physical route interventions; access does not depend on carrying project timber or stone.

**Open T2:** trial a binary Rested/Tired travel condition. An explicitly warned strenuous journey can set Tired. Tired may require an additional quoted rest/time step before another strenuous option; ordinary retreat and essential routes remain available. It does not alter attack windows, stamina regeneration, armor handling, maximum health, or movement speed. If this only produces compulsory rest clicks, remove persistent fatigue and retain route cost plus authored exhaustion situations. A survival-pressure assist may waive ordinary provisions/fatigue costs while preserving routes and consequences, consistent with Blueprint §23.

Camps are authored rest opportunities at existing nodes/sites. Show shelter status, price/provisions, and the consequence of rest before confirming. Fieldcraft or learned shelter knowledge may reveal a safer camp or a distinct approach; no repeat-camping advancement. Use existing dialogue/interaction presentation and at most existing companion reaction allocations. No free placement, fire-building minigame, watch roster, ambush roll every night, camp upgrades, or tent animation pipeline.

Zero provisions must not strand the campaign. Offer a clearly explained basic recovery/return option at reachable safe nodes: basic hospitality or slower escorted return with an announced time/consequence cost. The Economy and Quest passes must audit availability without requiring money the player cannot obtain. Essential evidence, medicines needed for an authored mandatory recovery, and the return path must not form a circular resource lock. Test this explicitly in T2.

## 4. Transport and project logistics

Preserve the distinction between foot access and heavy delivery access, and the need for better roads to support material movement. Replace owned riding/pack/cart/wagon equipment with authored services and project logistics permissions. For example, a repaired crossing permits the supplier's haulage; arranging that supplier is a project prerequisite, not an escort simulation.

Travel on local maps is on foot. This pass does not add mounted movement, mount combat, vehicle pathfinding, stable UI, extra pack inventories, or animal animation sets. Named animals may occur as authored narrative characters, but condition, temperament, injury, separation, retirement, mortality options, and breeding/upgrade loops are absent from the proposed launch system. Do not imply that an animal's narrative presence enables ownership mechanics.

The service record needs destination/project, arrangement status, and an access prerequisite. Roadwork owns delivery/material commitments and the project's response when access changes. Travel exposes current access and reports, not a moving wagon or individual goods simulation. Economics may price the arrangement later; this pass assigns no final price or currency sink.

## 5. Time and weather

Replace the living-calendar coupling with coarse, event-driven time blocks and authored campaign thresholds. Travel, rest, and declared substantial actions advance time at confirmation boundaries. Local movement and combat may display atmospheric time but do not advance project, season, hunger, or deadline state every frame. Menus, dialogue, and planning remain safe to read. Explicit exceptional deadlines must name the trigger and remaining opportunity; ordinary exploration cannot silently erase an investigation.

This is a working implementation departure from Blueprint §§9.1–9.2. Calendar rhythm and downstream healing/training/crafting costs remain **Open T3**. NPC schedule implementation belongs to the NPC/Quest pass; this proposal only supplies named time-block transitions and retains an essential-service access requirement. Do not mark all of §9.3 audited here.

Trial weather palette: ordinary conditions, adverse conditions, and a specifically authored severe warning/event. These are an upper-level implementation vocabulary, not three new environment sets per site. Weather changes at an authored transition or time-block boundary. Weather forecast UI communicates a known warning and its source; forecast simulation and meteorology probabilities are unnecessary.

Give weather one or two visible effects in a scene: a route delay/closure, a shelter choice, exposed evidence, or an opportunity to inspect a covenant boundary. A scene cannot demand a unique branch for every weather, outfit, companion, transport, and project permutation. Keep one dominant mechanical weather condition per local scene. Ambient art may vary independently without creating extra mechanics.

Combat Pass §13 permits limited weather effects on visibility or ranged confidence. This pass does not settle their feel: **Open T4** compares readable terrain/visibility treatment with visual-only weather. No random hidden projectile accuracy penalty is proposed. If fog/rain obscures enemy silhouettes, reduce effects or use route-level consequences only. Mechanical warnings must remain intelligible when effects are reduced, with text/shape as well as color and audio.

Severe weather can make an unstarted project stage unavailable or create one authored complication. It cannot delete completed work, recursively roll failures, or advance construction by a real-time timer. Roadwork decides whether a warning warrants a stage gate; ordinary rain does not write project outcomes. No universal weather-to-market, household, wildlife, harvesting, or hydrology simulation is introduced. A weather-linked gathering clue or covenant opportunity is authored content owned by its relevant pass.

## 6. Map knowledge and witnessing

Preserve the evolving surveyed map's confirmed, reported, outdated, and disputed intelligence, source notes, pins, and short player notes. Store reported knowledge separately from actual road state. Confirmed means observed at a recorded route revision, not eternally accurate. A credible later report can mark that observation outdated without revealing the true state automatically. Competing claims create a compact disputed annotation, not duplicate route universes.

Reaching a site, surveying an existing marker, speaking to an informed person, or receiving a report may update knowledge. Fieldcraft can interpret a risk and knowledge can reveal an alternate approach. They do not automatically disclose an unseen project outcome. The route card should distinguish `last observed`, `new report`, and `current unknown` without requiring the player to compare timestamps manually.

Roadwork emits a route revision and one witness request after a consequential outcome. Travel may show that news arrived, but only the appropriate observation/report confirms the details. The next relevant return offers a changed approach, local composition, landmark, or short scene reusing the project site. After it is witnessed, routine resolution resumes. Optional revisits remain available. A witness request cannot force combat or spend surprise supplies.

Map confidence readability, controller navigation, and the value of manual notes are **Open T5**. If notes require disproportionate input/UI work, retain preset pins and automatically recorded sourced annotations, explicitly replacing that subfeature rather than silently omitting it.

## 7. Audit record: Blueprint migration and Tests A–I

Each row is a proposed record. A–B state identity and verbs; C–D are estimated production class/content multiplier, not measured implementation costs; E–G explain visible result, art burden, and bounded state; H points to the references below; I gives the prototype dependency. These tests apply in A–I order; no prototype-dependent recommendation is eligible for canon promotion merely because it is described here.

| Old element and proposed outcome | A–B: identity and purpose | C–D: burden estimate, old → proposal | E–G: visibility, art, state | H–I: evidence and unresolved dependency |
|---|---|---|---|---|
| §8.1 simulated journeys and §7 steps 2–5 — **Defer/Open**, candidate Replace with §2 journey contract | Strong road identity; Travel, Prepare, Investigate; retain consequential route choice | C3/3× continuously coupled journey → C2/2× graph, card, authored segment resolver; UI, save and event authoring are real new subsystem work | Quote route tradeoff; reuse local scenes; persist segment and revision, not background animals/weather ticks | R1/R2/P1; T1 route feel and T2 resource trial before region layout lock |
| §8.2 surveyed map/confidence/source — **Preserve**; manual notes implementation **Defer/Open** | Strong knowledge identity; Investigate, Learn, Return | C2/2× → C2/2×; knowledge UI remains real cost, no pretend C0 saving | Source badge plus journal explanation; fixed map art and small annotations; separate observed revision from actual state | R1/R2/P1 support choice/information, not proof of these exact badges; T5 usability |
| §8.3 routine-route automation — **Defer/Open**, candidate Preserve | Strong stewardship payoff; Travel, Return/Witness | C2/2× → C2/2×; shares journey resolver | Faster familiar return; changed-route witness uses project assets; consumed witness ID prevents repeat interruption | R1/R2/P1; T1 and Roadwork witness test |
| §8.4 speed/capacity/road suitability of transport, §15 transport storage — **Replace** with §4 services and logistics permission | Roads materially connect communities; Prepare, Repair; preserves logistics purpose | C3/3× → C1/2× when reusing project ledger; service UI/content and access checks still required | Supplier can reach site after intervention; static service depiction; named prerequisite, no wagon trajectory | R1/R2/P1 justify selective abstraction, not exact haulage rules; Economy pricing and Roadwork prerequisite audit |
| §8.4 individually owned animals and systemic mortality option — **Supersede** for launch | Useful attachment, but separate ownership loop is not required for roadwarden deeds | C3/3× → no subsystem; authored animal character only spends existing narrative budget | Avoid extra animation/condition UI; no animal failure state to save | R1/R2/P1; deliberate scope recommendation, no feel test needed to exclude ownership |
| §8.1 fatigue/supplies; §7 camp preparation; §9.4 recovery exposure — **Defer/Open**, candidate Replace with §3 | Material preparation supports Travel/Prepare; must create route choice rather than upkeep | C3/3× coupled survival → C1/2× provision transaction and optional binary travel condition atop equipment | Exact quote and rest choice; no costume or camp simulation; never couple to combat stamina | R1/R2/P1; T2 decides necessity, cadence, zero-resource recovery |
| §9.1 calendar/seasonal thresholds — **Defer/Open**, candidate Replace with §5 authored thresholds | Strong consequence identity; Choose, Return; preserve clear soft consequences | C3/3× → C2/2× shared action/time state service | Announced threshold; reuse authored condition scene; deterministic transition, no hidden seasonal countdown | R1/R2/P1; T3 and Quest/Economy/Settlement cost review |
| §9.2 continuous local time — **Replace** with confirmed action/time boundaries | Atmosphere remains; reading and investigating should not incur hidden failure | C2/3× → C1/2× integration with common time service | Display substantial action cost; ambient lighting only as affordable; no per-frame deadline mutation | R1/R2/P1; T3 tests common time model before implementation commitment |
| §9.4 meaningful/telegraphed weather — **Defer/Open**, candidate Replace with §5 bounded states | Strong material/uncanny contrast; Choose, Investigate, Prepare | C3/4× universal effects → C2/2× shared cue and authored rule; pipeline stays bounded only with overlay reuse | Dominant visible effect and readable warning; save condition ID; no simulation cascade | R1/R2/P1 do not prove weather feel; T4 prototype required |
| §9.4 market, gathering, and covenant weather consequences — **Replace** universal coupling with authored acknowledgments; detailed content remains downstream | Opportunities and visible causality survive; Investigate, Repair, Return | C3/4× → C1/2× per selected authored event, inside shared weather C2 | One explained cause; reuse common state; no broadcast that branches every subsystem | R1/R2/P1; Economy/Covenant audits own selected reactions, no implicit new feature commitment |
| §24.2 event-driven updates and scaled visual effects; §23 travel autosaves — **Preserve** within this pass | Supports legible and recoverable Travel/Choose | C1/2× → C1/2× using shared save/performance foundation | Reduced effects keep gameplay cues; reproducible transitions and pre-commit save | P1; T6 verifies, no promotion before evidence |

Sections §9.3 NPC routines, §12 stealth, §13 recovery, §16 economy, §19 covenant, and §21 companion reactions are interfaces, not completed subsystem audits. Their owners must map their remaining Blueprint elements. This pass does not claim the whole Blueprint is covered.

## 8. State and downstream ownership

| Owner | Owns and publishes | Consumer rule |
|---|---|---|
| Equipment | Stored provisions, kit/tool capabilities, inventory/load state | Travel forecasts and requests a single consumption transaction; capacity tuning stays Equipment Open |
| Travel | Journey/segment ID, route knowledge, observed revision, travel-only condition, time-block transition, weather notice | Roadwork may read access and relevant warning; no clock-driven project completion |
| Roadwork | Project outcome, route revision, foot/cargo access, one witness request, prerequisite ledger | Travel does not edit project outcomes; completion does not directly change surveyed knowledge |
| Progression | Fieldcraft rank and shared knowledge unlocks | Travel reads authored affordances; repeat travel/rest grants no grind progress |
| Economy/Settlement/Quest/Covenant | Prices/services, home recovery, content thresholds and authored supernatural exceptions | Must reconcile quoted time/cost and recovery paths before Integration; cannot add generic simulation through this interface |

Save the current node, journey ID and committed segment, cost transaction ID, time block, weather event ID, actual route revision, knowledge revision/source, and witnessed IDs. Confirmed actions are atomic or recoverable: load before commit changes nothing; load after commit restores the same cost and encounter without duplication. Arrival, retreat, and death/recovery must never apply a segment charge twice. Any random authored selection uses stored selection/seed, not a reroll on load. A debug view should expose why a route or witness is available.

## 9. Prototype gates and fallback deadlines

These are acceptance hypotheses for Taylor's small playtest, not scientific confidence claims. No gate has been run. Record build, participants, observed errors, and decision before changing an Open status.

| Gate | Cheap test and acceptance evidence | Latest decision point | Default if inconclusive |
|---|---|---|---|
| T1 Travel pacing | Greybox two routes, one meaningful interruption, one project change, and two returns. At least 4 of 5 first-time testers explain their route tradeoff and identify what improved; ask whether return travel felt like waiting. Compare fast return with active revisitation. | Before full regional route/site layout lock | Short abstract transitions; mandatory active visit only for unresolved authored encounter; one offered witness scene, no random interruption pool |
| T2 Provisions/fatigue/camp | Compare provisions-only with binary fatigue in the same loop. At least 4 of 5 testers explain cost before confirming; fatigue must produce a different reasonable route/rest choice, not unanimous automatic rest. Test zero food, zero money, injured, no kit, and absent companion. Every case can retreat/recover without repeating a grind. | Before Economy baseline and travel HUD lock | Remove persistent fatigue; retain clearly quoted provisions and authored rest/recovery; waive ordinary supply pressure if recovery still loops |
| T3 Common time | Paper/greybox travel, healing, project stage, training and rest across a threshold. Show costs first; ensure no reading-time failure and no waiting exploit that skips required investigation. | Before Quest/Settlement integration and content scheduling lock | Explicit story milestones plus action time labels; remove calendar-driven crisis progression |
| T4 Weather | Same local map in ordinary/adverse conditions at target gameplay zoom and reduced effects; test approach and combat silhouette recognition. Every dangerous mechanical condition has a readable non-color cue. Compare weather-only atmosphere with one route effect. | Before environment variant and combat tuning lock | Weather affects route/event choices only; visual effects optional, no local combat modifiers |
| T5 Map confidence | Give a confirmed old survey and conflicting new report; 4 of 5 testers identify what is known versus claimed, choose a verification action, and navigate using controller. | Before map UI/content authoring lock | Confirmed/reported/outdated labels with journal explanation; preset pins and automatic notes instead of free text; disputed claims remain explicit journal text |
| T6 Save and return integration | Save/load before and after journey commit, interruption, retreat, weather transition, project completion and witness. All cases preserve exact cost/state and the pending single witness. Check both reachable foot route and blocked cargo route. | Before first integrated vertical-slice acceptance | Disable multi-segment in-flight journeys; commit complete node-to-node events atomically. Keep integration Open if even that fails |

## 10. References, borrowing, and limits

Sources checked for this pass on 2026-09-10. The cited sources establish the described precedents; the exact Wayside rules and cost estimates are proposals, not claims about those games.

**R1 — Roadwarden.** The developer's [official overview and FAQ](https://moralanxietystudio.com/) emphasizes fast travel, no grind, exploration that changes the realm, and violence as one activity among others. **Borrow:** concentrate attention on meaningful discoveries and consequences; make routine movement quick. **Reject:** using a text RPG's presentation as a complete solution for Wayside's active top-down scenes. **Resource caveat:** the [official press kit](https://moralanxietystudio.com/presskit/roadwarden) describes simplified graphics and almost no animation; it cannot validate Wayside's animation or weather budget. Our inference is that abstract journeys can fund fewer, stronger active sites, not that the games have interchangeable pipelines.

**R2 — 80 Days.** Inkle's [official game page](https://www.inklestudios.com/80days/) presents route planning, journeys, encounters, and replayable narrative possibilities. **Borrow:** make route selection itself an intelligible decision with prospective consequences. **Reject:** a global race, hundreds of journeys, and an ever-expanding route catalogue; Wayside revisits two regions and judges roads by community effects as well as speed. **Resource caveat:** its broad narrative network is authored content, not free systemic depth. Wayside cannot add a new travel story every time weather or equipment changes. This is an abstraction precedent, not evidence for owned vehicle simulation or our fatigue rule.

**P1 — Mechanics, Dynamics, Aesthetics.** Hunicke, LeBlanc, and Zubek's [MDA paper](https://www.cs.northwestern.edu/~hunicke/MDA.pdf) connects implemented mechanics to play dynamics and experienced aesthetics. **Application:** begin with informed responsibility and recognition of a changed place; test whether costs and interruptions produce those experiences. **Reject:** treating a larger mechanics list as proof of richer play. **Resource caveat:** a framework supplies questions, not staffing, assets, or guaranteed player response. Its practical consequence here is T1–T5: remove a meter or effect when it fails to improve the experience.

The same R1/R2/P1 evidence informs the migration rows because travel, knowledge and resource pacing share a player loop. Neither game establishes Wayside's exact weather-state, camp, or haulage design. Those elements rely on explicit scope reasoning and bounded prototypes rather than invented precedent.

## 11. Convergence decision

Roadwork can now use an authored route graph, separate knowledge from actual state, expose foot/cargo access, and request one witnessed change. It can design alternative solutions in parallel with unresolved travel tuning as long as each alternative works with T1–T4 fallbacks. Prices, exact durations, supply quantities, fatigue, weather combat effects, and final map UI remain Open; they must not become unacknowledged prerequisites for a project plan.

The working recommendation is to replace coupled journey/transport/weather simulation with visible authored travel decisions and small event-driven records, preserve surveyed knowledge and the value of returning, and test the feel before promoting any implementation. Only the later Integration Audit and Canon Migration Proposal can recommend canon changes, and only Taylor's explicit approval can enact them.
