$data modify storage minecraft:attribute new.id set from entity @s Item.components.minecraft:attribute_modifiers[$(index)].id
function reforge:forging/display/attribute/check_valid with storage minecraft:attribute new
execute store result storage minecraft:attribute new.loop.index int 1 run scoreboard players add .attribute_index const 1
execute if score .attribute_index const < .attribute_length const run function reforge:forging/display/attribute/get_loop with storage minecraft:attribute new.loop