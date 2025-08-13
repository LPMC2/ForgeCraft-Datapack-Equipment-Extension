data modify entity @s item set value {id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"minecraft:air"}}
execute as @n[type=interaction,tag=forge_detection] run data modify entity @s width set value 0
execute as @n[type=interaction,tag=forge_detection] run data modify entity @s height set value 0