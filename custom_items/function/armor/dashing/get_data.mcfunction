scoreboard players set @s dashing_count 0
scoreboard players set .50 const 50
execute if data entity @s equipment.head.components.minecraft:custom_data.dashing run scoreboard players add @s dashing_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.dashing run scoreboard players add @s dashing_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.dashing run scoreboard players add @s dashing_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.dashing run scoreboard players add @s dashing_count 1
execute if entity @s[advancements={reforge:dashing_reforge=false}] if score @s dashing_count matches 1.. run advancement grant @s only reforge:dashing_reforge
scoreboard players operation @s max_dash_amount = @s dashing_count
scoreboard players operation @s max_dash_amount *= .50 const