# Ship Equipment Module Index

Parsed from `common/units/equipment/modules/*.txt`; hull compatibility is derived from hull `allowed_module_categories`, and unlock sources from `enable_equipment_modules` in technologies and naval special projects.

Total: 395 modules in 127 categories.

`Not declared` means no technology or naval special-project unlock declaration was found. `No hull slot found` means no current hull lists the category in an allowed slot.

## Index by Category

### `ap_role`

Allowed hulls: `ship_hull_civilian`, `vnr_ship_hull_civilian_2`.

| Module ID | Enabled by |
| --- | --- |
| `ship_hull_civilian_role_ao` | `tech: fast_combat_support_ship`, `tech: integrated_supply_ship` |
| `ship_hull_civilian_role_ap` | `tech: naval_combat_support` |
| `ship_hull_civilian_role_av` | `tech: early_carrier_study` |

### `ap_shell`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_heavy`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_high_velocity_shell` | `tech: basic_heavy_shell` |
| `ship_light_weight_shell` | `tech: multi_mounted_battery` |
| `ship_super_heavy_weight_shell` | `tech: improved_heavy_shell` |

### `armor_scheme`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_scheme_all_or_nothing` | `tech: basic_heavy_armor` |
| `ship_scheme_all_or_nothing_armor_box` | `tech: advanced_heavy_armor` |
| `ship_scheme_incremental` | `tech: early_ship_hull_heavy` |
| `ship_scheme_incremental_post_jutland` | `tech: enhanced_horizontal_defense` |
| `ship_scheme_mixed` | `tech: basic_heavy_armor` |

### `bb_carrier_role`

Allowed hulls: `vnr_ship_hull_carrier_conversion_bb`.

| Module ID | Enabled by |
| --- | --- |
| `carrier_bb_conversion` | `tech: bb_conversion_carrier`, `tech: converted_super_heavy_carrier` |
| `carrier_bc_conversion` | `tech: bb_conversion_carrier`, `tech: converted_super_heavy_carrier` |
| `carrier_shbb_conversion` | `tech: converted_super_heavy_carrier` |

### `c_role`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`.

| Module ID | Enabled by |
| --- | --- |
| `ship_hull_cruiser_role_aa` | `tech: cruiser_aa_upgrade` |
| `ship_hull_cruiser_role_c` | `tech: early_ship_hull_cruiser` |
| `ship_hull_cruiser_role_ca` | `tech: early_ship_hull_cruiser` |
| `ship_hull_cruiser_role_cb` | `tech: specialization_doctrine` |
| `ship_hull_cruiser_role_clc` | `tech: specialization_doctrine` |
| `ship_hull_cruiser_role_csr` | `tech: cruiser_radar_sentry` |
| `ship_hull_cruiser_role_pc` | `tech: early_ship_hull_cruiser` |
| `ship_hull_cruiser_role_pz` | `tech: specialization_doctrine` |

### `c_role_missile`

Allowed hulls: `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`.

| Module ID | Enabled by |
| --- | --- |
| `ship_hull_cruiser_role_cg` | `tech: cruiser_missile_upgrade` |
| `ship_hull_cruiser_role_cgaa` | `tech: cruiser_missile_upgrade` |

### `carrier_angled_deck`

Allowed hulls: `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `angled_deck` | `tech: carrier_angled_deck` |

### `carrier_civilian_material`

Allowed hulls: `ship_hull_carrier`, `vnr_ship_hull_carrier_2`, `vnr_ship_hull_escort_carrier`, `vnr_ship_hull_merchant_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `carrier_civilian_material` | `tech: carrier_mass_production`, `tech: merchant_carrier` |

### `carrier_helipad`

Allowed hulls: `ship_hull_civilian`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_carrier_amphibious_assault_ship`, `vnr_ship_hull_civilian_2`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `carrier_helipad_aew` | `tech: helipad` |
| `carrier_helipad_asw` | `tech: helipad` |

### `carrier_island`

Allowed hulls: `ship_hull_carrier`, `vnr_ship_hull_carrier_2`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_escort_carrier`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_merchant_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `carrier_no_island` | `tech: early_ship_hull_carrier` |
| `carrier_secondary_island` | `tech: basic_ship_hull_carrier` |

### `carrier_miscellaneous`

