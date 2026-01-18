execute if data entity @s Item.components.minecraft:custom_data.right_click_detection run return fail
$data modify entity @s Item.components.minecraft:item_name set value {"color":"light_purple","italic":false,"text":"⚒ Sorcerer $(name)"}
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Sorcerer: Cast Magic Bullet (75% Dmg) at the cost of Armor (5s Regen)"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Sorcerer $(name)"

data modify entity @s Item.components.minecraft:custom_data.sorcerer_reforge set value 1
data modify entity @s Item.components.minecraft:custom_data.forge_data.abilities append value "sorcerer_reforge"
data modify entity @s Item.components.minecraft:rarity set value "epic"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify entity @s Item.components.minecraft:custom_data.right_click_detection set value 1

data modify entity @s Item.components.minecraft:use_effects set value {speed_multiplier:0.75,can_sprint:true}
data modify entity @s Item.components.consumable set value {consume_seconds:2147483647,animation:"block",has_consume_particles:false}
#data modify entity @s Item.components.minecraft:use_cooldown set value {seconds:5,cooldown_group:"forgecraft:use_ability"}
execute unless score .istextureequipment const matches 0 run data modify entity @s Item.components.minecraft:custom_model_data.strings append value "sorcerer"
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const

scoreboard players set .isreforged const 1

