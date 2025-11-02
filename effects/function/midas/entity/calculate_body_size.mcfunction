scoreboard players set .head_height const 0
scoreboard players set .feet_height const 0
execute at @s anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["forgecraft_cal","forgecraft_var_1"]}
execute at @s anchored feet positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:["forgecraft_cal","forgecraft_var_2"]}
execute store result score .head_height const run data get entity @n[type=marker,tag=forgecraft_var_1] Pos[1] 10
execute store result score .feet_height const run data get entity @n[type=marker,tag=forgecraft_var_2] Pos[1] 10
execute store result storage forgecraft:midas temp.height double 0.075 run scoreboard players operation .head_height const -= .feet_height const
scoreboard players set .target_id const -1
scoreboard players operation .target_id const = @s id
execute as @e[type=block_display,tag=midas_converted_entity,tag=body] if score @s id = .target_id const run data modify entity @s transformation.scale[1] set from storage forgecraft:midas temp.height
kill @e[type=marker,tag=forgecraft_cal]
