particle dust_color_transition{from_color:[0.027,0.820,0.000],scale:1,to_color:[0.118,0.290,0.000]} ~ ~ ~ 1 1 1 1 350 normal
execute positioned ~ ~ ~ run execute as @e[type=#entity_hit_matching:targets,distance=..3] run function effects:poison/init
playsound minecraft:entity.splash_potion.break player @a ~ ~ ~ 1 0.5 0