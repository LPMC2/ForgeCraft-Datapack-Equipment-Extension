execute store result storage minecraft:damage temp.damage double 1 run attribute @s minecraft:attack_damage get 0.4
execute at @s run particle minecraft:sweep_attack ~ ~1 ~ 0.75 0 0.75 1 8
execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.5 0
execute at @s as @e[type=#entity_hit_matching:targets,distance=..2.25] run function custom_items:health/damage/apply_near_player with storage minecraft:damage temp