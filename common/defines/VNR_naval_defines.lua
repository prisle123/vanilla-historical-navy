----------------
--Navy Defines--
----------------

--Hit Chance and Damage
NDefines.NNavy.HIT_PROFILE_SPEED_FACTOR = 0.3   -- factors speed value when determining it profile (Vis * HIT_PROFILE_MULT * Ship Hit Profile Mult) (was 0.5, set to 0.3 to lower impact from speed)
NDefines.NNavy.COMBAT_BASE_HIT_CHANCE = 0.08   -- base chance for hit (was 0.1)
NDefines.NNavy.COMBAT_BASE_CRITICAL_CHANCE = 0.2   -- Base chance for receiving a critical chance. It get's scaled down with ship reliability. (was 0.05)
NDefines.NNavy.CHANCE_TO_DAMAGE_PART_ON_CRITICAL_HIT = 0.9   -- the game will roll between 0-1 and will damage a random part if below this val on naval critical hits (was 0.1, critical hit will definitely destroy critical parts)
NDefines.NNavy.COMBAT_CRITICAL_DAMAGE_MULT = 8   -- Multiplier for the critical damage. Scaled down with the ship reliability. (was 5, punish low reliability designs)
NDefines.NNavy.CONVOY_ATTACK_BASE_FACTOR = 0.2   -- base % of convoys that get intercepted (was 0.15)
NDefines.NNavy.CONVOY_HIT_PROFILE = 90   -- convoys has this contant hit profile (was 85)
NDefines.NNavy.COMBAT_TORPEDO_CRITICAL_CHANCE = 0.4   -- chance for critical hit from torpedo. (was 0.1, torpedo needs more love)
NDefines.NNavy.NAVY_PIERCING_THRESHOLDS = { 2.0, 1.0, 0.85, 0.75, 0.7, 0.65, 0.6, 0.55, 0.5, 0.3, 0.0 }   -- Our piercing / their armor must be this value to deal damage fraction equal to the index in the array below [higher number = higher penetration]. If armor is 0, 1.00 will be returned.
NDefines.NNavy.NAVY_PIERCING_THRESHOLD_CRITICAL_VALUES = { 3.0, 1.25, 1.0, 0.65, 0.55, 0.3, 0.15, 0.1, 0.05, 0.01, 0.0 }   -- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
NDefines.NNavy.NAVY_PIERCING_THRESHOLD_DAMAGE_VALUES = { 2.0, 1.0, 0.7, 0.6, 0.45, 0.35, 0.2, 0.1, 0.05, 0.02, 0.01 }   -- 0 armor will always receive maximum damage (so add overmatching at your own peril). the system expects at least 2 values, with no upper limit.
NDefines.NNavy.COMBAT_DAMAGE_RANDOMNESS = 0.3   -- random factor in damage. So if max damage is fe. 10, and randomness is 30%, then damage will be between 7-10. (was 0.5)
NDefines.NNavy.GUN_HIT_PROFILES = { -- hit profiles for guns, if target ih profile is lower the gun will have lower accuracy
	75.0,	-- big guns
	105.0,	-- torpedoes
	55.0,	-- small guns
}
NDefines.NNavy.BASE_GUN_COOLDOWNS = { 1.0, 8.0, 1.0 }   -- number of hours for a gun to be ready after shooting
NDefines.NNavy.MANPOWER_LOSS_RATIO_ON_STR_LOSS = 0.05   -- losing strength will make you also lose manpower at this ratio of total manpower (was 0.5)
NDefines.NNavy.MANPOWER_LOSS_RATIO_ON_SUNK = 0.25   -- sunk ships will lose this ratio of their current manpower (was 0.5)
NDefines.NNavy.SHORE_BOMBARDMENT_CAP = 0.5   -- upper limit of shore bombardment (was 0.33)


