$data modify entity @s Item.components.minecraft:custom_name set value {"color":"light_purple","italic":false,"text":"⚒ Gilded $(name)"}
$data modify entity @s Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Gilded: x2 Armor Stats"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"armor",amount:1.0,operation:"add_multiplied_base",id:"$(uuid1)",slot:"$(slot)"}
$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"armor_toughness",amount:1.0,operation:"add_multiplied_base",id:"$(uuid5)",slot:"$(slot)"}
$data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers append value {type:"knockback_resistance",amount:1.0,operation:"add_multiplied_base",id:"$(uuid9)",slot:"$(slot)"}
data modify entity @s Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify entity @s Item.components.minecraft:rarity set value "epic"
execute as @s at @s run function reforge:forging/forge_type/gilded_reforge_doubledurability
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
