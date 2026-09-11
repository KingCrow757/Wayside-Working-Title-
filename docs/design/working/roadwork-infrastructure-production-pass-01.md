# Wayside — Production Edition Roadwork & Infrastructure Pass 01

**Status:** Working proposal — not canon; no promotion approved.  
**Scope:** First convergence of Equipment & Inventory and Travel/Weather/Cartography.  
**Authority:** The [existing Blueprint](../../Wayside_Game_Design_Blueprint_v0.1.md) remains canon until Taylor explicitly approves migration. Outcomes below are recommendations under the [migration criteria](canon-migration-criteria.md).  
**Inputs:** [Production boundaries](production-edition-boundaries-pass-02.md), [combat](combat-production-pass-01.md), [progression](progression-production-pass-01.md), [equipment](equipment-inventory-production-pass-01.md), [travel](travel-weather-cartography-production-pass-01.md).

## 1. Decision and protected experience

Test a small authored project system in which the player diagnoses a failure, secures a viable agreement, performs one consequential intervention, and returns through a visibly altered place. A project is not complete as player experience merely because its ledger says Complete.

The production ceiling remains **six major projects/decisions: four regional and up to two centered on Wayside**, with **two to three authored approaches per project**. An approach can retain, reroute, restrict, or abandon infrastructure; construction is not automatically the right answer. The player personally leads **one active major operation**. Surveying and negotiating other projects remain possible without starting additional construction.

This protects Blueprint §§2.1–2.2 and §10: roads organize the world, stewardship has physical and moral consequences, and becoming a roadwarden follows deeds. It replaces breadth in module placement, reconstruction, and delegation with fewer authored decisions. It adds no construction profession, progression currency, animation family, or region. The two Wayside projects count within Wayside's broader 3–5 upgrade-choice envelope, not as six projects plus two more.

**Paper recommendation versus evidence:** the finite state structure and scope exclusions can be recommended now. Whether the interaction feels physical enough, whether its pacing works, and whether outcomes read clearly remain **Defer/Open** until §10 tests are run.

## 2. A project the player can understand

Each project uses the following shared stages. Individual projects may omit an unnecessary stage; they may not add a separate management loop.

| Stage | Player action and information | Stored result | Recovery rule |
|---|---|---|---|
| Discovered | Hear a lead or see the failure; identify access and immediate danger | Project ID and known lead | Declining it preserves the lead |
| Surveyed | Inspect physical evidence and ask who uses, owns, or remembers the place | Evidence IDs; known claimants | No missed pixel or specialist background may permanently block the necessary evidence |
| Diagnosed | Compare material, political, and covenant explanations | Supported conclusions and unresolved uncertainty | An imperfect diagnosis still exposes a viable cautious approach |
| Planned | Compare 2–3 plausible approaches, beneficiaries, concessions, access effects, and unresolved requirements | Selected plan, freely revisable before commitment | Switching plans before commitment releases reservations |
| Ready | Secure declared material supply, permission/support, expertise, and delivery access | Validated commitment ledger | Show each missing condition and at least one way to satisfy or replace it |
| In progress | Confirm costs/terms; establish worksite and undertake one critical intervention | Committed plan, paid requirements, stage ID | Save before commitment; no duplicate deductions on reload |
| Paused, if needed | Resolve one authored complication through intervention, agreement, or a reduced plan | One complication result | No random loss of completed work; pause has an explained release condition |
| Completed | Inspect the resulting structure or deliberate nonconstruction outcome | One outcome ID and bounded memory modifiers | Emit effects once; no repeated rewards |
| Witnessed | Revisit the approach/site and encounter a legible local response | Witness acknowledgement | Keep changes visible afterward; acknowledgement is not a prerequisite for ordinary access |

The names above describe the shared data and authoring pattern, not nine separate screens. The player uses a site, a concise plan comparison, and a project journal entry. Completion and witnessing can occur on the same visit if the return through the changed approach communicates the result. No artificial round trip exists solely to clear a flag.

**Investigation must change a decision.** Each project needs at least one physical finding, one human claim, and one covenant clue or credible evidence that the covenant is not the direct cause. These are evidence roles, not three mandatory collectible lists. A conversation or location can supply several. Knowledge and Familiarities from progression can reveal a safer method or sharper interpretation; they do not replace community consent with a character statistic. No project assumes the player owns every relevant skill.

