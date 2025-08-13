execute unless entity @e[type=#entity_hit_matching:targets_including_player,distance=..50] run return fail
# Setup
scoreboard players set .damage const 0
scoreboard players set .crit_damage const 0
scoreboard players set .istipped const 0
scoreboard players set .isspectral const 0
tag @s add arrow_owner
# Init
execute unless score @s bullet_count matches 1.. run data modify entity @s NoAI set value 1
execute unless score @s bullet_count matches 1.. run data modify entity @s Invulnerable set value 1
execute unless score @s bullet_count matches 1.. run scoreboard players set @s bullet_count 180
execute at @s if score @s bullet_count matches 1.. run tp @s ~ ~ ~ facing entity @n[tag=!superior_guardian,type=#entity_hit_matching:targets_including_player,type=!#minecraft:aquatic,type=!drowned]
execute store result score .damage const run attribute @s minecraft:attack_damage get
# Fire
execute store result storage minecraft:arrow store.damage int 1 run scoreboard players get .damage const
execute as @s at @s if score @s bullet_count matches ..100 run function custom_items:arrow/guardian/start_raycast
execute as @s at @s unless score @s bullet_count matches ..100 run particle dolphin ^ ^1.3 ^1 0.1 0.1 0.1 10 10 normal
execute as @s at @s unless score @s bullet_count matches ..100 run playsound minecraft:entity.guardian.attack master @a ~ ~ ~ 0.75 0.5 0
execute as @s at @s if score @s bullet_count matches ..100 run playsound minecraft:entity.guardian.attack master @a ~ ~ ~ 1 1.2 0
execute as @s at @s run particle minecraft:bubble ^ ^1.3 ^1 0.3 0.3 0.3 0 10 normal
# Ammo Use
scoreboard players remove @s bullet_count 1
execute if score @s bullet_count matches 1.. run scoreboard players set @s ability_action_cd1 1
execute unless score @s bullet_count matches 1.. run data modify entity @s NoAI set value 0
execute unless score @s bullet_count matches 1.. run data modify entity @s Invulnerable set value 0
execute unless score @s bullet_count matches 1.. run scoreboard players set @s ability_action_cd1 200
tag @s remove arrow_owner