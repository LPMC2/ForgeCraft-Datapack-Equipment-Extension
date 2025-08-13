scoreboard players set .2 const 2
execute store result score .maxdamage const run data get entity @s Item.components.minecraft:max_damage
scoreboard players operation .maxdamage const *= .2 const
execute store result entity @s Item.components.minecraft:max_damage int 1 run scoreboard players add .maxdamage const 0