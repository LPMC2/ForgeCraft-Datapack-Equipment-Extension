execute store result storage forgecraft:display temp.bar.index int 1 run scoreboard players set .temp_index const 0
$execute store result score .temp_length const run data get storage forgecraft:display data.$(id).actionbar
$data modify storage forgecraft:display temp.bar.id set value $(id)
function custom_items:display/result/bar/loop with storage forgecraft:display temp.bar