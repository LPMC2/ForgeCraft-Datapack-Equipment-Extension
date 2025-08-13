scoreboard players set .maxdamage const 1
execute store result score .maxdamage const run data get entity @s Item.components.minecraft:max_damage 1.25
execute store result entity @s Item.components.minecraft:max_damage int 1 run scoreboard players get .maxdamage const