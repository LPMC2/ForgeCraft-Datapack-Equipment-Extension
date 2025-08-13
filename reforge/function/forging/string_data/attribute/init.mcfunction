data remove storage minecraft:reforge temp.attribute
data modify storage minecraft:reforge temp.attribute.data append value {"bold":false,"color":"white","italic":false,"text":"\nWhen equipped:\n"}
scoreboard players set .attribute_length const 0
execute store result score .attribute_length const run data get entity @s Item.components.minecraft:attribute_modifiers
execute store result storage minecraft:reforge temp.attribute.index int 1 run scoreboard players set .attribute_index const 0
execute as @s run function reforge:forging/string_data/attribute/loop with storage minecraft:reforge temp.attribute