Allowed hulls: `ship_hull_carrier`, `vnr_ship_hull_carrier_2`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_carrier_amphibious_assault_ship`, `vnr_ship_hull_escort_carrier`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `carrier_fuel_storage` | `tech: air_fuel_storage` |
| `economical_nuclear_reactor_carrier` | `tech: nuclear_reactor_cost_reduction` |

### `carrier_ship_engine`

Allowed hulls: `ship_hull_carrier`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_amphibious_assault_ship`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_carrier_conversion_ca`, `vnr_ship_hull_escort_carrier`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `carrier_ship_engine_1` | `tech: early_ship_hull_carrier` |
| `carrier_ship_engine_2` | `tech: basic_ship_hull_carrier` |
| `carrier_ship_engine_2_diesel` | `tech: basic_ship_hull_carrier` |
| `carrier_ship_engine_3` | `tech: improved_ship_hull_carrier` |
| `carrier_ship_engine_3_diesel` | `tech: improved_ship_hull_carrier` |
| `carrier_ship_engine_4` | `tech: advanced_ship_hull_carrier` |
| `carrier_ship_engine_4_diesel` | `tech: advanced_ship_hull_carrier` |

### `carrier_ship_engine_nuclear`

Allowed hulls: `vnr_ship_hull_carrier_amphibious_assault_ship`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `carrier_ship_engine_nuclear` | `tech: nuclear_engine_research` |

### `carrier_side_lift`

Allowed hulls: `vnr_ship_hull_carrier_2`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `side_lift` | `tech: improved_ship_hull_carrier` |

### `carrier_unit`

Allowed hulls: `ship_hull_carrier`, `vnr_ship_hull_carrier_amphibious_assault_ship`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `carrier_aviation_control_unit` | `tech: landing_aid_system` |
| `carrier_damage_control_unit` | `tech: carrier_damage_control` |
| `carrier_scouting_unit` | `tech: early_ship_hull_carrier` |
| `carrier_spared_squad` | `tech: early_carrier_study` |
| `carrier_tracing_unit` | `tech: airborne_early_warning` |

### `cds_role`

Allowed hulls: `vnr_ship_hull_cruiser_coastal_defense_ship`.

| Module ID | Enabled by |
| --- | --- |
| `ship_hull_cruiser_role_ac` | `tech: early_ship_hull_cruiser` |
| `ship_hull_cruiser_role_cd` | `tech: early_ship_hull_cruiser` |
| `ship_hull_cruiser_role_mo` | `tech: early_ship_hull_cruiser` |

### `civilian_ship_engine`

Allowed hulls: `ship_hull_civilian`, `ship_hull_cruiser`, `vnr_ship_hull_civilian_2`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_escort_carrier`, `vnr_ship_hull_merchant_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `civilian_ship_engine_1` | `tech: naval_combat_support` |
| `civilian_ship_engine_2` | `tech: high_speed_civilian_engine`, `tech: integrated_supply_ship` |

### `civilian_ship_weapons`

Allowed hulls: `ship_hull_civilian`, `vnr_ship_hull_civilian_2`.

| Module ID | Enabled by |
| --- | --- |
| `ship_civilian_light_battery_1` | `tech: basic_battery` |
| `ship_rocket_launcher` | `tech: ship_rocket_artillery` |

### `coldwar_upgrade_bb`

Allowed hulls: `vnr_ship_hull_heavy_5`.

| Module ID | Enabled by |
| --- | --- |
| `coldwar_upgrade_bb` | `tech: naval_tactical_data_system` |

### `coldwar_upgrade_cv`

Allowed hulls: `vnr_ship_hull_carrier_2`.

| Module ID | Enabled by |
| --- | --- |
| `coldwar_upgrade_cv` | `tech: full_armored_carrier` |

### `cruiser_ship_engine`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_conversion_ca`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_escort_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `cruiser_ship_engine_1` | `tech: early_ship_hull_cruiser` |
| `cruiser_ship_engine_2` | `tech: basic_ship_hull_cruiser` |
| `cruiser_ship_engine_2_diesel` | `tech: interwar_ship_hull_cruiser` |
| `cruiser_ship_engine_3` | `tech: interwar_ship_hull_cruiser` |
| `cruiser_ship_engine_3_diesel` | `tech: improved_ship_hull_cruiser` |
| `cruiser_ship_engine_4` | `tech: improved_ship_hull_cruiser` |
| `cruiser_ship_engine_4_diesel` | `tech: advanced_ship_hull_cruiser` |
| `cruiser_ship_engine_4_gas` | `tech: new_ship_materials` |
| `cruiser_ship_engine_5` | `tech: advanced_ship_hull_cruiser` |

### `cruiser_ship_engine_nuclear`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_cruiser_6`.

| Module ID | Enabled by |
| --- | --- |
| `cruiser_ship_engine_nuclear` | `tech: nuclear_engine_research` |

### `cv_role`

Allowed hulls: `vnr_ship_hull_carrier_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_hull_carrier_role_cv` | `tech: early_carrier_study` |
| `ship_hull_carrier_role_cvl` | `tech: early_carrier_study` |

### `cve_role`

Allowed hulls: `vnr_ship_hull_escort_carrier`, `vnr_ship_hull_merchant_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `ship_hull_carrier_role_cve` | `tech: escort_carriers_ship` |

### `dd_role`

Allowed hulls: `ship_hull_light`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`.

| Module ID | Enabled by |
| --- | --- |
| `ship_hull_light_role_cl` | `tech: destroyer_cruiser_trend` |
| `ship_hull_light_role_dd` | `tech: early_ship_hull_light` |
| `ship_hull_light_role_de` | `tech: escort_destroyer_trend` |
| `ship_hull_light_role_dl` | `tech: large_destroyer_trend` |
| `ship_hull_light_role_ff` | `tech: early_ship_hull_light` |

### `dd_role_missile`

Allowed hulls: `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`.

| Module ID | Enabled by |
| --- | --- |
| `ship_hull_light_role_dda` | `tech: destroyer_missile_upgrade` |
| `ship_hull_light_role_ddg` | `tech: destroyer_guided_missile_upgrade` |

### `dp_light_battery`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `dp_light_battery_1` | `tech: basic_light_battery` |
| `dp_light_battery_2` | `tech: basic_dp_light_battery` |
| `dp_light_battery_3` | `tech: improved_dp_light_battery` |
| `dp_light_battery_4` | `tech: advanced_dp_light_battery` |
| `dp_light_battery_5` | `tech: modern_generic_battery` |

### `dp_light_battery_single`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `dp_light_battery_1_single` | `tech: basic_light_battery` |
| `dp_light_battery_2_single` | `tech: basic_dp_light_battery` |
| `dp_light_battery_3_single` | `tech: improved_dp_light_battery` |
| `dp_light_battery_4_single` | `tech: advanced_dp_light_battery` |
| `dp_light_battery_5_single` | `tech: modern_generic_battery` |

### `generic_miscellaneous`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_heavy`, `ship_hull_light`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `full_missile_upgrade` | `tech: full_missile_ship` |
| `ship_aa_fire_control` | `tech: cruiser_aa_upgrade` |
| `ship_decoy_launcher` | `tech: decoy_launching_system` |
| `ship_display_system` | `tech: comprehensive_display_system` |
| `ship_radar_finder` | `tech: advanced_radar_finder` |
| `ship_radar_jammer` | `tech: radar_jammer` |
| `ship_vt_shell` | `special project: sp_naval_proximity_fuze` |
| `structural_aluminum` | `tech: new_ship_materials` |

### `heavy_miscellaneous`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_heavy`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `economical_nuclear_reactor_cruiser` | `tech: nuclear_reactor_cost_reduction` |
| `ship_anti_air_circle` | `tech: battleship_aa_upgrade` |
| `ship_anti_air_shell` | `tech: battleship_aa_upgrade` |
| `ship_armor_extra` | `tech: ita_extra_armor` |
| `ship_electric_motor` | `tech: diesel_electric_transmission` |

### `heavy_ship_engine`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_pre_dreadnought`.

