execute if score @s forgecraft_lvl matches 1..5 run scoreboard players add @s forgecraft_lvl_xp_boost 1
execute if score @s forgecraft_lvl matches 6..10 run scoreboard players add @s forgecraft_lvl_xp_boost 2
execute if score @s forgecraft_lvl matches 11..15 run scoreboard players add @s forgecraft_lvl_xp_boost 3
execute if score @s forgecraft_lvl matches 16..20 run scoreboard players add @s forgecraft_lvl_xp_boost 4
execute if score @s forgecraft_lvl matches 21..25 run scoreboard players add @s forgecraft_lvl_xp_boost 5
execute if score @s forgecraft_lvl matches 26..100 run scoreboard players add @s forgecraft_lvl_xp_boost 5
execute if score @s forgecraft_lvl matches 101..200 run scoreboard players add @s forgecraft_lvl_xp_boost 10
execute if score @s forgecraft_lvl matches 201..300 run scoreboard players add @s forgecraft_lvl_xp_boost 15
execute if score @s forgecraft_lvl matches 301.. run scoreboard players add @s forgecraft_lvl_xp_boost 20
tellraw @s [{"color":"green","italic":false,"obfuscated":false,"text":"⬆ Experience Orb Value "},{"color":"white","text":"+"},{"color":"white","italic":false,"obfuscated":false,"score":{"name":"@s","objective":"forgecraft_lvl_xp_boost"}},{"color":"white","italic":false,"obfuscated":false,"text":" Amount"}]