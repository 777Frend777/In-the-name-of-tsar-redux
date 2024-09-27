-------------------------------------------------------------------------------------------------------------------------------------------------
-- FRONTLINE AI
-------------------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------
-- RESEARCH
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.RESEARCH_DAYS_BETWEEN_WEIGHT_UPDATE = 1

NDefines.NAI.RESEARCH_AHEAD_BONUS_FACTOR = 50.0

NDefines.NAI.MAX_AHEAD_RESEARCH_PENALTY = 7
NDefines.NAI.RESEARCH_BONUS_FACTOR = 50 				                       		-- To which extent AI should care about bonuses to research
NDefines.NAI.XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 3.0		-- AI will at least need this amount of xp compared to cost of a tech to reserch it with XP			
NDefines.NAI.RESEARCH_WITH_XP_AI_WEIGHT_MULT = 1.5 				-- AI will bump score of a research with this mult if it can use XP

NDefines.NAI.RESEARCH_NAVAL_DOCTRINE_NEED_GAIN_FACTOR = 0.075 -- Multiplies value based on relative naval industry size / country size.

NDefines.NAI.RESEARCH_NEW_WEIGHT_FACTOR = 0.5 			-- Impact of previously unexplored tech weights. Higher means more random exploration.
NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 1.5 		-- To which extent AI should care about ahead of time penalties to research
NDefines.NAI.RESEARCH_BASE_DAYS = 60					-- AI adds a base number of days when weighting completion time for techs to ensure it doesn't only research quick techs

NDefines.NAI.RESEARCH_YEARS_BEHIND_FACTOR = 0.3 -- (was 0.2) --To which extent AI should care about not falling behind (i.e. increase weight for old tech)
--------------------------------------------------------------------------------------------------------------
-- DESIGNS
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_LAND = 20 --50	-- Army XP needed before attempting to create a variant of a type that uses the tank designer (the tank designer DLC feature must be active).
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_NAVY = 20 --50	-- Same as above but for the ship designer.
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_AIR = 20 --25	-- Same as above but for the air designer.

NDefines.NAI.VARIANT_CREATION_XP_RESERVE_LAND = 30 --50					-- If the AI lacks army XP to create a variant it will reserve this much XP for variant creation so that it will eventually be able to create a variant.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_NAVY = 30 --50					-- Same as above but for navy XP.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_AIR  = 30 --50					-- Same as above but for air XP.

-- The AI uses the below values when selecting which design to make among the types that use the tank designer
-- (the tank designer DLC feature must be active). For each role, the highest priority AI design that can be
-- created, if any, is assigned a weight. Any design with a weight of zero or a weight that falls below the
-- cutoff is dropped. A random design is then picked from the remaining.
-- Weight is calculated as AlternativeFactor * DemandFactor.
-- An "alternative" is a producible design of the same archetype (each specialized type is its own archetype).

-- EAI: AI delays upgrading the main tank types too much because it wants to create absent types for its templates first
-- makes sense but I'd rather have it get its most used type upgraded first
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_ABSENT = 1 --1000000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_LESSER_TECH = 1 --10000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_EQUAL_TECH = 1 --100
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_GREATER_TECH = 1

-- If a template may be reinforced with the archetype it's considered to be "demanded". If multiple conditions
-- are met, e.g. it's both in the field and in training, the largest value is used.

NDefines.NAI.LAND_DESIGN_DEMAND_FIELD_DIVISION = 45
NDefines.NAI.LAND_DESIGN_DEMAND_TRAINING_DIVISION = 30
NDefines.NAI.LAND_DESIGN_DEMAND_GARRISON_DIVISION = 15
NDefines.NAI.LAND_DESIGN_DEMAND_UNUSED_TEMPLATE = 0 --1
NDefines.NAI.LAND_DESIGN_DEMAND_ABSENT = 0 --0


-- If a design with a weight when divided by the largest weight falls below this value it's excluded from the
-- selection. Valid values are in the range [0, 1] inclusive.

NDefines.NAI.LAND_DESIGN_CUTOFF_AS_PERCENTAGE_OF_MAX = 0.01 --0.25

-- The AI "desires" to spend XP on doctrines, templates, and equipment.
-- The desire is built up over time and when XP is available it spends it on the action that has the highest accumulated desire. After spending XP the desire is reset, in effect balancing the desires.
-- Below is the daily desire gain for each action.


NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_LAND_DOCTRINE = 10.0  ---0.5    -- How quickly is desire to unlock land doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVAL_DOCTRINE = 0.5  ---1   -- How quickly is desire to unlock naval doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_DOCTRINE = 0.5  ---1     -- How quickly is desire to unlock air doctrines accumulated?

--EAI: make sure land template desire is always at the top, if the doctrine desire is high but the mod blocks it, AI wont create templates
NDefines.NAI.DESIRE_USE_XP_TO_UPDATE_LAND_TEMPLATE = 100.0    -- How quickly is desire to update/create templates accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_LAND_EQUIPMENT = 50.0  -- How quickly is desire to update/create land equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_NAVAL_EQUIPMENT = 1.0  --100.0 -- How quickly is desire to update/create naval equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_AIR_EQUIPMENT = 100.0   -- How quickly is desire to update/create air equipment variants accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_ARMY_SPIRIT = 0.4    -- How quickly is desire to unlock army spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVY_SPIRIT = 0.4   -- How quickly is desire to unlock naval spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_SPIRIT = 0.4     -- How quickly is desire to unlock air spirits accumulated?

NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_DOCTRINE = 7       -- Recalculate desired best doctrine to unlock with this many days inbetween.
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_TEMPLATE = 7       -- Recalculate desired best template to upgrade with this many days inbetween.
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_EQUIPMENT = 7      -- Recalculate desired best equipment to upgrade with this many days inbetween.

NDefines.NAI.GARRISON_TEMPLATE_SCORE_IC_FACTOR = 1.0 -- ai uses these defines while calculating garrison template score of a template.
NDefines.NAI.GARRISON_TEMPLATE_SCORE_MANPOWER_FACTOR = 0.05 -- formula is (template_ic * ic_factor + template_manpower * manpower_factor ) / template_supression (lower is better)

---------------

NDefines.NAI.REFIT_SHIP_RELUCTANCE = 5000							-- How often to consider refitting to new equipment variants for ships in the field
NDefines.NAI.REFIT_SHIP_PERCENTAGE_OF_FORCES = 0.3				-- How big part of the navy that should be considered for refitting

---NDefines.NCountry.REINFORCEMENT_DIVISION_PRIORITY_COUNT = 8

NDefines.NAI.DIVISION_DESIGN_MANPOWER_WEIGHT = 0 --0.005
NDefines.NAI.DIVISION_DESIGN_STOCKPILE_WEIGHT = 0.02 --0.01
NDefines.NAI.DIVISION_DESIGN_COMBAT_WIDTH_TARGET_WEIGHT = -10000 -- -200	        -- This score is reduced the farther the width is from the target width (if set)

NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 1.0   --0.35 --0.1
NDefines.NAI.UPGRADES_DEFICIT_LIMIT_DAYS = 60 --180                           -- Ai will avoid upgrading units in the field to new templates if it takes longer than this to fullfill their equipment need

--------------------------------------------------------------------------------------------------------------
-- DIVISION PRODUCTION
--------------------------------------------------------------------------------------------------------------

-- NDefines.NAI.WANTED_UNITS_INDUSTRY_FACTORY = 0.1 --1 		        			-- How many units a country wants is partially based on how much military industry that is available

NDefines.NAI.DEPLOYED_UNIT_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2 				-- deployment will try to buffer a ratio of deployed manpower (for reinforcements) during war time
NDefines.NAI.DEPLOYED_UNIT_MANPOWER_RATIO_TO_BUFFER_PEACETIME = 0.1     		-- deployment will try to buffer a ratio of deployed manpower (for reinforcements) during peace time

-- NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2			-- deployment will try to buffer a ratio of manpower (for reinforcements) during war time
-- NDefines.NAI.MAX_AVAILABLE_MANPOWER_RATIO_TO_BUFFER_PEACETIME = 0.1		-- deployment will try to buffer a ratio of manpower (for reinforcements) during peace time

