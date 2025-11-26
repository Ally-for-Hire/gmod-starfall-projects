# Starfall Projects Portfolio

A curated portfolio of Starfall Lua systems built for Garry's Mod. The projects in this repository highlight how I approach real-time scripting challenges, plus interface, automation, and simulation work, inside a constrained game environment. Each folder captures a different slice of my development practice, from UX-heavy HUDs to combat logic, control theory, and reusable utility libraries.

## Highlights
- Demonstrated ability to design, document, and ship production-ready Starfall components
- Experience translating gameplay requirements into modular Lua architectures
- Focus on clarity, maintainability, and in-game performance under sandbox constraints
- Proven track record supporting multiplayer teams with reliable tooling and automation

## Skills in Practice
- **Systems design:** event-driven scripting, state machines, robust error handling
- **Gameplay programming:** targeting logic, ballistics approximations, vehicle control
- **Interface design:** responsive HUDs, data visualization, workflow-focused UI
- **Simulation & analytics:** telemetry logging, diagnostics overlays, decision support
- **Collaboration:** consistent naming, inline docs, and versioned releases for teammates

## Project Index
- ally_mobility_hours.txt — Plug-and-play mobility brain for tracked/wheeled ACF vehicles.
- merydian's_sf_gun_controller.txt — Server-side ACF gun controller powered by curve-fit ballistics and Wire I/O helpers.
- modern_hud_beta.txt — Shared HUD framework; uses `allylib/animation_class.txt` and `allylib/helpful_hud_functions.txt`.
- modern_hud_beta_varlib.txt — Variables and presets for the modern HUD.
- merydian's_camera_chip.txt — Camera management with built-in filtering for HUD pipelines.
- 2024_cam_controller_and_hud.txt — Camera controller + HUD utilities.
- 2024_physical_gun_controller.txt — Physical gun controller utilities.
- acf3_rws_controller.txt — ACF 3 remote weapon system controller.
- information_systems/universal1_datalink_node.txt — Universal1: Datalink Node.
- information_systems/universal1_datalink_root.txt — Universal1: Datalink Root.

### Libraries (allylib/)
- curve-fitting_ballistics_algorithm.txt — Curve-fit solver for ACF guns; feeds time-to-impact for fire control.
- simple_server-side_wire_helper.txt — Declarative Wire I/O helper with cached values and triggers.
- helpful_hud_functions.txt — HUD drawing helpers (shapes, text, RT wrappers, draw utilities).
- animation_class.txt — Lightweight animation helper for HUDs.
- acf_ballistics_lib.txt — Ballistics utilities for ACF.
- projectile_library.txt — Projectile helper routines.
- general_algorithms.txt — Miscellaneous reusable algorithms.

### Examples and misc
- examples/ — Focused demos and render tests (e.g., render_target_example.txt).
- misc/ — Standalone QoL utilities and experimental tools.
- defunct/ — Archived prototypes kept for reference.

## Working with the Projects
1. Place the desired `.txt` file inside `garrysmod/data/starfall/` (already mirrored in this repository).
2. Load it through a Starfall chip in-game and tweak any exposed variables or config tables.
3. Review in-file documentation for wiring diagrams, dependencies, or suggested component pairings.

I am happy to walk through setup, customization, or broader workflow questions, just reach out.

## Includes & Dependencies
- Many scripts `--@include` files from `allylib/`. Keep folder names and relative paths intact.
- When copying a single script that references `allylib`, also copy the required library files.
- Some systems ship as server/client pairs. Install and link both sides as documented at the top of each file.

## Links
- GitHub: https://github.com/Ally-for-Hire
- Google Drive (legacy releases): https://drive.google.com/drive/folders/1arb3QgrZkKfF06vdEVqD4samK23IfJrT?dmr=1&ec=wgc-drive-globalnav-goto
- YouTube: https://www.youtube.com/@allyforhire
- Steam: https://steamcommunity.com/id/alliedmerydian/
- Discord: @allyfh

## Let's Connect
I am always open to feedback, collaboration, or commissions. If you are exploring Starfall, building GMod tooling, or hiring for scripting roles, I would love to talk.
