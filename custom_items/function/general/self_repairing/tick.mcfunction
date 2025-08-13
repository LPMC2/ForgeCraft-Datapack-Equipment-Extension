scoreboard players add @s self_repairing 1
execute as @s if score @s self_repairing matches 20.. run function custom_items:general/self_repairing/repair
