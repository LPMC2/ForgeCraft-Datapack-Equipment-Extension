execute if data storage forgecraft:display settings{format:"none"} run return fail
$data modify storage forgecraft:display temp.display.result set from storage forgecraft:display data.$(id).result
$data modify storage forgecraft:display temp.display.id set from storage forgecraft:display data.$(id).id
#$execute if data storage forgecraft:display data.$(id).actionbar[{format:"bar"}] run function custom_items:display/result/bar/init with storage forgecraft:display temp.player
execute if data storage forgecraft:display temp.display.result[] run return run function custom_items:display/result/display with storage forgecraft:display temp.display
function custom_items:display/result/clear