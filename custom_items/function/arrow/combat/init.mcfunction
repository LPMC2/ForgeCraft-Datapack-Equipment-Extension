tag @s add find
execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s id
execute as @a at @s run function custom_items:arrow/find_players
execute store result storage minecraft:arrow store.damage float 0.5 run attribute @p[tag=arrow_owner] minecraft:attack_damage get
execute store result score .arrow_damage const store result storage minecraft:arrow store.particle int 1 run data get storage minecraft:arrow store.damage 10
#data modify entity @s damage set from storage minecraft:arrow store.damage
execute at @s run function custom_items:arrow/combat/particle with storage minecraft:arrow store
execute at @s rotated as @s run function custom_items:arrow/combat/summon with storage minecraft:arrow store

tag @s remove find
tag @a remove arrow_owner