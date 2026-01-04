### Warning: This creation is made by Cloud_Wolf and is modified! ###

execute store result score @s g_x run data get entity @s Pos[0] 1000
execute store result score @s g_y run data get entity @s Pos[1] 1000
execute store result score @s g_z run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.5

execute store result score @s g_dx run data get entity @s Pos[0] 1000
execute store result score @s g_dy run data get entity @s Pos[1] 1000
execute store result score @s g_dz run data get entity @s Pos[2] 1000

scoreboard players operation @s g_dx -= @s g_x
scoreboard players operation @s g_dy -= @s g_y
scoreboard players operation @s g_dz -= @s g_z

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s g_dx
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s g_dy
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s g_dz
