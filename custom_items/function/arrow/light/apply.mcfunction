data modify entity @s NoGravity set value 1
scoreboard players set @s ability_action_cd1 200
tag @s add light_arrow
execute at @s run particle item{item:"feather"} ~ ~ ~ 0.1 0.1 0.1 0.15 10 normal
execute at @s run playsound minecraft:entity.chicken.step player @a ~ ~ ~ 1 0.5 0