execute store result storage forgecraft:display temp.index int 1 run scoreboard players set .temp_index const 0
$execute store result score .temp_length const run data get storage forgecraft:display data.$(id).actionbar
$data modify storage forgecraft:display data.$(id).result set value []
function custom_items:display/player/init/loop with storage forgecraft:display temp
function custom_items:display/tick