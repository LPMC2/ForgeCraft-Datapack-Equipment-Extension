execute unless data entity @s equipment.offhand.components.minecraft:custom_data.rapid unless data entity @s SelectedItem.components.minecraft:custom_data.rapid run scoreboard players set @s rapid_count 0
execute unless data entity @s equipment.offhand.components.minecraft:custom_data.rapid unless data entity @s SelectedItem.components.minecraft:custom_data.rapid run scoreboard players set .isfail const 1
scoreboard players set .damage_remain const 0
scoreboard players set .damage_max const 0
execute if data entity @s SelectedItem.components.minecraft:custom_data.rapid store result score .damage_remain const run data get entity @s SelectedItem.components.minecraft:damage
execute if data entity @s SelectedItem.components.minecraft:custom_data.rapid store result score .damage_max const run data get entity @s SelectedItem.components.minecraft:max_damage
execute if data entity @s equipment.offhand.components.minecraft:custom_data.rapid store result score .damage_remain const run data get entity @s equipment.offhand.components.minecraft:damage
execute if data entity @s equipment.offhand.components.minecraft:custom_data.rapid store result score .damage_max const run data get entity @s equipment.offhand.components.minecraft:max_damage
execute if score .damage_remain const >= .damage_max const run scoreboard players set .isfail const 1