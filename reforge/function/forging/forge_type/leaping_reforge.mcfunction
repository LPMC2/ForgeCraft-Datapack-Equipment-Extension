$data modify entity @s Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ Leaping $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Leaping: +25% Attack Damage (Non-Stackable) while in air"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Leaping: +25% Attack Damage (Non-Stackable) while in air"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Leaping $(name)"

data modify entity @s Item.components.minecraft:custom_data.leaping_reforge set value 1
# Jump Strength
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:jump_strength",operation:"add_multiplied_base",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value 0.5
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

# Safe Fall Distance
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:safe_fall_distance",operation:"add_multiplied_total",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid2)
data modify storage minecraft:attribute new.attribute_amount set value 0.35
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

data modify entity @s Item.components.minecraft:rarity set value "uncommon"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify entity @s Item.components.minecraft:custom_model_data set value {strings:["leaping"]}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:leather run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"leaping/leather"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:chainmail run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"leaping/chainmail"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:iron run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"leaping/iron"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:gold run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"leaping/gold"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:diamond run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"leaping/diamond"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:netherite run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"leaping/netherite"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* minecraft:turtle_helmet run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"leaping/turtle"}
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
