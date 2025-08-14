scoreboard players add @s stun 1
execute at @s run particle dust_plume ~ ~ ~ 0.5 1 0.5 0.05 6
execute at @s if score @s stun matches 20.. run function custom_items:weapon/stunning/reset