# Enemy who hit you: onHurt_target
# Player who got hit: onHurt/@s
execute if score @s max_shielding_charges matches 1.. if score @s shielding_charges matches 1.. run function custom_items:armor/shielding/remove_charge
execute if score @s warrior_count matches 1.. run function custom_items:armor/warrior/on_hit
execute if score @s protective_reforge_count matches 1.. run function custom_items:armor/protective/on_hit
execute if score @s midas_forge_armor_count matches 1.. run function custom_items:armor/midas/on_touch
execute if score @s absorption_armor_count matches 1.. run function custom_items:armor/absorption/apply
execute if score @s reflective_armor_count matches 1.. run function custom_items:armor/reflective/apply
execute if score @s poisoned_armor_count matches 1.. run function custom_items:armor/poisoned/apply
execute if score @s contagion_armor_count matches 1.. run function custom_items:armor/contagion/apply_on_hurt
execute if score @s armorfluxing_reforge_count matches 1.. run function custom_items:armor/armorfluxing/on_hurt
execute if items entity @s armor.* *[minecraft:custom_data~{vanguarding:1}] run function custom_items:armor/vanguarding/reapply