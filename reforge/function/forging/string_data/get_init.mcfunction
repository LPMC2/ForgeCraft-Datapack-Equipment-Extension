# > target: Item Display (@s) - id
# > Goal of this function: initialize the loop for each letter in id
scoreboard players set .string_length const 0
scoreboard players set .list_index const 0
execute store result storage minecraft:string storage.list_index int 1 run scoreboard players set .list_index const 0
#execute store result storage minecraft:string storage.index int 1 run scoreboard players set .string_index const 10
#execute store result storage minecraft:string storage.index_offset int 1 run scoreboard players set .string_index_offset const 11
execute store result score .string_length const run data get entity @s item.id
data remove storage minecraft:string storage.item_name
execute as @s run function reforge:forging/string_data/get_loop with storage minecraft:string storage