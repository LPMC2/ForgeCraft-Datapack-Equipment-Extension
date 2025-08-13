# > target: Item Display (@s) - id
# > Goal of this function: initialize the loop for each letter in id
scoreboard players set .string_length const 0
scoreboard players set .list_index const 0
execute store result storage minecraft:string temp.list_index int 1 run scoreboard players set .list_index const 0
execute store result storage minecraft:string temp.index int 1 run scoreboard players set .string_index const 0
execute store result storage minecraft:string temp.index_offset int 1 run scoreboard players set .string_index_offset const 1
execute store result score .string_length const run data get entity @s item.id
execute as @s run function reforge:forging/string_data/pre_id/get_loop with storage minecraft:string temp