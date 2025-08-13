scoreboard players add @e[tag=breaching] breaching 1
execute at @e[tag=breaching] run particle item{item:"iron_chestplate"} ~ ~0.65 ~ 0.5 0.5 0.5 0.1 2 normal
execute at @e[tag=breaching] run particle item{item:"iron_sword"} ~ ~0.65 ~ 0.5 0.5 0.5 0.1 2 normal
execute as @e[tag=breaching] at @s if score @s breaching matches 200.. run function custom_items:weapon/breaching/reset