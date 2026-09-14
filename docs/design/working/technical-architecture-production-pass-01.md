# Wayside — Technical Architecture Production Pass 01

**Status:** Working architecture; no implementation proof claimed.
**Target:** Godot 4, GDScript, Windows desktop first, controller and keyboard from the first slice.

## 1. Architectural decision

Use a **data-authored, event-driven single-player architecture** with bounded loaded scenes. Systems communicate through explicit domain services and durable state records, not direct cross-scene node references.

Core domains:

- `WorldState`: projects, routes, region/community condition, story phase;
- `KnowledgeState`: observed/reported/inferred facts and map confidence;
- `QuestState`: finite-state undertakings, promises, transformations;
- `CharacterState`: aptitudes, familiarities, Techniques, equipment;
- `RelationshipState`: companion/faction tiers and named memories;
- `EconomyState`: price bands, availability, secured sources;
- `ContentRegistry`: stable IDs and resource definitions;
- `SaveService`: versioned snapshots, validation, migration, rotating autosaves.

## 2. Content model

Godot Resources or JSON-like external data may define items, dialogue, quests, routes, events, enemies, and projects; choose based on editor ergonomics in the slice. Every persistent object receives a namespaced stable ID. Scripts implement reusable actions/conditions; content selects from them. Avoid a “universal rule language” before two real examples prove the abstraction.

Project outcome is one atomic transaction: validate commitments, write outcome, update route/economy/community/knowledge, queue reactions, autosave. Re-entry must be idempotent. Inventory never owns cargo.

## 3. Scene and runtime boundaries

- one active local map plus lightweight global services;
- regional graph and travel events load as data, not persistent physical worlds;
- NPC schedules resolve on scene entry/time-block change;
- markets, weather, and projects update on named events/milestones, never every frame;
- combat entities use pooling only if profiling proves allocation pressure;
- target stable 60 FPS on a defined modest Windows test PC; visual effects scale independently.

## 4. Save model

Use versioned schema with explicit defaults, append-only content IDs, and migration tests. Keep three rotating autosaves plus manual saves outside immediate danger. Autosave before travel commitments, project resolution, major dialogue decisions, and climax encounters.

Automated tests should cover flag invariants, project transactions, quest transitions, missing content IDs, and save round-trips. A debug state inspector must explain why a route, price, dialogue reaction, or quest state is active.

## 5. Tooling priorities

Build only tools justified by repeated content:

1. content validator and ID/reference checker;
2. quest/project state inspector;
3. route graph editor/import workflow;
4. dialogue preview with condition tracing;
5. save fixture runner;
6. asset/content ledger export.

Do not build public mod tools, a general visual scripting system, or live content servers. Mod-friendly means clean data and stable IDs, not a launch SDK.

## 6. References and philosophy

- **Godot's scene/resource model:** borrow composition and reusable data resources; reject deeply coupled autoload singletons and scene-tree path dependencies.
- **Game Programming Patterns (Robert Nystrom):** use state, command/event queue, and data locality where they solve a measured problem; reject pattern accumulation as architecture.
- **Celeste's production lessons:** borrow deterministic-feeling controls, fast iteration, and robust assists; reject assuming its room/state simplicity transfers wholesale.
- **Fail-fast content validation:** invalid references should stop authoring/build checks, not become runtime mystery.

## 7. Migration register

| Old element (§24) | Outcome | Disposition |
|---|---|---|
| Godot 4 / GDScript / Windows first | Preserve | Foundation |
| Compatibility renderer initially | Preserve | Reevaluate only against demonstrated need |
| Web prototype path | Open | Build target only if export/performance cost stays low |
| Coarse/event-driven simulation | Preserve | Domain-state updates |
| Data-driven content | Replace | Stable IDs + constrained actions/conditions + validators |
| Mod-friendly foundation | Replace | Clean data, no public tools promise |
| Broad reusable resource list | Replace | Seven owned domains; abstractions earned by second content example |

## 8. Technical gates

- **X1 input/performance:** controller/keyboard combat and traversal at target frame time.
- **X2 transaction:** resolve/reload both outcomes of one project without duplicate effects.
- **X3 data reproduction:** second route, enemy, dialogue, and project added without core-code edits except genuinely new behavior.
- **X4 save migration:** load two older fixture schemas and report missing IDs safely.
- **X5 traceability:** debug inspector explains a five-system consequence chain.
- **X6 export:** Windows release build produced and tested; web only if cheap.

None has been executed. Engine point version, serialization format, and data authoring format remain Open until repository initialization and spike work.

## 9. Scope exclusions

No network stack, accounts, cloud authority, multiplayer replication, server economy, user-generated content browser, procedural world database, ECS rewrite, custom engine, public mod SDK, or cross-platform parity promise. These are Wayside Online/North Star creep.
