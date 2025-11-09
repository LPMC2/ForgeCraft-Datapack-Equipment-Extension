$execute unless data entity @s Item.components.minecraft:attribute_modifiers[{id:"$(id)"}] run return fail
#execute unless data entity @s Item.components.minecraft:custom_data{typeid:1} unless data entity @s Item.components.minecraft:custom_data{typeid:7} unless data entity @s Item.components.minecraft:custom_data{typeid:2} run return fail
$data modify entity @s Item.components.minecraft:attribute_modifiers[{id:"$(id)"}].display set value {type:"override",value:"DEFAULT ATTRIBUTE"}
$execute unless data entity @s Item.components.minecraft:attribute_modifiers[{id:"$(id)"}].display run return fail
$execute if data entity @s Item.components.minecraft:attribute_modifiers[{id:"$(id)"}].display run data remove entity @s Item.components.minecraft:attribute_modifiers[{id:"$(id)"}].display
data remove storage minecraft:reforge temp.attribute.name
$data modify storage minecraft:reforge temp.attribute.name set from entity @s Item.components.minecraft:attribute_modifiers[{id:"$(id)"}].type
$data modify storage minecraft:reforge temp.attribute.operation set from entity @s Item.components.minecraft:attribute_modifiers[{id:"$(id)"}].operation
data remove storage minecraft:attribute new.display_value
scoreboard players set .item_type_id const 0
scoreboard players set .display_value const 0
scoreboard players set .base_value const 0
scoreboard players set .cal_value const 0
scoreboard players set .10000 const 10000
execute store result score .item_type_id const run data get entity @s Item.components.minecraft:custom_data.typeid
$execute store result score .display_value const run data get entity @s Item.components.minecraft:attribute_modifiers[{id:"$(id)"}].amount 10000
execute if data storage minecraft:reforge temp.attribute{name:"minecraft:attack_damage",operation:"add_value"} run function reforge:forging/display/attribute/attack_damage/calculate with storage minecraft:attribute new
execute if data storage minecraft:reforge temp.attribute{name:"minecraft:attack_speed",operation:"add_multiplied_total"} run function reforge:forging/display/attribute/attack_speed/calculate with storage minecraft:attribute new