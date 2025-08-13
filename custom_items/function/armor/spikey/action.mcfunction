scoreboard players set .spikeycount const 0
execute if data entity @s equipment.head.components.minecraft:custom_data.spikey run scoreboard players add .spikeycount const 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.spikey run scoreboard players add .spikeycount const 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.spikey run scoreboard players add .spikeycount const 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.spikey run scoreboard players add .spikeycount const 1
execute store result storage minecraft:damage store.damage int 1 run scoreboard players get .spikeycount const
tag @s add spike_owner
execute at @s if score .spikeycount const matches 1.. run execute as @e[type=#entity_hit_matching:targets,distance=..2] unless data entity @s Owner at @s run function custom_items:armor/spikey/takedamage with storage minecraft:damage store
tag @s remove spike_owner