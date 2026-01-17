$execute unless data storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}] run return run function custom_items:display/operation/add with storage forgecraft:display temp
$execute if data storage forgecraft:display temp.type run data modify storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].type set from storage forgecraft:display temp.type
$execute if data storage forgecraft:display temp.max run data modify storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].max set from storage forgecraft:display temp.max
$execute if data storage forgecraft:display temp.selector run data modify storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].selector set from storage forgecraft:display temp.selector
$execute if data storage forgecraft:display temp.score run data modify storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].score set from storage forgecraft:display temp.score
$execute if data storage forgecraft:display temp.format run data modify storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].format set from storage forgecraft:display temp.format
$execute if data storage forgecraft:display temp.color run data modify storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].color set from storage forgecraft:display temp.color
$execute if data storage forgecraft:display temp.label run data modify storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].label set from storage forgecraft:display temp.label
$execute if data storage forgecraft:display temp.unit run data modify storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}].unit set from storage forgecraft:display temp.unit
function custom_items:display/player/update with storage forgecraft:display temp