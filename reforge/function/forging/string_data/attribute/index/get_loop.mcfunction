# > Goal of this function: In each loop, get the letter from the index (Item id)
#   and store it to the list of storage, item_name
$data modify storage minecraft:string storage.item_name append value {"id":$(list_index)}
$data modify storage minecraft:string storage.item_name[$(list_index)].text set string storage minecraft:reforge temp.attribute.target_attribute $(index) $(index_offset)
execute store result storage minecraft:string storage.list_index int 1 run scoreboard players add .list_index const 1
execute store result storage minecraft:string storage.index int 1 run scoreboard players add .string_index const 1
execute store result storage minecraft:string storage.index_offset int 1 run scoreboard players add .string_index_offset const 1
execute if score .string_length const > .string_index const run function reforge:forging/string_data/attribute/index/get_loop with storage minecraft:string storage