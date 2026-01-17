$execute unless data storage forgecraft:display data.$(id).id run data modify storage forgecraft:display data.$(id).id set value $(id)
$execute if data storage forgecraft:display data.$(id).actionbar[{tag:"$(tag)"}] run return run function custom_items:display/operation/update with storage forgecraft:display temp
$data modify storage forgecraft:display data.$(id).actionbar append value {\
    tag:"$(tag)",\
    type:"$(type)",\
    max:$(max),\
    selector:"$(selector)",\
    score:"$(score)",\
    format:"$(format)",\
    color:"$(color)",\
    label:"$(label)",\
    unit:"$(unit)"\
}
function custom_items:display/player/update with storage forgecraft:display temp