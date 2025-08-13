$data modify entity @s Item.components.minecraft:custom_name set value {"color":"aqua","italic":false,"text":"⚒ Absorptive $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Absorptive: Gain +25% attacker damage +1/Absorptive (Rounded) as Absorption Effect, for 4s (CD: 15s)"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Absorptive: Gain +25% attacker damage +1/Absorptive (Rounded) as Absorption Effect, for 4s (CD: 15s)"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Absorptive $(name)"
# Max Health
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:max_health",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value 1
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const
data modify entity @s Item.components.minecraft:custom_data.absorption set value 1
data modify entity @s Item.components.minecraft:rarity set value "rare"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify entity @s Item.components.minecraft:custom_model_data set value {strings:["absorptive"]}
$execute unless score .istexturearmor const matches 0 if items entity @n[tag=iteminit,limit=1] container.* #reforge:leather run data modify entity @n[tag=iteminit,limit=1] Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"absorptive/leather"}
$execute unless score .istexturearmor const matches 0 if items entity @n[tag=iteminit,limit=1] container.* #reforge:chainmail run data modify entity @n[tag=iteminit,limit=1] Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"absorptive/chainmail"}
$execute unless score .istexturearmor const matches 0 if items entity @n[tag=iteminit,limit=1] container.* #reforge:iron run data modify entity @n[tag=iteminit,limit=1] Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"absorptive/iron"}
$execute unless score .istexturearmor const matches 0 if items entity @n[tag=iteminit,limit=1] container.* #reforge:gold run data modify entity @n[tag=iteminit,limit=1] Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"absorptive/gold"}
$execute unless score .istexturearmor const matches 0 if items entity @n[tag=iteminit,limit=1] container.* #reforge:diamond run data modify entity @n[tag=iteminit,limit=1] Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"absorptive/diamond"}
$execute unless score .istexturearmor const matches 0 if items entity @n[tag=iteminit,limit=1] container.* #reforge:netherite run data modify entity @n[tag=iteminit,limit=1] Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"absorptive/netherite"}
$execute unless score .istexturearmor const matches 0 if items entity @n[tag=iteminit,limit=1] container.* minecraft:turtle_helmet run data modify entity @n[tag=iteminit,limit=1] Item.components.minecraft:equippable set value {slot:"$(slot)",asset_id:"absorptive/turtle"}
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
