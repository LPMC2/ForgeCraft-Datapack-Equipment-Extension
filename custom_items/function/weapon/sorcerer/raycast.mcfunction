execute as @e[tag=!onHit,type=!#entity_hit_matching:non_mob,dx=0] positioned ~-0.95 ~-0.95 ~-0.95 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run return run function custom_items:weapon/sorcerer/on_hit
scoreboard players add .distance const 1
particle minecraft:instant_effect ~ ~ ~ 0 0 0 1 0 normal
execute if score .distance const matches ..800 positioned ^ ^ ^0.25 rotated ~ ~ unless block ~ ~ ~ #minecraft:replaceable run return run function custom_items:weapon/sorcerer/on_hit
execute if score .distance const matches 800 run function custom_items:weapon/sorcerer/on_hit
execute if score .distance const matches ..800 positioned ^ ^ ^0.25 rotated ~ ~ if block ~ ~ ~ #minecraft:replaceable run function custom_items:weapon/sorcerer/raycast