--Positioning and Screening
NDefines.NNavy.BASE_POSITIONING = 0.5   -- base value for positioning (was 1.0)
NDefines.NNavy.MIN_SHIPS_FOR_HIGHER_SHIP_RATIO_PENALTY = 41   -- the minimum fleet size in ships that a fleet must be before having the large fleet penalty applied to them (was 4, relative size penalty starts counting from 66)
NDefines.NNavy.BEST_CAPITALS_TO_SCREENS_RATIO = 0.5   -- capitals / screens ratio used for creating FEX groups in naval combat (was 0.25, screens for max screening cut to half)
NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CAPITALS = 2.0   -- this screen ratio to num capital/carriers is needed for full screening beyond screen line (was 3.0, 2 screens needed to escort a capital ship)
NDefines.NNavy.RELATIVE_SURFACE_DETECTION_TO_POSITIONING_FACTOR = 0.05   -- multiples the surface detection difference between two sides. the side with higher detection will get a bonus of this value (was 0.01)
NDefines.NNavy.MAX_POSITIONING_BONUS_FROM_SURFACE_DETECTION = 0.2   -- will clamp the bonus that you get from detection (was 0.25)
NDefines.NNavy.POSITIONING_PENALTY_FOR_SHIPS_JOINED_COMBAT_AFTER_IT_STARTS = 0.02   -- each ship that joins the combat will have this penalty to be added into positioning (was 0.01)
NDefines.NNavy.MAX_POSITIONING_PENALTY_FOR_NEWLY_JOINED_SHIPS = 0.2   -- the accumulated penalty from new ships will be clamped to this value (was 0.25)
NDefines.NNavy.HIGHER_SHIP_RATIO_POSITIONING_PENALTY_FACTOR = 0.5   -- if one side has more ships than the other, that side will get this penalty for each +100% ship ratio it has (was 0.25)
NDefines.NNavy.MAX_POSITIONING_PENALTY_FROM_HIGHER_SHIP_RATIO = 3   -- maximum penalty to get from larger fleets (was 0.75, aggressively punish deathstacking)
NDefines.NNavy.MAX_CARRIER_RATIO_POSITIONING_PENALTY_FACTOR = 0.2   -- max penalty from stronger carrier air force
NDefines.NNavy.DAMAGE_PENALTY_ON_MINIMUM_POSITIONING = 0.9   -- damage penalty at 0% positioning (was 0.5)
NDefines.NNavy.SCREENING_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING = 1.25   -- screening efficiency (screen to capital ratio) at 0% positioning (was 0.5)
NDefines.NNavy.AA_EFFICIENCY_PENALTY_ON_MINIMUM_POSITIONING = 0.75   -- AA penalty at 0% positioning (was 0.7)
NDefines.NNavy.SCREEN_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS = 0.25   -- this screen ratio to num convoys is needed for full screening beyond screen line (was 0.5)
NDefines.NNavy.CAPITAL_RATIO_FOR_FULL_SCREENING_FOR_CONVOYS = 0.1   -- this capital ratio to num convoys is needed for full screening beyond screen line (was 0.25)
NDefines.NNavy.MISSION_SPREADS = {  -- mission spreads in the case a ship join combat, which is calculated for number of ships that will be in combat. 1 means no ship will be at start
	0.0, -- HOLD
	0.0, -- PATROL
	0.0, -- STRIKE FORCE
	0.5, -- CONVOY RAIDING
	0.0, -- CONVOY ESCORT
	0.7, -- MINES PLANTING
	0.7, -- MINES SWEEPING
	0.5, -- TRAIN
	0.0, -- RESERVE_FLEET
	0.0, -- NAVAL_INVASION_SUPPORT
}


