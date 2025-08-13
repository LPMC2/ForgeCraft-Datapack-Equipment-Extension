execute store result score .health_current const run data get entity @s Health
scoreboard players operation .health_current const += @s heal
execute store result entity @s Health float 1 run scoreboard players get .health_current const
scoreboard players set @s heal 0