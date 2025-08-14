## Run from tf_raycast:start_raycast

# Using dx for precise hitbox detection
# Parameters:
#     Edit not_mob.json in tags/entities to change which entities will not be targetted
#     Change the "positioned" offsets to change projectile size
#       - If > 1 block, just use one dx detection
execute as @e[tag=!raycast,tag=!ray_hit,type=!#entity_hit_matching:non_mob,dx=0] positioned ~-0.95 ~-0.95 ~-0.95 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run function custom_items:arrow/guardian/collide


scoreboard players add .distance const 1

# Make raycast visible
particle bubble_pop ~ ~ ~ 0 0 0 0 1 normal
execute if score .crit_damage const matches 1.. if predicate reforge:50_50 run particle minecraft:crit ~ ~ ~ 0 0 0 1 0

# Repeat the raycast if certain conditions are met
# Parameters:
#    (score after "matches") * (accuracy increment) = range
#    The "positioned" value specifies the precision
#    Edit raycast_pass.json in tags/blocks to change which blocks the raycast ignores
#    "rotated" controls arc/curve of raycast path

execute if score .distance const matches ..2000 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #minecraft:replaceable run function custom_items:arrow/guardian/raycast
execute if score .distance const matches ..2000 positioned ^ ^ ^0.1 rotated ~ ~ unless block ~ ~ ~ #minecraft:replaceable run function custom_items:arrow/guardian/on_hit
