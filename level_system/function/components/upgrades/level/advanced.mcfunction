scoreboard players set .level_cal_up const 100
scoreboard players operation .level_cal_up const *= @s forgecraft_lvl
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.75 0
tellraw @s [{"color":"gray","obfuscated":true,"text":"xxxxxxxxxx\n\n"},{"color":"green","italic":false,"obfuscated":false,"text":"⬆ ⦿ Elite - "},{"color":"aqua","italic":false,"obfuscated":false,"score":{"name":"@s","objective":"forgecraft_lvl"}},{"color":"green","italic":false,"obfuscated":false,"text":" Level Up! ⬆"}]
scoreboard players operation @s forgecraft_lvl_objective += .level_cal_up const