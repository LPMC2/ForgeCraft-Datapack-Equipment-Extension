scoreboard players set .temp_index const 0
scoreboard players operation .temp_length const = .temp_max const
data modify storage forgecraft:display temp.data.left_bar set value ""
data modify storage forgecraft:display temp.data.right_bar set value ""
function custom_items:display/bar/set/base with storage forgecraft:display temp.data
function custom_items:display/bar/set/loop with storage forgecraft:display temp.data