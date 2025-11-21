scoreboard players set .level_cal_up const 100
execute if score @s forgecraft_lvl matches 25 run function level_system:components/advancement/set with storage minecraft:reforge temp.level
scoreboard players operation .level_cal_up const *= @s forgecraft_lvl
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.75 0
tellraw @s [{"color":"gray","obfuscated":true,"text":"xxxxxxxxxx\n"},{"color":"green","italic":false,"obfuscated":false,"text":"\n⬆ Level Up! ⬆\n"},{"color":"aqua","italic":false,"obfuscated":false,"text":"⦿ Forging ➡ Elite "},{"color":"yellow","italic":false,"obfuscated":false,"score":{"name":"@s","objective":"forgecraft_lvl"}},{"text":"\n"}]
scoreboard players operation @s forgecraft_lvl_objective += .level_cal_up const