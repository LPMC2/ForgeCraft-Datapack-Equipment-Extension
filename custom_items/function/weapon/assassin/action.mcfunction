effect give @s invisibility 10 0 true
effect give @s speed 10 0 true
execute if entity @s[advancements={reforge:assassin_reforge=false}] run advancement grant @s only reforge:assassin_reforge
execute at @s run particle minecraft:cloud ~ ~1 ~ 0.5 0.75 0.5 0.1 200
execute at @s run playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 0.4 0.6 0
execute at @s run execute as @e[type=#entity_hit_matching:targets,distance=..20] at @s run function effects:assassin/apply