execute as @s run function right_click_detection:hyperion/teleport with storage right_click_detection:hyperion temp
particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 1 10 normal
tag @s add hyperion
execute as @s align xyz positioned ~0.5 ~1 ~0.5 as @e[type=!player,distance=..10] run function right_click_detection:hyperion/damage
tag @s remove hyperion