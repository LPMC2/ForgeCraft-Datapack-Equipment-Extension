scoreboard players set @s mysterious_count 0

execute if data entity @s equipment.head.components.minecraft:custom_data.mysterious run scoreboard players add @s mysterious_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.mysterious run scoreboard players add @s mysterious_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.mysterious run scoreboard players add @s mysterious_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.mysterious run scoreboard players add @s mysterious_count 1
execute if entity @s[advancements={reforge:mysterious_reforge=false}] if score @s mysterious_count matches 4.. run advancement grant @s only reforge:mysterious_reforge