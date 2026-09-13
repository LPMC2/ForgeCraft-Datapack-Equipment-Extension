$execute unless data storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)] run return fail
$execute store result score .plugin-reforge-id const store result storage forgecraft:temp plugin.temp_id int 1 run data get storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)].id
function forgecraft_lpmc2:plugins/reforges/unqiue with storage forgecraft:temp plugin
execute store result storage forgecraft:temp plugin.reforge_id int 1 run scoreboard players get .plugin-reforge-id const
function forgecraft_lpmc2:plugins/reforges/set with storage forgecraft:temp plugin

execute store result storage forgecraft:temp plugin.reforge_index int 1 run scoreboard players add .plugin-reforges-index const 1
execute if score .plugin-reforges-index const >= .plugin-reforges-count const run return fail
function forgecraft_lpmc2:plugins/reforges/loop with storage forgecraft:temp plugin