## 3. Commitments, tools, and logistics

Use a project ledger distinct from personal inventory. Each plan contains at most four requirement groups:

1. **Supply:** one or two named bulk-material commitments, such as suitable timber and iron fittings. The precise amounts/prices belong to the later economy pass.
2. **Rights and support:** an explicit local agreement, concession, or lawful access arrangement. Coin cannot universally purchase this group.
3. **Labor and expertise:** a named lead or community commitment, reusing the recurring NPC budget. No individual worker roster, wages, hunger, skill XP, or shift scheduling.
4. **Access and method:** delivery service eligibility plus any necessary survey/knowledge/tool condition. The plan displays why a footpath cannot satisfy a heavy-delivery requirement.

The player owns practical tools; using a hammer in a project does not demand a new tool-durability meter or repeated repair minigame. Shared contextual interaction uses the equipment pass's tool tags. A missing specialist tool can be borrowed on site, supplied by the community, or replaced by another authored method. A noncombat-focused character must have a viable path; a combat-focused character can enlist expertise.

**Bulk cargo is a commitment, not a backpack item.** Securing timber records source and promised delivery. A road that permits that service allows the delivery event to complete when the player explicitly advances the project. There are no simulated wagon entities moving offscreen. An obstruction can pause an unfulfilled delivery with a visible reason, but it cannot destroy paid materials randomly. A second project cannot consume the same reserved supply commitment.

At commitment, validate all requirements together. Reserve resources while the player compares a finalized plan; commit them once when work actually starts. Cancelling before that point releases reservations. After commitment, sunk labor and historical promises remain; changing direction uses only the specific authored recovery option, not an unlimited refund/rebuild exploit. Rewards attach to the unique project/outcome event, not to repeating a construction stage.

**Avoid circular locks:** if the broken route is needed to supply its own repair, the project must offer local supply, a lighter-capacity method, or a pre-authored alternate delivery route. The first project must work without a developed Wayside facility, companion, rare purchase, or another completed major project.

## 4. What hands-on work means

Use **one required critical interaction per major project**, with at most one additional contextual action only when it changes the outcome. Examples include choosing the correct drainage release from surveyed evidence, fixing an approach at a marked position, or placing a witness stone at one of two authored sockets. Player movement, observation, and the selected intervention supply physical involvement.

Use existing interact, movement, and readable props; a shared work pose is sufficient for the first prototype. A unique minigame, precision timing challenge, bespoke tool animation set, or physics simulation is not assumed. Accessibility can replace a hold with a toggle/press and reveal interactable bounds without changing results.

**Module placement is not automatically retained.** Where position makes a visible material or moral difference, prototype two predefined placements using a preview. Otherwise bake placement into the selected plan. No freely placed bridge deck, road spline, structural stress solver, or socket catalogue. The resulting state is the plan's outcome, not an independent module dimension that multiplies it.

Danger is authored. A project can reuse a fight or avoidance encounter already in the combat budget; it does not earn an additional defense wave because construction began. At most one authored complication per project, and zero is a valid choice. A complication varies the route to an existing outcome or records a bounded concession; it must not create a fourth outcome family.

## 5. Time, weather, absence, and reconstruction

Work advances at explicit stage actions with displayed time costs, using the travel pass's coarse time representation. No wall-clock countdown runs while the player reads plans or leaves the application. No waiting repeatedly to roll favorable weather. If a severe-weather event makes the selected method unsafe, offer a stated later work window or a supported adaptation, with the consequence shown before confirmation.

Weather does not roll back a completed project. Later authored covenant or political changes may alter its use; these produce a new explained route revision and remembered history rather than silently setting it back to Unbuilt.

Routine maintenance and local activity can be shown in scene dressing and brief reports. **Autonomous parallel major-project simulation is superseded for launch.** A specialist's involvement is part of the active project's requirements, not a delegation management screen. A paused active project can be suspended explicitly to work elsewhere; suspension retains the ledger and consumes no recurring resources. Only one operation can be In progress at once.

