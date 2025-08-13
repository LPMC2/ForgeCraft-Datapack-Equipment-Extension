execute if data entity @s Item.components.minecraft:custom_data.upgradeable run return fail
data modify entity @s Item.components.minecraft:custom_data.upgradeable set value 1
$data modify entity @s Item.components.minecraft:custom_name set value {"color":"light_purple","italic":false,"text":"⚒ Unbreakable $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Unbreakable: indestructible item"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Unbreakable: indestructible Durability item."}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
#execute unless data entity @s Item.components.minecraft:custom_data.forge_data run data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge set value []

data modify entity @s Item.components.minecraft:rarity set value "epic"
data modify entity @s Item.components.minecraft:unbreakable set value {show_in_tooltip:true}
data modify entity @s Item.components.minecraft:custom_data.reforgeid set value 0
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Unbreakable $(name)"
data modify entity @s Item.components.minecraft:custom_data.unbreakable set value 1
#data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