--Dominance
NDefines.NNavy.NAVAL_DOMINANCE_STRIKE_FORCE_MULTIREGION_DECAY = 0.1   -- Percentage that the strike force mission's naval dominance multiplier decreases with for each additional assigned region (was 0.05)
NDefines.NNavy.NAVAL_DOMINANCE_MINES_PLANTING_BONUS = 0.1   -- Naval planting bonus when having naval dominance in the region (was 0.2)
NDefines.NNavy.NAVAL_DOMINANCE_MINES_SWEEPING_BONUS = 0.1   -- Naval sweeping bonus when having naval dominance in the region (was 0.2)
NDefines.NNavy.NAVAL_DOMINANCE_SHIP_RECOVERY_CHANCE = 0.05   -- Sunk ship recovery chance (does this require repair ship or not?) (was 0.1)
NDefines.NNavy.MISSION_DOMINANCE_RATIOS = {
	0.0, -- HOLD
	1.0, -- PATROL
	1.0, -- STRIKE FORCE
	0.15, -- CONVOY RAIDING
	0.25, -- CONVOY ESCORT
	0.2, -- MINES PLANTING
	0.1, -- MINES SWEEPING
	0.0, -- TRAIN
	0.0, -- RESERVE_FLEET
	0.85, -- NAVAL_INVASION_SUPPORT
}
NDefines.NNavy.DOMINANCE_PER_SHIP_PER_RANGE_NEUTRAL = 3000   -- ship range where there is no penalty nor bonus to naval dominance, below or above this will be scaled accordingly with penalty or bonus, min value is 0 (was 2000, range should not matter this much)
NDefines.NNavy.DOMINANCE_PER_SHIP_PER_SPEED_NEUTRAL = 25   -- ship speed where there is no penalty nor bonus to naval dominance, below or above this will be scaled accordingly with penalty or bonus, min value is 0 (was 20, lower speed impact)
NDefines.NNavy.DOMINANCE_PER_SHIP_PER_CARRIER_SIZE = 0.15   -- bonus to dominance based on the carrier size - e.g. regular carrier hangar has carrier_size of 2, so it would be a bonus of 2 * DOMINANCE_PER_SHIP_PER_CARRIER_SIZE, min value is 0 (was 0.1, carrier stronger)
NDefines.NNavy.DOMINANCE_PER_SHIP_PER_HEAVY_GUN_ATTACK = 0.05   -- bonus to dominance based on the heavy attack, min value is 0 (was 0.01, differentiate big gun ships and smaller counterparts)
NDefines.NNavy.DOMINANCE_DAILY_GAIN_FACTOR = 0.05   -- Daily dominance gain, as a fraction of target value (was 0.02)
NDefines.NNavy.DOMINANCE_DAILY_LOSS_FACTOR = 0.01   -- Daily dominance loss, as a fraction of previous target value (was 0.04)


--Battle Process
NDefines.NNavy.COMBAT_MIN_DURATION = 20   -- Min combat duration before we can retreat. It's a balancing variable so it's not possible to always run with our weak ships agains big flotillas. (was 8, longer activation time creates time for carrier attack)
NDefines.NNavy.CAPITAL_ONLY_COMBAT_ACTIVATE_TIME = 22   -- hours from start of combat when only carriers, capitals and subs get to attack (was 6)
NDefines.NNavy.ALL_SHIPS_ACTIVATE_TIME = 30   -- hours where all get to attack (was 8)
NDefines.NNavy.COMBAT_CHASE_RESIGNATION_HOURS = 1   -- Before we resign chasing enemy, give them some minimum time so the combat doesn't end instantly. (was 8, no fleet commander would chase enemy fleet due to fog of war)
NDefines.NNavy.ESCAPE_SPEED_PER_COMBAT_DAY = 0.15   -- daily increase in escape speed during combat duration (was 0.01, faster retreating to simulate real disengagement)
NDefines.NNavy.MAX_ESCAPE_SPEED_FROM_COMBAT_DURATION = 0.60   -- max escape speed that will be gained from combat duration (was 0.15)
NDefines.NNavy.SPEED_TO_ESCAPE_SPEED = 2   -- ratio to converstion from ship speed to escape speed (divided by hundred) (was 0.95)
NDefines.NNavy.CONVOY_DEFENSE_MAX_REGION_TO_TASKFORCE_RATIO = 4   -- each taskforce in convoy defense mission can at most cover this many regions without losing efficiency (was 5)


