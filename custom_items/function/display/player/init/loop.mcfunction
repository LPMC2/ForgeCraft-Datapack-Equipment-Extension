execute store result storage forgecraft:display temp.index int 1 run scoreboard players add .temp_index const 1
execute if score .temp_index const > .temp_length const run return fail
$data modify storage forgecraft:display temp.data set from storage forgecraft:display data.$(id).actionbar[$(index)]
$data modify storage forgecraft:display temp.data.id set value $(id)
function custom_items:display/player/init/append with storage forgecraft:display temp.data

function custom_items:display/player/init/loop with storage forgecraft:display temp