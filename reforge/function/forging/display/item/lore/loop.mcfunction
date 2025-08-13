execute store result storage minecraft:reforge temp.display.lore.index int 1 run scoreboard players add .lore_index const 1
execute if score .lore_index const > .lore_length const run return fail
$data modify entity @s Item.components.minecraft:lore append from storage minecraft:reforge temp.display.lore.base[$(index)]
function reforge:forging/display/item/lore/loop with storage minecraft:reforge temp.display.lore