# A Simple Guide to Vanilla Navy Rework #

## Preface ##
Welcome aboard, admirals! This is the author of VNR, MrPunk. VNR is a naval overhaul mod with a huge amount of new contents and mechanisms, though its core is still similar to vanilla. I bet most people, whether experienced in navy or not, might face a hard time adjusting to a fresh style of naval game. I'm not an expert, but I want to write down this guide with insights during my modding process, in an attempt to relieve players from duplicate learning.

You can play VNR in different ways. Stick to history if you want to do it in a realistic style, or create meta designs to simply be a winner. It's up to you which style to pick, and VNR always offers numerous things for you to achieve that.

## Designer ##
Designer is the basic of VNR and the most important components you deal with. To design a ship, you need to know about your requirements and more. A good navy does not always equal to the United States Navy in real life, but it should fit in your overall strategy and geopolitical environment. Fortunately, VNR has a wide range of modules to help you customize your fleet. To begin with, I'd like to bring up the six dimensions of ship designs.

### Philosophy of Balance ###

**Firepower**

Firepower in HOI4 is split into 3 types of attacks, light, heavy and torpedo.
- Light attack is provided by light or light-medium batteries on destroyers and cruisers, and secondary batteries on capital ships. It's very effective against light ships in terms of accuracy.
- Heavy attack is the damage done by heavy batteries on battleships or battlecruisers, and medium guns on heavy cruisers by a very small amount. Heavy guns usually have better piercing effects against heavy armor, but will be rendered ineffective in the face of screen ships.
- Torpedo has a different way to cause damage than guns, which it simply ignores armor. Despite great power and high critical chance, torpedo is fired in a slower pace and suffers a great penalty on precision against fleet with good screen efficiency. 

A conclusion can be drawn here. With the other side's screen efficiency totally crushed, your fleet will have an upper hand in hitting and evasion. Light attack is one of the most important factors you should secure in the design, but that's not the whole picture. Diversity can still be useful sometimes, leaving you with other options when light gun is unable to fully complete the mission. Undoubtedly, heavy gun and torpedo are not main sources of damage since they are limited by internal and external factors, but they have a higher chance to sink a capital ship rather than just leave a scratch on it.

Given that enemy's screen efficiency is one vital factor in the equation, swiftly eliminating its screen ships paves the way to a grand victory.

Carrier, on the other hand, is very different from all kinds of firepower mentioned above. Its damage depends on your air variants and sortie efficiency, and is only affected by weather, anti-air and night.

**Protection**

Protection varies on different hulls. For example, destroyer has close to zero protection, cruiser has armor plates, while battleship possesses armor plates, armor schemes and torpedo defense systems.

When HP gets reduced to 0, the ship will be sunk. Typically, there are two ways to avoid it. Having more HP brings obvious benefits to the ship, and allows it to take more damage before sunk. Armor improves survivability with a different approach by reducing damage received each time it's hit. Based on the formula listed in intro panel, if armor piercing of a gun is lower than half of the armor, its damage is reduced to 20% of its original value. In a scenario where battleships fight toe-to-toe combat, armor is extremely useful against guns.

However, armor is not invincible if you take other types of firepower into consideration. For example, torpedo completely ignore armor, and it can do so much damage that even torpedo defense system is not effective enough to save the ship when it's hit. Luckily, with a good escort force, torpedo will have a hard time penetrating the screen line to get your capital ships.

Contrary to most people's impression, anti-air is also a part of protection facing aircrafts and carriers. Strong AA offers damage reduction or even evasion when attacked by planes, and it can get more bonus from the overall AA of your fleet, factored to align with the ship's. That means a ship without anti-air gun can also benefit from other ships' AA, but anti-air guns are mandatory if you want to shoot down the plane.

**Speed**

Besides stacking armor, another way to improve your ship's survivability is to increase its speed. Higher speed helps reduce ship's hit profile, a value that is compared with hit chance of guns to determine whether your ship is hit or not (lower hit profile means the ship is harder to hit). As an effective measure to evade gun fires and torpedoes, however, speed is useless against planes. In order to get a higher speed, you should avoid stacking too many guns or armors on a ship. Generally speaking, you'd better make capital ships around 30kn, light ships 35-40kn.

