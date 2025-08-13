$data modify entity @s Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ Sharp $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Sharp: +50% Attack Damage, +10% Attack Range"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Sharp: +50% Attack Damage, +10% Attack Range"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Sharp $(name)"

#$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"attack_damage",amount:2,operation:"add_value",id:"$(uuid1)",slot:"$(slot)"}
# Attack Damage
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value 2
$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}] run execute store result score .attribute_amount const run data get entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}].amount 50
$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}] run execute store result storage minecraft:attribute new.attribute_amount double 0.01 run scoreboard players get .attribute_amount const
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

# Interaction Range
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:entity_interaction_range",operation:"add_multiplied_base",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid5)
data modify storage minecraft:attribute new.attribute_amount set value 0.1
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type
data modify entity @s Item.components.minecraft:custom_model_data set value {strings:["sharp"]}

data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
