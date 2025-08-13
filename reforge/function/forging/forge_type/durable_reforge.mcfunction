execute if data entity @s Item.components.minecraft:custom_data.upgradeable run return fail
data modify entity @s Item.components.minecraft:custom_data.upgradeable set value 1
$data modify entity @s Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ Durable $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Durable: Double Durability. This item can be reforged!"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Durable: Double Durability."}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
#execute unless data entity @s Item.components.minecraft:custom_data.forge_data run data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge set value []

data modify entity @s Item.components.minecraft:rarity set value "uncommon"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set value 0
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Durable $(name)"
data modify entity @s Item.components.minecraft:custom_data.durable set value 1
execute as @s run function reforge:forging/forge_type/gilded_reforge_doubledurability


scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
