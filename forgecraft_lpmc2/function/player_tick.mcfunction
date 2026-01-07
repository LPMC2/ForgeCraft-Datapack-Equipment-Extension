execute if score @s heal matches 0.. run function effects:heal
execute if score @s forgecraft_lvl_xp_boost matches 1.. run function level_system:components/xp_boost/tick
execute if score @s leave_game matches 1.. run function forgecraft_lpmc2:load 