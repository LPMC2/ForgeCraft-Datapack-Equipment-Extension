execute if score .chain_amount const matches 10.. run return run function custom_items:weapon/chaining/start_damage
execute at @s unless entity @n[type=!#entity_hit_matching:non_mob,tag=!forgecraft_chain_target,distance=..1.5,type=!player] run return run function custom_items:weapon/chaining/start_damage
tag @s add forgecraft_chain_target
scoreboard players add .chain_amount const 1
execute at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 2 0
execute at @s run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 0
execute at @s run particle minecraft:portal ~ ~ ~ 0 0 0 1 20
execute at @s as @n[type=!#entity_hit_matching:non_mob,tag=!forgecraft_chain_target,distance=..1.5,type=!player] unless data entity @s Owner run function custom_items:weapon/chaining/start_chaining