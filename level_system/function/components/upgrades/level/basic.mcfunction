tellraw @s [{"color":"gray","obfuscated":true,"text":"xxxxxxxxxx\n\n"},{"color":"green","italic":false,"obfuscated":false,"text":"⬆ ⦿ "},{"color":"white","italic":false,"obfuscated":false,"score":{"name":"@s","objective":"forgecraft_lvl"}},{"color":"green","italic":false,"obfuscated":false,"text":" Level Up! ⬆"}]
execute if score @s forgecraft_lvl matches 1 run scoreboard players add @s forgecraft_lvl_objective 400
execute if score @s forgecraft_lvl matches 2..5 run scoreboard players add @s forgecraft_lvl_objective 500
execute if score @s forgecraft_lvl matches 6..24 run scoreboard players add @s forgecraft_lvl_objective 1000
function level_system:components/advancement/set with storage minecraft:reforge temp.level
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.9 0