$data modify entity @s Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ Heavy $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Heavy: +120% Attack Damage, -50% Attack Speed & Move Speed"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Heavy: +120% Attack Damage, -50% Attack Speed & Move Speed"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Heavy $(name)"

# Attack Damage
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value 5
$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}] run execute store result score .attribute_amount const run data get entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}].amount 120
$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}] run execute store result storage minecraft:attribute new.attribute_amount double 0.01 run scoreboard players get .attribute_amount const
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type
# Attack Speed
#$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"attack_speed",amount:-0.6,operation:"add_multiplied_total",id:"$(uuid5)",slot:"$(slot)"}
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_speed",operation:"add_multiplied_total",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid5)
data modify storage minecraft:attribute new.attribute_amount set value -0.5
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type
# Movement Speed
#$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"movement_speed",amount:-0.6,operation:"add_multiplied_total",id:"$(uuid9)",slot:"$(slot)"}
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:movement_speed",operation:"add_multiplied_total",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid9)
data modify storage minecraft:attribute new.attribute_amount set value -0.5
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type
data modify entity @s Item.components.minecraft:custom_model_data set value {strings:["heavy"]}

data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
