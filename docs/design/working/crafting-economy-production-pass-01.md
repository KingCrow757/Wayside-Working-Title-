# Wayside — Crafting & Economy Production Pass 01

**Status:** Working proposal; not canon; values untested.
**Dependency consumed:** Roadwork commitments, NPC consequence ownership, Travel delivery classes, and Equipment durability.

## 1. Decision

The economy is a **bounded procurement and consequence layer**. Coin handles ordinary exchange; access, obligations, and relationships secure exceptional labor or materials. Crafting consists of repair, refit, six practical consumable recipes, and project preparation. Specialists perform advanced work. The player does not become an all-trades production empire.

## 2. Release catalogue

- 4 ordinary material groups: timber, stone/aggregate, metalwork, cloth/leather;
- 4 scarce/special material tags, authored to regions and covenant sites;
- 6 consumable recipes, each supporting a recurring verb;
- 8–10 equipment refits distributed across existing items;
- no more than 6 specialist commissions with distinct narrative provenance;
- project cargo represented as commitments and deliveries, never backpack stacks.

Recipes have at most three inputs. There are no refining tiers, quality rolls, crafting levels, workstation minigames, or component permutations that demand unique art.

## 3. Money and availability

Use four authored price bands—scarce, dear, ordinary, plentiful—applied to compact base-price tables. Road outcomes and regional states move an affected category by at most one band. Shops refresh at chapter/state milestones, not through continuous supply simulation.

Essential provisions, basic repairs, and one viable weapon in each unlocked family always have a fallback source. Scarcity changes preparation and creates leads; it does not soft-lock travel or combat. Selling common goods provides supplemental coin, never the dominant advancement loop. Repeated buy/sell arbitrage is prevented by conservative resale and milestone-based markets.

## 4. Specialist economy

Named specialists convert player knowledge, materials, coin, and obligations into outcomes. The player may help or learn a field method, but specialists remain the fictionally credible source of advanced construction and equipment work. Wayside facilities reduce friction or unlock commissions; they do not generate passive wealth beyond a small, capped expedition supply allowance.

One project ledger owns bulk needs:

`need → source/permission → delivery eligibility → secured/delivered → project use`

Inventory can supply a rare sample or tool, but does not duplicate cargo state.

## 5. Crafting loop

1. Learn a recipe/refit from a person, document, or investigation.
2. Acquire one to three inputs through ordinary purchase, a bounded find, or a relationship.
3. Use an appropriate Wayside specialist/facility or field context.
4. Receive a predictable result and explicit cost.

Repair restores function. Neglect may lower sale value or remove a minor bonus, but ordinary wear cannot silently break a favored item during a journey. If repair testing produces chores, durability becomes story/project damage only.

## 6. References and philosophy

- **Outward:** borrow preparation making journeys feel materially grounded; reject hunger/thirst micromanagement, broad recipe discovery, and punitive failure loops.
- **Pentiment:** borrow trades and expertise as social access; reject making background choice permanently own most solutions.
- **The Witcher 3:** borrow recipes as authored knowledge and specialists as quality gates; reject ingredient sprawl, gear tiers, and inventory clutter.
- **Moonlighter:** useful negative reference: a shopkeeping/profit loop would displace stewardship as Wayside's center.
- **Design principle — meaningful economy:** prices matter only when they alter an understandable decision. Numerical motion without a changed player option is noise.

## 7. Migration register

| Old element | Outcome | Reason/new home |
|---|---|---|
| Contextual gathering leading to delegated supply (§16.1) | Replace | Collapse to authored finds, secured sources, and milestone supply |
| 2–4 component modular crafting (§16.2) | Supersede | Fixed recipes/refits; avoids combinatorial balance and art |
| Player eventually masters every trade (§16.3) | Supersede | Compact field competence plus persistent specialist value |
| Coin, barter, promises, obligations (§16.4) | Preserve | Core social/material economy |
| Continuously simulated caravans and markets | Replace | Event-driven price bands and availability states |
| Merchant play viable as major style | Supersede | Trade supports stewardship; no independent merchant career |
| Equipment repair/refit | Preserve | Subject to E3 repair-friction gate |

## 8. Prototype gates

- **F1 economy worksheet:** price one 90-minute content segment. Ordinary earnings must cover essentials plus one discretionary choice without grinding.
- **F2 scarcity comprehension:** players identify cause, affected category, and remedy from UI/dialogue.
- **F3 crafting friction:** make and use two recipes; remove any recipe that adds inventory work without changing approach.
- **F4 project transaction:** verify cargo cannot duplicate, disappear, or be carried as ordinary inventory.
- **F5 repair trial:** compare persistent wear with milestone repair. Default to milestone-only damage if routine maintenance is not an interesting choice.

No gate has been tested. Exact prices, resale ratios, and refresh cadence remain Open.

## 9. Scope exclusions

No auction house, fluctuating global market, production chains, worker payroll, shop ownership, infinite resource nodes, daily collection clicks, farming, trade-route automation, or online economy.
