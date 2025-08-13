$data modify entity @s Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ Tanky $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Tanky: +5 Armor, +10 Armor Toughness, -20% Move Speed & Jump Height"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Tanky: +5 Armor, +10 Armor Toughness, -20% Move Speed & Jump Height"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Tanky $(name)"

#$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"armor",amount:5,operation:"add_value",id:"$(uuid1)",slot:"$(slot)"}
# Armor
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:armor",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value 5
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

#$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"armor_toughness",amount:10,operation:"add_value",id:"$(uuid5)",slot:"$(slot)"}
# Armor Toughness
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:armor_toughness",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid5)
data modify storage minecraft:attribute new.attribute_amount set value 10
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

# Move Speed
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:movement_speed",operation:"add_multiplied_base",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid9)
data modify storage minecraft:attribute new.attribute_amount set value -0.20
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

# Jump Strength
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:jump_strength",operation:"add_multiplied_base",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid10)
data modify storage minecraft:attribute new.attribute_amount set value -0.25
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

# Jump Strength
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:step_height",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid11)
data modify storage minecraft:attribute new.attribute_amount set value 0.2
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"step_height",amount:0.4,operation:"add_value",id:"$(uuid11)",slot:"$(slot)"}
data modify entity @s Item.components.minecraft:rarity set value "uncommon"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify entity @s Item.components.minecraft:custom_model_data set value {strings:["tanky"]}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:leather run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"tanky/leather"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:chainmail run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"tanky/chainmail"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:iron run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"tanky/iron"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:gold run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"tanky/gold"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:diamond run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"tanky/diamond"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:netherite run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"tanky/netherite"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* minecraft:turtle_helmet run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"tanky/turtle"}
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
