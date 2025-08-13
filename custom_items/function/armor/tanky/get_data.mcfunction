scoreboard players set .tanky_count const 0
execute if score .armor_head_id const matches 34 run scoreboard players add .tanky_count const 1
execute if score .armor_chest_id const matches 34 run scoreboard players add .tanky_count const 1
execute if score .armor_legs_id const matches 34 run scoreboard players add .tanky_count const 1
execute if score .armor_feet_id const matches 34 run scoreboard players add .tanky_count const 1
execute if entity @s[advancements={reforge:heavy_suit=false}] if score .tanky_count const matches 4 run advancement grant @s only reforge:heavy_suit