| Module ID | Enabled by |
| --- | --- |
| `heavy_ship_engine_1` | `tech: early_ship_hull_heavy` |
| `heavy_ship_engine_2` | `tech: basic_ship_hull_heavy` |
| `heavy_ship_engine_2_diesel` | `tech: interwar_ship_hull_heavy` |
| `heavy_ship_engine_3` | `tech: interwar_ship_hull_heavy` |
| `heavy_ship_engine_3_diesel` | `tech: improved_ship_hull_heavy` |
| `heavy_ship_engine_4` | `tech: improved_ship_hull_heavy` |
| `heavy_ship_engine_4_diesel` | `tech: advanced_ship_hull_heavy` |
| `heavy_ship_engine_5` | `tech: advanced_ship_hull_heavy` |

### `heavy_ship_engine_nuclear`

Allowed hulls: `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `heavy_ship_engine_nuclear` | `tech: nuclear_engine_research` |

### `landing_assault_command`

Allowed hulls: `vnr_ship_hull_carrier_amphibious_assault_ship`.

| Module ID | Enabled by |
| --- | --- |
| `landing_assault_command` | `tech: amphibious_assault_ships` |

### `landing_kit`

Allowed hulls: `vnr_ship_hull_carrier_amphibious_assault_ship`.

| Module ID | Enabled by |
| --- | --- |
| `hovercraft` | `tech: amphibious_assault_ships` |
| `landing_helipad` | `tech: amphibious_assault_ships` |

### `light_miscellaneous`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_bulbous_bow` | `tech: advanced_sonar` |
| `ship_smoke_generator` | `tech: smoke_generator` |
| `ship_superheater` | `tech: high_speed_light_engine` |

### `light_ship_engine`

Allowed hulls: `ship_hull_light`.

| Module ID | Enabled by |
| --- | --- |
| `light_ship_engine_1` | `tech: early_ship_hull_light` |
| `light_ship_engine_2` | `tech: basic_ship_hull_light` |
| `light_ship_engine_2_diesel` | `tech: interwar_ship_hull_light` |
| `light_ship_engine_3` | `tech: interwar_ship_hull_light` |
| `light_ship_engine_3_diesel` | `tech: improved_ship_hull_light` |
| `light_ship_engine_4` | `tech: improved_ship_hull_light` |
| `light_ship_engine_4_diesel` | `tech: advanced_ship_hull_light` |
| `light_ship_engine_4_gas` | `tech: destroyer_hull_improvement` |
| `light_ship_engine_5` | `tech: advanced_ship_hull_light` |

### `light_ship_engine_high_speed`

Allowed hulls: `ship_hull_light`.

| Module ID | Enabled by |
| --- | --- |
| `light_ship_engine_6` | `special project: sp_high_speed_light_engine` |

### `modern_deck_space`

Allowed hulls: `vnr_ship_hull_alicorn`, `vnr_ship_hull_macross`, `vnr_ship_hull_space_yamato`.

| Module ID | Enabled by |
| --- | --- |
| `modern_deck_space_1` | `tech: wunderwaffe_modules` |

### `modern_ship_engine`

Allowed hulls: `vnr_ship_hull_alicorn`, `vnr_ship_hull_constitution`.

| Module ID | Enabled by |
| --- | --- |
| `modern_ship_engine_1` | `tech: wunderwaffe_modules` |
| `modern_ship_engine_2` | `tech: wunderwaffe_modules` |

### `pressure_hull`

Allowed hulls: `ship_hull_submarine`.

| Module ID | Enabled by |
| --- | --- |
| `pressure_hull_1` | `tech: early_ship_hull_submarine` |
| `pressure_hull_2` | `tech: basic_ship_hull_submarine` |
| `pressure_hull_3` | `tech: improved_ship_hull_submarine` |
| `pressure_hull_4` | `tech: advanced_ship_hull_submarine` |
| `pressure_hull_5` | `tech: modern_ship_hull_submarine` |

### `raider_kit`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_cruiser_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_cruiser_camo_1` | Not declared |
| `ship_cruiser_camo_2` | `tech: armed_civilian_ship` |

### `seaplane_hangar`

Allowed hulls: `ship_hull_civilian`, `ship_hull_cruiser`, `vnr_ship_hull_civilian_2`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `seaplane_hangar` | `tech: improved_airplane_launcher` |

### `ship_aegis`

Allowed hulls: `vnr_ship_hull_alicorn`, `vnr_ship_hull_constitution`, `vnr_ship_hull_macross`, `vnr_ship_hull_space_yamato`.

| Module ID | Enabled by |
| --- | --- |
| `ship_aegis_0` | `tech: wunderwaffe_modules` |

### `ship_airplane_launcher`

Allowed hulls: `ship_hull_civilian`, `ship_hull_cruiser`, `ship_hull_heavy`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_civilian_2`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_heavy_1`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `recon_drone_1` | `tech: recon_drones` |
| `ship_airplane_launcher_1` | `tech: early_ship_hull_cruiser`, `tech: prototype_airplane_launcher` |
| `ship_airplane_launcher_2` | `tech: improved_airplane_launcher` |
| `ship_helipad` | `tech: helipad` |

### `ship_anti_air`

Allowed hulls: `ship_hull_carrier`, `ship_hull_civilian`, `ship_hull_cruiser`, `ship_hull_heavy`, `ship_hull_light`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_2`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_carrier_amphibious_assault_ship`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_civilian_2`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_escort_carrier`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_merchant_carrier`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_carrier`, `vnr_ship_hull_super_heavy_1`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `ship_anti_air_1` | `tech: basic_battery` |
| `ship_anti_air_2` | `tech: basic_light_battery` |
| `ship_anti_air_3` | `tech: improved_light_battery` |
| `ship_anti_air_4` | `tech: advanced_light_battery` |
| `ship_anti_air_5` | `tech: ship_rocket_artillery` |

### `ship_anti_air_heavy`

