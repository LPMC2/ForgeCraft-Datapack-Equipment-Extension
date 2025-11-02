scoreboard players set .target_id const -1
scoreboard players operation .target_id const = @s id
data modify entity @s[type=!player] NoAI set value 0
execute as @e[type=block_display,tag=midas_converted_entity] if score @s id = .target_id const run kill @s
execute as @e[type=marker,tag=midas_converted_entity] if score @s id = .target_id const run kill @s
scoreboard players reset @s midas_converted
tag @s remove forgecraft_midas_converted