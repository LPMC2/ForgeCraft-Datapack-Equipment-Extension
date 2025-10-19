execute store result storage minecraft:attribute new.loop.index int 1 run scoreboard players set .attribute_index const 0
execute store result score .attribute_length const run data get entity @s Item.components.minecraft:attribute_modifiers
execute unless score .attribute_length const matches ..0 run function reforge:forging/display/attribute/get_loop with storage minecraft:attribute new.loop