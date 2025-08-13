function reforge:forging/forge_type/rerollreforgeuuid
execute store result storage minecraft:reforge temp.forging.forge_id int 1 run scoreboard players get .item_reforge reforgeId
execute as @n[type=item,tag=iteminit] run function reforge:forging/forge_type/getter/start with storage minecraft:reforge temp.forging