scoreboard players set .enemy_count const 0
tag @s add swarming_owner
execute as @s run function custom_items:weapon/swarming/reset
execute at @s as @e[type=!#entity_hit_matching:non_mob,distance=..5,tag=!swarming_owner] run scoreboard players add .enemy_count const 1
execute if score .enemy_count const matches 21.. run scoreboard players set .enemy_count const 20
execute store result storage minecraft:attack_damage store.value int 1 run scoreboard players get .enemy_count const
execute if entity @s[advancements={reforge:swarming_reforge=false}] if score .enemy_count const matches 20.. run advancement grant @s only reforge:swarming_reforge
execute if score .enemy_count const matches 1.. run function custom_items:weapon/swarming/apply with storage minecraft:attack_damage store
function custom_items:display/add {tag:"swarming_reforge",type:"status",max:20,selector:".enemy_count",score:"const",format:"number",color:"#dbad05",label:"Swarming Bonus: ",unit:" ☠"}
tag @s remove swarming_owner