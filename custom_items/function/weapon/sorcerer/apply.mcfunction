$damage @s[tag=!onHit] $(damage) minecraft:magic by @p[tag=onHit]
$execute as @e[type=!#entity_hit_matching:non_mob,tag=!onHit,distance=..1.5] run damage @s $(damage) minecraft:magic by @p[tag=onHit]