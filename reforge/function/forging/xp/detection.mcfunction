# Default Xp Requirement
scoreboard players set .req_xp const 20
scoreboard players set .cur_xp const 0
data remove storage minecraft:xp store
execute store result score .cur_xp const run xp query @s levels
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s run execute if data entity @s item.components.minecraft:custom_data.req_xp store result score .req_xp const run data get entity @s item.components.minecraft:custom_data.req_xp
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s run execute if entity @s[nbt={item:{id:"minecraft:name_tag"}}] run scoreboard players set .req_xp const 1
execute store result storage minecraft:xp store.req int 1 run scoreboard players get .req_xp const
execute store result storage minecraft:xp store.cur int 1 run scoreboard players get .cur_xp const
execute if score .cur_xp const >= .req_xp const run scoreboard players set .xp_matched const 1