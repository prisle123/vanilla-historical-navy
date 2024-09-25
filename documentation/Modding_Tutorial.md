# Vanilla Navy Rework Modding Tutorial #

Hi there, this is MrPunk, in this file I will try to explain everything about VNR technically.

## Topics ##

1. [File Structure](#file-structure)
2. [Post-loading Mechanism](#post-loading)
3. [Interesting Features Breakdown](#interesting-feature-breakdown)


## File Structure ##

### Common ###
        
Common is where the fundamental materials of the game are stored, usually it includes technology, national focus, decisions and much more.

The files in this folder will be loaded at game starts (in the loading screen), so if the game never made it to the menu, more likely it's caused by bugs in Common.
    
**Structure**

- ai_equipment

    The ship design templates are stored here, each file within indicates a type of ship, with specific templates of each level of the hull. AI will replace the template with newer ones if it has enough navy XP, weighted by the AI factors in the file. The variable "role" is the keyword telling AI what to produce in its strategy.

- ai_strategy

    AI production strategies are stored here. Using the role defined in ai_equipment, it directly tells AI what to produce, and assigning a value to it determines how AI are willing to produce such templates. Theoretically, any value over 0 will make AI execute the strategy, unless the number of AI's dockyard is too low to make that happen.

- decisions

    A place where decisions definition is stored. Currently it has the behemoths and naval introduction related decisions.

- defines

    Here you modify some static constants in the game mechanism. As the formula set in the code, defines provide a way to scale the effects.

- on_actions

    It declares some starting, global and triggering variables, including intro panel display and definition of major naval powers.

- scripted_effects

    Basically they are like functions in programming, purely customized effects. All the starting tech setup and naval variants are stored here.

- scripted_gui
            
    Just the starting intro panel.

- scripted_localisation

    Defines alternative text for behemoth events. (used by different countries)

- technologies

    title says all

- units

    Containing units, equipments and modules definition of the mod.

    Units are basic combat unit in the game such as carrier, destroyer and battleship. Equipments is more specifically the ship hulls you see in the game. Definition including allowed modules on each slot, and base stats such as speed, armor, fuel consumption. Modules are the parts you put in every slot in ship designers. Plus, ship names are stored in names_ships sorted by country tag.
    
### Events ###

Events are, well, just events..
    
Nothing to put here, it's very easy to understand.

### GFX ###

All the pictures, icons and 3D assets are put here.

**Structure**

- army_icons

    The ship insignia and their tooltips

- event_pictures

    Nothing special

- interface

    - counters
    
        Small and green icons shown the number of ships when you hover on your fleet.
    
    - equipmentdesigner
    
        Stores the icons of ship modules and topviews
    
    - navalcomabt
    
        Stores icons of ships shown on the left side of the screen when you select a fleet, it's also used in naval combat panel.
    
    - technologies
    
        Stores icons of ships in the tech tree and designer. Tech icons are also put here under navy_tree.
    
    - Others
    
        Some textures used in tech tree and backgrounds.

### History ###

This part is loaded after you select a country and start the game. Mostly there are country definitions such as leaders/parties/techs and starting military.
    
All files start with 00_vnr will be loaded as starting navy of that country. The empty files are just for overriding the vanilla ones.

### Interface ###

This folder is in close relation to GFX, which it defines the name of GFX files, the UI lookings and which location the GFX should show up.

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

The most interesting feature of VNR is the post-loading mechanism. For so long, there are many navy mods out there, but they all have to change the files within history/countries, for that's where tank/air/ship designs are defined. In instance of a large naval overhaul mod, you have to modify these files to make new modules and new hulls work. It's very common on mods such as NRM.

Despite being the most sraightforward approach, it will bring harms to compatibility and robustness throughout basegame updates. The country history files store more than starting variants, they also have leaders, historical events, political status and national spirits. Overwriting such files is a complete disaster when it comes to compatibility. Even a minor fix on the country's starting stability will be incompatible, depending on the loading order, it may break its variants too.

To counter it, the post-loading mechanism is created. It is not some fancy skill, but I want it recorded, so the late comers know how to do that.

The basis of post-loading is achieved in following steps:
1. Put all vanilla ship hulls to a hidden and disallowed techs, this blocks any variants using these hulls from appearing and won't cause any crash/error, because variants using blocked techs will be unlocked after the tech is researched. But in this case, it will never be researched. Then simply replacing them with hulls with different IDs is going to form the basic of your designer.

2. Overriding all vanilla units history files. Unlike country history files, the unit files are less sensitive for they only take effects when it's loaded in your script. Combining step 1 and step 2 will give a clean state on game start, no country has naval variants or fleet. Then you may load your own.

3. Loading customized units and designs is the last step. It is achieved through hidden events. Some people say game is an art of interaction, and here is how I load everything without you even noticing it. By completing step 2, no country has navy upon game start, but as you may notice, there is an intro panel. The intro panel draws your attention, and your first reaction is to click continue. A trigger is set there, when it is clicked, it will set a global flag, telling the loading event to take effects. The effects are modified to have no popup, and done in an instant. Then you get everything set.

Reference files:

    events/00_navy_rework.txt

    common/scripted_guis/00_navy_rework_welcome_splash_gui.txt

## Interesting Feature Breakdown ##

1. **Multiple customized ship icons for one hull**

    NSB and BBA have introduced a new style of designer to the game, which you can choose the sprite for your tank/airplane from numerous icon presets. But ship designer still adopts the tradition from MTG that only equipment icons are available. Fortunately, this new feature is actually supported, just not applied. 

    This is achieved through graphic_db which is the database for icons in equipment designer. It seems that, even though ship designer owns a standalone UI, the way of accessing database is common among all designers. To do it, create a file for ship icons in gfx/interface/equipmentdesigner/graphic_db, then try to assign pool of icons to each hull and tag. For details, you can refer to tank and air icon files in the same location, the style and grammar are identical.

    As for unique icons of starting variants, that is actually a workaround. You can add a line "icon = xxx.dds" in the variant definition.

2. **Ship role system**

    The ship role system is what creates more variants. Before that, most naval mods simply add a lot of hulls to represent new type of ships, but they in fact are not so different from the base platform. For example, destroyer leader, destroyer and escort destroyer. Offering different bonus, the ship role also allows or disallows certain categories of modules.

3. **Dynamic title for ship designer**

    As you may notice, the title of ship designer has dynamic effects in the mod, which it will change according to the tag's historical ship designing organization, such as DNC of Britain and BuC&R of America. Dynamic localisation doesn't work here because the title is an embedded element in UI.

    To change it, you need to edit the original text of the title to an empty string first. Then, make a scripted gui attached to equipment designer with only an instantTextBox. Since scripted gui is the only way to put scripted localisation on UI, you can then modify the gui to make it responsive at last.
