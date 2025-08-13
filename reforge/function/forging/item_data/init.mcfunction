tag @s add target_item_forgecraft
scoreboard players set .has_data const 0
summon skeleton ~ ~-0.5 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,equipment:{mainhand:{id:"minecraft:air",count:1}},PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:1f,Tags:["forgecraft_data","data_getter"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:19999980,show_particles:0b}],attributes:[{id:"minecraft:armor",base:0},{id:"minecraft:armor_toughness",base:0},{id:"minecraft:attack_damage",base:0},{id:"minecraft:attack_knockback",base:0},{id:"minecraft:attack_speed",base:4},{id:"minecraft:knockback_resistance",base:0},{id:"minecraft:max_health",base:1},{id:"minecraft:scale",base:0.001}]}
execute as @n[type=skeleton,tag=forgecraft_data,tag=data_getter] at @s run function reforge:forging/item_data/mainhand/init
function reforge:forging/item_data/clear_entity
tag @s remove target_item_forgecraft