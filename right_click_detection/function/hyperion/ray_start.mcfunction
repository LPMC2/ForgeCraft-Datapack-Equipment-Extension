execute store result storage right_click_detection:hyperion temp.distance double 1 run scoreboard players set .distance var 0
execute as @s run function right_click_detection:hyperion/ray_loop
scoreboard players reset .distance var