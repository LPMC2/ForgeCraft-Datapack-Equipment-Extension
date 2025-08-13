scoreboard players set @s berserk_armor_count 0
execute as @s run function custom_items:armor/berserk/reset
execute if data entity @s equipment.head.components.minecraft:custom_data.berserk run scoreboard players add @s berserk_armor_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.berserk run scoreboard players add @s berserk_armor_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.berserk run scoreboard players add @s berserk_armor_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.berserk run scoreboard players add @s berserk_armor_count 1