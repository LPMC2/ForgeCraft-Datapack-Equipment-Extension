tag @s add dead
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0 0.5 0.1 80 normal
execute at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 0.15 1.5 0
execute as @e[tag=blockmob_display] at @s if score @s id = @e[tag=dead,limit=1] id run kill @s
execute as @e[tag=blockmob_text] at @s if score @s id = @e[tag=dead,limit=1] id run kill @s
kill @s