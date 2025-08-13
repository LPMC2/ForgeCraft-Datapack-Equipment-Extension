scoreboard players set .apply_cost const -1
scoreboard players set .apply_id const -1
scoreboard players set .forge_item_id const -1
scoreboard players set .forge_type_id const -1
scoreboard players set .enhancement_count const 0
scoreboard players set .has_profile const 0
scoreboard players set .is_rename const 0
scoreboard players set .is_supreme const 0
execute at @s run execute as @n[type=item_display,tag=target_type_item,sort=nearest,limit=1] if data entity @s item.components.minecraft:custom_data.reforgeid store result score .forge_item_id const run data get entity @s item.components.minecraft:custom_data.reforgeid
execute at @s run execute as @n[type=item_display,tag=target_type_item,sort=nearest,limit=1] if data entity @s item.components.minecraft:profile run scoreboard players set .has_profile const 1
execute at @s run execute as @n[type=item_display,tag=target_type_item,sort=nearest,limit=1] if data entity @s item{id:"minecraft:structure_void"} run scoreboard players set .forge_item_id const -2
execute at @s run execute as @n[type=item_display,tag=target_type_item,sort=nearest,limit=1] unless data entity @s item run scoreboard players set .forge_item_id const -2
execute at @s run execute as @n[type=item_display,tag=target_type_reforge,sort=nearest,limit=1] if data entity @s item.components.minecraft:custom_data.reforgeid store result score .apply_id const run data get entity @s item.components.minecraft:custom_data.reforgeid
execute at @s as @e[tag=target_type_item,sort=nearest,limit=1] at @s run execute if data entity @s item.components.minecraft:custom_data.enhancement_count store result score .enhancement_count const run data get entity @s item.components.minecraft:custom_data.enhancement_count
execute at @s as @e[tag=target_type_item,sort=nearest,limit=1] at @s run execute if data entity @s item.components.minecraft:custom_data.supreme_reforge store result score .enhancement_count const run scoreboard players set .is_supreme const 1
#execute if data storage minecraft:reforge components.minecraft:custom_data.reforgeid store result score .apply_id const run data get storage minecraft:reforge components.minecraft:custom_data.reforgeid
execute at @s as @e[tag=target_type_reforge,sort=nearest,limit=1] if data entity @s item.components.minecraft:custom_data.req_xp store result score .apply_cost const run data get entity @s item.components.minecraft:custom_data.req_xp
execute at @s run execute as @n[tag=target_type_reforge,sort=nearest,limit=1] if entity @s[nbt={item:{id:"minecraft:name_tag"}}] run scoreboard players set .is_rename const 1
execute at @s run execute as @n[tag=target_type_reforge,sort=nearest,limit=1] if entity @s[nbt={item:{id:"minecraft:name_tag"}}] run scoreboard players set .apply_cost const 1
execute store result storage minecraft:xp store.enhancement_count int 1 run scoreboard players get .enhancement_count const
execute store result storage minecraft:xp store.apply_amt int 1 run scoreboard players get .apply_cost const
execute as @s run function reforge:forging/xp/set_display with storage minecraft:xp store 