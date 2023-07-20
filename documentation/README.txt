###########################
### Vanilla Navy Rework ###
###########################
Hi there, this is MrPunk, in this file I will try to explain everything about VNR technically.

###########################
###        Topics       ###
###########################
    1. File Structure
    2. Post-loading Mechanism
    3. Interesting Features Breakdown


###########################
###    File Structure   ###
###########################
1. Common
    Overview
        Common is where the fundamental materials of the game are stored, usually it includes technology, national focus, decisions and much more.

        The files in this folder will be loaded at game starts (in the loading screen), so if the game never made it to the menu, more likely it's
        caused by bugs in Common.
    
    Structure
        a. ai_equipment
            The ship design templates are stored here, each file within indicates a type of ship, with specific templates of each level of the hull.
            AI will replace the template with newer ones if it has enough navy XP, weighted by the AI factors in the file.
            The variable "role" is the keyword telling AI what to produce in its strategy.
        b. ai_strategy
            AI production strategies are stored here. Using the role defined in ai_equipment, it directly tells AI what to produce, and assigning a
            value to it determines how AI are willing to produce such templates.
            Theoretically, any value over 0 will make AI execute the strategy, unless the number of AI's dockyard is too low to make that happen.
        c. decisions
            A place where decisions definition is stored. Currently it has the behemoths and naval introduction related decisions.
        d. defines
            Here you modify some static constants in the game mechanism. As the formula set in the code, defines provide a way to scale the effects.
        e. on_actions
            It declares some starting, global and triggering variables, including intro panel display and definition of major naval powers.
        f. scripted_effects
            Basically they are like functions in programming, purely customized effects. All the starting tech setup and naval variants are stored here.
        g. scripted_gui
            Just the starting intro panel.
        h. scripted_localisation
            Defines alternative text for behemoth events. (used by different countries)
        i. technologies
            title says all
        j. units
            Containing units, equipments and modules definition of the mod.
            Units are basic combat unit in the game such as carrier, destroyer and battleship.
            Equipments is more specifically the ship hulls you see in the game. Definition including allowed modules on each slot, and base stats such as 
            speed, armor, fuel consumption...
            Modules are the parts you put in every slot in ship designers
            Plus, ship names are stored in names_ships sorted by country tag.
    
2. Events
    Overview
        Events are, well, just events..
    
    Structure
        Nothing to put here, it's very easy to understand.

3. GFX
    Overview
        All the pictures, icons and 3D assets are put here.
    
    Structure
        a. army_icons
            The ship insignia and their tooltips
        b. entities
            3D assets, no need to touch it
        c. event_pictures
            Nothing special
        d. interface
            d.1. counters
                Small and green icons shown the number of ships when you hover on your fleet.
            d.2. equipmentdesigner
                Stores the icons of ship modules and topviews
            d.3. navalcomabt
                Stores icons of ships shown on the left side of the screen when you select a fleet, it's also used in naval combat panel.
            d.4. technologies
                Stores icons of ships in the tech tree and designer. Tech icons are also put here under navy_tree.
            d.5. Others
                Some textures used in tech tree and backgrounds.

4. History
    Overview
        This part is loaded after you select a country and start the game. Mostly there are country definitions such as leaders/parties/techs and starting military.
    
    Structure
        All files start with 00_vnr will be loaded as starting navy of that country.
        The empty files are just for overriding the vanilla ones.

5. Interface
    Overview
        This folder is in close relation to GFX, which it defines the name of GFX files, the UI lookings and which location the GFX should show up.

    Structure
        a. equipmentdesigner
            The topviews in ship designers are defined here. Each hull and module has its texture defined in these files, or it won't show up in designer.
        b. .gfx files
            Any files end with .gfx is the definitions of picture/icon texture. It directly points to the location where these icons are stored.
        c. .gui files
            Any files end with .gui is the UI definition, including size and position of these elements.

6. Localisation
    Overview
        The texts of events, technologies, etc.


###########################
###     Post-Loading    ###
###########################

The most interesting feature of VNR is the post-loading mechanism. Fos so long, there are many navy mods out there, but they all have to change the files
within history/countries, for that's where tank/air/ship designs are defined. In instance of a large naval overhaul mod, you have to modify these files to 
make new modules and new hulls working. It's very common on mods such as NRM.

Despite being the most sraightforward approach, it will bring harms to compatibility and robustness throughout basegame updates. The country history files
store more than starting variants, it also has leaders, historical events, political status and national spirits. Overwriting such files is a complete 
disaster when it comes to compatibility. Even a minor fix on the country's starting stability will be incompatible, depending on the loading order, it may
break its variants too.

To counter it, the post-loading mechanism is created. It is not some fancy skill, but I want it recorded, so the late comers know how to do that.

The basis of post-loading is achieved in following steps:
    1. Put all vanilla ship hulls to a hidden and disallowed techs, this blocks any variants using these hulls from appearing and won't cause any crash/error,
    because variants using blocked techs will be unlocked after the tech is researched. But in this case, it will never be researched. Then simply replacing them
    with hulls with different IDs is going to form the basic of your designer.
    2. Overriding all vanilla units history files. Unlike country history files, the unit files are less sensitive for they only take effects when it's loaded in 
    your script. Combining step 1 and step 2 will give a clean state on game start, no country has naval variants or fleet. Then you may load your own.
    3. Loading customized units and designs is the last step. It is achieved through hidden events. Some people say game is an art of interaction, and here is how 
    I load everything without you even noticing it. By completing step 2, no country has navy upon game start, but as you may notice, there is an intro panel. The intro
    panel draws your attention, and your first reaction is to click continue. A trigger is set there, when it is clicked, it will set a global flag, telling the loading
    event to take effects. The effects are modified to have no popup, and done in an instant. Then you get everything set.

Reference files:
    events/00_navy_rework.txt
    common/scripted_guis/00_navy_rework_welcome_splash_gui.txt