--Naval Aviation / Carriers
NDefines.NNavy.NAVAL_COMBAT_AIR_LOW_AA_TARGET_SCORE = 1   -- how much score factor from low AA guns (scales between 0->this number) (was 5, AA doesn't matter in cv plane target selection)
NDefines.NNavy.NAVAL_COMBAT_AIR_CARRIER_TARGET_BASE = 500   -- base scoring for target picking for planes inside naval combat based on screening efficency, one define per ship type (was 10)
NDefines.NNavy.NAVAL_COMBAT_AIR_CAPITAL_TARGET_BASE = 80   -- base scoring for target picking for planes inside naval combat based on screening efficency, one define per ship type (was 10)
NDefines.NNavy.NAVAL_COMBAT_AIR_CARRIER_TARGET_SCALE = 1000   -- scaled scoring for target picking for planes inside naval combat, max value when zero screening efficency, one define per ship type (was 200)
NDefines.NNavy.SHIP_TO_FLEET_ANTI_AIR_RATIO  = 1.0   -- total sum of fleet's anti air will be multiplied with this ratio and added to calculations anti-air of individual ships while air damage reduction (was 0.25, more AA contribution from other ships)
NDefines.NNavy.MAX_ANTI_AIR_REDUCTION_EFFECT_ON_INCOMING_AIR_DAMAGE = 0.66   -- damage reduction for incoming air attacks is clamped to this value at maximum. (was 0.75)
NDefines.NNavy.ANTI_AIR_MULT_ON_INCOMING_AIR_DAMAGE = 0.15   -- received air damage is calculated using following: 1 - ( (ship_anti_air + fleet_anti_air * SHIP_TO_FLEET_ANTI_AIR_RATIO )^ANTI_AIR_POW_ON_INCOMING_AIR_DAMAGE ) * ANTI_AIR_MULT_ON_INCOMING_AIR_DAMAGE (was 0.18)
NDefines.NNavy.ANTI_AIR_TARGETTING_TO_CHANCE = 0.25   -- Balancing value to determine the chance of ground AA hitting an attacking airplane, affecting both the effective average damage done by AA to airplanes, and the reduction of damage done by airplanes due to AA support (was 0.07)
NDefines.NNavy.BASE_CARRIER_SORTIE_EFFICIENCY = 0.4   -- factor of planes that can sortie by default from a carrier (was 0.5)
NDefines.NNavy.CARRIER_OFFENSIVE_STANCE_SORTIE_RATIO = {0.25, 0.37, 0.50, 0.62, 0.75}   -- The defensive stance sortie is 1.0 - value in index so their sum equals 1
NDefines.NNavy.NAVAL_COMBAT_PLANE_MIN_STACKING_PENALTY = 180   -- How many planes flying in a naval combat before penalties are introduced (was 80)
NDefines.NNavy.NAVAL_COMBAT_PLANE_STACKING_PENALTY_EFFECT = 0.01   -- Each plane above the optimal amount decreases the amount of airplanes being able to takeoff by such %. Subject to diminishing returns (was 0.005)
NDefines.NNavy.SHIP_SILHOUETTE_VALUE_PLANES_CARRIER = 500   --For dynamic plane efficacy, silhouette value (nominally in planes, but very abstract) (was 16)
NDefines.NAir.COMBAT_DAMAGE_SCALE_CARRIER = 40   -- same as above but used inside naval combat for carrier battles (was 5, more fighter damage from carrier)
NDefines.NAir.NAVAL_STRIKE_CARRIER_MULTIPLIER = 12   -- damage bonus when planes are in naval combat where their carrier is present (and can thus sortie faster and more effectively) (was 10)
NDefines.NNavy.CHANCE_TO_DAMAGE_PART_ON_CRITICAL_HIT_FROM_AIR = 1   -- the game will roll between 0-1 and will damage a random part if below this val on air critical hits (was 0.1, critical hit will definitely destroy critical parts)
--NDefines.NAir.HOURS_DELAY_AFTER_EACH_COMBAT = 2   -- How many hours needs the wing to be ready for the next combat. Use for tweaking if combats happens too often. (generally used as double because of roundtrip) (was 4)
--NDefines.NAir.CARRIER_HOURS_DELAY_AFTER_EACH_COMBAT = 3   -- how often carrier planes do battle inside naval combat (was 3, doesn't work, use above)
NDefines.NAir.DISRUPTION_FACTOR_CARRIER = 25.0   -- multiplier on disruption damage to scale its effects on carrier vs carrier planes (was 6, doesn't seem to work)
NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_STR = 2   -- Balancing value to convert damage ( naval_strike_attack * hits ) to Strength reduction. (was 1)
NDefines.NAir.NAVAL_STRIKE_DAMAGE_TO_ORG = 0.5   -- Balancing value to convert damage ( naval_strike_attack * hits ) to Organisation reduction. (was 1.5)
NDefines.NAir.AIR_AGILITY_TO_NAVAL_STRIKE_AGILITY = 0.06   -- conversion factor to bring agility in line with ship AA (was 0.02)
NDefines.NAir.CAPACITY_PENALTY = 3   -- scales penalty of having overcrowded bases. (was 2)
NDefines.NAir.CARRIER_PLANES_AMOUNT_FOR_POSITIONING = 180   -- below this amount of planes on a carrier we no longer get max benefit on enemy positioning (was 50)


--War Score
NDefines.NNavy.WAR_SCORE_GAIN_FOR_SUNK_SHIP_MANPOWER_FACTOR = 0.01   -- war score gained for every manpower killed when sinking a ship (was 0.004)
NDefines.NNavy.WAR_SCORE_GAIN_FOR_SUNK_SHIP_PRODUCTION_COST_FACTOR = 0.04   -- war score gained for every IC of the sunk ship (was 0.1)


--Spotting
NDefines.NNavy.SUBMARINE_REVEAL_BASE_CHANCE = 15   -- Base factor for submarine detection. It's modified by the difference of a spotter's submarines detection vs submarine visibility. Use this variable for game balancing. setting this too low will cause bad spotting issues. (was 11)
NDefines.NNavy.SUBMARINE_BASE_TORPEDO_REVEAL_CHANCE = 0.1   -- Chance of a submarine being revealed when it fires. 1.0 is 100%. this chance is then multiplied with modifier created by comparing firer's visibiility and target's detection (was 0.035)
NDefines.NNavy.UNIT_TRANSFER_SPOTTING_SPEED_MULT = 15   -- spotting speed mult against unit transfers (was 5)
NDefines.NNavy.NAVAL_INVASION_SPOTTING_SPEED_MULT = 30   -- spotting speed mult against naval invasion armies (was 10)
NDefines.NNavy.SPOTTING_SPEED_EFFECT_FOR_INITIAL_UNIT_TRANSFER_SPOTTING = 0.5   -- same as SPOTTING_SPEED_EFFECT_FOR_INITIAL_CONVOY_SPOTTING, but for naval transfer convoys (was 0.12)
NDefines.NNavy.SPOTTING_SPEED_EFFECT_FOR_INITIAL_NAVAL_INVASION_SPOTTING = 0.5   -- same as SPOTTING_SPEED_EFFECT_FOR_INITIAL_CONVOY_SPOTTING, but for naval invasion convoys (was 0.12)
NDefines.NNavy.NAVY_VISIBILITY_BONUS_ON_RETURN_FOR_REPAIR = 0.6   -- Multiplier for the surface/sub visiblity when the heavily damaged fleet is returning to the home base for reparation. 1.0 = no bonus. 0.0 = invisible. (was 0.9)
NDefines.NNavy.SPOTTING_MULTIPLIER_FOR_SURFACE = 2.5   -- task force surface spotting value is multiplied by this and added to spotting percentage every hour (was 1)
NDefines.NNavy.SPOTTING_MULTIPLIER_FOR_SUB = 0.9   -- task force sub spotting value is multiplied by this and added to spotting percentage every hour (was 1)


--Experience
NDefines.NNavy.EXPERIENCE_FACTOR_CONVOY_ATTACK = 0.05   -- xp from attacking convoys (was 0.04)
NDefines.NNavy.TRAINING_DAILY_COUNTRY_EXP_FACTOR = 0.005   -- Factor used to scale the Daily Country Navy XP gain from training (was 0.001)
NDefines.NNavy.TRAINING_MAX_DAILY_COUNTRY_EXP = 1   -- Maximum army XP gained per day from training (was 1)
NDefines.NNavy.UNIT_EXPERIENCE_PER_COMBAT_HOUR = 5   -- Unit xp gain per combat hour (was 10)
NDefines.NNavy.UNIT_EXPERIENCE_SCALE = 0.8   -- total unit xp factor (was 1)


--Naval Misc
NDefines.NNavy.CONVOY_EFFICIENCY_MIN_VALUE = 0   -- To avoid complete 0% efficiency, set the lower limit. (was 0.05)
NDefines.NNavy.PRIDE_OF_THE_FLEET_UNASSIGN_COST = 25   -- cost to unassign/replace pride of the fleet (was 100)
NDefines.NNavy.NAVAL_TRANSFER_BASE_SPEED = 4   -- base speed of units on water being transported (was 6)
NDefines.NNavy.AMPHIBIOUS_INVADE_SPEED_BASE = 0.25    -- every hour movement progress on amphibious invasion (was 0.5)
NDefines.NNavy.SHIP_SUPPORT_NEED_FACTOR = 0.25   -- The support need for a ship. This factor is multiplied with the ships dominance value (was 0.1)
NDefines.NNavy.STRIKE_FORCE_ON_BASE_FUEL_COST_FACTOR = 0.0   -- fuel cost for naval strike mission in port (was 0.25, ease the cost of assigning strike force)
NDefines.NNavy.AGGRESION_MULTIPLIER_FOR_COMBAT = 4   -- ships are more aggresive in combat (was 1.2)
NDefines.NNavy.AGGRESSION_SETTINGS_VALUES = {
	0,		-- do not engage
	1.0,	-- low
	1.4,	-- medium
	2.2,	-- high
	10000,	-- I am death incarnate!
}
NDefines.NNavy.MIN_TRACTED_ASSIST_DAMAGE_RATIO = 0.5   -- How much damage counts as assist damage (was 0.05)



--------------
--AI Defines--
--------------

--AI Fleet Composition (these seem not to work with ai_navy applied)
NDefines.NAI.NAVY_PREFERED_MAX_SIZE = 40   -- AI will generally attempt to merge fleets into this size, but as a soft limit. (was 25)
NDefines.NAI.CARRIER_TASKFORCE_MAX_CARRIER_COUNT = 4   -- optimum carrier count for carrier taskforces (was 4)
NDefines.NAI.CAPITAL_TASKFORCE_MAX_CAPITAL_COUNT = 6   -- optimum capital count for capital taskforces (was 12)
NDefines.NAI.SCREEN_TASKFORCE_MAX_SHIP_COUNT = 5   -- optimum screen count for screen taskforces (was 12)
NDefines.NAI.SCREENS_TO_CAPITAL_RATIO = 3   -- screens to capital/carrier count in carrier & capital taskforces (was 4)
NDefines.NAI.MIN_CAPITALS_FOR_CARRIER_TASKFORCE = 8   -- carrier fleets will at least have this amount of capitals (was 6)
NDefines.NAI.REPAIR_TASKFORCE_SIZE = 5   -- repair taskforce sizes are limited to this many ships (was 4)
NDefines.NAI.MAIN_SHIP_RATIO_TO_SPLIT = 1.6   -- if main ship ratio in a task force is larger than this, split it. (If a carrier TF wants 4 carriers (see defines above), but it has more than [this * 4] carriers, then we try to split the TF.) (was 1.8)
NDefines.NAI.MIN_MAIN_SHIP_RATIO = 0.6   -- if main ship ratio is below this, steal other ships. (was 0.3)
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN = 0.10   -- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys). (was 0.2)
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX = 0.25   -- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys). (was 0.7)
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_LAYING = 0.0   -- maximum ratio of screens forces to be used in mine laying (was 0.1)
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO = 0.20   -- if you have mines near your owned states, you will start priotize mine missions and will assign this ratio of screens (was 0.8)
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MIN_MINES = 250   -- if there are at least this many mines near our owned states, we will prioritize mine sweeping (was 10)
NDefines.NAI.SUGGESTED_NUM_MAX_CARRIERS = 4   -- We don't know exactly how many planes we should use when evaluating AI build so we need a suggested number to start things off. ALso used for task force suggestions list. (was 4)


--AI Production / Designs
NDefines.NAI.SHIPS_PRODUCTION_BASE_COST = 25000   -- Used by the AI to normalize IC values when picking what ship to build. (was 10000)
NDefines.NAI.NAVAL_DOCKYARDS_SHIP_FACTOR = 2.5   -- The extent to which number of dockyards play into amount of sips a nation wants (was 1.5)
NDefines.NAI.PRODUCTION_MAX_PROGRESS_TO_SWITCH_NAVAL = 0   -- AI will not replace ships being built by newer types if progress is above this (was 0.1, disable this so that AI won't cancel starting production)
NDefines.NAI.PRODUCTION_WAIT_TO_FINISH_IF_EXPENSIVE = 0.02   -- If produced item is expensive (producing less than one/week), wait to finish item if progress is above this (was 0.1)
NDefines.NAI.WANTED_CARRIER_PLANES_PER_CARRIER_CAPACITY_FACTOR = 2   -- Scales how many carrier planes the AI want per carrier deck space. (was 1.5)
NDefines.NAI.WANTED_CARRIER_PLANES_PER_CARRIER_CAPACITY_IN_PRODUCTION_FACTOR = 1.5   -- Scales how many carrier planes the AI want per deck space of carriers in production. (was 1)
NDefines.NAI.AI_WANTED_CARRIER_BASED_PLANES_FACTOR = 1.5   -- Factor applied to desire for carrier based planes (total carrier space * define) (was 1)
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVAL_DOCTRINE = 1   -- How quickly is desire to unlock naval doctrines accumulated? (was 0.5)
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_NAVAL_EQUIPMENT = 1   -- How quickly is desire to update/create naval equipment variants accumulated?
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_NAVY = 30   -- Navy XP needed before attempting to create a variant of a type (was 50)
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_NAVY = 30   -- If the AI lacks navy XP to create a variant it will reserve this much XP for variant creation so that it will eventually be able to create a variant. (was 50)
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_AIR = 15   -- Air XP needed before attempting to create a variant of a type (was 25)
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_AIR = 30   -- If the AI lacks air XP to create a variant it will reserve this much XP for variant creation so that it will eventually be able to create a variant. (was 50)


--AI Mission
NDefines.NAI.NAVAL_MISSION_ESCORT_NEAR_OWNED = 0   -- Extra escort mission score near owned provinces (was 300)
NDefines.NAI.NAVAL_MISSION_ESCORT_NEAR_CONTROLLED = 0   -- Extra escort mission score near controlled provinces (was 200)
NDefines.NAI.AI_MIN_DOMINANCE_MARGIN = 100   -- When trying to get control of a region, AI will try to exceed the required dominance by at least this amount (was 200)
NDefines.NAI.MIN_NAVAL_MISSION_PRIO_TO_ASSIGN = {
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	200, -- PATROL
	200, -- STRIKE FORCE
	200, -- CONVOY RAIDING
	100, -- CONVOY ESCORT
	100, -- MINES PLANTING
	100, -- MINES SWEEPING
	0, -- TRAIN
	0, -- RESERVE_FLEET
	100, -- NAVAL INVASION SUPPORT
}
NDefines.NAI.HIGH_PRIO_NAVAL_MISSION_SCORES = {  -- priorities for regions to get assigned to a mission
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	100000, -- PATROL
	1000, -- STRIKE FORCE
	1500, -- CONVOY RAIDING
	1000, -- CONVOY ESCORT
	-1, -- MINES PLANTING
	300, -- MINES SWEEPING
	0, -- TRAIN
	0, -- RESERVE_FLEET
	1000, -- NAVAL INVASION SUPPORT
}
NDefines.NAI.MAX_MISSION_PER_TASKFORCE = {
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	2, -- PATROL
	4, -- STRIKE FORCE
	2, -- CONVOY RAIDING
	4, -- CONVOY ESCORT
	2, -- MINES PLANTING
	2, -- MINES SWEEPING
	0, -- TRAIN
	0, -- RESERVE_FLEET
	6, -- NAVAL INVASION SUPPORT
}
NDefines.NAI.CONVOY_ESCORT_SCORE_FROM_CONVOYS = 25   -- score for each convoy you have in area (was 15)
NDefines.NAI.MAX_ALLOWED_NAVAL_DANGER = 500   -- AI will ignore naval paths that has danger value of above this threshold while assigning units (was 80)
NDefines.NAI.REGION_THREAT_PER_SUNK_CONVOY = 5   -- Threat value per convoy sunk in a region. Decays over time. (was 25)
NDefines.NAI.REGION_CONVOY_DANGER_DAILY_DECAY = 1.5   -- When convoys are sunk it generates threat in the region which the AI uses to prio naval missions (was 1)


--AI Misc
NDefines.NAI.NAVAL_BASE_RATIO_ALLOCATED_FOR_REPAIRS = 0.1   -- ai will allocate at most this ratio of dockyards for repairs in peace time (was 0.25)
NDefines.NAI.NAVAL_BASE_RATIO_ALLOCATED_FOR_REPAIRS_IN_WAR_TIME = 0.5   -- ai will allocate at most this ratio of dockyards for repairs in war time (was 0.6)
NDefines.NAI.SHIP_STR_RATIO_PUT_ON_REPAIRS = 0.6   -- if ships are damaged below this ratio, they are put for repairs (was 0.8)
NDefines.NAI.NAVAL_ACCESS_SCORE_PENALTY_PER_EXISTING_ACCESS_AT_WAR = 1000   -- each access reduces the desire of next access (was 150)
NDefines.NAI.NAVAL_ACCESS_SCORE_PENALTY_PER_EXISTING_ACCESS = 500   -- each access reduces the desire of next access (was 250)
NDefines.NAI.AIR_BASE_ACCESS_SCORE_PENALTY_PER_EXISTING_ACCESS_AT_WAR = 1000   -- each access reduces the desire of next access (was 150)
NDefines.NAI.AIR_BASE_ACCESS_SCORE_PENALTY_PER_EXISTING_ACCESS = 800   -- each access reduces the desire of next access (was 250)


----------------------
--Production Defines--
----------------------

NDefines.NProduction.EQUIPMENT_MODULE_ADD_XP_COST = 2   -- XP cost for adding a new equipment module in an empty slot when creating an equipment variant. (was 5)
NDefines.NProduction.EQUIPMENT_MODULE_REPLACE_XP_COST = 3   -- XP cost for replacing one equipment module with an unrelated module when creating an equipment variant. (was 6)
NDefines.NProduction.EQUIPMENT_MODULE_CONVERT_XP_COST = 1   -- XP cost for converting one equipment module to a related module when creating an equipment variant. (was 3)
NDefines.NProduction.EQUIPMENT_MODULE_REMOVE_XP_COST = 1   -- XP cost for removing an equipment module and leaving the slot empty when creating an equipment variant.
NDefines.NProduction.BASE_NAVAL_EQUIPMENT_CONVERSION_IC_COST_FACTOR = 0.1   -- Fraction of the hull industry cost which is always included in the refitting cost. (was 0.2)
NDefines.NProduction.MIN_NAVAL_EQUIPMENT_CONVERSION_RESOURCE_COST_FACTOR = 0.1   -- Minimum fraction of a naval equipment's strategic resource cost that any conversion will cost. (was 0.2)

-----------------
--Intel Defines--
-----------------

NDefines.NIntel.NAVY_SHIP_COUNT_INTEL_MIN = 0   -- unlocks how many ships target has (was 0.1)
NDefines.NIntel.NAVY_SHIP_COUNT_INTEL_MAX = 0.4   -- works together with above one (was 0.8)
NDefines.NIntel.NAVY_MIN_INTEL_TO_SHOW_EXISTING_CATEGORY_TYPES = 0.01   --this is about disaplying ships by class category (was 0.1)
NDefines.NIntel.NAVY_SHIP_TYPE_COUNT_INTEL_MIN = 0.01   --this range is used both when for disaplying counts by class and counts by variant (was 0.3)
NDefines.NIntel.NAVY_SHIP_TYPE_COUNT_INTEL_MAX = 0.3   -- works together with above one (was 0.7)
NDefines.NIntel.NAVY_MIN_INTEL_TO_SHOW_SHIP_CLASSES = 0.15   --this unclocks the display of a given variant (was 0.5)
NDefines.NIntel.NAVY_MIN_INTEL_TO_SHOW_SHIP_DESIGN_DETAILS = 0.5   -- unlocks ship designs (was 0.8)

-------------------
--Country Defines--
-------------------
NDefines.NCountry.NAVY_USE_HOME_BASE_FOR_RANGE = false   -- Fleet can use supply from nearby port (was true)