**Reliability**

The impact of reliability is not superficial, but it determines how likely the ship may suffer a critical hit or damaged in accidents. Moreover, ships with low reliability get a damage multiplier when they are hit, which it's 8 times higher at 0% reliability. Many immature or complex modules, such as quad guns and missiles, will cause loss of reliability, making the ship very vulnerable in combat and training, just like the Swedish warship Wasa. In my opinion, low reliability is somewhat tolerable on platforms with higher HP, but it's definitely not recommended on light hulls.

**Detection**

Detection, or recon, is a very important factor in initiativeness on the sea. It is divided into surface detection and sub detection, with influence on spotting enemy fleets or submarines respectively. Greater detection is always good, but it's also too expensive to make the advantage universal. Only vanguard fleet is usually composed of fast and dedicated scout ships. Other than that, a set of radar will be all you need.

**Cost**

Unless you are playing as US or UK, building a large fleet takes too much time and IC, and it may hamper your army production as well. This is especially true for countries like Germany or Soviet Union which require army focus more than anyone else. As a result, keeping the cost of shipbuilding programs under control can make the whole experience of your game smoother.

### How to Design Your Ship ###

If you can fully understand the six dimensions, now it's time to design your first ship!

**Carrier**

Carrier serves as the main source of damage in battle, and it heavily relies on its aircrafts. Despite CV plane templates, the most important thing about a carrier is its capacity, which requires you to mount as many hangars as possible. However, having too many hangars will certainly degrade speed and other metrics, especially that organisation and HP will impact sortie efficiency. Thus you should keep the degradation under control, and take caution in the usage of large open hangar which harms these stats to a large extent.

**Heavy Ship**

You can't skip heavy ships in your fleet, such as battleships and battlecruisers. While screen ships escort capital ships, these heavy ships will escort carriers and boost their survivability by drawing attacks from aircrafts.  It's hard to summarize the key to this type of ship because it literally needs every aspect to be perfectly balanced. Among them, firepower could be the most irrelevant factor in battleship designs since their maximum HP is almost immortal compared to guns' heavy attack, but armor and AA are definitely needed to protect itself and other ships, especially carriers. In that case, a historical battleship is more than sufficient to fit in any taskforce in the mod.

On the contrary, battlecruiser is not a good option despite its advantage of speed. Except a higher chance to receive critical hits, battlecruiser in 1936 is starting to show marginal utilities (positive effect from speed gradually reduces as you keep investing in it).

As for super heavy battleships, you can mount one gun on it to fully utilize its high HP, but normally it's not recommended.

**Cruiser**

Unlike vanilla, the traditional definition of light or heavy cruiser has been replaced by a role system, but caliber still has some influence, which it roughly puts all cruisers into 3 categories:
- Heavy capital cruiser is the same as heavy cruiser in basegame with a capital ship related role.
- Heavy fleet cruiser is a screen ship version of heavy cruiser with medium guns and a screen ship related role.
- Light cruiser is the same as its origin in basegame with light medium guns and a screen ship related role.

In VNR, heavy cruiser can play role of either cruiser killer (heavy fleet cruiser) or economical capital ship (heavy capital cruiser), it's more flexible and can perform actions in both capital line and screen line based on the role you give it.

While light medium guns are similar to their origins, medium guns have bonus on HP and armor to simulate a linear relation between survivability and tonnage. As mentioned above, cruisers use light attack to eliminate screen ships and crush enemy's screen efficiency, creating a more favorable situation for your fleet to fire on the enemy. To achieve that, you need to pursue a fast and light-gun-centric design in order to keep up with destroyers and wipe out enemy's screen line as fast as you can.

Cruiser is not only used for attacking, but also some supporting jobs, such as reconnaissance, and sometimes it can be a luxurious option for anti-submarine and mine warfare. That's where the role system gonna help you fully dig out the potential. Radar picket cruiser is perfect for spotting enemy fleet. Colonial cruiser is cheaper, good supplement to colonial empire like UK and also a second best choice for minor countries. Then you have large cruiser and missile cruiser if there are sufficient IC power within your nation. The list goes on, but one thing for sure is that cruiser offers the most possibilities in all kinds of ships.

