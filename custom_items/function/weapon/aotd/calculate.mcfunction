scoreboard players set .armor_points const 0
scoreboard players set .armor_toughness const 0
scoreboard players set .2 const 2 
execute store result score .armor_points const run attribute @s minecraft:armor get
execute store result score .armor_toughness const run attribute @s minecraft:armor_toughness get 0.5
scoreboard players operation .armor_points const += .armor_toughness const
scoreboard players operation .armor_points const /= .2 const
execute store result storage minecraft:damage store.damage int 1 run scoreboard players get .armor_points const
execute as @s run function custom_items:weapon/aotd/apply with storage minecraft:damage store