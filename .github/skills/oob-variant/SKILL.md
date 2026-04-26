Reference guide for editing OOB (Order of Battle) files and equipment variants in Vanilla Navy Rework.

This skill is not invocable — it documents patterns and conventions for OOB and variant work.

---

## File Structure

### OOB Files (`history/units/`)

Each country has multiple OOB files gated by DLC:

| Pattern                  | Content                                             |
| ------------------------ | --------------------------------------------------- |
| `00_TAG_vnr_naval.txt`   | Naval units (fleets, taskforce, ship in production) |
| `01_TAG_vnr_air.txt`     | Legacy air units                                    |
| `01_TAG_vnr_air_bba.txt` | Air units (airframes, wings)                        |
| `03_TAG_vnr_naval.txt`   | Expert Naval units                                  |

The event navy_rework.0 in events/00_navy_rework.txt sets which OOB to use:

```
load_oob = "00_TAG_vnr_naval"         # Naval fleet
```

## Equipment Variant Patterns (`common/scripted_effects/_add_naval_variants.txt`)

Name is key of this variant, and can be referred to in OOB files as `version_name`. Type is the ship hull this variant applies to, defined in `common/units/equipment/ship_hull_*.txt`. Modules defines the module inserted to each slot, slot is defined within ship hull, while modules are present in `common/units/equipment/modules/ship_modules_*.txt`.
e.g.
```
create_equipment_variant = {
    name = "Eagle Class"
	parent_version = 0
	show_position = no
	role_icon_index = 9
	icon = "gfx/interface/technologies/England/ENG_carrier1.png"
    type = vnr_ship_hull_carrier_conversion_bb
    name_group = ENG_CV_QUALITIES
    modules = {
        fixed_ship_deck_slot_1 = ship_deck_space_open
        fixed_ship_anti_air_slot = ship_anti_air_1_h
		fixed_ship_engine_slot = heavy_ship_engine_1
		fixed_ship_secondaries_slot = ship_secondaries_1
		fixed_ship_armor_slot = ship_armor_carrier_heavy_1
		mid_1_custom_slot = ship_deck_space_small
    }
}
```
