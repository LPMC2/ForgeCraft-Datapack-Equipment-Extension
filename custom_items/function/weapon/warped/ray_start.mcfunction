execute store result storage forgecraft:temp temp.distance double 1 run scoreboard players set .distance const 0
execute as @s run function custom_items:weapon/warped/ray_loop
function effects:slowness/add
scoreboard players reset .distance const