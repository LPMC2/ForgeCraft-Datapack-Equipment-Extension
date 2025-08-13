scoreboard players set @s forest_count 0
execute as @s run function custom_items:armor/forest/reset
execute if data entity @s equipment.head.components.minecraft:custom_data.forest run scoreboard players add @s forest_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.forest run scoreboard players add @s forest_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.forest run scoreboard players add @s forest_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.forest run scoreboard players add @s forest_count 1
execute as @s if score @s forest_count matches 1.. run function custom_items:armor/forest/apply