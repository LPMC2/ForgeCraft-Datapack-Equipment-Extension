$say reforge init $(index)
execute store result storage forgecraft:temp plugin.reforge_index int 1 run scoreboard players set .plugin-reforges-index const 0
scoreboard players set .plugin-reforges-count const 0
scoreboard players set .plugin-reforge-id const -1
$execute store result score .plugin-reforges-count const run data get storage forgecraft:plugin custom[$(index)].reforges
$execute store result score .plugin-reforge-id const store result storage forgecraft:temp plugin.temp_id int 1 run data get storage forgecraft:plugin custom[$(index)].reforges[0].id
function forgecraft_lpmc2:plugins/reforges/unqiue with storage forgecraft:temp plugin
execute store result storage forgecraft:temp plugin.reforge_id int 1 run scoreboard players get .plugin-reforge-id const
execute if score .plugin-reforges-count const matches 1.. run function forgecraft_lpmc2:plugins/reforges/loop with storage forgecraft:temp plugin