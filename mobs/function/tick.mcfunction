# Custom Mobs
execute as @e[tag=block_mob,type=#entity_hit_matching:targets] at @s run function mobs:blockmob/tick
execute as @e[tag=ranger_enderman,type=#entity_hit_matching:targets] at @s run function mobs:ranger_enderman/tick
# --------------------- #
execute as @e[tag=initialized,tag=effects,type=#entity_hit_matching:targets] at @s run function mobs:effects
execute as @e[type=#entity_hit_matching:targets,tag=!initialized] run function mobs:init
execute as @e[tag=initialized,tag=effects,type=#entity_hit_matching:targets,tag=!absorption_main] at @s run function mobs:health_detection
execute as @e[tag=boss,tag=!boss_init] at @s if entity @a[distance=..100] run function mobs:boss/init
execute as @e[tag=boss,tag=boss_init] run function mobs:boss/update
execute as @e[tag=initialized,tag=!paused,scores={ability_action_cd1=1..}] at @s run function mobs:ability_1/tick
execute as @e[tag=initialized,type=#entity_hit_matching:targets,tag=!paused,scores={ability_action_cd2=1..}] at @s run function mobs:ability_2/tick
execute as @e[tag=initialized,type=#entity_hit_matching:targets,tag=!paused,scores={ability_action_cd3=1..}] at @s run function mobs:ability_3/tick