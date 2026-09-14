# Wayside Crossing Prototype

This is a self-contained browser prototype of the Production Edition vertical-slice loop. It is deliberately not the final Godot architecture; it exists to make the paper design playable and test its highest-risk causal chain.

## Run

From the repository root:

```bash
python3 -m http.server 8080
```

Then open `http://localhost:8080/prototype/`.

No build step or dependency installation is required. A modern Chromium, Firefox, or Safari browser is sufficient.

## Included

- keyboard, standard gamepad, and mobile touch controls;
- light attack, guard, evade, health, and stamina;
- safe/slow versus fast/strenuous route choice;
- five sourced evidence nodes and an inferred conclusion;
- fight or avoidance at the crossing;
- stone-span and shared-ferry project outcomes;
- route/community/supply/standing/promise consequences;
- local save/load with schema normalization;
- responsive interface and concise field journal.

## Prototype boundaries

This build tests structure and comprehension. It does not prove final combat feel, final art throughput, companion AI, full economy, multi-region content production, or Godot export performance. Placeholder canvas art is intentional.
