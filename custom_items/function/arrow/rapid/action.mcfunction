scoreboard players set .isfail const 0
execute as @s run function custom_items:arrow/rapid/fail_detect
execute if score .isfail const matches 1.. run return fail
scoreboard players set .custom_damage const 1
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.rapid run function custom_items:general/item_damage/damage_custom
execute as @s if data entity @s equipment.offhand.components.minecraft:custom_data.rapid run function custom_items:general/item_damage/damage_custom_left_hand
execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s arrow_id
execute as @s run function custom_items:arrow/rapid/summon with storage minecraft:arrow store
scoreboard players remove @s rapid_count 1
scoreboard players set @s rapid_cd 0
execute if score @s rapid_count matches 0 run execute if score @s arrow_id matches 1.. run execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s arrow_id
execute if score @s rapid_count matches 0 run function custom_items:arrow/remove_storage with storage minecraft:arrow store
