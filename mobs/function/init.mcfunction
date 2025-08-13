# ----- < Custom > ----- #
execute if score .ismobmodification const matches 1.. as @s run function mobs:init_detection
# ---------------------- #

# ----- < Core > ------ #
execute if entity @s[tag=!absorption_main] run scoreboard players add .global_mobid const 11
execute if entity @s[tag=!absorption_main] run scoreboard players operation @s id = .global_mobid const
execute if entity @s[tag=!absorption_main] run execute store result score @s init_health run attribute @s minecraft:max_health get
execute if entity @s[tag=!absorption_main] run execute store result score @s init_health run data get entity @s Health
tag @s add initialized
# --------------------- #