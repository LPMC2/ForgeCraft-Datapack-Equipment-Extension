$say plugin $(index)
$data modify storage forgecraft:temp plugin.source set from storage forgecraft:plugin custom[$(index)].slug
function forgecraft_lpmc2:plugins/reforges/init with storage forgecraft:temp plugin
execute store result storage forgecraft:temp plugin.index int 1 run scoreboard players add .plugin-index const 1
execute if score .plugin-index const >= .plugin-count const run return fail

function forgecraft_lpmc2:plugins/register_loop with storage forgecraft:temp plugin