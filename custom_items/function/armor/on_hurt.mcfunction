# Enemy who hit you: onHurt_target
# Player who got hit: onHurt/@s
function custom_items:armor/player_tookdamage
execute if score @s absorption_armor_count matches 1.. run function custom_items:armor/absorption/apply
execute if score @s reflective_armor_count matches 1.. run function custom_items:armor/reflective/apply
execute if score @s poisoned_armor_count matches 1.. run function custom_items:armor/poisoned/apply
execute if score @s contagion_armor_count matches 1.. run function custom_items:armor/contagion/apply_on_hurt