scoreboard players set .effect_amp const 0
execute store result score .effect_amp const run attribute @n[tag=onHurt_target] minecraft:attack_damage get 0.25
scoreboard players operation .effect_amp const += @s absorption_armor_count
execute unless score .effect_amp const matches 1.. run scoreboard players set .effect_amp const 1
execute store result storage minecraft:effect store.amp int 1 run scoreboard players get .effect_amp const
data modify storage minecraft:effect store.name set value "absorption"
scoreboard players set .effect_duration const 4
scoreboard players set .tick const 20
execute store result storage minecraft:effect store.duration int 1 run scoreboard players get .effect_duration const
data modify storage minecraft:effect store.no_particle set value "false"
execute as @s unless score @s absorption_armor_cd matches 1.. run function custom_items:general/effect/apply_pre with storage minecraft:effect store
execute as @s unless score @s absorption_armor_cd matches 1.. run function custom_items:armor/absorption/store_cd