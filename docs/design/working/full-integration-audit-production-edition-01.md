# Wayside — Full Integration Audit, Production Edition 01

**Status:** Full paper audit complete; integration proposal not canon; prototype gates remain open.
**Baseline:** GitHub `main` inspected at `7b7439bbc8d34114747f4cb427376b90d3221b13` before this audit block.

## 1. Integrated product

Wayside Production Edition is a 6–8 hour critical-path / 10–12 hour thorough, Windows-first, single-player 2D action RPG. From a recurring crossroads hub, the player investigates failures across two authored regions, prepares and travels a bounded road graph, resolves six major material/covenant projects, and returns to communities that visibly remember the result.

The paper design now closes every major subsystem responsibility without requiring open-world simulation, a crafting career, settlement management, a large companion roster, four parallel faction campaigns, or online infrastructure.

## 2. End-to-end ownership

| Player event | Owning pass | Writes | Readers |
|---|---|---|---|
| Find/receive lead | Investigation | knowledge + quest state | map, dialogue, project |
| Prepare | Equipment/Economy/Progression | loadout, provisions, competency | travel, combat, site |
| Choose journey | Travel | time block, route event, map knowledge | NPC presence, site, journal |
| Resolve encounter | Combat | encounter result, surrender/memory | quest, NPC, rewards |
| Secure commitment | Roadwork/Economy | cargo/permission/expertise | project transaction |
| Choose covenant term | Magic/Narrative | promise + approach | project, relationship, ending |
| Resolve project | WorldState transaction | outcome, route, supply, community, knowledge | all downstream readers |
| Return to Wayside | Settlement/NPC | presentation and reaction consumption | player understanding |
| Finish policy | Narrative | ending policy + epilogue matrix | final montage/state |

No inventory/cargo, faction/community, journal/world-truth, or scene/save responsibility remains multiply owned on paper.

## 3. Cross-pass reconciliations

- **Progression:** no conventional level spine; four aptitudes, 6–8 familiarities, 8–12 total Techniques/knowledge. Old level 50 and 35-node webs are superseded.
- **Combat/equipment:** four animation families remain a ceiling, not an obligation; 12 profiles and two equipped Techniques; inventory does not absorb project logistics.
- **Travel/weather:** authored graph, sourced knowledge, coarse time blocks; fatigue and mechanical weather remain prototype-dependent.
- **Roadwork:** six projects, one active operation, 2–3 authored outcomes; no generic construction or delegation layer.
- **NPC/economy:** compressed shared state and price bands; no universal schedules or supply simulation.
- **Settlement:** seven functions, four choices, 12 visual deltas; no building sandbox.
- **Narrative:** three acts, three blocs, three endings plus one synthesis; main plot embedded in projects.
- **Companions/quests/magic:** two companions, deterministic evidence grammar, three covenant Techniques maximum; none creates an independent progression or content matrix.
- **World/art/tech:** 28-character target, two regional kits, event-driven state, data validation, and save transaction proof.

## 4. Production ceilings check

| Ceiling | Integrated allocation | Result |
|---|---:|---|
| 2 major regions + Wayside | 2 + Wayside | Pass on paper |
| 6 major projects | 6 | At ceiling |
| 3–5 Wayside choices | 4 | Within |
| 2 companions | 2 | At ceiling |
| 25–35 named NPCs | 28 target | Within |
| 8–12 deep recurring NPCs | 10 | Within |
| 6–10 side stories | 6–8 | Within |
| 10–16 micro-stories | 12 target | Within |
| 4 animation families | 4 ceiling | At ceiling; one must be proven first |
| 8–10 enemies | 8 target | Within |
| 8–12 Techniques | 11 target + 1 conditional spare | Within |
| 3 advancement layers | 3 | At ceiling |
| 3–5 endings | 4 variants | Within |

Paper compliance is not schedule or throughput proof.

## 5. Hidden multiplier audit

Eliminated or quarantined:

- universal NPC schedules/knowledge/economies;
- four faction campaigns and six ending pipelines;
- six companions, party inventory, romance, and banter matrix;
- modular equipment component combinatorics;
- general construction, delegated projects, worker management;
- continuous caravans/prices/weather/seasons;
- procedural quests, dialogue, bargains, loot, or roads;
- third region disguised as prologue/endgame;
- public mod tools and all network/live-service architecture.

Remaining multipliers requiring evidence: outcome reaction packages, project visual states, dialogue word count, four weapon families, companion AI, and data-driven authoring/tool cost.

## 6. Prototype-dependent register

Unresolved by design intentionally: aiming/attack feel; second weapon/loadout needs; repair friction; provisions/fatigue; weather mechanics; map confidence UI; hands-on roadwork feel; prices; schedule convenience; political distinction; companion autonomy; investigation comprehension; covenant charge model; art throughput; content schema; and save migration.

The [Vertical Slice Plan](vertical-slice-production-plan-01.md) orders these tests. Failure invokes the [Risk & Cut Hierarchy](risk-cut-hierarchy-production-pass-01.md). No document may cite this audit as evidence that a prototype gate passed.

## 7. References and philosophy synthesis

The package consistently adapts bounded strengths from **Bastion** (compact hub/action cadence), **Roadwarden** (roads and concise travel narrative), **Pentiment** (community testimony and consequence), **Hades** (return-loop density), **Death's Door/Hyper Light Drifter** (readable compact combat), and **Darkwood** (grounded top-down uncanniness). It rejects their incompatible scale, genre, presentation, or repetition requirements. The governing philosophy is the essential-experience lens, state compression, authored sparsity, and evidence-led scope.

## 8. Integration verdict

**Proceed to a vertical slice after Taylor reviews the package.** The design is internally compatible on paper and retains Wayside's identity under the production ceilings. It is not yet production-validated. The highest-risk claim is that one compact loop can make roadwork feel physically participatory, morally consequential, and visibly systemic without becoming either a menu choice or a chore. That claim—not total feature count—is the slice's central kill gate.

No canonical Blueprint file has been changed.
