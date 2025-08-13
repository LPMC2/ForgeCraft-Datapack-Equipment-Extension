scoreboard players set @s healthful_count 0
scoreboard players set @s healthful_cd 0
execute if data entity @s equipment.head.components.minecraft:custom_data.healthful run scoreboard players add @s healthful_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.healthful run scoreboard players add @s healthful_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.healthful run scoreboard players add @s healthful_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.healthful run scoreboard players add @s healthful_count 1