$execute unless data storage minecraft:reforge data.reforge_data[{id:$(temp_id)}] if score .plugin-reforge-id const matches 1000.. run return fail
execute store result score .plugin-reforge-id const store result storage forgecraft:temp plugin.temp_id int 1 run random value 1000..2147483647
function forgecraft_lpmc2:plugins/reforges/unique with storage forgecraft:temp plugin