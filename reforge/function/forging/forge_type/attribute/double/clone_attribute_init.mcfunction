scoreboard players set .clone_attribute_index const 0
scoreboard players set .clone_attribute_length const 0
execute store result score .clone_attribute_length const run data get storage minecraft:attribute list
execute store result storage minecraft:attribute store.index int 1 run scoreboard players get .clone_attribute_index const
execute as @s run function reforge:forging/forge_type/attribute/double/clone_attribute_loop with storage minecraft:attribute store