$data modify entity @s Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ Agile $(name)"}
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Agile: +30% Attack Speed"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Agile $(name)"


# Attack Speed
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_speed",operation:"add_multiplied_total",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value 0.3
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type
data modify entity @s Item.components.minecraft:custom_model_data set value {strings:["agile"]}
data modify entity @s Item.components.minecraft:rarity set value "uncommon"
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const

data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
