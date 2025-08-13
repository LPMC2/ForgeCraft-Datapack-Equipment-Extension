tag @s remove paused
tag @s add find
scoreboard players set @s angry_at_id 0
execute as @e[type=#entity_hit_matching:targets_including_player] at @s run function mobs:ranger_enderman/find_target_angryat
execute as @n[type=#entity_hit_matching:targets_including_player,tag=target_angryat] at @s run scoreboard players operation @n[type=#entity_hit_matching:targets_including_player,tag=find] angry_at_id = @s id 
tag @s remove find
