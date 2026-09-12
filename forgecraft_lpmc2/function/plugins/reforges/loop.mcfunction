execute store result storage forgecraft:temp plugin.reforge_index int 1 run scoreboard players add .plugin-reforges-index const 1
execute if score .plugin-reforges-index const > .plugin-reforges-count const run return fail
$execute store result score .plugin-reforge-id const store result storage forgecraft:temp plugin.temp_id int 1 run data get storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)].id
function forgecraft_lpmc2:plugins/reforges/unqiue with storage forgecraft:temp plugin
execute store result storage forgecraft:temp plugin.reforge_id int 1 run scoreboard players get .plugin-reforge-id const
$execute if data storage minecraft:reforge data.reforge_data[{id:$(reforge_id),source:$(source)}] run data modify storage minecraft:reforge data.reforge_data set from storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)]
$execute unless data storage minecraft:reforge data.reforge_data[{id:$(reforge_id),source:$(source)}] run data modify storage minecraft:reforge data.reforge_data append from storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)]
$data modify storage minecraft:reforge data.reforge_data[{id:$(reforge_id)}].source set from storage forgecraft:plugin custom[$(index)].slug
$say reforge Loop ($(source)) - $(index) $(reforge_index)
function forgecraft_lpmc2:plugins/reforges/loop with storage forgecraft:temp plugin