**Destroyer**

Destroyer is weak at the first glance, but it has the best speed and visibility in the game. Since destroyer's gun is almost useless against anything but itself, torpedo is often used as its main weapon, a source of damage that heavily depends on the diminishment of your enemy's screen efficiency. Besides, destroyers also shoulder the most important mission in the fleet, which is to maintain screen efficiency by their numbers. Therefore, cost should always be the top priority when designing a destroyer, and there are a series of roles to achieve that. 

Typically, the generic destroyer role can handle most scenarios. Escort destroyer is cheaper and expert at anti-submarine, and frigate can reduce the cost even more with numerous degradations in other aspects. Of course, you can also try other ways to improve quality of destroyer. Roles like destroyer leader and super destroyer can both enhance its performance in terms of firepower and protection at the cost of a sharp increase in IC. Destroyer leader may look redundant in the list, you are correct, that's also the reason why this type of ship eventually disappeared in history.

**Submarine**

Subs are greatly nerfed compared to vanilla in terms of competing with a proper fleet, but they are still lethal towards convoys. There aren't many choices for each slot on submarine like other ships, and that makes the design of submarines quite linear and easier since all you have to do is updating it with new hulls or new modules.

AI in VNR has been enhanced to carry more depth charges and sonars, which is a major challenge to sub-centric games. As a result, you should try to lower your sub visibility as much as possible. Mount every useful module, including snorkel and pressure hull, on your sub and keep them updated to the latest.

### Special Hulls ###

Special hulls are ships that can't be simply represented by generic ship hulls. They are made for flavor and immersion. Using them does not always give you a good result in naval battle.

**Battlecarrier**

Battlecarrier is a hybrid ship with features from both battleship and carrier. To make one, you will have to unlock it through special projects, and then put conversion decks on rear slots of a heavy ship hull. Although it has heavy guns, battlecarrier is considered as carrier and is in the carrier line, which means it's restricted by the max carrier limit. Furthermore, battlecarrier can't get any bonus from doctrines, and its high conversion cost also blocks the possibility to build the fleet around it.

**Super Heavy Battleship**

In fact, super heavy battleship has no fundamental difference from ordinary battleships. It's just larger and more expensive with dedicated armor and engines.

**Arsenal Ship**

Basically a super expensive shore bombardment ship. Arsenal ship can carry all types of missiles including anti-ship, anti-air and ballistic missiles. It has the ability to be the core of battlefleet, only if you are wealthy enough to build one.

**Escort Carrier**

A cheap but very weak carrier. Escort carrier is unlocked around 1940-1941 in the techtree, it's basically a toy for major powers as the carrier count limit largely restricts its usage scenario, but it's still a perfect choice for anti-submarine missions in secondary theaters.

**Merchant Carrier**

Merchant carrier is an even cheaper option than escort carrier. In reality, it was simply a merchantman, with a crude flight deck glued to it. Cost is the only reason why you can add the ship into your list. By using conversion decision, you can turn convoys into a merchant carrier in a few months.

**Super Carrier**

Just like Essex or Midway post-refit, super carrier is a weapon with no shortcoming. By combining it with modern carrier modules such as large armored hangar, steamed catapult and side lifts, a super carrier can possess a capacity of 130-150 planes. Except for its incredible cost, super carrier is the best type of carrier in the mod.

**Strategic Strike Carrier**

An equivalent to ice carrier in vanilla but with an actual historical background. The strategic strike carrier is based on USS United States planned right after WWII, it can carry 20 heavy jet bombers to carry out intercontinental nuclear strike. The design of this ship also reflects its duty in history. Its capacity might not be impressive, but it has access to all kinds of land-based aircrafts in the arsenal and can be useful if you need a sea-based airport against countries across the ocean. 

**Panzerschiff**

Panzerschiff in VNR or revived armored cruiser in KRNR, is basically a cruiser with heavy guns, though there is a limit set to prevent super heavy guns being used. Just like the real armored ship in history, it has some advantages in one-on-one combat against cruisers, such as better guns and armor, making it an intermediate option between battlecruiser and heavy cruiser. The problem is, panzerschiff is stuck in the middle, so it can't fully cover either's job.

