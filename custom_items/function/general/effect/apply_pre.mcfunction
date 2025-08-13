# Required Data:
# - Effect Name -> Storage: minecraft:effect store.name
# - Effect Amplifier -> Storage: minecraft:effect store.amp (Will reduct by 1 in here)
# - Effect Duration -> Storage: minecraft:effect store.duration
# - Effect Show Particle -> Storage: minecraft:effect store.no_particle
# Example:
# data modify storage minecraft:effect store.name set value "strength"
# data modify storage minecraft:effect store.amp set value 1
# data modify storage minecraft:effect store.duration set value 200
# data modify storage minecraft:effect store.no_particle set value "true"

execute store result score .effect_amp const run data get storage minecraft:effect store.amp
scoreboard players remove .effect_amp const 1
execute unless score .effect_amp const matches 0.. run scoreboard players set .effect_amp const 0
execute store result storage minecraft:effect store.amp int 1 run scoreboard players get .effect_amp const
execute as @s run function custom_items:general/effect/apply with storage minecraft:effect store