scoreboard players set @s super_chainmail_count 0
execute as @s run function custom_items:armor/fortified/reset
execute if data entity @s equipment.head.components.minecraft:custom_data.fortified run scoreboard players add @s super_chainmail_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.fortified run scoreboard players add @s super_chainmail_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.fortified run scoreboard players add @s super_chainmail_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.fortified run scoreboard players add @s super_chainmail_count 1