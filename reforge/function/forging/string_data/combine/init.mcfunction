scoreboard players set .string_combined_index const 0
execute store result score .string_length const run data get storage minecraft:string storage.item_name
execute store result storage minecraft:string temp.next_index int 1 run scoreboard players set .string_next_index const 2
data remove storage minecraft:string storage.combined_name
data modify storage minecraft:string storage.combined_name set from storage minecraft:string storage.item_name[0].text
data modify storage minecraft:string temp.current_text set from storage minecraft:string storage.item_name[0].text
data modify storage minecraft:string temp.next_text set from storage minecraft:string storage.item_name[1].text
execute store result storage minecraft:string temp.next_index int 1 run scoreboard players get .string_next_index const
function reforge:forging/string_data/combine/loop with storage minecraft:string temp