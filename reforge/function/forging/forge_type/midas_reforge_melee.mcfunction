$data modify entity @s Item.components.minecraft:item_name set value {"color":"light_purple","italic":false,"text":"⚒ Midas's $(name)"}
$data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Midas's: Convert hit enemies into gold/5s"}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Midas's $(name)"

# Attack Damage
#data remove storage minecraft:attribute new.attribute
#$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}
#$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
#data modify storage minecraft:attribute new.attribute_amount set value 1
#scoreboard players set .attribute_amount const 100
#$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}] run execute store result score .attribute_amount_base const run data get entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}].amount 100
#$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_speed",operation:"add_multiplied_total",slot:"$(slot)"}] run execute store result score .attribute_amount_multiplier const run data get entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_speed",operation:"add_multiplied_total",slot:"$(slot)"}].amount 100
#scoreboard players operation .attribute_amount const += .attribute_amount_multiplier const
#scoreboard players operation .attribute_amount const *= .attribute_amount_base const
#scoreboard players operation .attribute_amount const -= .attribute_amount_base const
#$execute if data entity @s Item.components.minecraft:attribute_modifiers[{type:"minecraft:attack_speed",operation:"add_multiplied_total",slot:"$(slot)"}] run execute store result storage minecraft:attribute new.attribute_amount double 0.0001 run scoreboard players get .attribute_amount const
#execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

data modify storage minecraft:attribute store.amount set value 500d
execute as @s at @s run function reforge:forging/forge_type/attribute/value/get_attribute_init

data modify entity @s Item.components.minecraft:custom_data.midas_reforge_melee set value 1
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify storage forgecraft:midas temp.multiplier set value 10d
function reforge:forging/forge_type/reforge_custom_durability_multiplier with storage forgecraft:midas temp

scoreboard players set .forge_count const 0
execute store result score .forge_count const run data get entity @s Item.components.minecraft:custom_data.forge_count
scoreboard players add .forge_count const 1
execute store result entity @s Item.components.minecraft:custom_data.forge_count int 1 run scoreboard players get .forge_count const

scoreboard players set .isreforged const 1

