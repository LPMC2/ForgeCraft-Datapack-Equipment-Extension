execute store result storage minecraft:attribute new.loop.uuid int 1 run random value -999999999..999999999
function reforge:forging/attribute/reassign/set with storage minecraft:attribute new.loop
execute store result storage minecraft:attribute new.loop.index int 1 run scoreboard players add .attribute_index const 1
execute if score .attribute_index const < .attribute_length const run function reforge:forging/attribute/reassign/loop with storage minecraft:attribute new.loop