**Auxiliary Ship**

Max range of the fleet is calculated by average range of all ships within, so mathematically speaking you can boost it by adding long-range ships to your fleet. However, if you know maths very well, you may notice once the average has surpassed a certain value, it will bring the increase rate to a stagnation (also known as margin utilities). As a result, it's unwise to put too many auxiliary ships together because the range bonus is reaching the upper limit.

To keep it away from the frontline, auxiliary ship is considered as capital ship, which means it can provide escort efficiency for your carrier just like battleship does. It's weak without doubt, but really really cheap.

## Techtree ##

Techtree is the soul of VNR and also the most interesting part of the game. Compared to base game, the naval techtree has been expanded in width and depth, from bonuses to modules. From the first glance, it may look complicated for people who love short and condensed techtree. It is large but you don't necessarily have to research all of them, and I will try to make your decision easier. Note that not all techs are worthy, you have to choose wisely and try not to overwhelm yourself.

### Naval Tree ###

**Destroyer Branch**

Destroyer is the foundation of any navies, so there is no reason that you should skip this part of the tree, unless you don't want to play navy at all. As I mentioned in designing section, cost is the key element of destroyer variants, so any tech that lowers IC cost is certainly a must. The research on destroyer should be centered around the job you give them in your fleet. Anti-submarine is one of the most common tasks handled by destroyer, promoting depth charge and sonar technologies as the theme of this branch. Typically, that's all you need to make a decent destroyer. When I say "decent", it stands for "a ship that works under most circumstances regardless of which country you are playing", but there are exceptions that you will be against different enemies.

**Cruiser Branch**

Cruiser can make incredible damage on light ships in the battle when it gets into close combat stage. Therefore, if you want to build a nice surface fleet, don't hesitate to give your cruiser the best guns and armors. Although you have many options in cruiser's tree, the process becomes easier that you only have to choose things boosting firepower, speed and armor.

**Heavy Armor Branch**

This branch is composed of battleship armor schemes and armor processing technologies. The necessity depends on whether you are going to include heavy ships in your fleet and when you want to exclude them. If heavy ships still hold a place in your fleet, you should update these techs to the latest whenever there's a chance, otherwise just leave them alone.

**Battleship Branch**

Battleship branch is actually quite flexible because you can drop it from anywhere if it's no longer needed in your fleet. But if you want a good cold war era experience, at least research hulls to gain access to cold war fire-control/nuclear-fleet technologies. Back to the base tree, battleship techs prior to the 1930s are very useful despite not being mandatory. Its sub-techs during the early 1940s are not recommended for their crummy bonus unless it's out of roleplay. After all, not many people will need excellent battleships but just-okay ones.

**Carrier Branch**

I can't stress more about the dominating power of carrier in reality and mod. Except for some early sub-techs which only offer little bonus, most carrier techs are extremely useful and will definitely give you an upper hand in the battle. My suggestion is to skip techs before 1932, and get all of them after that.

**Submarine Branch**

Submarine is useless against anything but convoys because of AI's ASW improvements. Its research should be centered around visibility and torpedo, and other techs remain optional no matter what bonus they offer.

### Naval Support Tree ###

**Gun Branch**

You need guns everywhere, so there is basically no reason to skip this branch. Except for super heavy guns and rocket artillery, get all techs to the latest if you want to have a decent fleet.

**Torpedo Branch**

Torpedo techs are needed by both submarines and torpedo ships. In general, torpedo weapons are nerfed in accuracy and buffed in damage, but they are still considered as poor damage sources in the mod. Only keep it up to date if your fleet is heavily relied on torpedo.

**Auxiliary Branch**

The auxiliary branch is split into three sub-branches, port facilities, auxiliary ships and fuel silos. Basically designed for immersion, you can just skip the whole branch without need to worry about missing important bonus or modules. Of course, if you want to experience this part of the mod, there are some useful techs.

The branch of port facilities aims at accelerating building and repairing of naval infrastructure such as shipyard and naval base, but I won't recommended you to finish this line due to poor bonus.

