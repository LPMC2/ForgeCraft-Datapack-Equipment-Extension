execute if data entity @s Item.components.minecraft:custom_data.guardian run return fail
execute if data entity @s Item.components.minecraft:custom_data.magical run return fail
execute if data entity @s Item.components.minecraft:custom_data.dispenser run return fail
execute if data entity @s Item.components.minecraft:custom_data.rapid run return fail
execute if data entity @s Item.components.minecraft:custom_data.supercharged run return fail
$data modify entity @s Item.components.minecraft:item_name set value {"color":"light_purple","italic":false,"text":"⚒ Ender $(name)"}
#$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Ender: Fire Eye of Ender instead. Can Damage Enderman"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
execute if score .itemtype id matches 1 run data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Ender: Right Click to fire Eye of Ender at the cost of 1x Ender Eye."}
execute if score .itemtype id matches 2 run data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Ender: Fire Eye of Ender instead. Can Damage Enderman"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Ender $(name)"

execute if score .itemtype id matches 1 run data modify entity @s Item.components.minecraft:custom_data.ender_reforge_melee set value 1
execute if score .itemtype id matches 2 run data modify entity @s Item.components.minecraft:custom_data.ender_reforge set value 1
data modify entity @s Item.components.minecraft:custom_data.forge_data.abilities append value "ender_reforge"
data modify entity @s Item.components.minecraft:rarity set value "epic"
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
execute if score .itemtype id matches 1 run data modify entity @s Item.components.minecraft:custom_data.right_click_detection set value 1b

execute if score .itemtype id matches 1 run data modify entity @s Item.components.minecraft:use_effects set value {speed_multiplier:1,can_sprint:true}
execute if score .itemtype id matches 1 run data modify entity @s Item.components.consumable set value {consume_seconds:2147483647,animation:"block",sound:"entity.breeze.shoot",has_consume_particles:false}

execute unless score .istextureequipment const matches 0 run data modify entity @s Item.components.minecraft:custom_model_data.strings append value "ender"
scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const

scoreboard players set .isreforged const 1

