execute at @s run particle cloud ~ ~1.3 ~ 0.1 0 0.1 0.15 250 normal
playsound minecraft:item.mace.smash_ground_heavy master @a ~ ~ ~ 1 0.5 0
tag @s add projectile_owner
execute store result storage minecraft:damage store.damage int 1 run attribute @s minecraft:attack_damage get 1.5
execute at @s run execute as @e[tag=!superior_guardian,type=#entity_hit_matching:targets_including_player,type=!#minecraft:aquatic,type=!drowned,distance=..6] run function custom_items:health/damage/apply_explosion with storage minecraft:damage store
tag @s remove projectile_owner