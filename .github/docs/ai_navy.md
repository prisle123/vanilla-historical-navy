# AI Navy Block

## Overview
The `ai_navy` block implements a goal-based system for AI naval operations. Goals define high-level operations (e.g., invasion support), which generate scored objectives. Taskforce and fleet templates specify ship compositions for executing these objectives.

## Location
- Files: `common/ai_navy/goals/*.txt`, `common/ai_navy/taskforce/*.txt`, `common/ai_navy/fleet/*.txt`
- Documentation: `common/ai_navy/_documentation.md`

## Structure
- **Goals**: Defined per country (e.g., `ENG_naval_invasion_support`) with `objective_type`, `min_priority`, `max_priority`.
- **Objectives**: Scored based on goal priority range and importance (0-1).
- **Taskforce Templates**: Define min/optimal ship counts (e.g., `carrier = 1`) and missions (e.g., `naval_patrol`).
- **Fleet Templates**: Organize multiple taskforces.

## Examples
- Goal: `ENG_coast_defense` (priority 5-16).
- Template: `generic_taskforce_1` with optimal `battleship = 2`, `destroyer = 6`.

## Usage
- Ships are `units` from `common/units/*.txt`, requiring equipment from `common/units/equipment/ship_hull_*.txt`.
- Objectives executed in priority order using templates.

## Key Points
- Scoring: `score = min_priority + (max_priority - min_priority) * importance`.
- Debugging: Use `imgui show ai_navy` command.
- Not directly related to `ai_equipment` roles; compositions use unit definitions.