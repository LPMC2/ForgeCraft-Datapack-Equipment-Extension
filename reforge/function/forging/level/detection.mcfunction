# Default Xp Requirement
scoreboard players set .require_level const 0
scoreboard players set .player_lvl const 0
scoreboard players operation .player_lvl const = @s forgecraft_lvl
execute as @n[type=minecraft:item_display,tag=targetforgemodifier] at @s store result score .require_level const run data get entity @s item.components.minecraft:custom_data.req_lvl
execute if score .player_lvl const >= .require_level const run scoreboard players set .level_matched const 1