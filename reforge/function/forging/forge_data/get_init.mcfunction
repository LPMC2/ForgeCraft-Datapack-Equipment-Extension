scoreboard players set .reforge_length const 0
execute store result storage minecraft:reforge data.player int 1 run scoreboard players get @s id
function reforge:forging/forge_data/get_player_data with storage minecraft:reforge data