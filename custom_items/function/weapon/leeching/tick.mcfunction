scoreboard players add @s leeching 1

scoreboard players add .leecheffect const 1
execute at @s if score @s leeching matches 200.. run function custom_items:weapon/leeching/reset
execute if score .leecheffect const matches 20.. run execute at @s run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1 0.5 0
execute if score .leecheffect const matches 20.. run execute at @s[tag=leeching,tag=leech_boost] run particle minecraft:heart ~ ~0.65 ~ 0.5 0.5 0.5 0.05 5 normal
execute if score .leecheffect const matches 20.. run execute at @s[tag=leeching,tag=leech_target] run particle minecraft:damage_indicator ~ ~0.65 ~ 0.5 0.5 0.5 0.05 5
execute if score .leecheffect const matches 20.. run scoreboard players set .leecheffect const 0 