Allowed hulls: `ship_hull_carrier`, `ship_hull_heavy`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_2`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_carrier_amphibious_assault_ship`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_carrier`, `vnr_ship_hull_super_heavy_1`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `ship_anti_air_1_h` | `tech: basic_battery` |
| `ship_anti_air_2_h` | `tech: basic_light_battery` |
| `ship_anti_air_3_h` | `tech: improved_light_battery` |
| `ship_anti_air_4_h` | `tech: advanced_light_battery` |

### `ship_auxiliary`

Allowed hulls: `ship_hull_civilian`, `vnr_ship_hull_civilian_2`.

| Module ID | Enabled by |
| --- | --- |
| `dry_cargo_storage` | `tech: naval_combat_support` |
| `fuel_tanker_silo` | `tech: naval_combat_support` |
| `shipping_container` | `special project: sp_shipping_container` |
| `supply_hub` | `tech: fast_combat_support_ship`, `tech: integrated_supply_ship` |

### `ship_carrier_armor`

Allowed hulls: `ship_hull_carrier`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_amphibious_assault_ship`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `ship_armor_carrier_1` | `tech: early_ship_hull_carrier` |
| `ship_armor_carrier_2` | `tech: basic_ship_hull_carrier` |
| `ship_armor_carrier_3` | `tech: improved_ship_hull_carrier` |
| `ship_armor_carrier_4` | `tech: advanced_ship_hull_carrier` |

### `ship_carrier_armor_heavy`

Allowed hulls: `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_amphibious_assault_ship`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `ship_armor_carrier_heavy_1` | `tech: early_ship_hull_carrier` |
| `ship_armor_carrier_heavy_2` | `tech: basic_ship_hull_carrier` |
| `ship_armor_carrier_heavy_3` | `tech: improved_ship_hull_carrier` |
| `ship_armor_carrier_heavy_4` | `tech: advanced_ship_hull_carrier` |
| `ship_armor_carrier_heavy_5` | `tech: super_carriers` |

### `ship_carrier_armor_shbb`

Allowed hulls: `vnr_ship_hull_carrier_conversion_bb`.

| Module ID | Enabled by |
| --- | --- |
| `ship_armor_carrier_shbb` | `tech: converted_super_heavy_carrier` |

### `ship_carrier_missile_aa`

Allowed hulls: `vnr_ship_hull_carrier_3`, `vnr_ship_hull_carrier_amphibious_assault_ship`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `ship_carrier_missile_aa_1` | Not declared |
| `ship_carrier_missile_aa_2` | Not declared |

### `ship_ciw`

Allowed hulls: `vnr_ship_hull_alicorn`, `vnr_ship_hull_constitution`, `vnr_ship_hull_macross`, `vnr_ship_hull_space_yamato`.

| Module ID | Enabled by |
| --- | --- |
| `ship_ciw_1` | `tech: wunderwaffe_modules` |

### `ship_cruiser_armor`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_civilian_3`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_coastal_defense_ship`.

| Module ID | Enabled by |
| --- | --- |
| `ship_armor_cruiser_1` | `tech: early_cruiser_armor` |
| `ship_armor_cruiser_2` | `tech: basic_cruiser_armor` |
| `ship_armor_cruiser_3` | `tech: improved_cruiser_armor` |
| `ship_armor_cruiser_4` | `tech: advanced_cruiser_armor` |

### `ship_cruiser_heavy_armor`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_coastal_defense_ship`.

| Module ID | Enabled by |
| --- | --- |
| `ship_armor_cruiser_heavy_1` | `tech: early_cruiser_armor` |
| `ship_armor_cruiser_heavy_2` | `tech: basic_cruiser_armor` |
| `ship_armor_cruiser_heavy_3` | `tech: improved_cruiser_armor` |
| `ship_armor_cruiser_heavy_4` | `tech: advanced_cruiser_armor` |

### `ship_deck_space`

Allowed hulls: `ship_hull_carrier`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_2`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `ship_deck_space_more` | `tech: early_carrier_study` |
| `ship_deck_space_open` | `tech: early_carrier_study` |

### `ship_deck_space_bb`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_deck_space_bb` | `special project: sp_battlecarrier` |

### `ship_deck_space_mega`

Allowed hulls: `vnr_ship_hull_mega_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `ship_deck_space_mega` | Not declared |

### `ship_deck_space_reinforced`

Allowed hulls: `ship_hull_carrier`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_2`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `ship_deck_space_armored` | `tech: early_ship_hull_carrier` |
| `ship_deck_space_big` | `tech: super_carriers` |

### `ship_deck_space_small`

Allowed hulls: `ship_hull_carrier`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_2`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_escort_carrier`, `vnr_ship_hull_merchant_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `ship_deck_space_small` | `tech: early_carrier_study` |

### `ship_deck_space_workaround`

Allowed hulls: No hull slot found.

| Module ID | Enabled by |
| --- | --- |
| `ship_deck_space` | Not declared |
| `ship_escort_deck_space` | Not declared |

### `ship_depth_charge`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `ship_depth_charge_1` | `tech: basic_depth_charges` |
| `ship_depth_charge_2` | `tech: improved_depth_charges` |
| `ship_depth_charge_3` | `tech: advanced_depth_charges` |
| `ship_depth_charge_4` | `tech: modern_depth_charges` |
| `ship_depth_charge_5` | `tech: rocket_depth_charges` |

### `ship_dp_secondaries`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `dp_ship_secondaries_1` | `tech: basic_light_battery` |
| `dp_ship_secondaries_2` | `tech: basic_dp_light_battery` |
| `dp_ship_secondaries_3` | `tech: improved_dp_light_battery` |
| `dp_ship_secondaries_4` | `tech: advanced_dp_light_battery` |
| `dp_ship_secondaries_5` | `tech: modern_generic_battery` |

### `ship_dp_secondaries_bb`

Allowed hulls: `ship_hull_carrier`, `ship_hull_heavy`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_2`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_carrier_amphibious_assault_ship`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_carrier`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `dp_ship_secondaries_1_bb` | `tech: basic_light_battery` |
| `dp_ship_secondaries_2_bb` | `tech: basic_dp_light_battery` |
| `dp_ship_secondaries_3_bb` | `tech: improved_dp_light_battery` |
| `dp_ship_secondaries_4_bb` | `tech: advanced_dp_light_battery` |
| `dp_ship_secondaries_5_bb` | `tech: modern_generic_battery` |

### `ship_electric_magnetic_battery`

Allowed hulls: `vnr_ship_hull_alicorn`.

