scoreboard players set .enemy_count const 0
execute as @s run function custom_items:weapon/swarming/reset
execute at @s run execute at @e[type=#entity_hit_matching:targets,distance=..5] run scoreboard players add .enemy_count const 1
execute if score .enemy_count const matches 21.. run scoreboard players set .enemy_count const 20
execute store result storage minecraft:attack_damage store.value int 1 run scoreboard players get .enemy_count const
execute if entity @s[advancements={reforge:swarming_reforge=false}] if score .enemy_count const matches 20.. run advancement grant @s only reforge:swarming_reforge
execute if score .enemy_count const matches 1.. run function custom_items:weapon/swarming/apply with storage minecraft:attack_damage store