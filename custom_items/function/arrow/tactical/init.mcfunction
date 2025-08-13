playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 1.5 0
execute store result score .arrow_damage const run data get entity @s damage
scoreboard players set .1 const 1
scoreboard players operation .arrow_damage const += .1 const
execute store result entity @s damage double 1 run scoreboard players get .arrow_damage const
data modify entity @s crit set value true