execute if score #loaded entityid matches 1 run function entity_hit_matching:real_tick
function reforge:tick
function effects:tick
function custom_items:tick
function mobs:tick
execute as @a if score @s leave_game matches 1.. run function entity_hit_matching:load 