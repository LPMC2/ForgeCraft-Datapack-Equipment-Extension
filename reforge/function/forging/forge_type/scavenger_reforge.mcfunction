$data modify entity @s Item.components.minecraft:custom_name set value {"color":"aqua","italic":false,"text":"⚒ Scavenger $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Scavenger: Able to pickup unpickable items"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Scavenger: Able to pickup unpickable items"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Scavenger $(name)"

data modify entity @s Item.components.minecraft:custom_data.scavenger set value 1
data modify entity @s Item.components.minecraft:rarity set value "rare"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify entity @s Item.components.minecraft:custom_model_data set value {strings:["scavenger"]}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:leather run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"scavenger/leather"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:chainmail run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"scavenger/chainmail"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:iron run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"scavenger/iron"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:gold run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"scavenger/gold"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:diamond run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"scavenger/diamond"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* #reforge:netherite run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"scavenger/netherite"}
$execute unless score .istexturearmor const matches 0 if items entity @s container.* minecraft:turtle_helmet run data modify entity @s Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"scavenger/turtle"}
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
