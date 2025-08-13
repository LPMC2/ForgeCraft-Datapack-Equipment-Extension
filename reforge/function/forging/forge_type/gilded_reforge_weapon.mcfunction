$data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_name set value {"color":"light_purple","italic":false,"text":"⚒ Gilded $(name)"}
$data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Gilded: x2 Weapon Stats"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:attribute_modifiers.modifiers append value {type:"generic.attack_damage",amount:1.0,operation:"add_multiplied_base",id:"$(uuid1)",slot:"$(slot)"}
$data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:attribute_modifiers.modifiers append value {type:"generic.attack_speed",amount:1.0,operation:"add_multiplied_base",id:"$(uuid5)",slot:"$(slot)"}
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:rarity set value "epic"
execute as @e[tag=iteminit,limit=1] at @s run function reforge:forging/forge_type/gilded_reforge_doubledurability
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
