function reforge:forging/forge_type/rerollreforgeuuid
execute store result storage minecraft:reforge temp.forging.forge_id int 1 run scoreboard players get .item_reforge reforgeId
execute if score .item reforgeId matches 6 if score .item_reforge reforgeId matches 6 if score .is_item_reforge_item const matches 1.. run data modify storage minecraft:reforge temp.forging.forge_id set value 84
execute as @n[type=item,tag=iteminit] run function reforge:forging/forge_type/getter/start with storage minecraft:reforge temp.forging