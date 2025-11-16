scoreboard players set .ui_length const 0
execute store result storage minecraft:reforge temp.ui.index int 1 run scoreboard players set .ui_index const 1
execute store result score .ui_length const run data get storage minecraft:reforge data.reforge_data
data modify storage minecraft:reforge temp.ui.name set from storage minecraft:reforge data.reforge_data[0].name
data modify storage minecraft:reforge temp.ui.id set from storage minecraft:reforge data.reforge_data[0].id
data modify storage minecraft:reforge temp.ui.info set from storage minecraft:reforge data.reforge_data[0].info
execute if score .ui_length const matches 1.. run function reforge:ui/components/reforge_items/set/loop with storage minecraft:reforge temp.ui