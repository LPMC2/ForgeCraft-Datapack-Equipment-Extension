execute if data entity @s Item.components.minecraft:custom_data.upgradeable run return fail
data modify entity @s Item.components.minecraft:custom_data.upgradeable set value 1

$data modify entity @s Item.components.minecraft:item_name set value {"color":"aqua","italic":false,"text":"⚒ Evolving $(name)"}
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Evolving: +0.5% Attributes Boost/1 XP Level on Forging"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore

data modify entity @s Item.components.minecraft:rarity set value "rare"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set value 0
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Evolving $(name)"
data modify entity @s Item.components.minecraft:custom_data.evolving_reforge set value 1
data modify entity @s Item.components.minecraft:custom_data.forge_data.abilities append value "evolving_reforge"

scoreboard players set .isreforged const 1

