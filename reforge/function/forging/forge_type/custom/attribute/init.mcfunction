execute store result storage minecraft:reforge forge.attribute_index int 1 run scoreboard players set .attribute_index const 0
scoreboard players set .attribute_count const 0

$execute store result score .attribute_count const run data get storage minecraft:reforge data.reforge_data[{id:$(forgeid)}].attributes
function reforge:forging/forge_type/custom/attribute/get with storage minecraft:reforge forge

execute if score .attribute_count const matches 1.. run function reforge:forging/forge_type/custom/attribute/loop with storage minecraft:reforge forge