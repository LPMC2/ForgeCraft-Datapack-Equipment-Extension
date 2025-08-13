execute if data entity @s Item.components.minecraft:custom_data.upgradeable run return fail
data modify entity @s Item.components.minecraft:custom_data.upgradeable set value 1
$data modify entity @s Item.components.minecraft:custom_name set value {"color":"aqua","italic":false,"text":"⚒ Enhanced $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Enhanced: +25% Boost to every Item Stat. This item can be reforged!"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Enhanced: +25% Positive Boost to every Item Stat."}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
#execute unless data entity @s Item.components.minecraft:custom_data.forge_data run data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge set value []
data modify storage minecraft:attribute store.amount set value 250d
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Enhanced $(name)"
data modify entity @s Item.components.minecraft:custom_data.enhanced set value 1
execute as @s at @s run function reforge:forging/forge_type/attribute/value/get_attribute_init
data modify entity @s Item.components.minecraft:custom_data.reforgeid set value 0
data modify entity @s Item.components.minecraft:rarity set value "rare"
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
