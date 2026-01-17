execute store result storage forgecraft:display temp.id int 1 run scoreboard players get @s id
$data modify storage forgecraft:display temp.tag set value "$(tag)"
$data modify storage forgecraft:display temp.type set value "$(type)"
$data modify storage forgecraft:display temp.max set value $(max)
$data modify storage forgecraft:display temp.selector set value "$(selector)"
$data modify storage forgecraft:display temp.score set value "$(score)"
$data modify storage forgecraft:display temp.format set value "$(format)"
$data modify storage forgecraft:display temp.color set value "$(color)"
$data modify storage forgecraft:display temp.label set value "$(label)"
$data modify storage forgecraft:display temp.unit set value "$(unit)"
function custom_items:display/operation/add with storage forgecraft:display temp