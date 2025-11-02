scoreboard players set @s midas_forge_armor_count 0

execute if data entity @s equipment.head.components.minecraft:custom_data.midas_reforge_armor run scoreboard players add @s midas_forge_armor_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.midas_reforge_armor run scoreboard players add @s midas_forge_armor_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.midas_reforge_armor run scoreboard players add @s midas_forge_armor_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.midas_reforge_armor run scoreboard players add @s midas_forge_armor_count 1