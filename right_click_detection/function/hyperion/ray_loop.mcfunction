execute store result storage right_click_detection:hyperion temp.distance double 0.1 run scoreboard players add .distance var 1
#say loop
# Loop detection
#particle minecraft:cloud ~ ~ ~ 0 0 0 1 0 normal
execute if score .distance var matches ..100 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ air run return run function right_click_detection:hyperion/ray_loop
# Collide Detection
execute positioned ~ ~ ~ run function right_click_detection:hyperion/ray_collide with storage right_click_detection:hyperion temp
#say loop end