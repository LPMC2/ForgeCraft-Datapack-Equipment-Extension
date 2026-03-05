execute store result storage minecraft:attribute new.loop.index int 1 run scoreboard players set .attribute_index const 0
execute store result score .attribute_length const run data get entity @s item.components.minecraft:attribute_modifiers
execute if score .attribute_length const matches 1.. run function reforge:forging/attribute/reassign/loop with storage minecraft:attribute new.loop