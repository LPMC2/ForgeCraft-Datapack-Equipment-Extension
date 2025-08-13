execute store result storage minecraft:reforge data.player int 1 run scoreboard players get @s id
execute store result storage minecraft:reforge data.id int 1 run scoreboard players get .item_reforge reforgeId
function reforge:forging/forge_data/store_storage with storage minecraft:reforge data