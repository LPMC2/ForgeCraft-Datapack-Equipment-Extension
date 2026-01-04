execute as @n[tag=!onHit,type=!#entity_hit_matching:non_mob,dx=1,dy=2] positioned ~ ~ ~ run return run function custom_items:weapon/electric/on_hit
scoreboard players add .distance const 1
execute if score .distance const matches ..200 positioned ^ ^ ^0.25 rotated ~ ~ unless block ~ ~ ~ #minecraft:replaceable run return run function custom_items:weapon/electric/on_hit
execute if score .distance const matches 200 run function custom_items:weapon/electric/on_hit 
execute if score .distance const matches ..200 positioned ^ ^ ^0.25 rotated ~ ~ if block ~ ~ ~ #minecraft:replaceable run function custom_items:weapon/electric/raycast
