scoreboard players set .1 const 1
execute store result score .storedamage const run data get entity @s damage 1
execute if score .storedamage const matches ..99 run scoreboard players operation .storedamage const += .1 const
execute store result entity @s damage double 1 run scoreboard players get .storedamage const
execute at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 0.25 2 0
execute at @s run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal
scoreboard players set @s cooldown 0
execute if score .storedamage const matches 100.. run tag @s add onground