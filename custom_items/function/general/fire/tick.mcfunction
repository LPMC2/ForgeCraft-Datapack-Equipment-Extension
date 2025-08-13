execute store result score @s fire run data get entity @s Fire
execute if score @s[tag=!on_fire] fire matches 1.. run function custom_items:general/fire/on_fire
execute unless score @s[tag=on_fire] fire matches 1.. run function custom_items:general/fire/extinguish