execute store result score .max_damage const run data get entity @s equipment.head.components.minecraft:max_damage
execute store result score .damage const run data get entity @s equipment.head.components.minecraft:damage
execute if score .damage const >= .max_damage const run return fail
effect give @s night_vision 11 0 true
scoreboard players add @s supervision 1
effect clear @s minecraft:blindness
effect clear @s minecraft:darkness
execute if score @s supervision matches 200.. run function custom_items:armor/supervision/damage