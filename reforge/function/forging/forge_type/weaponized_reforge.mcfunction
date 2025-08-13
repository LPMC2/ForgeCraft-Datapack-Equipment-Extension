execute if data entity @s Item.components.minecraft:custom_data.upgradeable run return fail
$data modify entity @s Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ Weaponized $(name)"}
data modify entity @s Item.components.minecraft:custom_data.itemtype set value "Melee"
#data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ This item can be reforged!"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"Melee"}]]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"Melee"}]
data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge append value {"color":"dark_gray","italic":false,"text":"⚒ Turns the item into a Melee Weapon."}
data modify storage minecraft:reforge temp.display.lore set from entity @s Item.components.minecraft:custom_data.custom_lore
execute as @s run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
#execute unless data entity @s Item.components.minecraft:custom_data.forge_data run data modify entity @s Item.components.minecraft:custom_data.custom_lore.forge set value []

$data modify entity @s Item.components.minecraft:custom_data.itemname set value "Weaponized $(name)"
data modify entity @s Item.components.minecraft:custom_data.typeid set value 1
data modify entity @s Item.components.minecraft:custom_data.weaponized set value 1
data modify entity @s Item.components.minecraft:custom_data.upgradeable set value 1
execute unless data entity @s Item.components.minecraft:max_damage run data modify entity @s Item.components.minecraft:max_damage set value 100
execute unless data entity @s Item.components.minecraft:weapon run data modify entity @s Item.components.minecraft:weapon set value {item_damage_per_attack:1}
#$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"attack_damage",amount:5,operation:"add_value",id:"$(uuid1)",slot:"mainhand"}
# Attack Damage
data remove storage minecraft:attribute new.attribute
data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_damage",operation:"add_value",slot:"mainhand"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
data modify storage minecraft:attribute new.attribute_amount set value 5
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

#$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"attack_speed",amount:-0.5,operation:"add_multiplied_total",id:"$(uuid5)",slot:"mainhand"}
# Attack Speed
data remove storage minecraft:attribute new.attribute
data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_speed",operation:"add_multiplied_total",slot:"mainhand"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid5)
data modify storage minecraft:attribute new.attribute_amount set value -0.5
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
