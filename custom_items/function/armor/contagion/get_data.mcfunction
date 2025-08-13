scoreboard players set @s contagion_armor_count 0

execute if data entity @s equipment.head.components.minecraft:custom_data.contagion run scoreboard players add @s contagion_armor_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.contagion run scoreboard players add @s contagion_armor_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.contagion run scoreboard players add @s contagion_armor_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.contagion run scoreboard players add @s contagion_armor_count 1