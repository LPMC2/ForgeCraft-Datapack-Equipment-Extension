scoreboard players add .temp_index const 1
execute if score .temp_index const > .temp_length const run return fail
# Right
$execute if score .temp_value const matches 1.. run data modify storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].left_bar set value "$(left_bar)$(unit)"
$data modify storage forgecraft:display temp.data.left_bar set from storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].left_bar
execute if score .temp_value const matches 1.. run scoreboard players remove .temp_value const 1
# Left
$execute if score .temp_remain const matches 1.. run data modify storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].right_bar set value "$(right_bar)$(unit)"
$data modify storage forgecraft:display temp.data.right_bar set from storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].right_bar
execute if score .temp_remain const matches 1.. run scoreboard players remove .temp_remain const 1
execute if score .temp_remain const matches ..0 if score .temp_value const matches ..0 run return fail
function custom_items:display/bar/set/loop with storage forgecraft:display temp.data