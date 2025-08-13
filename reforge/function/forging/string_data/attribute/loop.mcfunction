execute store result storage minecraft:reforge temp.attribute.index int 1 run scoreboard players add .attribute_index const 1
execute if score .attribute_index const > .attribute_length const run return fail
$data modify storage minecraft:reforge temp.attribute.target_attribute set from entity @s Item.components.minecraft:attribute_modifiers[$(index)].type
$data modify storage minecraft:reforge temp.attribute.attribute_operation set from entity @s Item.components.minecraft:attribute_modifiers[$(index)].operation
$execute if data storage minecraft:reforge temp.attribute{attribute_operation:"add_value"} run data modify storage minecraft:reforge temp.attribute.attribute_value set from entity @s Item.components.minecraft:attribute_modifiers[$(index)].amount
$execute if data storage minecraft:reforge temp.attribute{attribute_operation:"add_multiplied_total"} store result storage minecraft:reforge temp.attribute.attribute_value int 1 run data get entity @s Item.components.minecraft:attribute_modifiers[$(index)].amount 100
$execute if data storage minecraft:reforge temp.attribute{attribute_operation:"add_multiplied_base"} store result storage minecraft:reforge temp.attribute.attribute_value int 1 run data get entity @s Item.components.minecraft:attribute_modifiers[$(index)].amount 100
function reforge:forging/string_data/attribute/pre_id/get_init
function reforge:forging/string_data/attribute/get_name
data modify storage minecraft:reforge temp.attribute.attribute_name set from storage minecraft:string storage.combined_name
function reforge:forging/string_data/attribute/store_data with storage minecraft:reforge temp.attribute
execute as @s run function reforge:forging/string_data/attribute/loop with storage minecraft:reforge temp.attribute