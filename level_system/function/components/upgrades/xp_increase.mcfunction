execute if score @s forgecraft_lvl matches 1..5 run scoreboard players add @s forgecraft_lvl_xp_boost 1
execute if score @s forgecraft_lvl matches 6..10 run scoreboard players add @s forgecraft_lvl_xp_boost 2
execute if score @s forgecraft_lvl matches 11..25 run scoreboard players add @s forgecraft_lvl_xp_boost 5
execute if score @s forgecraft_lvl matches 26.. run scoreboard players add @s forgecraft_lvl_xp_boost 50
tellraw @s [{"color":"green","italic":false,"obfuscated":false,"text":"⬆ Experience Orb Value "},{"color":"white","text":"+"},{"color":"white","italic":false,"obfuscated":false,"score":{"name":"@s","objective":"forgecraft_lvl_xp_boost"}},{"color":"white","italic":false,"obfuscated":false,"text":" Amount"}]