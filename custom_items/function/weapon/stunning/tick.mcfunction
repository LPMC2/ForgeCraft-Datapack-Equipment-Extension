scoreboard players add @e[tag=stunning] stun 1
execute at @e[tag=stunning] run particle dust_plume ~ ~ ~ 0.5 1 0.5 0.05 6
execute as @e[tag=stunning] at @s if score @s stun matches 20.. run function custom_items:weapon/stunning/reset