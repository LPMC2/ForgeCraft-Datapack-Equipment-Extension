execute unless items entity @s container.* minecraft:ender_eye run return run playsound minecraft:entity.player.teleport master @s ~ ~ ~ 0.7 0.55 0
scoreboard players set .damage const 0
scoreboard players set .power_damage const 0
scoreboard players set .player_damage const 0
scoreboard players set .crit_damage const 0
scoreboard players set .istipped const 0
scoreboard players set .isspectral const 0
tag @s add arrow_owner
execute store result score .damage const run attribute @s minecraft:attack_damage get 100
function custom_items:arrow/ender/fire_entity
execute at @s run playsound minecraft:entity.ender_eye.launch master @a ~ ~ ~ 1 0.8 0.2
tag @s remove arrow_owner
clear @s minecraft:ender_eye 1
execute store result score @s reforge_ender_eye_count run clear @s minecraft:ender_eye 0