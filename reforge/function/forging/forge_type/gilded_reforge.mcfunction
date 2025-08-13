execute if data entity @s Item.components.minecraft:custom_data.upgradeable run return fail
data modify entity @s Item.components.minecraft:custom_data.upgradeable set value 1
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Gilded $(name)"
$data modify entity @s Item.components.minecraft:custom_name set value {"color":"aqua","italic":false,"text":"⚒ Gilded $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Gilded: +50% for all Item Stats. This item can be reforged!"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Gilded: +50% for all Item Stats."}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
#execute unless data entity @s Item.components.minecraft:custom_data.forge_data run data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge set value []

data modify storage minecraft:attribute store.amount set value 500d
execute as @s at @s run function reforge:forging/forge_type/attribute/value/get_attribute_init
#data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
execute as @s if items entity @s container.* minecraft:golden_pickaxe run data modify entity @s Item.components.minecraft:tool set value {default_mining_speed:1,damage_per_block:1,rules:[{speed:10,correct_for_drops:true,blocks:"#mineable/pickaxe"}]}
data modify entity @s Item.components.minecraft:rarity set value "rare"
data modify entity @s Item.components.minecraft:custom_data.gilded set value 1
data modify entity @s Item.components.minecraft:custom_data.reforgeid set value 0
execute as @s at @s run function reforge:forging/forge_type/gilded_reforge_doubledurability
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Gilded $(name)"
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