NDefines.NAI.MANPOWER_RATIO_REQUIRED_TO_PRIO_MOBILIZATION_LAW = 0.4		-- percentage of manpower in field is desired to be buffered for AI when it has upcoming wars or already at war. if it has less manpower, it will prio manpower laws

NDefines.NAI.MAX_SUPPLY_DIVISOR = 3.50							-- To make sure the AI does not overdeploy divisions. Higher number means more supply per unit. van 2.0
-- NDefines.NAI.MIN_SUPPLY_USE_SANITY_CAP = 100	                                -- Ignore supply cap if below this value when deciding on how many divisions to produce.

	-- Calculating wanted nr of divisions
NDefines.NAI.WANTED_UNITS_INDUSTRY_FACTOR = 5                        -- How many units a country wants is partially based on how much military industry that is available
NDefines.NAI.WANTED_UNITS_THREAT_BASE = 0.7                             -- If no threat, multiply min wanted units by this
NDefines.NAI.WANTED_UNITS_THREAT_MAX = 12.0                             -- Normalized threat is clamped to this
NDefines.NAI.WANTED_UNITS_WAR_THREAT_FACTOR = 1.5                       -- Factor threat with this if country is at war. this value is overriden by the value in ideology database if that value exceedes this.
NDefines.NAI.WANTED_UNITS_DANGEROUS_NEIGHBOR_FACTOR = 1.25              -- Factor if has dangerous neighbor
NDefines.NAI.WANTED_UNITS_MANPOWER_DIVISOR = 22000                      -- Normalizing divisor for AI manpower. (for each x max available manpower, they want one division)
NDefines.NAI.WANTED_UNITS_WEIGHT_FRONTS_WANT = 1                      -- Weight of front needs when computing final nr wanted units
NDefines.NAI.WANTED_UNITS_WEIGHT_FACTORIES = 1                        -- Weight of military factories when computing final nr wanted units
NDefines.NAI.WANTED_UNITS_WEIGHT_MANPOWER = 1                         -- Weight of manpower availability when computing final nr wanted units
NDefines.NAI.WANTED_UNITS_MIN_DEFENCE_FACTOR = 0.4						-- Factor on units required for min defence
	-- End of calculating wanted nr of divisions

NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.85 --0.7			            -- Cancel unit production if below this to get resources out to units in the field
NDefines.NAI.MIN_MANPOWER_TO_BUILD_UNITS = 0.85 --0.7					        -- Cancel unit production if below this to get resources out to units in the field

