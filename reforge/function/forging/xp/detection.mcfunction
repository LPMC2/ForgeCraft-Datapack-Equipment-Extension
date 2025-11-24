# Default Xp Requirement
scoreboard players set .target_req_xp const 20
scoreboard players set .cur_xp const 0
data remove storage minecraft:xp store
execute store result score .cur_xp const run xp query @s levels
#execute as @n[type=minecraft:item_display,tag=targetforgemodifier] at @s run execute if data entity @s item.components.minecraft:custom_data.target_req_xp store result score .target_req_xp const run data get entity @s item.components.minecraft:custom_data.target_req_xp
execute as @e[type=item_display,tag=target_forge_display_item] if score @s id = .temp_anvil_id const if data entity @s data.data.req_xp store result score .target_req_xp const run data get entity @s data.data.req_xp
execute as @n[type=minecraft:item_display,tag=targetforgemodifier] at @s run execute if entity @s[nbt={item:{id:"minecraft:name_tag"}}] run scoreboard players set .target_req_xp const 1
execute store result storage minecraft:xp store.req int 1 run scoreboard players get .target_req_xp const
execute store result storage minecraft:xp store.cur int 1 run scoreboard players get .cur_xp const
execute if score .cur_xp const >= .target_req_xp const run scoreboard players set .xp_matched const 1