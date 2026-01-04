execute store result storage forgecraft:temp temp.distance double 0.1 run scoreboard players add .distance const 1

execute if score .distance const matches ..100 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #minecraft:replaceable run return run function custom_items:weapon/warped/ray_loop

execute positioned ~ ~ ~ run function custom_items:weapon/warped/ray_collide with storage forgecraft:temp temp
