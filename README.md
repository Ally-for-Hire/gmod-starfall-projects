# GMOD Starfall Releases

Production scripts, libraries, legacy references, and examples for Garry's Mod Starfall.

This README reflects the current local folder state under `garrysmod/data/starfall/GMOD-Starfall-Releases/`.

## What's Here
- Root chips: primary release scripts kept at the top level
- `allylib/`: shared libraries used by multiple chips
- `examples/`: curated demos, experiments, and teaching references
- `misc/`: standalone helpers and one-off utilities
- `defunct/`: archived or superseded scripts kept for reference

## Current Inventory
- Root scripts: **6**
- `allylib/`: **8**
- `examples/`: **16**
- `misc/`: **4**
- `defunct/`: **7**

---

## Root Scripts
- `2024_physical_gun_controller.txt`
- `ally_mobility_hours.txt`
- `merydian's_camera_chip.txt`
- `merys_public_gun_controller.txt`
- `merydians_sensor_suite.txt`
- `mfd_ultra.txt`

## Libraries (`allylib/`)
- `acf_ballistics_lib.txt`
- `animation_class.txt`
- `merys_integrated_ballistics_computer.txt`
- `general_algorithms.txt`
- `gtable_library.txt`
- `helpful_hud_functions.txt`
- `projectile_library.txt`
- `simple_server-side_wire_helper.txt`

## Examples (`examples/`)
- `ballistic_table_generation_example.txt`
- `daktank_gamemode_example.txt`
- `fixed_camera_controller_example.txt`
- `gtable_example.txt`
- `hud_base_example.txt`
- `jet_gunsight_minimal_example.txt`
- `jet_gunsight_screenlink_example.txt`
- `jet_hud_example.txt`
- `radar_data_visualizer.txt`
- `render_target_example.txt`
- `simple_hud_legacy_example.txt`
- `simple_radial_menu_example.txt`
- `simple_tank_hud_example.txt`
- `target_box_resizing_example.txt`
- `viewcam_networked_target_example.txt`
- `viewcam_render_target_example.txt`

## Misc (`misc/`)
- `all_wheels_unhittable.txt`
- `handheld_rpg.txt`
- `prop_to_starfall_hologram.txt`
- `quadratic_target_model_generator.txt`

## Defunct (`defunct/`)
- `2024+2_cam_controller_and_hud.txt`
- `2027_projectile_aimbot_computer.txt`
- `2028_projectile_aimbot_computer.txt`
- `acf3_rws_controller.txt`
- `acf_ballistics_livesim_calculator.txt`
- `modern_hud_beta.txt`
- `modern_hud_beta_varlib.txt`

---

## Usage
1. Keep these files under `garrysmod/data/starfall/` with the same relative paths.
2. Load the target script on a Starfall chip in-game.
3. If a script uses `--@include`, make sure the referenced files exist at the expected relative path.
4. For paired or split-realm systems, load the matching companion files as needed.

## Notes
- This local clone includes `.git/` metadata, but the inventory above only reflects script/library content.
- The `examples/` folder is curated for learning and reference, not just polished production code.
- The `defunct/` folder is intentionally retained for historical reference and migration work.

## Links
- GitHub: <https://github.com/Ally-for-Hire>
- Legacy Drive folder: <https://drive.google.com/drive/folders/1arb3QgrZkKfF06vdEVqD4samK23IfJrT?dmr=1&ec=wgc-drive-globalnav-goto>
- YouTube: <https://www.youtube.com/@allyforhire>
- Steam: <https://steamcommunity.com/id/alliedmerydian/>
- Discord: `@allyfh`
