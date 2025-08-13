# > Goal of this function: In each loop, get the letter from the index (Item id)
#   and store it to the list of storage, item_name
$data modify storage minecraft:string temp.char set string storage minecraft:reforge temp.attribute.target_attribute $(index) $(index_offset)
execute store result storage minecraft:string temp.list_index int 1 run scoreboard players add .list_index const 1
execute store result storage minecraft:string temp.index int 1 run scoreboard players add .string_index const 1
execute store result storage minecraft:string temp.index_offset int 1 run scoreboard players add .string_index_offset const 1
execute if data storage minecraft:string temp{char:":"} run return run function reforge:forging/string_data/attribute/pre_id/store
execute if score .string_length const > .string_index const run function reforge:forging/string_data/attribute/pre_id/get_loop with storage minecraft:string temp