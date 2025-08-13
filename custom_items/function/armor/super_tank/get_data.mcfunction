scoreboard players set @s super_tank_count 0
execute as @s run function custom_items:armor/super_tank/reset
execute if data entity @s equipment.head.components.minecraft:custom_data.super_tank run scoreboard players add @s super_tank_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.super_tank run scoreboard players add @s super_tank_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.super_tank run scoreboard players add @s super_tank_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.super_tank run scoreboard players add @s super_tank_count 1
execute as @s if score @s super_tank_count matches 1.. run function custom_items:armor/super_tank/apply