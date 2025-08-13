$data modify entity @s Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ Reinforced $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Reinforced: +Double Armor Points, +150% Armor Toughness"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Reinforced: +Double Armor Points, +150% Armor Toughness"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Reinforced $(name)"

#$data modify entity @s Item.components.minecraft:attribute_modifiers append value {type:"armor",amount:2,operation:"add_value",id:"$(uuid1)",slot:"$(slot)"}
# Armor
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:armor",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value 3
$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:armor",operation:"add_value",slot:"$(slot)"}] run execute store result score .attribute_amount const run data get entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:armor",operation:"add_value",slot:"$(slot)"}].amount 100
$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:armor",operation:"add_value",slot:"$(slot)"}] run execute store result storage minecraft:attribute new.attribute_amount double 0.01 run scoreboard players get .attribute_amount const
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

#$data modify entity @s Item.components.minecraft:attribute_modifiers append value {type:"armor_toughness",amount:1.5,operation:"add_multiplied_total",id:"$(uuid5)",slot:"$(slot)"}
# Armor Toughness
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:armor_toughness",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid5)
data modify storage minecraft:attribute new.attribute_amount set value 1.5
$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:armor_toughness",operation:"add_value",slot:"$(slot)"}] run execute store result score .attribute_amount const run data get entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:armor_toughness",operation:"add_value",slot:"$(slot)"}].amount 150
$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:armor_toughness",operation:"add_value",slot:"$(slot)"}] run execute store result storage minecraft:attribute new.attribute_amount double 0.01 run scoreboard players get .attribute_amount const
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify entity @s Item.components.minecraft:rarity set value "uncommon"
data modify entity @s Item.components.minecraft:custom_model_data set value {strings:["reinforced"]}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:leather run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"reinforced/leather"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:chainmail run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"reinforced/chainmail"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:iron run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"reinforced/iron"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:gold run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"reinforced/gold"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:diamond run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"reinforced/diamond"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:netherite run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"reinforced/netherite"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* minecraft:turtle_helmet run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"reinforced/turtle"}
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
