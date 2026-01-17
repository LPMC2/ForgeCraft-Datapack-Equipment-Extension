attribute @s minecraft:armor modifier remove fc_effect_armor_reduction
execute if score @s effect_armor_reduction matches ..0 run function custom_items:display/remove {tag:"armor_reduction"}