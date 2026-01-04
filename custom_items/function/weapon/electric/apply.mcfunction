summon minecraft:lightning_bolt ~ ~ ~
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 0
$execute as @e[type=!#entity_hit_matching:non_mob,tag=!onHit,distance=..4] run damage @s $(damage) minecraft:lightning_bolt by @p[tag=onHit]
particle minecraft:angry_villager ~ ~ ~ 0.5 0.65 0.5 1 10