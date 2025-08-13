scoreboard players set .new_value const 0
scoreboard players set .attribute_original_value const 0
scoreboard players set .attribute_new_value const 0
$execute store result score .attribute_original_value const run data get entity @s Item.components.minecraft:attribute_modifiers[$(attribute)].amount 1000
execute store result score .attribute_new_value const run data get storage minecraft:attribute new.attribute_amount 1000
scoreboard players operation .new_value const += .attribute_original_value const
scoreboard players operation .new_value const += .attribute_new_value const
execute store result storage minecraft:attribute new.amount double 0.001 run scoreboard players get .new_value const
execute as @s run function reforge:forging/forge_type/attribute/operation/type/apply with storage minecraft:attribute new