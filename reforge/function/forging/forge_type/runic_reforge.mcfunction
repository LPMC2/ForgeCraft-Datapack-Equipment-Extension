$data modify entity @s Item.components.minecraft:custom_name set value {"color":"light_purple","italic":false,"text":"⚒ Runic $(name)"}
#data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Runic: Convert Item Stats to Offhand"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"Accessories"}]]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"Artifact"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Runic: Convert Item Stats to Offhand"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Runic $(name)"

scoreboard players set .attribute_amount const 1
data modify entity @s Item.components.minecraft:custom_data.runic set value 1
data modify entity @s Item.components.minecraft:equippable set value {slot:"offhand",equip_sound:"entity.elder_guardian.curse",swappable:true,damage_on_hurt:true}
execute as @s at @s run function reforge:forging/forge_type/attribute/offhand/get_attribute_init
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify entity @s Item.components.minecraft:rarity set value "epic"
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