| Module ID | Enabled by |
| --- | --- |
| `ship_em_battery_1` | `tech: wunderwaffe_modules` |

### `ship_extra_fuel_tank`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_heavy`, `ship_hull_light`, `ship_hull_submarine`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_2`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_submarine`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_submarine_5`, `vnr_ship_hull_super_carrier`, `vnr_ship_hull_super_heavy_1`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `ship_extra_fuel_tank` | `tech: early_ship_hull_carrier`, `tech: early_ship_hull_cruiser`, `tech: early_ship_hull_heavy`, `tech: early_ship_hull_light`, `tech: early_ship_hull_submarine` |
| `ship_extra_fuel_tank_large` | `tech: improved_ship_hull_carrier`, `tech: improved_ship_hull_cruiser`, `tech: improved_ship_hull_heavy`, `tech: improved_ship_hull_light`, `tech: improved_ship_hull_submarine` |

### `ship_fire_control_system`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_heavy`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_fire_control_system_0` | Not declared |
| `ship_fire_control_system_1` | Not declared |
| `ship_fire_control_system_2` | Not declared |
| `ship_fire_control_system_3` | Not declared |
| `ship_fire_control_system_4` | `tech: combat_information_center` |
| `ship_torpedo_fire_control_1` | `tech: basic_torpedo` |
| `ship_torpedo_fire_control_2` | `tech: advanced_ship_torpedo_launcher` |
| `ship_torpedo_fire_control_3` | `tech: modern_ship_torpedo_launcher` |
| `ship_torpedo_fire_control_4` | `tech: coldwar_ship_torpedo_launcher` |

### `ship_flight_deck_armored`

Allowed hulls: `ship_hull_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `carrier_armor_deck` | `tech: early_ship_hull_carrier` |
| `carrier_strength_deck` | `tech: full_armored_carrier` |

### `ship_flight_deck_unarmored`

Allowed hulls: `ship_hull_carrier`, `vnr_ship_hull_escort_carrier`, `vnr_ship_hull_merchant_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `carrier_wooden_deck` | `tech: early_carrier_study` |

### `ship_heavy_armor`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_pre_dreadnought`.

| Module ID | Enabled by |
| --- | --- |
| `ship_armor_bb_1` | `tech: early_ship_hull_heavy` |
| `ship_armor_bb_2` | `tech: basic_heavy_armor` |
| `ship_armor_bb_3` | `tech: improved_heavy_armor` |
| `ship_armor_bb_4` | `tech: advanced_heavy_armor` |
| `ship_armor_bc_1` | `tech: early_ship_hull_heavy` |
| `ship_armor_bc_2` | `tech: basic_heavy_armor` |
| `ship_armor_bc_3` | `tech: improved_heavy_armor` |
| `ship_armor_bc_4` | `tech: advanced_heavy_armor` |

### `ship_heavy_battery`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_heavy_battery_1` | `tech: basic_battery` |
| `ship_heavy_battery_2` | `tech: basic_heavy_battery` |
| `ship_heavy_battery_3` | `tech: improved_heavy_battery` |
| `ship_heavy_battery_4` | `tech: advanced_heavy_battery` |
| `ship_heavy_battery_big_1` | `tech: basic_battery` |
| `ship_heavy_battery_small_1` | `tech: basic_battery` |
| `ship_heavy_battery_small_2` | `tech: basic_heavy_battery` |
| `ship_heavy_battery_tiny_2` | `tech: basic_heavy_battery` |

### `ship_heavy_battery_quad`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_heavy_battery_1_quad` | `tech: multi_mounted_battery` |
| `ship_heavy_battery_2_quad` | `tech: basic_heavy_battery` |
| `ship_heavy_battery_3_quad` | `tech: improved_heavy_battery` |
| `ship_heavy_battery_4_quad` | `tech: advanced_heavy_battery` |
| `ship_heavy_battery_big_1_quad` | `tech: multi_mounted_battery` |
| `ship_heavy_battery_small_1_quad` | `tech: multi_mounted_battery` |
| `ship_heavy_battery_small_2_quad` | `tech: basic_heavy_battery` |
| `ship_heavy_battery_tiny_2_quad` | `tech: basic_heavy_battery` |

### `ship_heavy_battery_triple`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ger_11in_c34_triple` | `tech: ger_11in_c34` |
| `ship_heavy_battery_1_triple` | `tech: multi_mounted_battery` |
| `ship_heavy_battery_2_triple` | `tech: basic_heavy_battery` |
| `ship_heavy_battery_3_triple` | `tech: improved_heavy_battery` |
| `ship_heavy_battery_4_triple` | `tech: advanced_heavy_battery` |
| `ship_heavy_battery_big_1_triple` | `tech: multi_mounted_battery` |
| `ship_heavy_battery_small_1_triple` | `tech: multi_mounted_battery` |
| `ship_heavy_battery_small_2_triple` | `tech: basic_heavy_battery` |
| `ship_heavy_battery_tiny_2_triple` | `tech: basic_heavy_battery` |

### `ship_heavy_boiler`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_heavy_boiler` | `tech: fuel_oil_boiler` |

### `ship_light_battery`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `ship_asw_battery_1` | `tech: modern_depth_charges` |
| `ship_light_battery_1` | `tech: basic_battery` |
| `ship_light_battery_2` | `tech: basic_light_battery` |
| `ship_light_battery_3` | `tech: improved_light_battery` |
| `ship_light_battery_4` | `tech: advanced_light_battery` |

### `ship_light_battery_double`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `ship_light_battery_1_double` | `tech: multi_mounted_battery` |
| `ship_light_battery_2_double` | `tech: basic_light_battery` |
| `ship_light_battery_3_double` | `tech: improved_light_battery` |
| `ship_light_battery_4_double` | `tech: advanced_light_battery` |

### `ship_light_medium_battery`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `dp_ship_medium_1` | `tech: advanced_dp_light_battery` |
| `ship_light_medium_battery_1` | `tech: multi_mounted_battery` |
| `ship_light_medium_battery_2` | `tech: basic_light_battery` |
| `ship_light_medium_battery_3` | `tech: improved_light_battery` |
| `ship_light_medium_battery_4` | `tech: advanced_light_battery` |

