# Wayside — Production Edition working build

This is an **in-development Godot 4 build**, not a finished 6–12-hour release. It uses the working Production Edition design from the Wayside GitHub repository without promoting those draft decisions into canon.

## Play

Open `project.godot` in the standard Godot 4 editor and run the project. In the game, press **1** for a new campaign or **2** to continue a save. Follow the numbered choices. At a project site, move with **WASD** or arrow keys, use **E** to inspect and work, **Space** to strike, **Shift** to guard, **Ctrl** to evade, and **J** for the journal.

## Implemented now

- Three-act campaign skeleton with six data-authored projects across Wayside and two provisional regions.
- Route and travel-event choices, three sourced evidence roles per project, a fight-or-avoid worksite threat, and two stated material/covenant plans per project.
- A timed hands-on intervention and once-only outcome transaction.
- Return to Wayside, bounded settlement choices, a companion selection placeholder, community/road/supply/political state, journal, autosave, and a shared ending scene with four policy variants.
- Reusable JSON project content; the same runtime loads all six projects.

## Still needed for a full Production Edition

This build does **not** yet meet the GitHub package's 6–8-hour critical-path or 10–12-hour thorough-content target. The six sites currently reuse one graybox map and one encounter behavior. It lacks final region naming, distinctive location art, the second companion, dialogue packages, side stories, full equipment and combat depth, services/economy, accessibility/controller testing, audio, save migration, and release export QA. The working documents mark several of these as open or prototype-dependent.

The source plan is in the repository's draft [Production Edition audit](https://github.com/KingCrow757/Wayside-Working-Title-/pull/1) and [browser prototype](https://github.com/KingCrow757/Wayside-Working-Title-/pull/2). The canonical Blueprint remains unchanged.

