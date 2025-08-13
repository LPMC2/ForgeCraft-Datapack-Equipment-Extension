data modify storage minecraft:effect store.amp set value 1
scoreboard players set .effect_duration const 5
scoreboard players operation .effect_duration const *= @s poisoned_armor_count
execute store result storage minecraft:effect store.duration int 1 run scoreboard players get .effect_duration const
data modify storage minecraft:effect store.no_particle set value "false"
execute as @n[tag=onHurt_target] run function custom_items:armor/poisoned/poison_effect
execute as @n[tag=onHurt_target] run function custom_items:armor/poisoned/slow_effect