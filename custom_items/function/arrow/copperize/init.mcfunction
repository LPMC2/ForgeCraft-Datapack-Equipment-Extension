execute at @s run playsound minecraft:block.copper.place master @a ~ ~ ~ 1 1.8 0
execute store result score .arrow_damage const run data get entity @s damage
scoreboard players add .arrow_damage const 1
execute store result entity @s damage double 1 run scoreboard players get .arrow_damage const
execute store result score .arrow_pierce const run data get entity @s PierceLevel
scoreboard players add .arrow_pierce const 1
execute store result entity @s PierceLevel int 1 run scoreboard players get .arrow_pierce const