**General reconstruction is also superseded for launch.** Blueprint §10.2's revisable major works would require authoring transitions among every pair of outcomes and repeatedly reconciling land, access, obligations, and history. Before commitment, plans can change freely. Afterward, a particular project may contain a single bounded corrective step if already included in its content budget; otherwise the player lives with the disclosed choice. Save/load remains available as specified by the Blueprint. A thematic wish for reversibility is not approval to add a second project chain to all six projects.

## 6. Worked convergence example: damaged crossing

This is a **prototype scenario**, not a new canonical location, regional selection, or seventh project. It occupies one of the four regional project slots if adopted. It may later be attached to the existing Riverfields/Millcross material, but the narrative pass owns that selection.

**Before:** the old crossing is closed to bulk haulage; people use a longer pedestrian way. A supplier reports missing deliveries. Survey shows scoured foundations, a disputed bank approach, and an old boundary mark buried by widening work. Test evidence allows the player to distinguish physical damage from a covenant claim.

| Approach | Visible prerequisite/concession | Physical intervention | Primary outcome and witnessed effects |
|---|---|---|---|
| Restore a narrow timber crossing within the old bounds | Locally supplied timber; agreement to limit loads and return the encroached bank | Secure the surveyed approach within the marked boundary | **Restricted crossing:** people/light service regain direct passage; heavy delivery remains on the detour; affected residents comment on recovered access and lost expansion |
| Establish a staffed ferry at the agreed landing | Community/operator commitment and landing rights; publicly stated severe-weather interruption | Mark and secure one authored landing | **Ferry crossing:** a bounded transport service replaces the span; severe-weather access follows an explicit rule; the landing and operator show the new obligation |
| Retire the span and make the existing detour the recognized road | Agreement with residents along the detour; route knowledge and one marker commitment | Renew the witness marker at its surveyed socket | **Recognized detour:** original crossing stays closed; the detour's reliability/access record changes; old approach and beneficiary reaction make the cost visible |

These are three possible finished states including deliberate non-restoration, not three builds plus a fourth abandonment state. Their engineering details are fiction for prototype comparison, not verified real construction designs.

Each outcome must affect at least three boundary categories: here travel/access, a community relationship, and supply or covenant conditions. Supply effects are exported facts for the economy pass, not prices invented here. Political standing cannot be assigned until the NPC/narrative passes define who can reasonably know or care.

**Stress cases:** inspect the site before hearing the rumor; arrive without the tool; choose a different plan before paying; promise one timber supply to two projects; restore/load during commitment; attempt delivery through the route being repaired; arrive during the severe-weather event; complete with no companion; revisit after completion; revisit after a later route revision. Every case has an explicit stage/ledger response rather than a hidden timer or guessed NPC simulation.

## 7. Shared state and ownership contract

| Information | Owner | Contract for adjacent passes |
|---|---|---|
| Tools, outfits, personal load, ammunition | Equipment | Expose capability tags; project interactions never edit their simulation independently |
| Time, weather, journey resolution, route knowledge | Travel | Provide a forecast/context snapshot and delivery eligibility; projects do not clear map uncertainty directly |
| Project stage, plan, commitments, complication, outcome | Roadwork | Apply a validated outcome transaction once and retain the cause |
| Actual route access/condition revision | Shared world route record, updated by the authorized project event | Travel compares the changed revision with known information and schedules one appropriate observation/notice |
| Community memory/reaction | Next NPC consequence pass | Consume outcome ID plus explicit affected people; do not broadcast all facts to every NPC |
| Supply availability and prices | Later economy pass | Consume delivered commitment and route service facts; never simulate background convoy loss |
| Facilities and Wayside presentation | Later settlement/content passes | Reuse outcomes within the two Wayside project slots and 3–5 upgrade choices |

Route service eligibility uses named flags such as `foot`, `light_delivery`, and `heavy_delivery`, rather than one ambiguous cargo boolean. An outcome can enable one service without enabling the others. This refines the shared foot/cargo shorthand in Travel; it adds no separate vehicle simulation.

Minimum proposed project save fields: stable project ID, schema version, stage, evidence IDs, chosen plan, commitment IDs/status, complication result, outcome ID, outcome-applied marker, witnessed revision. Actual route state and player knowledge remain separate records. A transactional command validates requirements, deducts or fulfills commitments, updates project/route state, and records an event together. Retrying the command after reload must be harmless.

