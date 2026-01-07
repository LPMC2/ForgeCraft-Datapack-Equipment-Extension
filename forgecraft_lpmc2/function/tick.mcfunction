execute if score #loaded entityid matches 1 run function entity_hit_matching:real_tick
function reforge:tick
function effects:tick
execute as @a at @s run function forgecraft_lpmc2:player_tick
execute as @e[type=marker] at @s run function effects:marker_tick
function custom_items:tick
execute as @e[type=#entity_hit_matching:targets] run function mobs:tick