execute if data entity @s Item.components.minecraft:custom_data.upgradeable run return fail
data modify entity @s Item.components.minecraft:custom_data.upgradeable set value 1

$data modify entity @s Item.components.minecraft:item_name set value {"color":"aqua","italic":false,"text":"⚒ Enchanting $(name)"}
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Enchanting: Use all of player Xp Level (Max 50) to enchant the item"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Enchanting $(name)"
function reforge:forging/item_data/enchantment/get_enchant_player_xp
execute if score .itemtype id matches 1..7 run item modify entity @s container.0 reforge:random_enchantment_req
execute if score .itemtype id matches 8 run item modify entity @s container.0 reforge:enchant_utility
data modify entity @s Item.components.minecraft:rarity set value "rare"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set value 0

scoreboard players set .isreforged const 1