### `ship_light_medium_battery_double`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `ship_light_medium_battery_1_double` | `tech: basic_battery` |
| `ship_light_medium_battery_2_double` | `tech: basic_light_battery` |
| `ship_light_medium_battery_3_double` | `tech: improved_light_battery` |
| `ship_light_medium_battery_4_double` | `tech: advanced_light_battery` |

### `ship_light_medium_battery_single`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `ship_light_medium_battery_1_single` | `tech: basic_battery` |
| `ship_light_medium_battery_2_single` | `tech: basic_light_battery` |
| `ship_light_medium_battery_3_single` | `tech: improved_light_battery` |
| `ship_light_medium_battery_4_single` | `tech: advanced_light_battery` |

### `ship_mast`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_heavy`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_mast_1` | `tech: early_ship_hull_cruiser`, `tech: early_ship_hull_heavy`, `tech: early_ship_hull_light` |

### `ship_medium_battery`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`.

| Module ID | Enabled by |
| --- | --- |
| `ship_medium_battery_1` | `tech: multi_mounted_battery` |
| `ship_medium_battery_2` | `tech: basic_heavy_battery` |
| `ship_medium_battery_3` | `tech: improved_heavy_battery` |
| `ship_medium_battery_4` | `tech: advanced_heavy_battery` |

### `ship_medium_battery_double`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`.

| Module ID | Enabled by |
| --- | --- |
| `ship_medium_battery_1_double` | `tech: basic_battery` |
| `ship_medium_battery_2_double` | `tech: basic_heavy_battery` |
| `ship_medium_battery_3_double` | `tech: improved_heavy_battery` |
| `ship_medium_battery_4_double` | `tech: advanced_heavy_battery` |

### `ship_medium_battery_single`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`.

| Module ID | Enabled by |
| --- | --- |
| `ship_medium_battery_1_single` | `tech: basic_battery` |
| `ship_medium_battery_2_single` | `tech: basic_heavy_battery` |
| `ship_medium_battery_3_single` | `tech: improved_heavy_battery` |
| `ship_medium_battery_4_single` | `tech: advanced_heavy_battery` |

### `ship_medium_heavy_battery_double`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`.

| Module ID | Enabled by |
| --- | --- |
| `ship_medium_heavy_battery_1_double` | `tech: basic_heavy_battery` |
| `ship_medium_heavy_battery_2_double` | `tech: advanced_heavy_battery` |

### `ship_medium_heavy_battery_triple`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`.

| Module ID | Enabled by |
| --- | --- |
| `ship_medium_heavy_battery_1` | `tech: basic_heavy_battery` |
| `ship_medium_heavy_battery_2` | `tech: advanced_heavy_battery` |

### `ship_mine_layer`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `ship_mine_layer_1` | `tech: basic_naval_mines` |

### `ship_mine_layer_sub`

Allowed hulls: `ship_hull_submarine`, `vnr_ship_hull_cruiser_submarine`, `vnr_ship_hull_midget_submarine`, `vnr_ship_hull_submarine_3`, `vnr_ship_hull_submarine_5`.

| Module ID | Enabled by |
| --- | --- |
| `ship_mine_layer_sub` | `tech: basic_naval_mines` |

### `ship_mine_warfare`

Allowed hulls: `ship_hull_light`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`.

| Module ID | Enabled by |
| --- | --- |
| `ship_mine_sweeper_1` | `tech: basic_naval_mines` |

### `ship_missile`

Allowed hulls: `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_cruise_missile_1` | `tech: ship_to_ship_missile` |
| `ship_missile_1` | `tech: ship_to_ship_missile` |
| `ship_missile_2` | `tech: advanced_missile_system` |

### `ship_missile_aa`

Allowed hulls: `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_missile_aa_1` | `tech: ship_to_ship_missile` |
| `ship_missile_aa_2` | `tech: advanced_missile_system` |

### `ship_missile_control_system`

Allowed hulls: No hull slot found.

| Module ID | Enabled by |
| --- | --- |
| `ship_missile_control_system_1` | `tech: combat_information_center` |
| `ship_missile_control_system_2` | `tech: integrated_combat_system` |

### `ship_modern_armor`

Allowed hulls: `vnr_ship_hull_alicorn`, `vnr_ship_hull_constitution`.

| Module ID | Enabled by |
| --- | --- |
| `ship_modern_armor_1` | `tech: wunderwaffe_modules` |

### `ship_radar`

Allowed hulls: `ship_hull_carrier`, `ship_hull_cruiser`, `ship_hull_heavy`, `ship_hull_light`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_cruiser_submarine`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_submarine_2`, `vnr_ship_hull_submarine_4`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_radar_1` | Not declared |
| `ship_radar_2` | Not declared |
| `ship_radar_3` | Not declared |
| `ship_radar_4` | Not declared |
| `ship_radar_5` | `tech: phased_array_radar` |

### `ship_rocket`

Allowed hulls: `vnr_ship_hull_arsenal_ship`.

| Module ID | Enabled by |
| --- | --- |
| `ship_missile_launcher` | `special project: sp_arsenal_ship` |
| `ship_slbm_launcher` | `special project: sp_arsenal_ship` |

### `ship_sam`

Allowed hulls: `vnr_ship_hull_alicorn`, `vnr_ship_hull_constitution`, `vnr_ship_hull_macross`, `vnr_ship_hull_space_yamato`.

| Module ID | Enabled by |
| --- | --- |
| `ship_sam_1` | `tech: wunderwaffe_modules` |

### `ship_secondaries`

Allowed hulls: `ship_hull_carrier`, `ship_hull_heavy`, `vnr_ship_hull_arsenal_ship`, `vnr_ship_hull_carrier_1`, `vnr_ship_hull_carrier_2`, `vnr_ship_hull_carrier_3`, `vnr_ship_hull_carrier_conversion_bb`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_carrier`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_secondaries_1` | `tech: basic_battery` |
| `ship_secondaries_2` | `tech: basic_light_battery` |
| `ship_secondaries_3` | `tech: improved_light_battery` |
| `ship_secondaries_4` | `tech: advanced_light_battery` |

### `ship_secondaries_light`

Allowed hulls: `ship_hull_cruiser`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `ship_secondaries_1_light` | `tech: basic_battery` |
| `ship_secondaries_2_light` | `tech: basic_light_battery` |

