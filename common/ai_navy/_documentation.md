# Goal-based Naval AI

## Introduction

This system replaces how the AI executes missions. The previous system relied on pre-defined priorities between missions, and rather obtuse logic for how task forces would be gathered and assigned to the missions. This new system aims to make the AI decision-making process more flexible, understandable and scriptable.

## Key concepts:

### Goals

A goal is a high-level operation that the AI could utilize its navy for.

Some examples:
* Supporting naval invasions
* Protecting trade routes
* Establishing naval dominance

A goal encompasses the action and the purpose, but a goal in itself does not have a specific target. That is where **Objectives** come in.

### Objectives

An objective is the application of a goal to a specific target.

Some examples:
* Supporting the naval invasion **on Iwo Jima** (i.e. a specific invasion)
* Protecting our trade route **with France** (i.e. a specific trade route)
* Establishing naval dominance **in the Mediterranean** (i.e. a specific region)

## Goal/Objective Scoring

All active objectives for a country are collected and scored. Objectives are then executed in a prioritized order according to the score - the AI will try to execute as many objectives as possible, starting with the highest scoring one.

Objectives are scored based on two factors:
* The **goal priority**: Each goal has a priority range, which signifies the importance of that goal to the country. This range determines the scoring range for objectives within that goal.
* The **objective importance**: This is a normalized value between **0-1**, which determines where in the goal's priority range the objective will be scored.

### An example:

* The **naval invasion support** goal has a priority range of **5-10**
  * There is an objective targeting **Iwo Jima** with an importance of **0.8**
  * There is an objective targeting **Okinawa** with an importance of **0.4**
* The **convoy protection** goal has a priority range of **3-8**
  * There is an objective targeting a trade route with **France** with an importance of **0.9**
  * There is an objective targeting a trade route with **Spain** with an importance of **0.4**

The AI will score the objectives as follows:
* Naval invasion support on Iwo Jima: **9.0** ( 5 + (10-5) * 0.8 )
* Convoy protection with France: **7.5** ( 3 + (8-3) * 0.9 )
* Naval invasion support on Okinawa: **7.0** ( 5 + (10-5) * 0.4 )
* Convoy protection with Spain: **5.0** ( 3 + (8-3) * 0.4 )

As illustrated, this results in a priority order where objectives from different goals are mixed. The idea is that the **goal priority** makes sure that the most relevant goals are always more favored, while the **objective importance** prioritizes objectives within goals. This system also allows high-value objectives from lower-prio goals to still have a chance to be prioritized over low-value objectives from higher-prio goals, as can be seen from the example above.

## Scripting

```
goal_name = {
    objective_type = [type] # See *Objective Types* below
    available_for = {
        ENG # If present, the goal will be disabled for all countries by default, and only available for the countries within this block
    }
    blocked_for = {
        GER # If present, the goal will be disabled for the countries within this block
    }
    
    min_priority = 5 # The minimum priority for this goal, see *Goal/Objective Scoring* above
    max_priority = 10 # The maximum priority for this goal, see *Goal/Objective Scoring* above
}
```

### Objective Types

These objective types are supported:
* naval_invasion_support
* naval_invasion_defense
* mines_sweeping
* coast_defense
* convoy_protection
* convoy_raiding

(Following is authored by MrPunk)

## Fleet Template Logic In VNR

The fleet templates in this mod are written around a simple idea: a fleet should be formed with one single mission.

The fleet templates are effectively processed in order. This matters because a fleet is not only a design target, it is also part of the AI's ship allocation logic.

If an early fleet definition asks for a large or demanding taskforce, and that taskforce cannot yet meet its `min_composition`, the AI can end up holding ships in reserve while it waits for the rest of that taskforce to become available. In practice, this means ships may sit idle instead of being used to form smaller fleets that were already possible. This explains AI behaviors in the game which there are multiple reserved fleets with specific roles but not activated at all.

Instead of building one "do everything" fleet template, the AI is given several smaller fleet templates with clearer roles:
* **strike fleets** for concentrated battle power
* **patrol fleets** for scouting and coverage
* **escort fleets** for convoy protection
* **dominance fleets** for sustained presence in contested waters
* **raiding fleets** for submarine or surface commerce attack

This separation matters because the goal-based naval AI does not just ask "do we have ships?" It asks whether it can form valid taskforces and fleets right now.

That is where VNR intentionally differs from the base game approach.

### Small Taskforces First, Not Large Taskforces First

The base game has a tendency to merge multiple roles together and try to form larger taskforces early. Large taskforces then claim a lot of required ships at once. When this happens, they can block the creation of other smaller taskforces that would otherwise be valid and useful.

The result is often:
* too many ships reserved for one incomplete large taskforce (AI has them assigned a role in reserve, thus unavailable for new taskforce creation)
* too few ships left over to form patrol, escort, or raiding groups
* more idle ships waiting for a full composition instead of forming small taskforces with ships in reserve

The VNR method is the opposite: create as many valid taskforces as possible with starting ships, and then slowly form new ones as AI production goes on.

In plain language:
* base game logic tends to create large taskforces first
* VNR logic is designed to create small taskforces first

This is why the templates are split by role and why early fleet tiers are built around narrower required taskforces. A small patrol or escort taskforce that can actually leave port is more valuable than a large theoretical fleet that is still missing a few ships.

### Must-Haves, Advance Fleets, Optional Fleets

Most country fleet files now follow a shared three-step structure (I personally call it Lasagna method):
* **must-haves**: the minimum set of fleets the country should try to form for basic naval function (for big navies, smaller taskforces should be created earlier, and for small navies, larger taskforces)
* **advance fleets**: extra fleets that improve coverage once the navy grows
* **optional fleets**: overflow fleets that let the AI absorb additional ships without distorting the core force structure (optional fleets usually introduced here)

This means the AI first secures the fleets it absolutely needs, then expands coverage, and only after that starts filling out extra fleets. This is more stable than asking the AI to immediately build every desirable fleet at once.

It also works better with order-based fleet formation:
* early fleet entries should be easy to satisfy
* core naval jobs should be represented by smaller, more achievable taskforces
* larger or more specialized formations should appear later, after the navy is already operational

This ordering is deliberate. The objective is not to create the biggest fleet first, but to get the largest number of useful fleets into the water as early as possible.

### Why Dominance Fleets Are Separate From Strike Fleets

One of the important changes was to stop treating naval dominance as "a strike fleet plus some patrols" inside one fleet template.

While the older pattern made the template harder to reason about and made it less clear what ships were actually reserved for presence, scouting, or battle, the newer structure gives dominance mission its own fleet, usually tied to a patrol-dominance taskforce. That keeps strike fleets available for decisive combat while dominance fleets handle sea control and pressure in a more predictable way.

It also reduces formation blocking. If dominance is its own fleet line, the AI does not need to complete a larger mixed fleet before it can start assigning ships to sea-control work.

### Practical Design Rule

When editing fleet templates in this mod, use this rule of thumb:
* if a country must reliably perform a naval job, give that job its own fleet line
* if a fleet exists only after the core navy is already working, put it in the advance or optional tier
* if extra ships should improve a fleet rather than redefine it, add them through optional taskforces
* if a large taskforce would delay several smaller useful taskforces, break it up and let the smaller fleets form first

## Debugging

Use the command "*imgui show ai_navy*" to enable debugging of naval goals.
