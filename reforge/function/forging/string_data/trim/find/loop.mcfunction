$execute if data storage minecraft:string storage.item_name[{id:$(index),text:"_"}] run scoreboard players set .string_name_index const $(index)
scoreboard players add .string_name_index const 1
$execute if data storage minecraft:string storage.item_name[{id:$(index),text:"_"}] run function reforge:forging/string_data/alphabet/captialize_init
execute store result storage minecraft:string temp.find.index int 1 run scoreboard players add .underscore_index const 1
execute if score .string_length const >= .underscore_index const run function reforge:forging/string_data/trim/find/loop with storage minecraft:string temp.find