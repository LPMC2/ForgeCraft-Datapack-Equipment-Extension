playsound minecraft:item.crossbow.shoot player @a ~ ~ ~ 1 2 0
execute store result score .arrow_damage const run data get entity @s damage 1
scoreboard players set .1 const 125
scoreboard players operation .arrow_damage const *= .1 const
execute store result entity @s damage double 0.01 run scoreboard players get .arrow_damage const