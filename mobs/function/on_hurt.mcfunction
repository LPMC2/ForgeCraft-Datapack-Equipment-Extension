tag @n[tag=onHurt_target] add onHit
execute as @s if entity @n[tag=onHit,tag=vampire] run function mobs:vampire/apply
execute as @s if entity @n[tag=onHit,tag=stray_sword] run effect give @s minecraft:slowness 30 0 false
execute as @s if entity @n[tag=onHit,tag=bogged_sword] run effect give @s minecraft:poison 5 0 false
execute as @s if entity @n[tag=onHit,tag=tarantula] run function mobs:tarantula/apply
tag @e[tag=onHit] remove onHit