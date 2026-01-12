# Starfall Projects Portfolio

A portfolio of Starfall Lua systems for Garry's Mod. This repository mirrors the
`garrysmod/data/starfall/` layout and collects production scripts, shared
libraries, and demonstrations used for in-game automation, UI, and simulation.

## Highlights
- Production-ready Starfall chips with a focus on performance in the sandboxed runtime
- Modular Lua architecture with shared libraries in `allylib/`
- HUD/UI, data visualization, and control logic for ACF and Wire setups
- Multiplayer-friendly tooling with documented configuration and wiring guidance

## Repository Layout
- `allylib/` - Shared libraries used across projects
- `examples/` - Focused demos, render tests, and HUD experiments
- `information_systems/` - Universal datalink and server/client link components
- `misc/` - Standalone utilities and prototypes
- `defunct/` - Archived or superseded scripts kept for reference
- Root files - Primary chips and controllers

## Project Index
### Root Scripts
- `2024_physical_gun_controller.txt` - Physical gun controller utilities.
- `ally_mobility_hours.txt` - Mobility brain for tracked and wheeled ACF vehicles.
- `merydian's_camera_chip.txt` - Camera management with filtering for HUD pipelines.
- `merydian's_sf_gun_controller.txt` - Server-side ACF gun controller with curve-fit
  ballistics and Wire I/O helpers.

### Information Systems (`information_systems/`)
- `universal1_datalink_node.txt` - Universal1 datalink node.
- `universal1_datalink_root.txt` - Universal1 datalink root.
- `universal2_datalink_combo.txt` - Universal2 datalink combo.
- `universal3_datalink_combo_version_2.txt` - Universal3 datalink combo v2.
- `universal4_serverlink.txt` - Universal4 server link.
- `universal4_serverlink_client-end.txt` - Universal4 client-side link.
- `universal5_itk.txt` - Universal5 ITK server component.
- `universal5_itk_client.txt` - Universal5 ITK client component.

### Libraries (`allylib/`)
- `acf_ballistics_lib.txt` - Ballistics utilities for ACF.
- `animation_class.txt` - Lightweight animation helper for HUDs.
- `curve-fitting_ballistics_algorithm.txt` - Curve-fit solver for ACF guns and
  time-to-impact estimates.
- `general_algorithms.txt` - Miscellaneous reusable algorithms.
- `helpful_hud_functions.txt` - HUD drawing helpers and render-target utilities.
- `projectile_library.txt` - Projectile helper routines.
- `simple_server-side_wire_helper.txt` - Declarative Wire I/O helper with cached
  values and triggers.

### Examples (`examples/`)
- `bounding_box_relative_to_camera_render.txt` - Render bounding boxes relative to
  camera space.
- `fixed-cam_test_2.txt` - Fixed camera test.
- `jet_gunsight_test.txt` - Jet gunsight test.
- `jet_gunsight_test2.txt` - Jet gunsight test variant.
- `merydian's_hud_base.txt` - Base HUD example.
- `radar_data_visualizer.txt` - Radar data visualization example.
- `render_target_example.txt` - Render target example.
- `renderview_test.txt` - RenderView test.

### Misc (`misc/`)
- `all_wheels_unhittable.txt` - Utility to toggle wheel hittability.
- `handheld_rpg.txt` - Handheld RPG utility.
- `prop_to_starfall_hologram.txt` - Convert props to Starfall holograms.
- `quadratic_target_model_generator.txt` - Quadratic target model generator.

### Defunct (`defunct/`)
Archived or superseded scripts retained for reference.
- `2024_cam_controller_and_hud.txt`
- `2027_projectile_aimbot_computer.txt`
- `2028_projectile_aimbot_computer.txt`
- `acf3_rws_controller.txt`
- `acf_ballistics_livesim_calculator.txt`
- `modern_hud_beta.txt`
- `modern_hud_beta_varlib.txt`

## Using the Projects
1. Copy the desired `.txt` file into `garrysmod/data/starfall/` and keep the
   relative folder structure.
2. Load it in-game through a Starfall chip.
3. Review the header comments for configuration, wiring, and dependencies.

## Includes and Dependencies
- Many scripts use `--@include` from `allylib/`; keep folder names and paths intact.
- If you copy a single script that references `allylib`, also copy the required
  library files.
- Some systems have server/client pairs; install and link both sides as documented
  at the top of each file.

## Links
- GitHub: https://github.com/Ally-for-Hire
- Google Drive (legacy releases): https://drive.google.com/drive/folders/1arb3QgrZkKfF06vdEVqD4samK23IfJrT?dmr=1&ec=wgc-drive-globalnav-goto
- YouTube: https://www.youtube.com/@allyforhire
- Steam: https://steamcommunity.com/id/alliedmerydian/
- Discord: @allyfh

## Contact
Open to feedback, collaboration, and commissions. If you are exploring Starfall,
building GMod tooling, or hiring for scripting roles, feel free to reach out.