No runtime implementation is claimed. The technical pass still needs to choose transaction/save representation and migration policy. The contract specifies observable behavior that representation must preserve.

## 8. Production and migration audit

Cost/multiplier scores are estimates of production burden under criteria Tests C/D, not measured staffing estimates or literal multiplication factors. A cost of Class 3 cannot be excused merely by calling content authored.

| Old Blueprint element | Recommended outcome / new home | A–B: identity, verb, inherited purpose | C–D: burden and trade | E–G: visibility, art, robust state | H–I: evidence and gate |
|---|---|---|---|---|---|
| §10 survey, diagnosis, grounded authored plans | Preserve the structure; §2 owns its Production scope | Strong: Investigate → Choose; establish why repair is needed | Class 2 / 2× for the shared flow; bounded evidence and plans | Findings alter available explanations; visible marked site; saved evidence/plan IDs | Death Stranding/Pentiment lessons in §9; comprehension test P1 |
| §10.1 limited consequential module placement layered on authored plans | Defer/Open for two fixed sockets; otherwise Replace with plan-baked placement (§4) | Strong only when position changes who benefits | Class 2 / 2× if sockets reuse scene; reject Class 3 / 3× generalized placement | Preview must read at camera distance; chosen plan owns outcome | P2 before content lock; fallback plan-baked placement |
| §10 materials, rights, labor, specialists | Replace with four-group commitments (§3) | Strong: Prepare/Choose; preserve material and social legitimacy | Class 2 / 2×; removes per-material transaction and autonomous worker burden | Requirements/reasons on one plan sheet; atomic commit | Two game precedents, §9; P3 recovery and duplication tests |
| §10 critical construction/defense/ritual stages | Defer/Open for one consequential interaction (§4) | Strong: Repair/Alter; personal agency beyond selecting a card | Shared logic Class 2 / 2×; full authored project content remains Class 3 / 3× | Large prop change, shared pose; stable stage ID | P1/P2; fallback one contextual interaction, no extra defense encounter |
| §10.2 general reconstruction | Supersede launch reconstruction job (§5) | Revision is useful but less central than visible lasting responsibility | Avoid old Class 3 / 4× outcome-transition burden; retained precommit changes Class 1 / 1× | Preview/sunk costs explicit; history never erased | P1 checks commitment clarity; no indefinite reconstructable alternative |
| §10.3 simultaneous delegated projects | Supersede autonomous launch loop; §5 keeps only active-work suspension | Generic management would compete with Travel/Investigate/Return | Avoid Class 4 / 4× scheduling/economy loop; suspension Class 1 / 2× | Visible paused reason; one-active-operation invariant | No prototype needed to recommend this scope exclusion |
| §10.4 recurring specialists + local workforce | Preserve narrative function; Replace growth/management with commitment roles (§3) | Strong: Choose/Repair; expertise and legitimacy | Class 1 / 2× within named-NPC ceiling; no new specialist progression | Named lead at site; no simulated crowd dependency | NPC pass owns exact reaction depth and cast allocation |
| §§9.4,10.3 weather stalls/complications | Replace with authored stage conditions (§5) | Travel/Choose; adapt to known environmental conditions | Class 1 / 2× atop weather state; no work/weather cross-product of scenes | Explicit cause and remedy; no completed-work loss | P3 and travel weather gate; calm-window fallback |
| §§2.2,7,10 visible persistent outcomes | Preserve purpose; Replace broad interactions with bounded outcome event (§7) | Defining: Return/Witness | Class 3 / 3× justified by core identity; two or three outcomes, one consequence view, no extra build/module dimension | Before/worksite/after and changed access; once-only events | P4 plus NPC/economy handoffs before final integration |

**Explicit Class 3 trade:** concentrate environment, writing, and QA effort on the six visible project chains. Remove the general module catalogue, universal reconstruction transitions, parallel delegation reports, and additional automatically generated defense stages. Do not add decorative outcome variants beyond the two or three primary states. This is a scope reduction within the existing ceiling, not permission to exceed it.

