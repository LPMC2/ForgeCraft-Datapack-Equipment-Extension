scoreboard players set @s absorption_armor_count 0

execute if data entity @s equipment.head.components.minecraft:custom_data.absorption run scoreboard players add @s absorption_armor_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.absorption run scoreboard players add @s absorption_armor_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.absorption run scoreboard players add @s absorption_armor_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.absorption run scoreboard players add @s absorption_armor_count 1