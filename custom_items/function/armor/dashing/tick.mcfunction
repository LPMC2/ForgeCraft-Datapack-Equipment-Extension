scoreboard players add @s sprint_cd 1
execute if score @s sprint_cd matches 10.. run function custom_items:armor/dashing/reset
execute at @s[scores={dashing_amount=25..}] run execute if entity @n[type=!#entity_hit_matching:non_mob,distance=..1,type=!player] run tag @s add dashing
execute at @s[scores={dashing_amount=25..}] run execute if entity @e[type=!#entity_hit_matching:non_mob,distance=..1,type=!player] run execute as @e[type=!#entity_hit_matching:non_mob,distance=..4,type=!player] at @s run function custom_items:armor/dashing/dash_hit
execute if entity @s[tag=dashing] run function custom_items:armor/dashing/reset
tag @s remove dashing