$data modify entity @s Item.components.minecraft:custom_name set value {"color":"light_purple","italic":false,"text":"⚒ Inferno $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Inferno: +25% Attack Damage/Speed & +1 Arrow Damage while on fire"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Inferno: +25% Attack Damage/Speed & +1 Arrow Damage while on fire"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Inferno $(name)"


# Attack Damage
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value 1.25
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

# Burning Time
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:burning_time",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid5)
data modify storage minecraft:attribute new.attribute_amount set value 0.1
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

data modify entity @s Item.components.minecraft:damage_resistant set value {types:"#minecraft:is_fire"}
data modify entity @s Item.components.minecraft:custom_data.inferno set value 1
data modify entity @s Item.components.minecraft:rarity set value "epic"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify entity @s Item.components.minecraft:custom_model_data set value {strings:["inferno"]}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:leather run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"inferno/leather"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:chainmail run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"inferno/chainmail"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:iron run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"inferno/iron"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:gold run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"inferno/gold"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:diamond run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"inferno/diamond"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:netherite run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"inferno/netherite"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* minecraft:turtle_helmet run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"inferno/turtle"}
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
