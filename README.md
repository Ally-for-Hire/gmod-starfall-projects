# GMOD Starfall Releases

Main release folder for my Garry's Mod Starfall chips and shared libraries.

## Layout
- `allylib/`: shared libraries used by multiple chips
- `examples/`: smaller reference chips and demos
- `misc/`: standalone utilities
- `defunct/`: old or replaced scripts kept for reference
- root `.txt` files: main release chips

## Main Chips
- `2024_physical_gun_controller.txt`
- `ally_mobility_hours.txt`
- `lowlag_multi_function_displays.txt`
- `lowlag_radar_track.txt`
- `merydians_camera_chip.txt`
- `merydians_public_gun_controller.txt`
- `merydians_sensor_suite.txt`

## Core Libraries
- `allylib/general_algorithms.txt`
- `allylib/helpful_hud_functions.txt`
- `allylib/merys_integrated_ballistics_computer.txt`
- `allylib/simple_server-side_wire_helper.txt`

## Usage
1. Keep the same folder structure under `garrysmod/data/starfall/`.
2. Load the chip you want in-game.
3. Make sure any `--@include` dependencies exist in the expected relative path.
4. For multi-chip systems, load the matching companion chips as well.

## Notes
- `examples/` is for reference, not all of it is production style.
- `defunct/` is archived on purpose.

## Links
- GitHub: <https://github.com/Ally-for-Hire>
- Legacy Drive: <https://drive.google.com/drive/folders/1arb3QgrZkKfF06vdEVqD4samK23IfJrT?dmr=1&ec=wgc-drive-globalnav-goto>
- YouTube: <https://www.youtube.com/@allyforhire>
- Steam: <https://steamcommunity.com/id/alliedmerydian/>
- Discord: `@allyfh`