Auxiliary ship branch is centered around the debate over "range or speed". Speed branch is relatively better since it's one of the six dimensions of ship designs and it offers some exclusive modules like raider cruiser.

As for fuel branch, its research cost is insignificant with little bonus, making it an irrelevant factor in your game.

## Naval Battle ##

### Overview ###

Speaking of the mechanism of naval combat, it's mostly untouched in this mod, so your experience from vanilla still applies here. If you are not familiar with navy, I'd recommend you to read naval sections of HOI4 official wiki which owns a lot of details of basic concepts and advanced formulas of naval combat. [HOI4 wiki](https://hoi4.paradoxwikis.com/Naval_battle)

VNR modifies some parts of naval game to make it more intense and realistic, and the following introduction will only include things changed from vanilla. I will assume you know the basic concepts about naval combat such as screen efficiency, positioning and combat duration, otherwise please refer to the link above first.

### Fleet Composition ###

The question of fleet composition is based on the concept of screen ratio. This part is changed in VNR, which is 1:2. This means a capital ship (heavy ships and carriers) needs at least two screen ships (destroyers and light cruisers, basically anything in the first line of combat) to achieve max screen efficiency. Furthermore, carrier has its own version of screen efficiency that requires not only light ships but also heavy ships. This ratio is 1 to 1.

For example, let's say you have 1 carrier, then you need at least 1 battleship and 4 destroyers or light cruisers (2 for carrier, 2 for battleship) to get 100% efficiency for every ship. However, this is only the lowest standard for a fleet, because you can't avoid losses of ships in the combat. As a result, this ratio has to be expanded to allow some redundancy, like 1:1.5:8.

Besides, make sure your fleet has a min speed over 30kn, this is extremely important to strike forces.

### Sea Supremacy ###

One of the major roles that navy plays in the game is securing sea supremacy to create opportunity for a naval invasion. Compared to vanilla, supremacy factor of different missions are changed. Among them, the factor of convoy raiding is greatly nerfed, meaning even though you have twice the ships in convoy raiding, they will lose in securing sea supremacy against a smaller strike force. The best way to gain control of a piece of waters is by naval invasion support or strike force.

Type of ship also affects efficiency in this area. Decent ships are required in the action, that means you can't secure the sea just with submarines.

Above all, the supremacy weight of each ship is calculated by a formula between IC and manpower. Big and expensive ships will always have an edge in the fight for sea supremacy.

### Combat Duration ###

To simulate carrier's capability to send over the horizon strikes, the duration of combat is made longer in the mod, but I still kept it under control so that other ships still hold a place in navy. Carrier can send air strikes every 2-3 hour (based on your sortie efficiency) in different squadron size (based on carrier traffic and some other factors). 20 hours after the battle begins, fleet will have a chance to retreat both automatically and manually. Only 22 hours into the battle, battleship gets to fire its first salvo, while light ships still have to wait to the 30th hour to fire.

### Positioning ###

Positioning is typically used to measure how successful the fleet formation is in real life, which is a very important element in the era of ship of line. In the game, it is a factor applied to screen efficiency. Bad positioning may lead to degradation of screen efficiency. In that case, the preferred screen ratio is no longer 1:1:2, you will need more ships to achieve max screen efficiency.

Positioning is affected by several factors including relative size of fleet, speed, detection, etc. To achieve good positioning, make sure to have fast ships with good detection, and avoid maneuvering a super massive fleet around.

### Supply Consumption ###

Ever since the supply system was added in NSB, navy will also be influenced by port facilities. In vanilla, you rarely feel the consequence of running out of supply in naval combat because ships' supply consumption is too low compared to how much a naval base can provide. To begin with, don't confuse supply consumption with fuel consumption, they are different but will cause similar penalties on your fleet. Fuel is only consumed when your fleet is in action, while supply is a static resource that you can't store.

In the mod, supply consumption of ships are greatly increased, especially on capital ships. This has made strategic islands and frontline engineering corps far more important in simulating the Pacific War. Take US as an example, a large fleet making a sortie from the Midway will definitely suffer heavy attrition during maneuvering and combat. Instead, launching attacks from Hawaii or Australia is a wiser choice.