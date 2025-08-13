scoreboard players set .chain_damage const 0
scoreboard players set .chain_amount const 0
execute store result storage minecraft:damage temp.damage double 1 run attribute @p[tag=onHit] minecraft:attack_damage get 0.75
execute as @s run function custom_items:weapon/chaining/start_chaining