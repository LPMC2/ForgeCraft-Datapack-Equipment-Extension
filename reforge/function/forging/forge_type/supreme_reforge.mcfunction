execute if data entity @s Item.components.minecraft:custom_data.upgradeable run return fail
data modify entity @s Item.components.minecraft:custom_data.upgradeable set value 1
$data modify entity @s Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ Supreme $(name)"}
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Supreme: Allows to forge double main Reforges, as long as it's allowed."}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Supreme $(name)"
#execute if data entity @s Item.components.minecraft:custom_data.forge_data[1] run data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge set value []
data modify entity @s Item.components.minecraft:custom_data.supreme_reforge set value 1
data modify entity @s Item.components.minecraft:custom_data.reforgeid set value 0

scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