### `ship_secondaries_special`

Allowed hulls: `vnr_ship_hull_carrier_conversion_bb`.

| Module ID | Enabled by |
| --- | --- |
| `ship_secondaries_1_big` | `tech: multi_mounted_battery` |

### `ship_sonar`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_coastal_defense_ship`.

| Module ID | Enabled by |
| --- | --- |
| `ship_sonar_1` | `tech: sonar` |
| `ship_sonar_2` | `tech: improved_sonar` |
| `ship_sonar_3` | `tech: advanced_sonar` |
| `ship_sonar_4` | `tech: modern_sonar` |

### `ship_space_armor`

Allowed hulls: `vnr_ship_hull_macross`, `vnr_ship_hull_space_yamato`.

| Module ID | Enabled by |
| --- | --- |
| `ship_space_armor_1` | `tech: wunderwaffe_modules` |

### `ship_space_battery`

Allowed hulls: `vnr_ship_hull_constitution`, `vnr_ship_hull_macross`, `vnr_ship_hull_space_yamato`.

| Module ID | Enabled by |
| --- | --- |
| `ship_space_battery_0` | `tech: wunderwaffe_modules` |
| `ship_space_battery_1` | `tech: wunderwaffe_modules` |

### `ship_sub_missile`

Allowed hulls: `vnr_ship_hull_submarine_5`.

| Module ID | Enabled by |
| --- | --- |
| `ship_cruise_missile_sub_1` | `special project: sp_naval_rocket_launching_submarine` |

### `ship_sub_snorkel`

Allowed hulls: `vnr_ship_hull_cruiser_submarine`, `vnr_ship_hull_midget_submarine`, `vnr_ship_hull_submarine_3`.

| Module ID | Enabled by |
| --- | --- |
| `ship_sub_snorkel_0` | `special project: sp_submarine_snorkel` |
| `ship_sub_snorkel_1` | `tech: basic_submarine_snorkel` |
| `ship_sub_snorkel_2` | `tech: improved_submarine_snorkel` |

### `ship_super_fire_control_system`

Allowed hulls: `vnr_ship_hull_alicorn`, `vnr_ship_hull_constitution`, `vnr_ship_hull_macross`, `vnr_ship_hull_space_yamato`.

| Module ID | Enabled by |
| --- | --- |
| `ship_AI_fire_control_0` | `tech: wunderwaffe_modules` |
| `ship_AI_fire_control_1` | `tech: wunderwaffe_modules` |

### `ship_super_heavy_armor`

Allowed hulls: `vnr_ship_hull_heavy_5`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_armor_shbb` | `tech: ship_hull_super_heavy` |
| `ship_armor_shbb_2` | `tech: advanced_heavy_armor` |

### `ship_super_heavy_battery`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_super_heavy_battery_1` | `tech: basic_super_heavy_battery` |
| `ship_super_heavy_battery_2` | `tech: improved_super_heavy_battery` |
| `ship_super_heavy_battery_big_1` | `tech: experimental_super_heavy_battery` |

### `ship_super_heavy_battery_quad`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_super_heavy_battery_1_quad` | `tech: basic_super_heavy_battery` |
| `ship_super_heavy_battery_2_quad` | `tech: improved_super_heavy_battery` |
| `ship_super_heavy_battery_big_1_quad` | `tech: experimental_super_heavy_battery` |

### `ship_super_heavy_battery_triple`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_heavy_5`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_super_heavy_battery_1_triple` | `tech: basic_super_heavy_battery` |
| `ship_super_heavy_battery_2_triple` | `tech: improved_super_heavy_battery` |
| `ship_super_heavy_battery_big_1_triple` | `tech: experimental_super_heavy_battery` |

### `ship_torpedo`

