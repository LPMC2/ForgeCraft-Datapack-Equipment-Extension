scoreboard players set .lvl_cal const -1
data modify storage minecraft:reforge temp.level.lvl set value 0
scoreboard players set .5 const 5
execute store result score .lvl_cal const store result storage minecraft:reforge temp.level.lvl int 1 run scoreboard players add @s forgecraft_lvl 1
scoreboard players operation @s forgecraft_lvl_progress -= @s forgecraft_lvl_objective
execute if score @s forgecraft_lvl matches ..24 at @s run function level_system:components/upgrades/level/basic
execute if score @s forgecraft_lvl matches 25.. at @s run function level_system:components/upgrades/level/elite
scoreboard players operation .lvl_cal const %= .5 const
execute if score .lvl_cal const matches 0 run function level_system:components/upgrades/stat_boost
function level_system:components/upgrades/xp_increase
function level_system:components/upgrades/unlock_reforge
tellraw @s [{"color":"gray","obfuscated":true,"text":"\nxxxxxxxxxx"}]
execute if score @s forgecraft_lvl_progress >= @s forgecraft_lvl_objective run function level_system:components/upgrades/level
function reforge:unlock/recipe/init