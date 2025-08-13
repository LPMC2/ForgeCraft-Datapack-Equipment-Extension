$data modify entity @s Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ Energetic $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Energetic: Haste 3 Effect for 5s when used, +50% Mining Efficiency & +10% Move Speed"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Energetic: Haste 3 Effect for 5s when used, +50% Mining Efficiency & +10% Move Speed"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Energetic $(name)"

$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"mining_efficiency",amount:0.5,operation:"add_multiplied_base",id:"$(uuid1)",slot:"$(slot)"}
# Mining Efficiency
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:mining_efficiency",operation:"add_multiplied_total",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value 0.5
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type
# Movement Speed
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:movement_speed",operation:"add_multiplied_base",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid5)
data modify storage minecraft:attribute new.attribute_amount set value 0.1
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

data modify entity @s Item.components.minecraft:custom_data.energetic set value 1
data modify entity @s Item.components.minecraft:rarity set value "uncommon"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify entity @s Item.components.minecraft:custom_model_data set value {strings:["energetic"]}
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const

scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
