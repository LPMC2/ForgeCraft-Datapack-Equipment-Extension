# This function is created by Cloud Wolf, I only modified it to work with the reforge
### Cloud_Wolf Entity Launcher ###
# Notes: You can remove the scoreboard creators
# if you aren't afraid of having excess scoreboards
# Make sure that you orient the entity in the direction you want it to face,
# YES that means this can launch zombies with a lunge attack (funny application)
###################################

scoreboard objectives add g_x dummy
scoreboard objectives add g_y dummy
scoreboard objectives add g_z dummy
scoreboard objectives add g_dx dummy
scoreboard objectives add g_dy dummy
scoreboard objectives add g_dz dummy


execute store result score @s g_x run data get entity @s Pos[0] 1000
execute store result score @s g_y run data get entity @s Pos[1] 1000
execute store result score @s g_z run data get entity @s Pos[2] 1000

tp @s ^ ^1 ^1
attribute @s[type=#entity_hit_matching:targets] minecraft:safe_fall_distance base set 25
execute store result score @s g_dx run data get entity @s Pos[0] 1000
execute store result score @s g_dy run data get entity @s Pos[1] 1000
execute store result score @s g_dz run data get entity @s Pos[2] 1000

scoreboard players operation @s g_dx -= @s g_x
scoreboard players operation @s g_dy -= @s g_y
scoreboard players operation @s g_dz -= @s g_z

execute store result entity @s Motion[0] double 0.00275 run scoreboard players get @s g_dx
execute store result entity @s Motion[1] double 0.00175 run scoreboard players get @s g_dy
execute store result entity @s Motion[2] double 0.00275 run scoreboard players get @s g_dz

scoreboard objectives remove g_x
scoreboard objectives remove g_y
scoreboard objectives remove g_z
scoreboard objectives remove g_dx
scoreboard objectives remove g_dy
scoreboard objectives remove g_dz

tag @s remove init
