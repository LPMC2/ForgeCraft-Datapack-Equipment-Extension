execute store result storage forgecraft:display temp.bar.index int 1 run scoreboard players add .temp_index const 1
execute if score .temp_index const > .temp_length const run return fail
$data modify storage forgecraft:display temp.bar.data set from storage forgecraft:display data.$(id).actionbar[$(index)]
execute unless data storage forgecraft:display temp.bar.data{format:"bar"} run return run function custom_items:display/result/bar/loop with storage forgecraft:display temp.bar
function custom_items:display/bar/update with storage forgecraft:display temp.bar.data