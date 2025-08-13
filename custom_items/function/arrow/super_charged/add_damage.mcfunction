scoreboard players set .5 const 5
execute store result score .storedamage const run data get entity @s damage 1
scoreboard players operation .storedamage const += .5 const
execute store result entity @s damage double 1 run scoreboard players get .storedamage const
