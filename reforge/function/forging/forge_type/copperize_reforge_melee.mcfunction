$data modify entity @s Item.components.minecraft:custom_name set value {"color":"aqua","italic":false,"text":"⚒ Copperized $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Copperized: +2 Attack Damage & +50% Attack Knockback"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Copperized: +2 Attack Damage & +50% Attack Knockback"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Copperized $(name)"

# Attack Damage & Knockback
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value 2
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_knockback",operation:"add_multiplied_total",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid2)
data modify storage minecraft:attribute new.attribute_amount set value 0.5
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type
data modify entity @s Item.components.minecraft:custom_model_data set value {strings:["copperized"]}
data modify entity @s Item.components.minecraft:rarity set value "rare"
execute as @s run function reforge:forging/forge_type/copperize_reforge_durability

data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const

scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
