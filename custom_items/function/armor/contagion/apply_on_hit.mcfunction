scoreboard players set .contagion_duration const 5
scoreboard players operation .contagion_duration const *= @p[tag=onHit] contagion_armor_count
data modify storage minecraft:effect store.amp set value 1
data modify storage minecraft:effect store.name set value "wither"
execute store result storage minecraft:effect store.duration int 1 run scoreboard players get .contagion_duration const
data modify storage minecraft:effect store.no_particle set value "false"
execute as @s run function custom_items:general/effect/apply_pre with storage minecraft:effect store