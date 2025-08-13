scoreboard players set .lore_length const 0
execute store result score .lore_length const run data get storage minecraft:reforge temp.display.lore.base
execute store result storage minecraft:reforge temp.display.lore.index int 1 run scoreboard players set .lore_index const 0
execute if score .lore_length const matches 1.. run function reforge:forging/display/item/lore/loop with storage minecraft:reforge temp.display.lore