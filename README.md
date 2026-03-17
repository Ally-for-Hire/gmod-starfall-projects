# GMOD Starfall Releases

Production and experimental Starfall scripts for Garry's Mod, organized to mirror `garrysmod/data/starfall/`.

This README was refreshed to match the current folder contents.

## What’s here
- **Root chips**: primary release scripts (controllers, mobility, camera, targeting)
- **`allylib/`**: shared libraries used by multiple chips
- **`information_systems/`**: datalink/server-link families and client counterparts
- **`examples/`**: focused demos and HUD/render experiments
- **`misc/`**: standalone helpers and utilities
- **`defunct/`**: archived/superseded scripts kept for reference

## Current inventory
- Root scripts: **5**
- `allylib/`: **7**
- `information_systems/`: **8**
- `examples/`: **10**
- `misc/`: **4**
- `defunct/`: **7**

---

## Root scripts
- `2024_physical_gun_controller.txt`
- `ally_mobility_hours.txt`
- `aps_auto_target_takedown.txt`
- `merydian's_camera_chip.txt`
- `merydian's_sf_gun_controller.txt`

## Libraries (`allylib/`)
- `acf_ballistics_lib.txt`
- `animation_class.txt`
- `curve-fitting_ballistics_algorithm.txt`
- `general_algorithms.txt`
- `helpful_hud_functions.txt`
- `projectile_library.txt`
- `simple_server-side_wire_helper.txt`

## Information systems (`information_systems/`)
- `universal1_datalink_node.txt`
- `universal1_datalink_root.txt`
- UNRELEASED: `universal2_datalink_combo.txt`
- UNRELEASED: `universal3_datalink_combo_version_2.txt`
- UNRELEASED: `universal4_serverlink.txt`
- UNRELEASED: `universal4_serverlink_client-end.txt`
- UNRELEASED: `universal5_itk.txt`
- UNRELEASED: `universal5_itk_client.txt`

## Examples (`examples/`)
- `fixed-cam_test_2.txt`
- `jet_gunsight_test_1.txt`
- `jet_gunsight_test_2.txt`
- `merydian's_hud_base.txt`
- `radar_data_visualizer.txt`
- `render_target_example.txt`
- `resizing_target_box_test.txt`
- `simple_tank_hud_example.txt`
- `viewcam_example_1.txt`
- `viewcam_example_2.txt`

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
1. Place/keep these files under `garrysmod/data/starfall/` with the same relative paths.
2. Spawn/open a Starfall chip in-game and load the target script.
3. If a script uses `--@include`, make sure referenced library files are present.
4. For paired systems (server/client), load both components.

## Notes
- This repo includes `.git/` metadata when cloned locally; script inventories above ignore that internal VCS data.
- Some scripts are examples or legacy references; use `defunct/` at your own discretion.

## Links
- GitHub: <https://github.com/Ally-for-Hire>
- Legacy Drive folder: <https://drive.google.com/drive/folders/1arb3QgrZkKfF06vdEVqD4samK23IfJrT?dmr=1&ec=wgc-drive-globalnav-goto>
- YouTube: <https://www.youtube.com/@allyforhire>
- Steam: <https://steamcommunity.com/id/alliedmerydian/>
- Discord: `@allyfh`
