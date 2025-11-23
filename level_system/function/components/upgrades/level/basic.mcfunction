tellraw @s [{"color":"gray","obfuscated":true,"text":"xxxxxxxxxxs\n"},{"color":"green","italic":false,"obfuscated":false,"text":"\n⬆ Level Up! ⬆\n"},{"color":"white","italic":false,"obfuscated":false,"text":"⦿ Forging ➡ "},{"color":"yellow","italic":false,"obfuscated":false,"score":{"name":"@s","objective":"forgecraft_lvl"}},{"text":"\n"}]
execute if score @s forgecraft_lvl matches 1..4 run scoreboard players add @s forgecraft_lvl_objective 50
execute if score @s forgecraft_lvl matches 5..9 run scoreboard players add @s forgecraft_lvl_objective 75
execute if score @s forgecraft_lvl matches 10..11 run scoreboard players add @s forgecraft_lvl_objective 125
execute if score @s forgecraft_lvl matches 12 run scoreboard players add @s forgecraft_lvl_objective 175
execute if score @s forgecraft_lvl matches 13..16 run scoreboard players add @s forgecraft_lvl_objective 200
execute if score @s forgecraft_lvl matches 17..18 run scoreboard players add @s forgecraft_lvl_objective 250
execute if score @s forgecraft_lvl matches 19..22 run scoreboard players add @s forgecraft_lvl_objective 500
execute if score @s forgecraft_lvl matches 23 run scoreboard players add @s forgecraft_lvl_objective 650
execute if score @s forgecraft_lvl matches 24 run scoreboard players set @s forgecraft_lvl_objective 10000
function level_system:components/advancement/set with storage minecraft:reforge temp.level
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.9 0