execute store result storage minecraft:xp temp.amount int 1 run scoreboard players get .req_xp const
execute as @s run function reforge:forging/xp/remove_xp_level with storage minecraft:xp temp