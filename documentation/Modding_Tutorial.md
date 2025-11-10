# Vanilla Navy Rework Modding Tutorial #

Hi there, this is MrPunk. In this file, I will try to explain everything about VNR technically.

## Topics ##

1. [File Structure](#file-structure)
2. [Post-loading Mechanism](#post-loading)
3. [Interesting Features Breakdown](#interesting-feature-breakdown)


## File Structure ##

### Common ###
        
Common is where the fundamental materials of the game are stored, usually it includes technology, national focus, decisions and much more.

The files in this folder will be loaded once you boot up HOI4 (in the loading screen), so if the game never made it to the menu, more likely it's caused by bugs in Common.
    
**Structure**

- ai_equipment

    AI's ship design templates are stored here. Each file within indicates a type of ship, with specific templates of each level that gradually evolve. AI will replace the template with newer ones if it has enough navy XP, weighted by factors in the file to simulate its desire. The variable "role" is the keyword telling AI what to produce in its strategy.

- ai_strategy

    AI strategies are stored here. Production AI uses roles defined in ai_equipment, it directly tells AI what to produce, and assigning a value to it determines how willing AI is to produce such templates. Theoretically, any value over 0 will make AI execute the strategy, unless the number of AI's dockyards is too low to make that happen. Naval Management AI will decide where and how to concentrate its fleet in different scenarios of war.

- decisions

    A place where decisions are stored. Everything about decision categories of naval rework, naval development, and naval treaty are put here.

- defines

    Here you modify some static constants in the game mechanism. Since formulas are hard-coded in bottom-level and can not be modded, editing these values is the only way to scale their effects.

- dynamic_modifiers

    The dynamic modifiers are customized spirits with constantly changing effects, and it can be applied to not only countries but also states.

- game_rules

    All starting rules available in country selection menu are stored here.

- ideas

    These are national spirits.

- modifiers

    Static modifiers applied by weather, time, and unit experience.

- on_actions

    It declares some starting, global and triggering variables, including intro panel display and definition of major naval powers.

- scripted_effects

    Basically, they are like functions in programming, purely customized effects. All the starting tech setup and naval variants are stored here.

- scripted_gui
            
    Just the starting intro panel.

- scripted_localisation

    Defines alternative text for behemoth events. (used by different countries)

- scripted_triggers

    Customized triggers that will be evaluated before firing a certain effect such as event or decision.

- special_projects

    All special projects introduced by the mod.

- technologies

    Title says all

- terrain

    Specifically terrain modifiers, used by the mod to edit sea regions.

- unit_leader

    Traits and abilities of admirals.

- units

    Defining units, equipments and modules.

    Unit is the smallest element of combat in the game, such as carrier, destroyer, and battleship. Equipment is more specifically the ship hull you see in the game, with other definitions including allowed modules on each slot, and base stats such as speed, armor, and fuel consumption. To summarize their relations, equipment is the variant you can produce in the production menu, and it becomes a unit once deployed. Modules are the parts you put in every slot in ship designers. Plus, ship names are stored in names_ships, sorted by country tag.
    
### Events ###

Events are, well, just events..
    
Nothing to put here, it's very easy to understand.

### GFX ###

All the pictures, icons and 3D assets are put here.

**Structure**

- army_icons

    The ship insignia and their tooltips.

-entities

    3D assets definitions (they are not models).

- event_pictures

    Pictures used by in-game events.

- interface

    - counters
    
        Small and green icons shown the number of ships when you hover on your fleet.
    
    - equipmentdesigner
    
        It contains icons of ship modules, topviews, and definition of ship icon database.

    - ideas

        Icons of national spirits and officer corps.
    
    - navalcomabt
    
        Black silhouettes of ships shown on the ship list when you select a fleet. They are also used in naval combat UI.

    - special_project

        Icons of special projects.
    
    - technologies
    
        Icons of ships. Tech icons are also put here under navy_tree.
    
    - Others
    
        Some textures used in tech trees and backgrounds.

### History ###

This part is loaded after you select a country and start the game. Mostly there are country definitions such as leaders/parties/techs and starting military.
    
All files start with 00_vnr will be loaded as starting navy of that country. The empty files are just for overriding the vanilla ones.

### Interface ###

This folder is in close relation to GFX, which it defines the name of GFX files, the UI appearance, and which location the GFX should show up.

**Structure**

- equipmentdesigner

The topviews in ship designers are defined here. Each hull and module has its texture defined in these files, or it won't show up in designer.

- .gfx files

Any files end with .gfx is the definitions of picture/icon texture. It directly points to the location where these icons are stored.

- .gui files

Any files end with .gui is the UI definition, including size and position of these elements.

### Localisation ###

The texts of events, technologies, etc.


## Post-Loading ##

The most interesting feature of VNR is the post-loading mechanism. For so long, there have been many navy mods out there, but they without exception have to change files under history/countries, where tank/air/ship designs are defined (if you don't do that, vanilla variants still hold a place in the production menu, making it untidy for people with OCD). In instance of a large naval overhaul mod (e.g. adding/replacing slots on ship hulls, or creating new hulls), this method seems essential in making your variants appear as available at the begining. It's very common on mods such as NRM.

Despite the most sraightforward approach, it will bring harms to compatibility and robustness throughout basegame updates. The country history files store more than starting variants, they also have leaders, historical events, political status, and national spirits. Overwriting such files is a complete disaster when it comes to compatibility. Even a minor fix on the country's starting stability will be incompatible, and depending on the loading order, it may break variants too.

To counter it, the post-loading mechanism is created. It is not some fancy skill, but I want it recorded, so the late comers know how to do that.

The basis of post-loading is achieved in following steps:
1. Put all vanilla ship hulls to a hidden and disallowed tech. This blocks any variants using these hulls from appearing and won't cause any crash/error, because variants using blocked tech will be unlocked after the tech is researched. But in this case, it will never be researched. Then simply replacing them with hulls of different IDs, and these hulls become totally independent from literally everything from basegame or other mods.

2. Overwrite all vanilla OOBs with empty files. OOB, or Order of Battle, is the definition of starting military forces in history/units. Unlike country history files, unit files are less sensitive since they only take effect when loaded in your script. Combining step 1 and step 2 will give you a clean state on game start, no country has naval variant or fleet. Then you got to paint your stuff on a blank sheet.

        2.1. An alternative way to clear starting fleets will be the effect "destroy_ships". If you find overwriting all OOBs is too complicated, you can also create a scripted effect which iterates every starting country and deletes its navy.

3. Loading customized designs and units is the last step, which is achieved through hidden events. Some people say game is an art of interaction, and here is how I load everything without you even noticing it. By completing step 2, no country has navy upon game start, but as you may notice, there is an intro panel. The intro panel draws your attention, and your first reaction is to click continue. A trigger is set there, when it is clicked, it will fire a loading event which gives every country variants and fleets (If you choose step 2.1, this is where you can use it). Its effects are modified to have no popup, and done in an instant. Then you get everything set.

Reference files:

    events/00_navy_rework.txt

    common/scripted_guis/00_navy_rework_welcome_splash_gui.txt

## Interesting Feature Breakdown ##

1. **Multiple customized ship icons for one hull**

    NSB and BBA have introduced a new style of designer to the game, which you can choose the sprite for your tank/airplane from numerous icon presets. But ship designer still adopts the tradition from MTG that only equipment/tech icons are available, rendering your choices quite limited. Fortunately, this new feature is actually supported, just not applied. 

    This is achieved through graphic_db which is the database for icons in equipment designer. It seems that, even though ship designer owns a standalone UI, the way of accessing database is common among all designers. To do it, create a file for ship icons in gfx/interface/equipmentdesigner/graphic_db, then try to assign a pool of icons to each hull and each tag. For details, you can refer to tank and air icon files in the same location, which share the same style of coding.

    As for unique icons for starting variants, that is actually a workaround. You can add a line "icon = xxx.dds" in the variant definition.

2. **Ship role system**

    The ship role system is what creates more variants without actually adding them. Before that, most naval mods simply added a lot of hulls to represent new type of ships, but they are not so different from the base platform. For example, destroyer leader, destroyer and escort destroyer. Offering different bonus, the ship role also allows or disallows certain categories of modules.

3. **Dynamic title for ship designer**

    As you may notice, the title of ship designer has dynamic effects in the mod, which it will change according to the tag's historical ship designing organization, such as DNC of Britain and BuC&R of America. Dynamic localisation doesn't work here because the title is an embedded element in UI.

    To change it, you need to edit the original text of the title to an empty string first. Then, make a scripted gui attached to equipment designer with only an instantTextBox. Since scripted gui is the only way to put scripted localisation on UI, you can then modify the gui to make it responsive at last.
