# AI Area Block

## Overview
The `ai_area` block defines custom strategic areas by grouping in-game strategic regions. These areas are used by the AI to recognize and prioritize naval operations in specific geographic zones, such as home waters or contested seas.

## Location
- File: `common/ai_areas/vnr_ai_areas.txt`

## Structure
Each area is defined as:
```
area_name = {
    strategic_regions = {
        region_id1
        region_id2
        ...
    }
}
```

## Examples
- `vnr_eng_home_waters`: Groups regions 16 and 18 (English Channel and North Sea).
- `vnr_eng_med_zones`: Groups regions 29, 68, 69 (Mediterranean areas).

## Usage in AI Strategy
- Referenced in `ai_strategy` files as `id` for strategies like `naval_dominance` or `coast_defense`.
- Allows AI to focus operations on grouped regions rather than individual ones.

## Key Points
- Custom areas enable more flexible AI targeting.
- Regions are standard HoI4 strategic region IDs.