execute store result storage forgecraft:temp player.ability_index int 1 run scoreboard players add .temp_ability_index const 1
execute if score .temp_ability_index const > .temp_ability_length const run return fail
data remove storage forgecraft:temp player.ability_name
$data modify storage forgecraft:temp player.ability_name set from storage forgecraft:temp player.abilities[$(ability_index)]
function custom_items:abilities/load/add with storage forgecraft:temp player
function custom_items:abilities/load/loop with storage forgecraft:temp player