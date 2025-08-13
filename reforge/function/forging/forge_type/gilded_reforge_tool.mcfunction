$data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_name set value {"color":"light_purple","italic":false,"text":"⚒ Gilded $(name)"}
$data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ Gilded: x2 Tool Stats"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(itemtype)"}]]
$data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:attribute_modifiers.modifiers append value {type:"generic.attack_damage",amount:1.0,operation:"add_multiplied_base",id:"$(uuid1)",slot:"$(slot)"}
$data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:attribute_modifiers.modifiers append value {type:"generic.attack_speed",amount:1.0,operation:"add_multiplied_base",id:"$(uuid5)",slot:"$(slot)"}
$data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:attribute_modifiers.modifiers append value {type:"player.block_break_speed",amount:0.25,operation:"add_multiplied_total",id:"$(uuid9)",slot:"$(slot)"}
execute as @e[tag=iteminit,limit=1] at @s run function reforge:forging/forge_type/gilded_reforge_doubledurability
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:rarity set value "epic"
execute as @e[tag=iteminit,limit=1] at @s if entity @s[type=item,nbt={Item:{id:"minecraft:golden_pickaxe"}}] run data modify entity @s Item.components.minecraft:tool set value {default_mining_speed:1,damage_per_block:1,rules:[{speed:15,correct_for_drops:true,blocks:"#mineable/pickaxe"}]}
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.reforgeid set from storage minecraft:reforge forge.forgeid
scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
