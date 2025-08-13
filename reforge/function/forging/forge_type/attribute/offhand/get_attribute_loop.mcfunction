$data modify storage minecraft:attribute list.$(index) set from entity @s Item.components.minecraft:attribute_modifiers[$(index)]
scoreboard players add .attribute_index const 1
execute store result storage minecraft:attribute store.index int 1 run scoreboard players get .attribute_index const
execute as @s if score .attribute_index const < .attribute_length const run function reforge:forging/forge_type/attribute/offhand/get_attribute_loop with storage minecraft:attribute store