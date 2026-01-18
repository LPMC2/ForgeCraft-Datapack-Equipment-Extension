$data modify entity @s Item.components.minecraft:item_name set value {"color":"light_purple","italic":false,"text":"⚒ Midas's $(name)"}
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Midas's: Convert standing block / attacked enemies into gold/5s"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Midas's $(name)"

data modify storage minecraft:attribute store.amount set value 500d
execute as @s at @s run function reforge:forging/forge_type/attribute/value/get_attribute_init

data modify entity @s Item.components.minecraft:custom_data.midas_reforge_armor set value 1
data modify entity @s Item.components.minecraft:custom_data.forge_data.abilities append value "midas_reforge"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify storage forgecraft:midas temp.multiplier set value 10d
function reforge:forging/forge_type/reforge_custom_durability_multiplier with storage forgecraft:midas temp

scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const

scoreboard players set .isreforged const 1

