execute if score @s id = @n[type=!#entity_hit_matching:non_mob] id run return fail
scoreboard players set .target_id const -1
scoreboard players operation .target_id const = @s id
execute as @e[type=block_display,tag=midas_converted_entity] if score @s id = .target_id const run kill @s
execute if block ~ ~ ~ #minecraft:replaceable run setblock ~ ~ ~ minecraft:gold_block
execute if block ~ ~1 ~ #minecraft:replaceable run setblock ~ ~1 ~ minecraft:gold_block
kill @s