Allowed hulls: `ship_hull_cruiser`, `ship_hull_light`, `vnr_ship_hull_cruiser_1`, `vnr_ship_hull_cruiser_5`, `vnr_ship_hull_cruiser_6`, `vnr_ship_hull_cruiser_coastal_defense_ship`, `vnr_ship_hull_light_5`, `vnr_ship_hull_light_6`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_torpedo_cruiser`.

| Module ID | Enabled by |
| --- | --- |
| `ship_torpedo_1` | `tech: basic_torpedo` |
| `ship_torpedo_2` | `tech: improved_ship_torpedo_launcher` |
| `ship_torpedo_3` | `tech: advanced_ship_torpedo_launcher` |
| `ship_torpedo_4` | `tech: modern_ship_torpedo_launcher` |
| `ship_torpedo_5` | `tech: coldwar_ship_torpedo_launcher` |

### `ship_torpedo_bb`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `ship_torpedo_bb` | `tech: basic_torpedo` |

### `ship_torpedo_sub`

Allowed hulls: `ship_hull_submarine`, `vnr_ship_hull_cruiser_submarine`, `vnr_ship_hull_submarine_3`, `vnr_ship_hull_submarine_5`.

| Module ID | Enabled by |
| --- | --- |
| `ship_torpedo_sub_1` | `tech: basic_torpedo` |
| `ship_torpedo_sub_2` | `tech: improved_ship_torpedo_launcher` |
| `ship_torpedo_sub_3` | `tech: advanced_ship_torpedo_launcher` |
| `ship_torpedo_sub_4` | `tech: modern_ship_torpedo_launcher` |
| `ship_torpedo_sub_5` | `tech: coldwar_ship_torpedo_launcher` |

### `ship_vls`

Allowed hulls: `vnr_ship_hull_alicorn`, `vnr_ship_hull_macross`, `vnr_ship_hull_space_yamato`.

| Module ID | Enabled by |
| --- | --- |
| `ship_vls_1` | `tech: wunderwaffe_modules` |

### `space_ship_engine`

Allowed hulls: `vnr_ship_hull_macross`, `vnr_ship_hull_space_yamato`.

| Module ID | Enabled by |
| --- | --- |
| `space_ship_engine_1` | `tech: wunderwaffe_modules` |

### `steam_catapult`

Allowed hulls: `vnr_ship_hull_mega_carrier`, `vnr_ship_hull_super_carrier`.

| Module ID | Enabled by |
| --- | --- |
| `ship_ski_jump_ramp` | `tech: super_carriers` |
| `ship_steam_catapult` | `tech: carrier_steam_catapult` |

### `sub_airplane_launcher`

Allowed hulls: `vnr_ship_hull_cruiser_submarine`.

| Module ID | Enabled by |
| --- | --- |
| `sub_airplane_launcher_1` | `tech: prototype_airplane_launcher` |
| `sub_airplane_launcher_2` | `special project: sp_subcarrier` |

### `sub_battery`

Allowed hulls: `vnr_ship_hull_cruiser_submarine`.

| Module ID | Enabled by |
| --- | --- |
| `sub_battery_1` | `tech: basic_heavy_battery` |

### `sub_conning_tower`

Allowed hulls: `ship_hull_submarine`.

| Module ID | Enabled by |
| --- | --- |
| `sub_conning_tower_0` | `tech: basic_periscope`, `tech: early_ship_hull_submarine` |
| `sub_conning_tower_1` | `tech: advanced_periscope` |
| `sub_conning_tower_2` | `tech: modern_periscope` |

### `sub_deck_gun`

Allowed hulls: `ship_hull_submarine`, `vnr_ship_hull_cruiser_submarine`.

| Module ID | Enabled by |
| --- | --- |
| `sub_deck_gun_1` | `tech: early_ship_hull_submarine` |
| `sub_deck_gun_2` | `tech: basic_ship_hull_submarine` |
| `sub_deck_gun_3` | `tech: improved_ship_hull_submarine` |
| `sub_deck_gun_4` | `tech: advanced_ship_hull_submarine` |

### `sub_fire_control_system`

Allowed hulls: `ship_hull_submarine`, `vnr_ship_hull_cruiser_submarine`, `vnr_ship_hull_submarine_4`.

| Module ID | Enabled by |
| --- | --- |
| `ship_sub_torpedo_computer_1` | `tech: improved_ship_hull_submarine` |
| `ship_sub_torpedo_computer_2` | `tech: advanced_ship_hull_submarine` |
| `ship_sub_torpedo_computer_3` | `tech: modern_ship_hull_submarine` |

### `sub_rocket`

Allowed hulls: `vnr_ship_hull_submarine_5`.

| Module ID | Enabled by |
| --- | --- |
| `slbm_launcher` | `special project: sp_naval_nuclear_missile_submarine` |
| `sub_missile_launcher` | Not declared |

### `sub_ship_engine`

Allowed hulls: `ship_hull_submarine`, `vnr_ship_hull_submarine_5`.

| Module ID | Enabled by |
| --- | --- |
| `sub_ship_engine_1` | `tech: early_ship_hull_submarine` |
| `sub_ship_engine_2` | `tech: basic_ship_hull_submarine` |
| `sub_ship_engine_3` | `tech: improved_ship_hull_submarine` |
| `sub_ship_engine_4` | `tech: advanced_ship_hull_submarine` |
| `sub_ship_engine_5` | `tech: sub_AIP_engine` |

### `sub_ship_engine_nuclear`

Allowed hulls: `vnr_ship_hull_submarine_5`.

| Module ID | Enabled by |
| --- | --- |
| `sub_ship_engine_nuclear` | `tech: sub_nuclear_engine` |

### `sub_ship_periscope`

Allowed hulls: `ship_hull_submarine`.

| Module ID | Enabled by |
| --- | --- |
| `sub_ship_periscope_0` | `tech: early_ship_hull_submarine` |
| `sub_ship_periscope_1` | `tech: basic_periscope` |
| `sub_ship_periscope_2` | `tech: improved_periscope` |
| `sub_ship_periscope_3` | `tech: advanced_periscope` |
| `sub_ship_periscope_4` | `tech: modern_periscope` |

### `sub_ship_stealth`

Allowed hulls: `vnr_ship_hull_cruiser_submarine`, `vnr_ship_hull_midget_submarine`, `vnr_ship_hull_submarine_4`, `vnr_ship_hull_submarine_5`.

| Module ID | Enabled by |
| --- | --- |
| `anechoic_tile_1` | `tech: anechoic_tile` |

### `sub_sonar`

Allowed hulls: `ship_hull_submarine`, `vnr_ship_hull_cruiser_submarine`, `vnr_ship_hull_submarine_2`, `vnr_ship_hull_submarine_4`.

| Module ID | Enabled by |
| --- | --- |
| `sub_sonar_1` | `tech: sonar` |
| `sub_sonar_2` | `tech: improved_sonar` |
| `sub_sonar_3` | `tech: advanced_sonar` |
| `sub_sonar_4` | `tech: modern_sonar` |

### `submarine_miscellaneous`

Allowed hulls: `ship_hull_submarine`.

| Module ID | Enabled by |
| --- | --- |
| `crewed_torpedo` | `tech: midget_submarines` |
| `diving_plane` | `tech: improved_ship_hull_submarine` |
| `oxygen_generator` | `tech: basic_ship_hull_submarine` |
| `sub_bow_sonar` | `tech: sonar_telephone` |
| `sub_nuclear_torpedo` | `special project: sp_nuclear_torpedo` |
| `sub_wire_guided_torpedo` | `tech: wire_guided_torpedo` |
| `vlf_receiver` | `tech: naval_radio_guiding_system` |

### `super_heavy_ship_engine`

Allowed hulls: `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `super_heavy_ship_engine_1` | `tech: ship_hull_super_heavy` |
| `super_heavy_ship_engine_2` | `tech: interwar_ship_hull_heavy` |
| `super_heavy_ship_engine_3` | `tech: improved_ship_hull_heavy` |

### `torpedo_defense_system`

Allowed hulls: `ship_hull_heavy`, `vnr_ship_hull_heavy_1`, `vnr_ship_hull_pre_dreadnought`, `vnr_ship_hull_super_heavy_1`.

| Module ID | Enabled by |
| --- | --- |
| `pugliese_system` | `tech: ita_pugliese_system` |
| `torpedo_belt` | `tech: basic_heavy_armor` |
| `torpedo_belt_enhanced` | `tech: advanced_heavy_armor` |
| `torpedo_bulge` | `tech: early_ship_hull_heavy` |

