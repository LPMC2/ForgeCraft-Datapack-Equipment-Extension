tellraw @s [{"color":"gray","obfuscated":true,"text":"xxxxxxxxxxs\n"},{"color":"green","italic":false,"obfuscated":false,"text":"\n⬆ Level Up! ⬆\n"},{"color":"white","italic":false,"obfuscated":false,"text":"⦿ Forging ➡ "},{"color":"yellow","italic":false,"obfuscated":false,"score":{"name":"@s","objective":"forgecraft_lvl"}},{"text":"\n"}]
execute if score @s forgecraft_lvl matches 1..8 run scoreboard players add @s forgecraft_lvl_objective 150
execute if score @s forgecraft_lvl matches 9..14 run scoreboard players add @s forgecraft_lvl_objective 200
execute if score @s forgecraft_lvl matches 15..16 run scoreboard players add @s forgecraft_lvl_objective 250
execute if score @s forgecraft_lvl matches 17..18 run scoreboard players add @s forgecraft_lvl_objective 500
execute if score @s forgecraft_lvl matches 19..24 run scoreboard players add @s forgecraft_lvl_objective 1000
function level_system:components/advancement/set with storage minecraft:reforge temp.level
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.9 0