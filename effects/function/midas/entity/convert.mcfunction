execute if entity @s[type=#entity_hit_matching:non_mob] run return fail
execute if entity @s[type=!player] run data modify entity @s NoAI set value 1
execute if entity @s[type=player] run effect give @s minecraft:slowness 5 100 true 
execute if entity @s[type=player] run effect give @s minecraft:weakness 5 100 true
execute if entity @s[type=player] run effect give @s minecraft:blindness 5 0 true
execute unless entity @s[tag=forgecraft_midas_converted] run effect give @s minecraft:resistance 5 3 true
execute if entity @s[tag=forgecraft_midas_converted] run return run scoreboard players remove @s midas_converted 5
tag @s add forgecraft_midas_converted
execute at @s run summon marker ~ ~ ~ {Tags:["entity_init","midas_converted_entity","marker"]}
execute at @s anchored eyes positioned ^-0.5 ^ ^-0.5 run summon block_display ~ ~-0.1 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,-0.125f,0.25f],scale:[0.8f,0.8f,0.8f]},Tags:["entity_init","midas_converted_entity","head"],block_state:{Name:"minecraft:gold_block"}}
execute at @s anchored feet positioned ^-0.5 ^ ^-0.5 run summon block_display ~ ~-0.25 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.35f],scale:[1f,1f,0.55f]},Tags:["entity_init","midas_converted_entity","feet"],block_state:{Name:"minecraft:gold_block"}}
execute at @s rotated as @s positioned ^-0.5 ^ ^-0.5 run summon block_display ~ ~0.6 ~ {teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,0f,0.15f],scale:[1.2f,1f,0.85f]},Tags:["entity_init","midas_converted_entity","body"],block_state:{Name:"minecraft:gold_block"}}
execute rotated as @s as @e[type=block_display,tag=entity_init,tag=!head] run rotate @s ~ 0
execute rotated as @s as @e[type=block_display,tag=entity_init,tag=head] run rotate @s ~ ~
execute store result score @e[type=block_display,tag=entity_init] id run scoreboard players get @s id
execute store result score @e[type=marker,tag=entity_init] id run scoreboard players get @s id
function effects:midas/entity/calculate_body_size
execute as @e[type=block_display,tag=entity_init] run tag @s remove entity_init
execute as @e[type=marker,tag=entity_init] run tag @s remove entity_init