$execute unless data storage forgecraft:plugin custom[$(index)].slug run function forgecraft_lpmc2:plugins/message/failed {slug: "unknown",reason: "Slug is undefined!"}
$execute unless data storage forgecraft:plugin custom[$(index)].slug unless score .plugin-index const >= .plugin-count const run return run function forgecraft_lpmc2:plugins/register_loop with storage forgecraft:temp plugin
$execute unless data storage forgecraft:plugin custom[$(index)].slug if score .plugin-index const > .plugin-count const run return fail
scoreboard players set .is_plugin_success const 1
$data modify storage forgecraft:temp plugin.source set from storage forgecraft:plugin custom[$(index)].slug
function forgecraft_lpmc2:plugins/reforges/init with storage forgecraft:temp plugin
execute store result storage forgecraft:temp plugin.index int 1 run scoreboard players add .plugin-index const 1
$execute if score .is_plugin_success const matches 1.. run function forgecraft_lpmc2:plugins/message/load {slug: $(source)}
execute if score .plugin-index const >= .plugin-count const run return fail
function forgecraft_lpmc2:plugins/register_loop with storage forgecraft:temp plugin