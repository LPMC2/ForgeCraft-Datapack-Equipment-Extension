$execute unless data storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)] run return fail
data remove storage forgecraft:temp cached.is_string
scoreboard players set .is_unique const 0
$execute store result score .plugin-reforge-id const store result storage forgecraft:temp plugin.temp_id int 1 run data get storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)].id
execute store result storage forgecraft:temp plugin.reforge_id int 1 run scoreboard players get .plugin-reforge-id const
#$execute store success storage forgecraft:temp cached.is_string int 1 run data modify storage forgecraft:temp TestValue set string storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)].id 0
#$execute if data storage forgecraft:temp cached{is_string:1} run return run function forgecraft_lpmc2:plugins/message/failed {slug:"$(source)",reason:"ID can only accept Integer as value"}
function forgecraft_lpmc2:plugins/reforges/unique with storage forgecraft:temp plugin
$execute unless score .is_unique const matches 1.. if score .plugin-reforge-id const matches ..999 run return run function forgecraft_lpmc2:plugins/message/failed {slug:"$(source)",reason:"ID can only accept value starting from 1000 or later."}
$execute unless score .is_unique const matches 1.. if score .plugin-reforge-id const matches 1000.. run return run function forgecraft_lpmc2:plugins/message/failed {slug:"$(source)",reason:"ID collided with other plugins. Please check other available reforges."}
$execute unless data storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)].name run return run function forgecraft_lpmc2:plugins/message/failed {slug:"$(source)",reason:"Missing name property for reforge $(reforge_index)."}
$execute unless data storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)].req_xp run return run function forgecraft_lpmc2:plugins/message/failed {slug:"$(source)",reason:"Missing req_xp property for reforge $(reforge_index)."}
$execute unless data storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)].req_lvl run return run function forgecraft_lpmc2:plugins/message/failed {slug:"$(source)",reason:"Missing req_lvl property for reforge $(reforge_index)."}
$execute unless data storage forgecraft:plugin custom[$(index)].reforges[$(reforge_index)].rarity run return run function forgecraft_lpmc2:plugins/message/failed {slug:"$(source)",reason:"Missing rarity property for reforge $(reforge_index)."}
function forgecraft_lpmc2:plugins/reforges/set with storage forgecraft:temp plugin

execute store result storage forgecraft:temp plugin.reforge_index int 1 run scoreboard players add .plugin-reforges-index const 1
execute if score .plugin-reforges-index const >= .plugin-reforges-count const run return fail
function forgecraft_lpmc2:plugins/reforges/loop with storage forgecraft:temp plugin