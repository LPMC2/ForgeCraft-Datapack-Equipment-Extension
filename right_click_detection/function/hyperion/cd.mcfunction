execute if score @s cd matches 1 run attribute @s minecraft:gravity modifier add no_gravity -0.9 add_multiplied_total
execute if score @s cd matches 1 run attribute @s minecraft:safe_fall_distance modifier add no_fall 2 add_multiplied_total
execute if score @s cd matches 1 run effect give @s minecraft:levitation 1 1 true
execute if score @s cd matches 1 run effect give @p minecraft:absorption 15 1 true
scoreboard players add @s cd 1
execute if score @s cd matches 3.. run attribute @s minecraft:gravity modifier remove no_gravity
execute if score @s cd matches 3.. run attribute @s minecraft:safe_fall_distance modifier remove no_fall
execute if score @s cd matches 3.. run effect clear @s minecraft:levitation
#say test
execute if score @s cd matches 3.. run scoreboard players reset @s cd