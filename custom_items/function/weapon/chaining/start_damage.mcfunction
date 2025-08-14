scoreboard players set .chain_amount const 0
execute as @e[type=!#entity_hit_matching:non_mob,tag=forgecraft_chain_target] run function custom_items:health/damage/apply_near_player with storage minecraft:damage temp
tag @e[type=!#entity_hit_matching:non_mob,tag=forgecraft_chain_target] remove forgecraft_chain_target