NDefines.NAI.DEPLOY_MIN_TRAINING_SURRENDER_FACTOR = 0.5		-- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0 
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_SURRENDER_FACTOR = 0.8	-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0 
NDefines.NAI.DEPLOY_MIN_TRAINING_PEACE_FACTOR = 0.4		-- Required percentage of training (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.9	-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.9		-- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.9		-- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_CAP_DEPLOY_FACTOR = 0.85 -- If training is capped by equipment deficit and we have reached that cap, deploy unit anyway if percentage is above this (reinforce in field instead).

-- NDefines.NAI.START_TRAINING_EQUIPMENT_LEVEL = 0.8 --0.9                               -- ai will not start to train if equipment drops below this level
-- NDefines.NAI.STOP_TRAINING_EQUIPMENT_LEVEL = 0.7 --0.8                                -- ai will not train if equipment drops below this level

NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = .0042 -- aggressively trying to get the AI to upgrade divisions to newer templates, may work, may not, but it doesn't break anything. vanilla is 14, .0042 is just over 1 hour, where I believe the vanilla value at 14 = 14 days. So it should be checking to upgrade ONE division every single hour. 

--------------------------------------------------------------------------------------------------------------
-- EQUIPMENT PRODUCTION
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.8 -- [0.4] -- Base value for how much of currently used equipment the AI will at least strive to have in stock
-- NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR_GARRISON = -- [0.3]

NDefines.NAI.SHIPS_PRODUCTION_BASE_COST = 1
NDefines.NAI.NEEDED_NAVAL_FACTORIES_EXPENSIVE_SHIP_BONUS = 1000
NDefines.NAI.PRODUCTION_MAX_PROGRESS_TO_SWITCH_NAVAL = 0.001 -- temp fix
NDefines.NAI.PRODUCTION_WAIT_TO_FINISH_IF_EXPENSIVE = 0.25
NDefines.NAI.PRODUCTION_WAIT_TO_FINISH_IF_CHEAP = 0.75

NDefines.NAI.NAVAL_DOCKYARDS_SHIP_FACTOR = 1000			-- The extent to which number of dockyards play into amount of sips a nation wants
NDefines.NAI.NAVAL_BASES_SHIP_FACTOR = 1000				-- The extent to which number of naval bases play into amount of sips a nation wants
NDefines.NAI.NAVAL_STATES_SHIP_FACTOR = 1000			-- The extent to which number of states play into amount of sips a nation wants

NDefines.NAI.PRODUCTION_UNAVAILABLE_RESORCE_FACTORY_FACTOR = 0.5

--------------------------------------------------------------------------------------------------------------
-- FUEL
--------------------------------------------------------------------------------------------------------------

-- NDefines.NAI.MONTHS_TO_FILL_FUEL_BUFFER_WITH_OIL_REQUESTS = 6.0 					-- in war time, coutries will try to fill their buffer in this duration and trade for oil if necesarry
-- NDefines.NAI.MONTHS_TO_FILL_FUEL_BUFFER_WITH_OIL_REQUESTS_IN_PEACE_TIME = 10.0      -- in peace time, coutries will try to fill their buffer in this duration and trade for oil if necesarry

NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_ARMY_MAX_CONSUMPTION = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer 
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_AIR_MAX_CONSUMPTION  = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer
NDefines.NAI.WANTED_MAX_FUEL_BUFFER_IN_DAYS_FOR_NAVY_MAX_CONSUMPTION = 365  -- AI will try to buffer at least this amount of days on max consumption, will trade if necesarry and will go into fuel saving mode/aggresive mode using this buffer

--------------------------------------------------------------------------------------------------------------
-- DIPLOMACY
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.DIPLOMACY_SEND_MAX_FACTION = 0.0
NDefines.NAI.MAX_REQUEST_EXPEDITIONARIES_ARMY_RATIO = 0.0

NDefines.NAI.GENERATE_WARGOAL_THREAT_BASELINE = 0.6

--NDefines.NDiplomacy.JOIN_FACTION_LIMIT_CHANGE_AT_WAR = 0.2

--NDefines.NAI.MAX_EXTRA_WARGOAL_GENERATION = 5


NDefines.NAI.DIPLOMACY_REJECTED_WAIT_MONTHS_BASE = 1	-- AI will not repeat offers until at least this time has passed, and at most the double
		
NDefines.NAI.SEND_VOLUNTEER_EVAL_BASE_DISTANCE = 175.0  -- How far away it will evaluate sending volunteers if not a major power
NDefines.NAI.SEND_VOLUNTEER_EVAL_MAJOER_POWER = 1.0 	-- How willing major powers are to send volunteers.
NDefines.NAI.SEND_VOLUNTEER_EVAL_CONTAINMENT_FACTOR = 0.9 -- How much AI containment factors into its evaluation of sending volunteers.

NDefines.NDiplomacy.NAP_UNBREAKABLE_MONTHS = 18                    -- NAPS cannot be broken for this many months
NDefines.NDiplomacy.NAP_BREAK_FORCE_BALANCE_1 = 5.0              	-- 2-1 brigades along the border required to break NAP
NDefines.NDiplomacy.NAP_BREAK_FORCE_BALANCE_2 = 1.0              	-- 1-1 brigades along the border required to break NAP
NDefines.NDiplomacy.NAP_BREAK_FORCE_BALANCE_3 = 0.5 
NDefines.NAI.MAX_VOLUNTEER_ARMY_FRACTION = 0.025			-- Countries will not send more than their forces time this number to aid another country
NDefines.NAI.DIPLO_PREFER_OTHER_FACTION = -400		-- The country has yet to ask some other faction it would prefer to be a part of.
NDefines.NTrade.DISTANCE_TRADE_FACTOR = -0.0001			-- Trade factor is modified by distance times this vanilla -.02
NDefines.NDiplomacy.NOT_READY_FOR_WAR_BASE = -500 -- AI should be unwilling to enter accept a call to war if not ready ---for war against the relevant enemies. vanilla -50 - suggested define by SensitiveDannyBoi

--------------------------------------------------------------------------------------------------------------
-- PP
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.NEW_LEADER_EXTRA_PP_FACTOR = 1 --2.0								 -- Country must have at least this many times extra PP to get new admirals or army leaders

NDefines.NAI.DIPLOMACY_IMPROVE_RELATION_COST_FACTOR = 7.0                       -- Desire to boost relations subtracts the cost multiplied by this

NDefines.NAI.COMMAND_POWER_BEFORE_SPEND_ON_TRAITS = 65.0

--------------------------------------------------------------------------------------------------------------
-- LAND AI
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.MIN_AI_UNITS_PER_TILE_FOR_STANDARD_COHESION =  1.4 ---2.0	-- How many units should we have for each tile along a front in order to switch to standard cohesion (less moving around)
NDefines.NAI.MIN_FRONT_SIZE_TO_CONSIDER_STANDARD_COHESION = 1	-- How long should fronts be before we consider switching to standard cohesion (under this, standard cohesion fronts will switch back to relaxed)

NDefines.NAI.MAIN_ENEMY_FRONT_IMPORTANCE = 4.8			-- How much extra focus the AI should put on who it considers to be its current main enemy.

NDefines.NAI.LAND_DEFENSE_SUPPLY_HUB_IMPORTANCE = 8

NDefines.NAI.ASSIGN_TANKS_TO_WAR_FRONT = 100.0 --4.0
NDefines.NAI.ASSIGN_TANKS_TO_NON_WAR_FRONT = -100.0 --0.4

NDefines.NAI.ASSIGN_TANKS_TO_MOUNTAINS = -100								-- Vanilla is -6
NDefines.NAI.ASSIGN_TANKS_TO_JUNGLE = -100									-- Vanilla is -6

--NDefines.NAI.PLAN_ATTACK_DEPTH_FACTOR = 0.5									-- Factor applied to size or enemy being attacked.

NDefines.NAI.PLAN_STEP_COST_LIMIT = 1


NDefines.NAI.UPDATE_SUPPLY_MOTORIZATION_FREQUENCY_HOURS = 20 				-- Vanilla is 52  Check if activating motorization would improve supply situation this often.
NDefines.NAI.DIVISION_SUPPLY_RATIO_TO_MOTORIZE = 0.9						-- Vanilla is 0.8  If supply ratio is less than this, consider motorizing any applicable nearby supply hub	

NDefines.NAI.FRONT_UNITS_CAP_FACTOR = 10.0								-- A factor applied to total front size and supply use. Primarily effects small fronts

--NDefines.NAI.STATE_CONTROL_FOR_AREA_DEFENSE = 0.4 			                    -- To avoid AI sending area defense to area with very little foothold
NDefines.NAI.AREA_DEFENSE_BASE_IMPORTANCE = 30 				                -- Area defense order base importance value (used for determining order of troop selections)
NDefines.NAI.AREA_DEFENSE_CIVIL_WAR_IMPORTANCE = 5.0				-- Area defense order importance value when a country is in a civil war as target or revolter. vanilla 10000 lolwut?? am I missing something here :
--NDefines.NAI.MIN_STATE_VALUE_TO_PROTECT = 7.5 				                -- When AI is considering which states to protect it looks at state values to consider if it is worth it.
--NDefines.NAI.STATE_GARRISON_MAX_UNITS = 5 					                	-- Max units to guard a garrison under normal circumstances (isolated core areas like England has is excempt)

--NDefines.NAI.VP_LEVEL_IMPORTANCE_HIGH = 1 --30					                -- Victory points with values higher than or equal to this are considered to be of high importance.
NDefines.NAI.VP_LEVEL_IMPORTANCE_MEDIUM = 1 --10				                -- Victory points with values higher than or equal to this are considered to be of medium importance.
NDefines.NAI.VP_LEVEL_IMPORTANCE_LOW = 1 --5					                -- Victory points with values higher than or equal to this are considered to be of low importance.
--NDefines.NAI.VP_GARRISON_VALUE_FACTOR = 0 				                    -- Extent to which VP garrisons are prioritized  based on VP value and compared to other priority values.

NDefines.NAI.SCARY_LEVEL_AVERAGE_DEFENSE = -0.6                               -- average front defense modifier to make it consider it as a PITA to go for
NDefines.NAI.ATTACK_HEAVILY_DEFENDED_LIMIT = 0.55 			                -- AI will not launch attacks against heavily defended fronts unless they consider to have this level of advantage (1.0 = 100%)
NDefines.NAI.HOUR_BAD_COMBAT_REEVALUATE = 30                                 	-- if we are in combat for this amount and it goes shitty then try skipping it

NDefines.NAI.MAX_MICRO_ATTACKS_PER_ORDER = 48 				                    -- AI goes through its orders and checks if there are situations to take advantage of
NDefines.NAI.MICRO_POCKET_SIZE = 2					-- Pockets with a size equal to or lower than this will be mocroed by the AI, for efficiency.
--NDefines.NAI.POCKET_DISTANCE_MAX = 40000 					                    -- shortest square distance we bother about chasing pockets

NDefines.NAI.RESERVE_TO_COMMITTED_BALANCE = 0.3 				                -- How many reserves compared to number of committed divisions in a combat (1.0 = as many as reserves as committed)
NDefines.NAI.REDEPLOY_DISTANCE_VS_ORDER_SIZE = 0.9 			                -- Factor applied to the path length of a unit compared to length of an order to determine if it should use strategic redeployment
NDefines.NAI.UNIT_ASSIGNMENT_TERRAIN_IMPORTANCE = 18.0 		                -- Terrain score for units are multiplied by this when the AI is deciding which front they should be assigned to
NDefines.NAI.ENTRENCHMENT_WEIGHT = 3.0						                -- AI should favour units with less entrenchment when assigning units around.


NDefines.NAI.ORG_UNIT_STRONG = 0.80		--0.90										-- Organization % for unit to be considered strong
NDefines.NAI.STR_UNIT_STRONG = 0.80		--0.90									-- Strength (equipment) % for unit to be considered strong

NDefines.NAI.ORG_UNIT_NORMAL = 0.60			--0.75 												-- Organization % for unit to be considered normal
NDefines.NAI.STR_UNIT_NORMAL = 0.60			--0.75 											-- Strength (equipment) % for unit to be considered normal

NDefines.NAI.ORG_UNIT_WEAK = 0.40 												-- Organization % for unit to be considered weak
NDefines.NAI.STR_UNIT_WEAK = 0.40 												-- Strength (equipment) % for unit to be considered weak

NDefines.NMilitary.PLAYER_ORDER_PLANNING_DECAY = 0.01

NDefines.NAI.AI_FRONT_MOVEMENT_FACTOR_FOR_READY = 0.10 				--0.25			                -- If less than this fraction of units on a front is moving  AI sees it as ready for action

NDefines.NAI.LOCATION_BALANCE_TO_ADVANCE = 0.1 ---0.0		                -- Limit on location strength balance between country and enemy for unit to dare to move forward.
NDefines.NAI.FRONT_TERRAIN_DEFENSE_FACTOR = 7.0			-- Multiplier applied to unit defense modifier for terrain on front province multiplied by terrain importance
NDefines.NAI.FRONT_TERRAIN_ATTACK_FACTOR = 7.0			-- Multiplier applied to unit attack modifier for terrain on enemy front province multiplied by terrain importance

--NDefines.NAI.FRONT_BULGE_RATIO_UPPER_CUTOFF = 1.5								-- If total bulginess is lower than this, the front is ignored.
--NDefines.NAI.FRONT_BULGE_RATIO_LOWER_CUTOFF = 0.95							-- If local bulginess drops below this, a point of interest is found
NDefines.NAI.FRONT_CUTOFF_MIN_EDGE_PROXIMITY = 1								-- Minimum number of provinces to the front edge to determine for cutoff oportunity.

---NDefines.NAI.MAX_DIST_PORT_RUSH = 25.0	--default 20.0			-- If a unit is in enemy territory with no supply it will consider nearby ports within this distance.		
	
-- these are all 3 numbers for min, desired, max unit need weights for area defense
NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_VP_WEIGHT = { 1.0, 1.0, 1.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_VP_WEIGHT = { 0.0, 1.0, 2.0 }
NDefines.NAI.AREA_DEFENSE_HOME_VP_WEIGHT = { 0.0, 0.5, 1.0 }
NDefines.NAI.AREA_DEFENSE_OTHER_VP_WEIGHT = { 0.0, 0.0, 1.0 }

NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_COAST_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_COAST_WEIGHT = { 0.0, 0.2, 0.7 }
NDefines.NAI.AREA_DEFENSE_HOME_COAST_WEIGHT = { 0.0, 0.1, 0.5 }
NDefines.NAI.AREA_DEFENSE_OTHER_COAST_WEIGHT = { 0.0, 0.0, 0.0 }

NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_BASE_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_BASE_WEIGHT = { 0.5, 1.0, 1.5 }
NDefines.NAI.AREA_DEFENSE_HOME_BASE_WEIGHT = { 0.5, 1.0, 1.0 }
NDefines.NAI.AREA_DEFENSE_OTHER_BASE_WEIGHT = { 0.5, 0.5, 1.0 }

--NDefines.NAI.MAX_UNITS_FACTOR_AREA_ORDER = 1.5 --1.0								-- Factor for max number of units to assign to area defense orders
--NDefines.NAI.DESIRED_UNITS_FACTOR_AREA_ORDER = 1.5 --1.0							-- Factor for desired number of units to assign to area defense orders
--NDefines.NAI.MIN_UNITS_FACTOR_AREA_ORDER = 1.5									-- Factor for min number of units to assign to area defense orders

--NDefines.NAI.MAX_UNITS_FACTOR_FRONT_ORDER = 1.5									-- Factor for max number of units to assign to area front orders
--NDefines.NAI.DESIRED_UNITS_FACTOR_FRONT_ORDER = 1.5								-- Factor for desired number of units to assign to area front orders
--NDefines.NAI.MIN_UNITS_FACTOR_FRONT_ORDER = 1.0									-- Factor for min number of units to assign to area front orders

--NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.0								-- Factor for max number of units to assign to naval invasion orders
--NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.0							-- Factor for desired number of units to assign to naval invasion orders
--NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 1.0								-- Factor for min number of units to assign to naval invasion orders

--------------------------------------------------------------------------------------------------------------
-- NAVY AI
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.ESTIMATED_CONVOYS_PER_DIVISION = 18			-- Not always correct, but mainly used to make sure AI does not go crazy vanilla 6
NDefines.NAI.NAVAL_MISSION_INVASION_BASE = 30000					-- Base score for region with naval invasion (modified dynamically by prioritizing orders)

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING = 0.10 -- maximum ratio of screens forces to be used in mine sweeping
-- NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO = 0.8 -- if you have mines near your owned states, you will start priotize mine missions and will assign this ratio of screens
-- NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MIN_MINES = 10 -- lowest mine for prioing mine missions
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MAX_MINES = 250 -- highest mines for highest prio for mine missions

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_LAYING = 0.05 -- maximum ratio of screens forces to be used in mine laying
-- NDefines.NAI.MAX_PATROL_TO_STRIKE_FORCE_RATIO = 3.0	-- maximum patrol/strike force ratio

-- NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_NAVY_TRAINING = 1.0 				-- ai will use at most this ratio of affordable fuel for naval training

-- NDefines.NAI.MAX_FULLY_TRAINED_SHIP_RATIO_FOR_TRAINING = 100.0 					-- ai will not train a taskforce if fully trained ships are above this ratio

-- NDefines.NAI.NAVAL_MAX_PRIO_THEATRES = 5										-- A nation may have a large number of theatres but all of them having stationed/assigned navy is redundant
-- NDefines.NAI.NAVAL_THEATRE_PRIO_CAPITAL_SCORE = 100							-- Weight of capital when calculating naval theatre assignment
-- NDefines.NAI.NAVAL_THEATRE_PRIO_NAVAL_BASE_SCORE = 1							-- Weight of naval bases when calculating naval theatre assignment
-- NDefines.NAI.NAVAL_THEATRE_PRIO_MIN_DISTANCE = 2000							-- Minimum distance (in km) between priority theatres for naval assignment to spread navy out

-- NDefines.NAI.NAVAL_MISSION_MIN_FLEET_SIZE = 3								-- AI will not send too small fleets on missions. Ignored if total number of ships country has is below	this.
NDefines.NAI.NAVY_PREFERED_MAX_SIZE = 50										-- AI will generally attempt to merge fleets into this size but as a soft limit.

NDefines.NAI.DOCKYARDS_PER_NAVAL_DESIRE_EFFECT = -100.0

NDefines.NAI.MIN_CAPITALS_FOR_CARRIER_TASKFORCE = 12
NDefines.NAI.CAPITALS_TO_CARRIER_RATIO = 3
NDefines.NAI.SCREENS_TO_CAPITAL_RATIO = 6.0

-- NDefines.NAI.NAVAL_MISSION_AGGRESSIVE_PATROL_DIVISOR = 1						-- Divides patrol score when not defending
-- NDefines.NAI.NAVAL_MISSION_PATROL_NEAR_OWNED = 500							-- Extra patrol mission score near owned provinces
-- NDefines.NAI.NAVAL_MISSION_PATROL_NEAR_CONTROLLED = 120						-- Extra patrol mission score near controlled provinces

-- NDefines.NAI.STRIKE_FLEET_MAX_DISTANCE_TO_COMBAT = 500.0						-- The strike fleet will not attempt to intervene in combats further away than this.

-- NDefines.NAI.CONVOY_NEED_SAFETY_BUFFER = 1.25
-- NDefines.NAI.MISSING_CONVOYS_BOOST_FACTOR = 250

NDefines.NAI.CAPITAL_TASKFORCE_MAX_CAPITAL_COUNT = 6 		-- optimum capital count for capital taskforces
NDefines.NAI.SCREEN_TASKFORCE_MAX_SHIP_COUNT = 8			-- optimum screen count for screen taskforces
NDefines.NAI.SUB_TASKFORCE_MAX_SHIP_COUNT = 10 				-- optimum sub count for sub taskforces

-- NDefines.NAI.MIN_CAPITALS_FOR_CARRIER_TASKFORCE = 10			-- carrier fleets will at least have this amount of capitals
-- NDefines.NAI.CAPITALS_TO_CARRIER_RATIO = 4				-- capital to carrier count in carrier taskfoces
-- NDefines.NAI.SCREENS_TO_CAPITAL_RATIO = 4					-- screens to capital/carrier count in carrier & capital taskforces

NDefines.NAI.MIN_NAVAL_MISSION_PRIO_TO_ASSIGN = {  -- priorities for regions to get assigned to a mission
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	200, -- PATROL		
	200, -- STRIKE FORCE 
	200, -- CONVOY RAIDING
	100, -- CONVOY ESCORT
	200, -- MINES PLANTING	
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

NDefines.NAI.MAX_MISSION_PER_TASKFORCE = {  -- max mission region/taskforce ratio
	0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
	2, -- PATROL
	4, -- STRIKE FORCE
	5, -- CONVOY RAIDING
	4, -- CONVOY ESCORT
	2, -- MINES PLANTING
	2, -- MINES SWEEPING
	0, -- TRAIN
	0, -- RESERVE_FLEET
	10, -- NAVAL INVASION SUPPORT
}

-------------------------
-- naval invasions
-------------------------

--ENEMY_HOME_AREA_RATIO_TO_DISABLE_INVASIONS = --0.3 -- if we are fighting against an enemy home area from our home area and if the enemy area is larger than this ratio, non strategy invasions are disabled

-- NDefines.NAI.MAX_SCREEN_FORCES_FOR_INVASION_SUPPORT = 0.0 -- max ratio of screens forces to be used in naval invasion missions
-- NDefines.NAI.MAX_CAPITAL_FORCES_FOR_INVASION_SUPPORT = 0.05 -- max ratio of capital forces to be used in naval invasion missions

-- NDefines.NAI.NAVAL_MISSION_INVASION_BASE = 1000									-- Base score for region with naval invasion (modified dynamically by prioritizing orders)

-- NDefines.NAI.MAX_UNITS_FACTOR_INVASION_ORDER = 1.0				-- Factor for max number of units to assign to naval invasion orders
-- NDefines.NAI.DESIRED_UNITS_FACTOR_INVASION_ORDER = 1.0			-- Factor for desired number of units to assign to naval invasion orders
-- NDefines.NAI.MIN_UNITS_FACTOR_INVASION_ORDER = 1.0				-- Factor for min number of units to assign to naval invasion orders


NDefines.NAI.MIN_INVASION_AREA_SIZE_FOR_FLOATING_HARBORS = 1   -- AI will consider using floating harbors for naval invasion if invasion area is larger than this many provinces
NDefines.NAI.MAX_DISTANCE_NAVAL_INVASION = 400.0				-- AI is extremely unwilling to plan naval invasions above this naval distance limit.

NDefines.NAI.FAILED_INVASION_AVOID_DURATION = 180 ---after a failed invasion, AI will down-prioritize invading the same area again for this number of days
NDefines.NAI.FAILED_INVASION_AREA_PRIO_FACTOR = 0.25 ---for every failed invasion on an area, factor that area's invasion prio with this value	
NDefines.NAI.FAILED_INVASION_PORT_PRIO_FACTOR = 0.33 ---for every failed invasion on a target port (province), factor the chance that we try to invade that same port again (relative to other ports)

-- NDefines.NAI.MIN_UNIT_RATIO_FOR_INVASIONS = --0.1                         -- don't allocate more divisions than this for naval invasions

NDefines.NAI.MIN_INVASION_PLAN_VALUE_TO_EXECUTE = 0.20				-- ai will only activate invasions if it is above this
NDefines.NAI.MIN_INVASION_ORG_FACTOR_TO_EXECUTE = 0.8				-- ai will only activate invasions if average org factor is above this

--NDefines.NAI.ENEMY_HOME_AREA_RATIO_TO_DISABLE_INVASIONS = 0.3

NDefines.NAI.ENEMY_NAVY_STRENGTH_DONT_BOTHER = 2							-- If the enemy has a navy at least these many times stronger that the own, don't bother invading
NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE = 0.1 ---0.08			-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend.
NDefines.NAI.RELATIVE_STRENGTH_TO_INVADE_DEFENSIVE = 0.5 ---0.4	-- Compares the estimated strength of the country/faction compared to it's enemies to see if it should invade or stay at home to defend, but while being a defensive country.


NDefines.NAI.INVASION_DISTANCE_RANDOMNESS = 300									-- This higher the value the more unpredictable the invasions. Compares to actual map distance in pixels.

NDefines.NAI.MAX_UNIT_RATIO_FOR_INVASIONS = 0.35									-- countries won't use armies more than this ratio of total units for invasions
NDefines.NAI.MAX_INVASION_FRONT_SCORE = 2400										-- max score for naval invasion front scores
NDefines.NAI.MIN_FRONT_SCORE_FOR_AFTER_INVASION_AREAS = 1800						-- min score for army fronts that are created on recently invaded regions
NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 28									-- AI will consider one extra invasion per number of provinces stated here (num orders = total coast / this)
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_DURATION = 270									-- after successful invasion, AI will prio the enemy area for this number of days
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_MULT = 2.0										-- fronts that belongs to recent invasions gets more prio
NDefines.NAI.MIN_NUM_CONQUERED_PROVINCES_TO_DEPRIO_NAVAL_INVADED_FRONTS = 30		-- if you conquer this amount of provinces after a naval invasion, it will lose its prio status and will act as a regular front
NDefines.NAI.MAX_INVASION_SIZE = 24	

-------------------------
-- convoy escorts
-------------------------

-- NDefines.NAI.REGION_THREAT_PER_SUNK_CONVOY = 25					-- Threat value per convoy sunk in a region. Decays over time.
-- NDefines.NAI.REGION_THREAT_LEVEL_TO_AVOID_REGION = 25 * 10		-- How much threat must be generated in region ( by REGION_THREAT_PER_SUNK_CONVOY ) so the AI will decide to mark the region as avoid
NDefines.NAI.REGION_THREAT_LEVEL_TO_BLOCK_REGION = 25 * 200		-- How much threat must be generated in region ( by REGION_THREAT_PER_SUNK_CONVOY ) so the AI will decide to mark the region as avoid
NDefines.NAI.REGION_CONVOY_DANGER_DAILY_DECAY = 2				-- When convoys are sunk it generates threat in the region which the AI uses to prio nalval missions

-- NDefines.NAI.CONVOY_ESCORT_SCORE_FROM_CONVOYS = 15 -- score for each convoy you have in area
NDefines.NAI.CONVOY_ESCORT_MUL_FROM_NO_CONVOYS = 0 -- score multiplier when no convoys are around

-- NDefines.NAI.NAVAL_MISSION_AGGRESSIVE_ESCORT_DIVISOR = 1 --2 -- Divides escort score when not defending
-- NDefines.NAI.NAVAL_MISSION_ESCORT_NEAR_OWNED = 0 --300 -- Extra escort mission score near owned provinces
-- NDefines.NAI.NAVAL_MISSION_ESCORT_NEAR_CONTROLLED = 0 --250 -- Extra escort mission score near controlled provinces

NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN = 0.40 --0.20 -- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys).
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX = 0.6 --0.70 -- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys).
-- NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN_CONVOY_THREAT = 100 -- AI will increase screen assignment for escort missions as threate increases
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX_CONVOY_THREAT = 500 -- 1500 -- AI will increase screen assignment for escort missions as threate increases

-------------------------
-- convoy raiding
-------------------------

-- NDefines.NAI.CONVOY_RAID_MIN_ENEMY_THREAT = 0.05
-- NDefines.NAI.NAVAL_MAX_CONVOY_TO_INTEL_FOR_CONVOY_RAIDS = 200            -- number of convoys in region will be clamped to this max, anything more will be ignored while assigning raids
-- NDefines.NAI.EXTRA_DECYPTION_FOR_CONVOY_RAIDING = 1.0                    -- extra decryption for convoy raiding
-- NDefines.NAI.DECRYPTION_FOR_MAX_INTEL_FOR_CONVOY_RAIDING = 3.0           -- maximum decryption advantage for convoy raiding, higher decyption against enemy encryption will make ai focus more on the regions that has convoys
-- NDefines.NAI.NAVAL_CONVOY_COUNT_INTEL_DROPOFF_DUE_TO_LOW_DECYPTION = 200 -- in decyrption at lowest ai will fail to notice this many convoys
NDefines.NAI.CONVOY_RAID_SCORE_FROM_CONVOY_INTELLIGENCE = 5  --2.5			 -- each convoy intelligenge will incease raid score by this	

--------------------------------------------------------------------------------------------------------------
-- AIR AI
--------------------------------------------------------------------------------------------------------------

-- NDefines.NAI.PRODUCTION_CARRIER_PLANE_BUFFER_RATIO = 0.75 --1.5				-- in additiona to total deck size of carriers, we want at list this ratio to buffer it
-- -- NDefines.NAI.PRODUCTION_CARRIER_PLANE_PRODUCTION_BOOST_TO_BUFFER = 4.0  -- production of carrier planes will go up by this ratio if we lack buffers
NDefines.NAI.MAX_FUEL_CONSUMPTION_RATIO_FOR_AIR_TRAINING = 50

-- NDefines.NAI.DAYS_BETWEEN_AIR_PRIORITIES_UPDATE = 1                              -- [4]    -- Amount of days between air ai updates priorities for air wings ( from 1 to N )
-- NDefines.NAI.AIR_SCORE_DISTANCE_IMPACT = 0.3					-- Effect of distance applied to the score calculations

-------------------------
-- Land combat
-------------------------

-- NDefines.NAI.LAND_COMBAT_AIR_SUPERIORITY_IMPORTANCE = 0.40		-- Strategic importance of air superiority ( amount of enemy planes in area )
-- NDefines.NAI.LAND_COMBAT_OUR_ARMIES_AIR_IMPORTANCE = 20			-- Strategic importance of our armies
NDefines.NAI.LAND_COMBAT_OUR_COMBATS_AIR_IMPORTANCE = 1000		-- Strategic importance of our armies in the combats
-- NDefines.NAI.LAND_COMBAT_FRIEND_ARMIES_AIR_IMPORTANCE = 10		-- Strategic importance of friendly armies
-- NDefines.NAI.LAND_COMBAT_FRIEND_COMBATS_AIR_IMPORTANCE = 8		-- Strategic importance of friendly armies in the combat
-- NDefines.NAI.LAND_COMBAT_ENEMY_ARMIES_AIR_IMPORTANCE = 12		-- Strategic importance of our armies
-- NDefines.NAI.LAND_COMBAT_ENEMY_LAND_FORTS_AIR_IMPORTANCE = 5	-- Strategic importance of enemy land forts in the region
-- NDefines.NAI.LAND_COMBAT_ENEMY_COASTAL_FORTS_AIR_IMPORTANCE = 3	-- Strategic importance of enemy coastal fronts in the region
-- NDefines.NAI.LAND_COMBAT_IMPORTANCE_SCALE = 5.0					-- Lend combat total importance scale (every land combat score get's multiplied by it)

-------------------------
-- Defense
-------------------------

NDefines.NAI.LAND_DEFENSE_FIGHERS_PER_PLANE = 3				-- Original = 2.2   Amount of air superiority planes requested per enemy plane
NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_BOMBERS = 10		-- Original = 1 Amount of air interceptor planes requested per enemy bomber
-- NDefines.NAI.LAND_DEFENSE_INTERSEPTORS_PER_PLANE = 0.1				-- Amount of air interceptor planes requested per enemy plane (non bomber)

-- NDefines.NAI.LAND_DEFENSE_AIR_SUPERIORITY_IMPORTANCE = 1.0		-- Strategic importance of air superiority ( amount of enemy planes in area )
NDefines.NAI.LAND_DEFENSE_CIVIL_FACTORY_IMPORTANCE = 800 -- 50			-- Strategic importance of civil factories
NDefines.NAI.LAND_DEFENSE_MILITARY_FACTORY_IMPORTANCE = 880 -- 70		-- Strategic importance of military factories
NDefines.NAI.LAND_DEFENSE_NAVAL_FACTORY_IMPORTANCE = 420 -- 30			-- Strategic importance of naval factories
NDefines.NAI.LAND_DEFENSE_SUPPLY_HUB_IMPORTANCE = 4             -- Strategic importance of supply hubs
-- NDefines.NAI.LAND_DEFENSE_AA_IMPORTANCE_FACTOR = 1.0			-- Factor of AA influence on strategic importance ( 0.0 - 1.0 )
-- NDefines.NAI.LAND_DEFENSE_INFRA_IMPORTANCE_FACTOR = 0.5			-- Factor of infrastructure influence on strategic importance ( 0.0 - 1.0 )
-- NDefines.NAI.LAND_DEFENSE_IMPORTANCE_SCALE = 3.0				-- Lend defence total importance scale (every land defence score get's multiplied by it)

-------------------------
-- Str bombing
-------------------------

NDefines.NAI.STR_BOMB_PLANES_PER_CIV_FACTORY = 200				-- Amount of planes requested per enemy civ factory
NDefines.NAI.STR_BOMB_PLANES_PER_MIL_FACTORY = 205				-- Amount of planes requested per enemy military factory
NDefines.NAI.STR_BOMB_PLANES_PER_NAV_FACTORY = 105				-- Amount of planes requested per enemy naval factory
NDefines.NAI.STR_BOMB_PLANES_PER_SUPPLY_HUB = 30                 -- Amount of planes requested per enemy supply node
NDefines.NAI.STR_BOMB_MIN_EXCORT_PLANES = 200					-- Min amount of planes requested to excort operations
	
-------------------------
-- Naval air
-------------------------

-- NDefines.NAI.NAVAL_FIGHTERS_PER_PLANE = 1.0						-- Amounts of air superiority planes requested per enemy plane
-- NDefines.NAI.NAVAL_STRIKE_PLANES_PER_ARMY = 0					-- Amount of planes requested per enemy army
NDefines.NAI.NAVAL_STRIKE_PLANES_PER_SHIP = 40					-- Amount of bombers requested per enemy ship
-- NDefines.NAI.PORT_STRIKE_PLANES_PER_SHIP = 10					-- Amount of bombers request per enemy ship in the port
-- NDefines.NAI.NAVAL_MIN_EXCORT_PLANES = 100 --0						-- Min amount of planes requested to excort operations

-- NDefines.NAI.NAVAL_AIR_SUPERIORITY_IMPORTANCE = 0.10			-- Strategic importance of air superiority ( amount of enemy planes in area )
NDefines.NAI.NAVAL_SHIP_AIR_IMPORTANCE = 10000 --2.0					-- Naval ship air importance
-- NDefines.NAI.NAVAL_SHIP_IN_PORT_AIR_IMPORTANCE = 6.0			-- Naval ship in the port air importance
-- NDefines.NAI.NAVAL_COMBAT_AIR_IMPORTANCE = 8.0					-- Naval combat air importance
-- NDefines.NAI.NAVAL_TRANSFER_AIR_IMPORTANCE = 0.0				-- Naval transfer air importance
-- NDefines.NAI.NAVAL_COMBAT_TRANSFER_AIR_IMPORTANCE = 50.0		-- Naval combat involving enemy land units
NDefines.NAI.NAVAL_IMPORTANCE_SCALE = 2 --0.65						-- Naval total importance scale (every naval score get's multiplied by it)
-- NDefines.NAI.NAVAL_COMBAT_OUR_NAVY_MULT_ON_IMPORTANCE = 0.35	-- Naval region importance are scaled by our ships as well
-- NDefines.NAI.NAVAL_COMBAT_ALLY_NAVY_MULT_ON_IMPORTANCE = 0.15	-- Naval region importance are scaled by our ships as well
-- NDefines.NAI.NAVAL_COMBAT_MIN_OUR_NAVY_MULT_ON_IMPORTANCE = 0.5 -- Min scale factor for naval region importance from our ships
-- NDefines.NAI.NAVAL_COMBAT_MAX_OUR_NAVY_MULT_ON_IMPORTANCE = 1.0 -- Max scale factor for naval region importance from our ships

NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_PATROLLING = 20 --10.0		-- Amount of naval patrol planes per ship on a patrol mission
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_RAIDING = 40 --10.0		-- Amount of naval patrol planes per ship on a convoy raid mission
NDefines.NAI.NAVAL_PATROL_PLANES_PER_SHIP_ESCORTING = 20 --10.0		-- Amount of naval patrol planes per ship on a convoy escort mission

-- NDefines.NAI.ENEMY_PASSING_THROUGH_PLANES_PER_BOMBER_NAVAL_REGION = 0.15		-- Amount of planes we assign to intercept enemies en-route to a location over a sea region
-- NDefines.NAI.ENEMY_PASSING_THROUGH_PLANES_PER_FIGHTER_NAVAL_REGION = 0.15		-- Amount of planes we assign to intercept enemies en-route to a location over a sea region
-- NDefines.NAI.ENEMY_PASSING_THROUGH_PLANES_PER_SUPPORT_NAVAL_REGION = 0.15		-- Amount of planes we assign to intercept enemies en-route to a location over a sea region
-- NDefines.NAI.NAVAL_DEFENSE_INTERCEPTION_IMPORTANCE_FACTOR = 30	-- Factor on added planes passing through region to strategic importance

--------------------------------------------------------------------------------------------------------------
-- AMRS MARKET AI
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.EQUIPMENT_MARKET_MAX_CIVS_FOR_PURCHASES_RATIO = 0.2            -- Ratio of available civilian factories to max use for equipment purchases (0.2 = 20 %, so 50 available civs would mean max ca 10 civs to spend on purchases at any one time). Gets modified by equipment_market_spend_factories AI strategy.
NDefines.NAI.EQUIPMENT_MARKET_NR_DELIVERIES_SOFT_MAX = 7                   -- AI tries to adjust assigned factories and amount of equipment to keep nr deliveries at max this
	
--------------------------------------------------------------------------------------------------------------
-- LEND LEASE AI
--------------------------------------------------------------------------------------------------------------


NDefines.NProduction.EQUIPMENT_LEND_LEASE_WEIGHT_FACTOR     = 0.0025
NDefines.NProduction.LEND_LEASE_DELIVERY_TOTAL_DAYS = 15

NDefines.NAI.DIPLOMACY_LEND_LEASE_MONTHS_TO_CANCEL = 16
NDefines.NAI.MINIMUM_EQUIPMENT_TO_ASK_LEND_LEASE = 1500
NDefines.NAI.MINIMUM_CONVOY_TO_ASK_LEND_LEASE = 200


NDefines.NAI.DIPLOMACY_ACCEPT_ATTACHE_OPINION_TRASHHOLD = 0


----------- LEND LEASE


NDefines.NAI.LENDLEASE_FRACTION_OF_PRODUCTION = 0.5									-- Base fraction AI would send as lendlease
NDefines.NAI.LENDLEASE_FRACTION_OF_STOCKPILE = 0.75									-- Base fraction AI would send as lendlease

NDefines.NAI.MINIMUM_FUEL_DAYS_TO_ASK_LEND_LEASE = 60								-- AI will accept to lend lease fuel only if the player have less fuel than this number multiply by his max daily consumption.
NDefines.NAI.MINIMUM_FUEL_DAYS_TO_ACCEPT_LEND_LEASE = 60					 		-- AI will accept to lend lease fuel only if they have more fuel than this number multiply by their max daily consumption. Note that for a GiE asking to its host, we divide this number by 2.

--------------------------------------------------------------------------------------------------------------
-- INTELLIGENCE AGENCY AI
--------------------------------------------------------------------------------------------------------------

-- Used by AI to pace the upgrades. 
-- Formula : if( AGENCY_AI_BASE_NUM_FACTORIES <= num_civ_factories - num_upgrades * AGENCY_AI_PER_UPGRADE_FACTORIES )

NDefines.NOperatives.AGENCY_AI_BASE_NUM_FACTORIES = 10.0 --25.0
NDefines.NOperatives.AGENCY_AI_PER_UPGRADE_FACTORIES = 2.0 --6.0

--------------------------------------------------------------------------------------------------------------
-- BATTLEPLANNER AI (KILL ME)
--------------------------------------------------------------------------------------------------------------

--NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_MAX_FORT = 5							-- If execution mode is set to careful, units will not attack provinces with fort levels greater than or equal to this

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.75				            -- Minimum org % for a unit to actively attack an enemy unit when executing a plan
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.75 --0.4			        -- Minimum strength for a unit to actively attack an enemy unit when executing a plan

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.65							-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.65	

NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.5		
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.5	

---NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.25			                -- The AI will not consider members of groups which plan is not activated AND evaluates lower than this.

NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.65 --0.80	--0.60		        -- % or more of units in an order to consider ececuting the plan

NDefines.NAI.PLAN_FACTION_NORMAL_TO_EXECUTE = 0.65  --0.50

NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.50  --0.35 		0.65		        -- % or more of units in an order to consider ececuting the plan

NDefines.NAI.PLAN_VALUE_TO_EXECUTE = -0.7      ---0.10 --0.0                                     -- AI will typically avoid carrying out a plan it below this value (0.0 is considered balanced).

NDefines.NAI.PLAN_AVG_PREPARATION_TO_EXECUTE = 0.5				            -- % or more average plan preparation before executing

NDefines.NMilitary.PLAN_SPREAD_ATTACK_WEIGHT = 150.0 -- #MOD 4.0 -- (was 12.0)	-- The higher the value, the less it should crowd provinces with multiple attacks.		#WICHTIG
NDefines.NMilitary.PLAN_MIN_AUTOMATED_EMPTY_POCKET_SIZE = 20   -- (was 2) -- The battle plan system will only automatically attack provinces in pockets that has no resistance and are no bigger than these many provinces
NDefines.NMilitary.FRONTLINE_EXPANSION_FACTOR = 0.3 -- #MOD 0.0 -- was 0.6,				-- When attacking along a frontline, how much should units spread out as they advance. 0.0 means head (more or less) directly to the drawn frontline, with no distractions
NDefines.NMilitary.FRONT_MIN_PATH_TO_REDEPLOY = 3 --#MOD -- was 8,					-- If a units path is at least this long to reach its front location, it will strategically redeploy.

NDefines.NAI.GARRISON_FRACTION = 0.02					-- How large part of a front should always be holding the line rather than advancing at the enemy

NDefines.NMilitary.PLAN_PORVINCE_PORT_BASE_IMPORTANCE = 18.0		-- Added importance for area defense province with a port
NDefines.NMilitary.PLAN_PORVINCE_PORT_LEVEL_FACTOR = 0.5			-- Bonus factor for port level


NDefines.NMilitary.PLAN_PROVINCE_BASE_IMPORTANCE = 2.0
NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_AREA = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_AREA = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_AREA = 20.0
NDefines.NMilitary.PLAN_PROVINCE_LOW_VP_IMPORTANCE_FRONT = 4.0
NDefines.NMilitary.PLAN_PROVINCE_MEDIUM_VP_IMPORTANCE_FRONT = 6.0
NDefines.NMilitary.PLAN_PROVINCE_HIGH_VP_IMPORTANCE_FRONT = 8.0
NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_CONTROLLER_SCORE = 30.0
NDefines.NMilitary.PLAN_MAX_PROGRESS_TO_JOIN = 0.60

-- Addition with 1.3.2
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0	-- Added importance for area defense province with air field
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_POPULATED_FACTOR = 1.5	-- Bonus factor when an airfield has planes on it
NDefines.NMilitary.PLAN_PORVINCE_AIRFIELD_LEVEL_FACTOR = 0.25		-- Bonus factor for airfield level
NDefines.NMilitary.PLAN_PORVINCE_RESISTANCE_BASE_IMPORTANCE = 10.0 -- Used when calculating the calue of defense area provinces for the battle plan system (factored by resistance level)

NDefines.NMilitary.PLAN_PROVINCE_PORT_BASE_IMPORTANCE = 15.0		-- increased from 9.0 ; Added importance for area defense province with a port
NDefines.NMilitary.PLAN_PROVINCE_PORT_LEVEL_FACTOR = 0.5			-- Bonus factor for port level
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_BASE_IMPORTANCE = 3.0	-- Added importance for area defense province with air field
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_POPULATED_FACTOR = 1.5	-- Bonus factor when an airfield has planes on it
NDefines.NMilitary.PLAN_PROVINCE_AIRFIELD_LEVEL_FACTOR = 0.25		-- Bonus factor for airfield level
NDefines.NMilitary.PLAN_PROVINCE_RESISTANCE_BASE_IMPORTANCE = 10.0 -- Used when calculating the calue of defense area provinces for the battle plan system (factored by resistance level)


NDefines.NMilitary.PLAN_AREA_DEFENSE_ENEMY_UNIT_FACTOR = -1.5		-- Factor applied to province score in area defense order per enemy unit in that province
NDefines.NMilitary.PLAN_AREA_DEFENSE_FORT_IMPORTANCE = 0.30			-- Used when calculating the calue of defense area provinces for the battle plan system, works as multipliers on the rest
NDefines.NMilitary.PLAN_AREA_DEFENSE_COASTAL_FORT_IMPORTANCE = 5.0	-- Used when calculating the calue of defense area provinces for the battle plan system
NDefines.NMilitary.PLAN_AREA_DEFENSE_COAST_NO_FORT_IMPORTANCE = 2.0	-- Used when calculating the calue of defense area provinces for the battle plan system

NDefines.NMilitary.PLAN_STICKINESS_FACTOR = 95.0					-- downed from 100; Factor used in unitcontroller when prioritizing units for locations
NDefines.NMilitary.PLAN_STICKINESS_IGNORE_STACK_LIMIT = 1			-- 1 == yes, 0 == no. Alloes player to override prio to stack units where they want to.

NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_LIMIT = 5.0				-- reduced from 25 ; When looking for an attach target, this score limit is required in the battle plan to consider province for attack
NDefines.NMilitary.PLAN_EXECUTE_BALANCED_LIMIT = 0				-- When looking for an attach target, this score limit is required in the battle plan to consider province for attack
NDefines.NMilitary.PLAN_EXECUTE_RUSH = -200						-- When looking for an attach target, this score limit is required in the battle plan to consider province for attack
NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_MAX_FORT = 4				-- reduced from 5 ; If execution mode is set to careful, units will not attack provinces with fort levels greater than or equal to this

NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 1.2
NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 1 		

--------------------------------------------------------------------------------------------------------------
-- EXPERIMENTAL DEFINES
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.REVISITED_PROV_BOOST_FACTOR = 16   --4 --When the AI picks units for a front, it prioritises units already nearby.	

NDefines.NAI.ASSIGN_MOUNTAINEERS_TO_MOUNTAINS = 50.0 ---factor for assigning mountaineer divisions to fronts with mountains (proportional to how much of that terrain type)	

NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_IF_IN_COMBAT_FACTOR = 0.02 ---Factor for reassigning to another front if in combat. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to.
NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_FACTOR = 0.12  --Factor for reassigning to another front. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to.	


NDefines.NAI.LOW_PRIO_TEMPLATE_BONUS_FOR_GARRISONS = 10000	--bonus to make ai more likely to assign low prio units to garrisons	
NDefines.NAI.LOW_PRIO_TEMPLATE_PENALTY_FOR_FRONTS = 5000	--penalty to make ai less likely to assign low prio units to fronts

NDefines.NAI.AI_PREFERRED_TACTIC_WEEKLY_CHANGE_CHANCE = 0.25	--Chance for AI to select a new preferred tactic if they don't have one selected

NDefines.NAI.ARMY_LEADER_ASSIGN_EMPTYNESS_MALUS	= 0.3	---Factor for avoiding assigning leaders that can lead large armies to small armies (a value of 0.2 reduces the score by max 20 %)

NDefines.NAI.ARMY_LEADER_ASSIGN_ARMY_ARMOR_SPEED_FACTOR	= 30.0	---Importance of general's ARMY_ARMOR_SPEED_FACTOR modifier (proportional to armor ratio in the army)	
NDefines.NAI.ARMY_LEADER_ASSIGN_ARMY_ARMOR_ATTACK_FACTOR = 30.0	 ---Importance of general's ARMY_ARMOR_ATTACK_FACTOR modifier (proportional to armor ratio in the army)	
NDefines.NAI.ARMY_LEADER_ASSIGN_BOOST_ARMOR_SKILL = 30.0	---Importance of general's trait where armor skill is boosted, e.g. armor_officer which boosts panzer_leader (proportional to armor ratio in the army)	
NDefines.NAI.ARMY_LEADER_ASSIGN_ARMOR_LEADER_IF_NO_ARMOR = -1.0	   ---Avoid assigning a general with armor skills to an army with no armor (can be negative)

NDefines.NAI.ARMY_LEADER_ASSIGN_AMPHIBIOUS_INVASION	= 10.0	 --If involved in invasion, importance of general's AMPHIBIOUS_INVASION modifier	
NDefines.NAI.ARMY_LEADER_ASSIGN_NAVAL_INVASION_PREPARATION = 10.0	--If involved in invasion, importance of general's NAVAL_INVASION_PREPARATION modifier

NDefines.NMilitary.PLAN_BLITZ_OPTIMISM = 0.5  --Additional combat balance value in favor of blitzing side when considering targets (not a combat bonus, just offsets planning)
NDefines.NMilitary.MIN_BALANCE_SCORE_TO_PROCEED_ATTACK = 0.15	---A combat balance score of less than this will prevent auto attacking
NDefines.NAI.PLAN_VALUE_BONUS_FOR_MOVING_UNITS = 0.55	---AI plans gets a bonus when units are not moving and ready to fight

NDefines.NCountry.ARMY_IMPORTANCE_FACTOR = 10.0
NDefines.NCountry.TERRAIN_IMPORTANCE_FACTOR = 5.0
NDefines.NCountry.VICTORY_POINTS_IMPORTANCE_FACTOR = 5.0
NDefines.NCountry.BUILDING_IMPORTANCE_FACTOR = 1.0
NDefines.NCountry.RESOURCE_IMPORTANCE_FACTOR = 5.0

NDefines.NAI.PLAN_FRONT_SECTION_MAX_LENGTH = 10	--When a front is longer than this it will be split in two sections for the AI	
NDefines.NAI.PLAN_FRONT_SECTION_MIN_LENGTH = 5	--When two front sections together are this short they will be merged for the AI
NDefines.NAI.PLAN_FRONTUNIT_DISTANCE_FACTOR	= 7.0  --Factor for candidate units distance to front positions.

NDefines.NAI.FALLBACK_LOSING_FACTOR = 1.5  -- The lower this number  the longer the AI will hold the line before sending them to the fallback line
NDefines.NAI.PLAN_MIN_SIZE_FOR_FALLBACK = 30	-- A country with less provinces than this will not draw fallback plans  but rather station their troops along the front

--------------------------------------------------------------------------------------------------------------
-- SHEEP MOD DEFINES 
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.RAILWAY_GUN_PRODUCTION_BASE_DIVISIONS_RATIO_PERCENT = 5
NDefines.NAI.RAILWAY_GUN_PRODUCTION_MIN_DIVISONS = 100
NDefines.NAI.RAILWAY_GUN_PRODUCTION_MIN_FACTORIES = 50


NDefines.NSupply.AI_FRONT_DIVISIONS_PER_SUPPLY_POINT = 0.85
NDefines.NAITheatre.AI_THEATRE_SUPPLY_CRISIS_LIMIT = 0.25


NDefines.NAI.FRONT_EVAL_UNIT_AIR_SUP_IMPACT = 2.0

NDefines.NAI.LAND_COMBAT_FIGHTERS_PER_PLANE = 3
NDefines.NAI.LAND_COMBAT_CAS_PER_COMBAT = 120
NDefines.NAI.LAND_COMBAT_CAS_PER_ENEMY_ARMY = 60
NDefines.NAI.LAND_COMBAT_ANTI_LOGISTICS_PER_ENEMY_ARMY = 0.10

--------------------------------------------------------------------------------------------------------------
-- EAW MOD DEFINES 
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.PLAN_ACTIVATION_SUPERIORITY_AGGRO = 1.6 --default 1.0		-- How aggressive a country is in activating a plan based on how superiour their force is.


NDefines.NAI.RESEARCH_LAND_DOCTRINE_NEED_GAIN_FACTOR = 0.12 -- Multiplies value based on relative military industry size / country size.
NDefines.NAI.DYNAMIC_STRATEGIES_THREAT_FACTOR = 6.0
NDefines.NAI.BASE_DISTANCE_TO_CARE = 400.0

NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = -0.35			--0.1 --default 0.2				-- The AI will not consider members of groups which plan is not activated AND evaluates lower than this.
NDefines.NAI.MAX_DIST_PORT_RUSH = 40.0	--default 20.0			-- If a unit is in enemy territory with no supply it will consider nearby ports within this distance.
NDefines.NAI.FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.3
NDefines.NAI.HEAVILY_FORTIFIED_RATIO_TO_CONSIDER_A_FRONT_FORTIFIED = 0.3

--------------------------------------------------------------------------------------------------------------
-- WA MOD DEFINES 
--------------------------------------------------------------------------------------------------------------

NDefines.NAir.AI_ALLOWED_PLANES_KEPT_IN_RESERVE = 0.0								--AI allowed planes is reduced by this percentage. Overflow will be distributed to the next valid order. Worst case, this will result in this % of planes no being assigned any order.

