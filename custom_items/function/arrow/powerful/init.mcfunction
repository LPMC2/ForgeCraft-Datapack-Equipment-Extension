execute at @s run playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ 0.5 2 0
execute store result score .arrow_damage const run data get entity @s damage
scoreboard players set .3 const 3
scoreboard players operation .arrow_damage const += .3 const
execute store result entity @s damage double 1 run scoreboard players get .arrow_damage const