---
name: gfx-registration
description: Register new ship icons into gfx/interface/equipmentdesigner/graphic_db/*.txt and ask for the target file, country tag, ship hull, and PNG path when the destination is ambiguous.
argument-hint: Provide the PNG filename(s), the country tag or graphic-db bucket, and the ship hull key you want to register.
---

# GFX Registration

Use this skill when a new ship icon PNG needs to be registered in the equipment designer graphic database.

## Scope

The relevant registration files live in `gfx/interface/equipmentdesigner/graphic_db/` and are split by bucket:

- `00_generic_icons.txt` for universal icons
- `01_*.txt` for country-specific buckets
- `02_*.txt` for regional buckets

The source art is stored in `gfx/interface/technologies/` and its subfolders.

When handling a registration request, restrict reads to the target `graphic_db` file and the relevant PNG file(s) under `gfx/interface/technologies/` only.
Do not broaden the context to unrelated files, folders, or documentation unless the user explicitly asks for it.
If a needed decision cannot be made from those files alone, stop and ask instead of opening more files.

## Question-First Intake

Before editing anything, ask the user for the missing details needed to choose the correct insertion point.

Ask these questions when they are not already clear:

1. Which new PNG file(s) should be registered?
2. What country tag or regional bucket should be used?
3. Which ship hull should be the first insertion point?
4. Should the icon be appended to an existing hull block or added as a new block?
5. Is there any explicit exception to the default placement pattern?

If the user does not provide a specific override, follow the default pattern below.

## Default Intake Pattern

1. Sweep `gfx/interface/technologies/` for recently added PNG files, using a 5-day window as the default filter.
2. Exclude `gfx/interface/technologies/navy_tree/` from that sweep.
3. Resolve the country tag first, then map that tag to the correct `graphic_db` file.
4. Choose the earliest hull that should use the icon, then derive the same icon forward into newer hulls.
5. Preserve the same relative insertion point in every later hull block unless the user asks for a different placement.
6. Do not backfill earlier hull tiers just because the family exists. If the first appearance tier is later than the suggested tier, treat that later tier as the authoritative start.
7. When describing what was parsed, name only the `graphic_db` file and the relevant PNG path(s) that were actually inspected.

If the suggested hull conflicts with the observed first appearance tier, stop and ask rather than inventing earlier insertions.

If more than one file, tag, or hull is plausible, stop and ask rather than guessing.

## Registration Rules

- Prefer the most specific bucket available.
- Use `00_generic_icons.txt` only when the icon is intended for everyone.
- Use the country bucket when the PNG is country-prefixed and the hull belongs to that country.
- Use the regional bucket when the icon is shared across several tags in the same historical group.
- Match the hull key exactly, such as `vnr_ship_hull_light_1` or `vnr_ship_hull_cruiser_3`.
- Treat the first hull that actually receives the icon as the start of the chain. Earlier hulls should stay empty for that icon unless the user explicitly asks for a backfilled family chain.
- Preserve the relative entry order inside each hull block so the in-game bottom-to-top appearance stays consistent across tiers. If an icon appears in the same position for one hull family, place it at the same relative point in higher or lower hull blocks.
- When extending a shared icon chain, keep later-hull entries aligned with earlier-hull placement rather than appending everything to the end of the list.
- When the user does not specify a special procedure, use the same PNG, country-tag, and first-hull order every time: recent PNG sweep first, then country bucket, then forward-derived hull placements.
- Keep the existing ordering inside `pool = { icons = { ... } }` lists.
- Avoid duplicate icon entries in the same pool.
- Preserve the surrounding indentation and style of the target file.

## Chain Reference

Use this reference when a hull has no simple numeric tier chain or when the correct forward placement depends on a special hull relationship:

- `vnr_ship_hull_cruiser_coastal_defense_ship` starts before `vnr_ship_hull_cruiser_1`
- `vnr_ship_hull_pre_dreadnought` starts before `vnr_ship_hull_heavy_1`
- `vnr_ship_hull_carrier_conversion_ca` starts before `vnr_ship_hull_carrier_1`
- `vnr_ship_hull_carrier_conversion_bb` starts before `vnr_ship_hull_carrier_1`
- `vnr_ship_hull_super_carrier` starts after `vnr_ship_hull_carrier_3`
- `vnr_ship_hull_escort_carrier` is independent and only follows a chain if the user explicitly requests one
- `vnr_ship_hull_cruiser_submarine` is independent and only follows a chain if the user explicitly requests one

When a registration touches one of these hulls, consult this reference before deciding the first appearance hull, forward-deriving later placements, or asking for clarification.

## Editing Workflow

1. Read the destination `graphic_db` file and inspect the nearest matching hull block.
2. If the user did not name a PNG, sweep `gfx/interface/technologies/` for recent additions first and identify candidates before editing.
3. Confirm the PNG path, the intended bucket, and the first appearance hull with the user if anything is unclear.
4. Insert the icon into the correct `icons = {}` list at the first appearance hull, not into earlier hulls that merely share the family.
5. If the file already uses direct PNG paths, keep using direct PNG paths.
6. If the file already uses a `GFX_` naming pattern for the same family, follow the local style and do not mix styles inside the same block unless the file already does that.
7. If the same PNG must appear in multiple hull tiers, copy its placement logic forward so the sequence reads consistently from the first appearance tier to higher hulls.
8. Do not read or incorporate unrelated files while validating the registration.

## Default Output

When the task is complete, report:

- which `graphic_db` file was changed
- which hull key received the new icon
- which PNG path or icon token was added
- whether the icon was appended to an existing pool, placed in a new block, or inserted at a matched relative position
