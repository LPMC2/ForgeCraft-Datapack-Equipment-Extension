# Uses data as value: data modify storage minecraft:attribute store.amount set value 1000d
# Scale: 1000 as 100%, 100 as 10%, and 10 as 1%

scoreboard players set .attribute_index const 0
scoreboard players set .attribute_length const 0
data remove storage minecraft:attribute list
execute store result score .attribute_length const run data get entity @s Item.components.minecraft:attribute_modifiers
execute store result storage minecraft:attribute store.index int 1 run scoreboard players get .attribute_index const
execute if score .attribute_length const matches 1.. run execute as @s run function reforge:forging/forge_type/attribute/value/get_attribute_loop with storage minecraft:attribute store
execute if score .attribute_length const matches 1.. as @s run function reforge:forging/forge_type/attribute/value/clone_attribute_init