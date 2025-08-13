$damage @s $(value) minecraft:player_attack by @p[tag=dashing]
playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 0.75 0.5 0
execute at @p[tag=dashing] run particle minecraft:gust ^ ^1 ^0.5 0.5 0.5 0.5 1 1