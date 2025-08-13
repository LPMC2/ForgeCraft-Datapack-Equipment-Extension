execute store result score @s interaction run data get entity @s interaction.timestamp
execute store result score @s attackinteraction run data get entity @s attack.timestamp
execute if score @s interaction matches 1.. run return run function reforge:item_exist_detection
execute if score @s attackinteraction matches 1.. run return run function reforge:item_exist_detection