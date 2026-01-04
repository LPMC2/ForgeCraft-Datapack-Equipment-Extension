execute store result score .temp_armor const run attribute @s minecraft:armor get
execute unless score @s effect_armor_reduction matches 0.. run scoreboard players set @s effect_armor_reduction 0
execute unless score @s use matches 1.. if score .temp_armor const matches 1.. at @s anchored eyes positioned ^ ^ ^ run function custom_items:weapon/sorcerer/start_raycast
scoreboard players set @s use 2