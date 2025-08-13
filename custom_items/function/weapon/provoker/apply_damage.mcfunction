$execute at @s run damage @s $(damage) minecraft:mob_attack by @n[tag=!ignore,type=#entity_hit_matching:targets,type=!minecraft:player]
#$say taken $(damage)
execute at @s run execute as @n[tag=!ignore,type=#entity_hit_matching:targets,type=!minecraft:player] at @s run particle entity_effect{color:[0.765,0.000,1.000,1.00]} ~ ~0.5 ~ 0.5 0.75 0.5 1 30 normal