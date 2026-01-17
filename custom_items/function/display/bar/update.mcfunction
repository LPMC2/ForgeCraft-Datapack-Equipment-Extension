execute store result storage forgecraft:display temp.id int 1 run scoreboard players get @s id
$data modify storage forgecraft:display temp.tag set value $(tag)
function custom_items:display/bar/get with storage forgecraft:display temp
function custom_items:display/bar/calculate with storage forgecraft:display temp.data