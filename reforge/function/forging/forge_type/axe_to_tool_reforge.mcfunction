execute if data entity @s Item.components.minecraft:custom_data.upgradeable run return fail
data modify entity @s Item.components.minecraft:custom_data.upgradeable set value 1
$data modify entity @s Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ Toolful $(name)"}
data modify entity @s Item.components.minecraft:custom_data.itemtype set value "Tool"
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Toolful $(name)"
#data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Toolful: Convert item into a tool. This item can be reforged!"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"Tool"}]]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"Tool"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Toolful: Convert item into a Tool."}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
#execute unless data entity @s Item.components.minecraft:custom_data.forge_data run data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge set value []

#$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"attack_damage",amount:-0.5,operation:"add_multiplied_base",id:"$(uuid1)",slot:"$(slot)"}
# Attack Damage
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value -5
$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}] run execute store result score .attribute_amount const run data get entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}].amount -50
$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}] run execute store result storage minecraft:attribute new.attribute_amount double 0.01 run scoreboard players get .attribute_amount const
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

execute as @s unless items entity @s container.0 #minecraft:pickaxes unless items entity @s container.0 #minecraft:axes unless items entity @s container.0 #minecraft:shovels unless items entity @s container.0 #minecraft:hoes run data modify entity @s Item.components.minecraft:tool set value {default_mining_speed:1,damage_per_block:1,rules:[{speed:10,correct_for_drops:true,blocks:"#mineable/pickaxe"},{speed:12.5,correct_for_drops:true,blocks:"#mineable/axe"},{speed:15,correct_for_drops:false,blocks:"#mineable/hoe"},{speed:15,correct_for_drops:false,blocks:"#mineable/shovel"}]}
data modify entity @s Item.components.minecraft:custom_data.axe_tool set value 1
data modify entity @s Item.components.minecraft:custom_data.typeid set value 7
data modify entity @s Item.components.minecraft:custom_data.reforgeid set value 0
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
