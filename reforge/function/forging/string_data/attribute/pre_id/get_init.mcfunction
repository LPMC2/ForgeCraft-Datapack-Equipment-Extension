# > target: Attribute Name (String)
# > Goal of this function: initialize the loop for each letter in attribute name
scoreboard players set .string_length const 0
scoreboard players set .list_index const 0
execute store result storage minecraft:string temp.list_index int 1 run scoreboard players set .list_index const 0
execute store result storage minecraft:string temp.index int 1 run scoreboard players set .string_index const 0
execute store result storage minecraft:string temp.index_offset int 1 run scoreboard players set .string_index_offset const 1
execute store result score .string_length const run data get storage minecraft:reforge temp.attribute.target_attribute
function reforge:forging/string_data/attribute/pre_id/get_loop with storage minecraft:string temp