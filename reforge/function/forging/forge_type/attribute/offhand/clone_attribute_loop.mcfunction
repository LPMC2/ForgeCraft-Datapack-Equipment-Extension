execute store result storage minecraft:attribute store.uuid int 1 run random value -999999999..999999999
function reforge:forging/forge_type/attribute/offhand/set_attribute_data with storage minecraft:attribute store
execute as @s run function reforge:forging/forge_type/attribute/offhand/set_attribute with storage minecraft:attribute store
scoreboard players add .clone_attribute_index const 1
execute store result storage minecraft:attribute store.index int 1 run scoreboard players get .clone_attribute_index const
execute as @s if score .clone_attribute_index const < .clone_attribute_length const run function reforge:forging/forge_type/attribute/offhand/clone_attribute_loop with storage minecraft:attribute store