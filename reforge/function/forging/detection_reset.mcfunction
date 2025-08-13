
tag @s remove find
tag @e[tag=targetforgeitem] remove targetforgeitem
tag @e[tag=targetforgemodifier] remove targetforgemodifier
tag @a remove targetplayer
tag .reforge remove isgold
data modify entity @s attack.timestamp set value 0
data modify entity @s interaction.timestamp set value 0