For each retained/replaced element, the new home is the section cited above; its dependencies are the equipment/travel contracts, NPC reaction pass, economy requirements, and the named tests. Migration decisions describe the old element's responsibility; they do not silently delete it from the canonical Blueprint.

## 9. References and Lessons

Sources checked 2026-09-10. The lessons below are design interpretations, not evidence that Wayside's prototype has succeeded.

- **Death Stranding — infrastructure experienced through subsequent travel.** PlayStation's [official day-one guide](https://blog.playstation.com/2019/11/07/hit-the-ground-running-with-these-day-one-death-stranding-tips/) describes roads and structures making difficult journeys easier. Borrow the tangible before/after journey: a project must alter how the player can use a place. Reject cargo balancing, online contributions, resource hauling repetition, and the scale of its world/animation production. For Taylor + AI, a route revision plus one changed local approach must carry the benefit. This source supports the travel benefit, not our finite-state implementation.
- **Pentiment — community consequence in a constrained authored setting.** The [official Obsidian overview](https://pentiment.obsidian.net/) emphasizes investigation and decisions with lasting community consequences. Borrow attention to affected people and return visits. Reject importing its generational time span or treating an investigation outcome as a universal moral score. Wayside adds physical work, but reuses a few locations and named witnesses rather than commissioning distinct scenes for every combination of six decisions. The reference has a dedicated authored narrative/art production effort; its quality is a target to budget for, not a promised automatic result.
- **Design philosophy: mechanics must earn their experienced effect.** [Hunicke, LeBlanc, and Zubek, MDA](https://www.cs.northwestern.edu/~hunicke/MDA.pdf) separates implemented mechanics, resulting play dynamics, and player experience. Our application is to test whether a commitment-and-intervention loop produces responsibility and changed-place recognition. A ledger by itself proves neither. Reject treating the framework as a formula that validates design without observation. Use one playable loop to test the causal chain before multiplying content.

## 10. Prototype gates and open decisions

These tests are proposed and **not run**. Numeric thresholds below are provisional small-session acceptance rules, not statistically validated claims. Begin with at least three fresh testers where feasible; Taylor can run the initial smoke test, but self-review cannot establish first-time comprehension.

| ID / unresolved question | Required evidence | Latest decision point | Default if inconclusive |
|---|---|---|---|
| P1: Does hands-on stewardship exceed a quest-card choice without busywork? | One crossing, two approaches first; observe players survey, explain the cause, choose, intervene, and identify a cost. At least 2 of 3 should explain what their action changed without prompting | Before authoring project two | Keep one evidence-driven contextual intervention; remove secondary work stages; retest rather than declare the feel settled |
| P2: Do placement and work actions read in painterly top-down presentation? | At gameplay camera distance and with weather effects reduced, compare fixed sockets against plan-baked preview on keyboard and controller; no precision input requirement | Before final project asset/interaction lock | Bake placement into the plan; use one shared pose plus unambiguous prop state |
| P3: Are resources, suspension, weather, and reload recoverable? | Exercise all §6 stress cases, including reload at commitment/completion; no duplicated deductions/rewards, duplicate consumption of shared supply, or unrecoverable project | Before integrating economy/save system | No partial material spending; explicit single-step commitment and staged local supply |
| P4: Do outcomes visibly matter on return? | Replay arrival/return for each outcome; at least 2 of 3 testers identify changed access and one affected community interest. Inspect scene and route facts after reload | Before vertical-slice acceptance and final integration | Reduce to two outcomes and strengthen one shared return scene; keep visibility Open until retested |
| P5: Can the project template be reproduced affordably? | Build a second project using the same ledger/UI/stage flow; record new assets, authoring effort, and exceptions | Before committing to all six projects | Reduce project count or collapse unique stages, preserving two regions and existing hard ceilings |
| P6: Which actual requirements, NPCs, and prices support the six projects? | NPC consequence and economy passes provide bounded allocations; narrative/content pass assigns project slots | Before full content lock / canon migration proposal | Use generic role/supply placeholders in prototypes; do not invent final cast or currency values here |

Roadwork is ready to inform the NPC and economy audits as a bounded working interface. It is not ready for canon promotion, full asset production, or a claim that the central loop has been proven.
