# Custom Mobs
execute as @s[tag=!entityidset] run function entity_hit_matching:assign_id
execute as @s[tag=block_mob] at @s run function mobs:blockmob/tick
execute as @s[tag=ranger_enderman] at @s run function mobs:ranger_enderman/tick
# --------------------- #
execute as @s[tag=!initialized] run function mobs:init
execute as @s[tag=initialized,tag=effects,tag=!absorption_main] at @s run function mobs:health_detection
execute as @s[tag=boss,tag=!boss_init] at @s if entity @a[distance=..100] run function mobs:boss/init
execute as @s[tag=boss,tag=boss_init] run function mobs:boss/update
execute unless score .ismobmodification const matches 1.. run return fail
execute as @s[tag=initialized,tag=effects] at @s run function mobs:effects
execute as @s[tag=initialized,tag=!paused,scores={ability_action_cd1=1..}] at @s run function mobs:ability_1/tick
execute as @s[tag=initialized,tag=!paused,scores={ability_action_cd2=1..}] at @s run function mobs:ability_2/tick
execute as @s[tag=initialized,tag=!paused,scores={ability_action_cd3=1..}] at @s run function mobs:ability_3/tick