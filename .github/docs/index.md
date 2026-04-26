# Vanilla Navy Rework AI System Documentation

This directory contains documentation for the four main blocks of the AI system in the Vanilla Navy Rework mod.

## Blocks Overview
1. **[AI Area](ai_area.md)**: Groups strategic regions into custom areas for AI targeting.
2. **[AI Equipment](ai_equipment.md)**: Defines variants and roles for AI production.
3. **[AI Navy](ai_navy.md)**: Goal-based system for fleet operations and compositions.
4. **[AI Strategy](ai_strategy.md)**: Weight-based directives for AI behavior and reactions.

## Interactions
- `ai_strategy` sets production ratios (using `ai_equipment` roles) and operational focuses (targeting `ai_area` regions).
- `ai_navy` executes objectives using templates, with ships as units requiring equipment from hull definitions.
- Variants are created on game start, referenced in OOB files.
- Triggers like `enable_vnr_naval_ai` enable instant reactions.

For debugging, use `imgui show ai_navy` for naval goals.