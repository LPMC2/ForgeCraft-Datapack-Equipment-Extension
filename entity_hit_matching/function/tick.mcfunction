execute if score #loaded entityid matches 1 run function entity_hit_matching:real_tick
function reforge:tick
execute as @e[type=!#entity_hit_matching:non_mob] at @s run function effects:tick
execute as @e[type=marker] at @s run function effects:marker_tick
function custom_items:tick
function mobs:tick
execute as @a if score @s leave_game matches 1.. run function entity_hit_matching:load