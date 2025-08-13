execute store result storage minecraft:effect store.amp int 1 run scoreboard players get @s forest_count
data modify storage minecraft:effect store.name set value "health_boost"
data modify storage minecraft:effect store.duration set value "infinite"
data modify storage minecraft:effect store.no_particle set value "true"
execute as @s run function custom_items:general/effect/apply_pre with storage minecraft:effect store