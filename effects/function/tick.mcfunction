scoreboard players add .entity_tick const 1
execute unless score .entity_tick const matches 20.. run return fail
execute as @e[type=!#entity_hit_matching:non_mob] at @s run function effects:real_tick