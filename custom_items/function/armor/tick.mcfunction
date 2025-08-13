execute if score @s max_shielding_charges matches 1.. if score @s shielding_charges <= @s max_shielding_charges run function custom_items:armor/shielding/charging
execute if score @s sneaky_count matches 1.. at @s run execute as @e[tag=sneaky,distance=30.01..] at @s run function custom_items:armor/sneaky/remove_mob
execute if score @s sneaky_count matches 1.. at @s[scores={sneaking=..0}] run execute as @e[tag=sneaky,distance=..30] at @s run function custom_items:armor/sneaky/remove_mob
execute if score @s dashing_amount matches 1.. run function custom_items:armor/dashing/tick
execute if score @s mysterious_count matches 1.. run function custom_items:armor/mysterious/tick
execute if score @s warrior_hit matches 1.. run function custom_items:armor/warrior/tick
execute if score @s healthful_count matches 1.. run function custom_items:armor/healthful/tick
execute if score @s berserk_armor_count matches 1.. if score @s berserk_armor_kill_count matches 1.. run function custom_items:armor/berserk/tick
execute if score @s absorption_armor_count matches 1.. if score @s absorption_armor_cd matches 1.. run function custom_items:armor/absorption/tick