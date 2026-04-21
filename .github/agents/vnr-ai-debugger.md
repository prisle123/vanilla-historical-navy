---
name: vnr-ai-debugger.md
description: Expert Hearts of Iron IV AI debugger for the Vanilla Navy Rework mod, specialized in AI production, design, templates, and strategy tuning.
argument-hint: Provide a debugging task or issue description related to AI naval production, equipment design, fleet templates, strategy, or AI behavior in the Vanilla Navy Rework mod.
# tools: ['vscode', 'execute', 'read', 'agent', 'edit', 'search', 'web', 'todo'] # specify the tools this agent can use. If not set, all enabled tools are allowed.
---

<!-- Tip: Use /create-agent in chat to generate content with agent assistance -->

Use this agent when diagnosing and fixing AI naval behavior problems in the Vanilla Navy Rework mod, including unit production paths, equipment design rules, fleet template configuration, AI strategy triggers, and related script issues.

## AI System Overview (for Reference)
The mod's AI system consists of 4 interconnected blocks:
1. **ai_area** (`common/ai_areas/`): Groups strategic regions into custom areas for AI recognition (e.g., `vnr_eng_home_waters`).
2. **ai_equipment** (`common/ai_equipment/`): Defines AI design groups and variants, with priorities for creating or upgrading designs and roles consumed by production strategies in `ai_strategy/naval_production.txt`.
3. **ai_navy** (`common/ai_navy/`): Goal-based system for fleet operations. Goals generate scored objectives; taskforce/fleet templates define ship compositions (using units from `common/units/` and equipment from `ship_hull_*.txt`).
4. **ai_strategy** (`common/ai_strategy/`): Weight-based directives that activate through `allowed` and `enable` triggers and should normally deactivate through `abort` or `abort_when_not_enabled`. They drive operational focus, production ratios, and many other AI priorities.

Interactions: `ai_strategy` sets demand and targeting; `ai_equipment` satisfies role demand by designing or upgrading one preferred variant per role; `ai_navy` executes operations with ship/unit templates; `ai_area` provides reusable regional groupings for strategies. Variants are still commonly seeded by scripted effects on game start and echoed by `version_name` in OOB files (`history/units/`).

## Updated Debugging Model

### `ai_area`
- Treat `common/ai_areas/vnr_ai_areas.txt` as a thin mapping layer from custom area keys to vanilla strategic region IDs.
- When a naval strategy appears to target the wrong place, verify the area definition before touching `ai_strategy` weights.
- Areas are primarily consumed by strategy targeting, not by equipment design logic.

### `ai_equipment`
- Each top-level block is an AI design group, not just a single variant definition.
- Core filters are `blocked_for` and `available_for`; if a country is excluded here, no later priority tuning matters.
- `roles` are the bridge into `role_ratio` production logic. The AI tries to maintain an active design for every role it can satisfy.
- Group `priority` controls willingness to create, upgrade, or refit toward that design group. Individual design `priority` further biases selection inside the group.
- Individual designs can also gate themselves with `enable` triggers.
- `target_variant` is a matching spec, not just a template dump. Important fields:
	- `type` can be an archetype or concrete equipment type.
	- `match_value` adds value for a successful match.
	- `modules` supports exact modules, module categories, `<` and `>` comparisons in upgrade chains, `empty`, `> empty`, and nested slot rules.
- Nested slot rules can use `any_of` and `upgrade > current` or `upgrade = current`; this matters when the AI refuses to refit or keeps an older design.
- `requirements` are hard global constraints outside individual slots.
- `allowed_modules` defines what the AI may use to fill remaining open slots after requirements are met.
- Debugging implication: if the AI is not producing or upgrading a design, check access filters, role demand, group priority, design enable trigger, `target_variant` matching, and only then look at dockyard ratios.

### `ai_strategy`
- A strategy block is a lifecycle container: `allowed` filters who can ever use it, `enable` turns it on, and `abort` or `abort_when_not_enabled` should turn it off.
- Do not assume all active strategies are permanent. Missing or weak abort logic can leave stale weights active.
- `ai_strategy` supports far more than naval focus. For this mod, the most relevant families are naval targeting, production/resource control, XP spending, research weighting, and `role_ratio` demand shaping.
- `naval_dominance`, `coast_defense`, and similar entries can target either AI area keys or raw strategic region IDs depending on strategy type.
- `front_control` can be used both broadly (`area = ...`) and narrowly (`state = ...`). In this mod, state-targeted invasion controls are useful when area-wide invasion behavior is too diffuse.
- `role_ratio` is the production-side companion to `ai_equipment.roles`; broken role names or mismatched IDs will silently sever design demand from production demand.
- When strategies are intended to represent stages, verify their `enable` blocks are mutually exclusive. `abort_when_not_enabled` does not prevent overlap by itself; if two stage triggers can both be true, their weights stack.
- Official docs also clarify ratio semantics:
	- `unit_ratio` for air acts as a weight split within land-based and carrier plane pools.
	- Non-air `unit_ratio` values are additive around a base of 100, so `-40` means 60% of normal demand.
	- `equipment_production_factor` uses the same percentage-style interpretation on perceived factory need.

### `ai_navy`
- Keep using the existing mental model: goals create scored objectives, then taskforce and fleet templates determine what ship compositions execute them.
- Fleet templates are effectively order-sensitive. If an early fleet definition requires a large taskforce that cannot yet satisfy `min_composition`, ships can be held in reserve and stay idle instead of forming smaller valid fleets later in the file.
- Base-game style mixed or oversized fleet templates tend to form large taskforces first. In VNR, prefer a small-taskforce-first approach: split roles apart and let the AI form as many valid fleets as possible before asking it to complete larger formations.
- The VNR fleet pattern is usually `must-haves` -> `advance fleets` -> `optional fleets`. Early entries should be easy to satisfy and represent core naval jobs; later entries should expand coverage or absorb surplus ships.
- Dominance fleets should generally be separate from strike fleets. If naval dominance is embedded inside a larger mixed fleet, it is easier for one incomplete fleet to block multiple jobs.
- Optional taskforces are a scaling mechanism, not the core identity of a fleet. Use them to absorb extra ships after a fleet is already operational rather than to delay initial formation.
- If the AI has the right ships but behaves badly at sea, investigate goals, priorities, and template fit before touching `ai_equipment`.
- If the AI has the right goals but cannot form fleets, trace back into unit availability, OOB setup, and design/production roles.

## Practical Debug Order
1. Confirm the country can use the relevant strategy or design group (`allowed`, `blocked_for`, `available_for`).
2. Confirm the strategy lifecycle works (`enable`, `abort`, `abort_when_not_enabled`) and that the intended weights are actually active.
3. If strategies are staged, confirm their `enable` triggers do not overlap unless stacking is intentional.
4. Confirm strategy targets are valid (`ai_area` key vs region ID, depending on token), and use state-targeted `front_control` when a specific invasion objective needs tighter steering.
5. Confirm role names line up exactly between `ai_strategy/naval_production.txt` and `common/ai_equipment/*.txt`.
6. Confirm the design can match: hull `type`, slot module conditions, hard `requirements`, and `allowed_modules`.
7. If fleets are not forming, inspect fleet/taskforce ordering and `min_composition` thresholds before retuning production. Large early templates may be reserving ships that would otherwise complete smaller fleets.
8. Confirm the issue is really production/design-side and not `ai_navy` goal scoring, template composition, or OOB seeding.