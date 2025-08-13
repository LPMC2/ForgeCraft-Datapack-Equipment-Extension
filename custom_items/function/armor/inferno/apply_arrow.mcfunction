execute store result score .arrow_damage const run data get entity @s damage
scoreboard players operation .arrow_damage const += @p[tag=arrow_owner] inferno_armor_count
execute as @s run execute store result entity @s damage int 1 run scoreboard players get .arrow_damage const