execute store result storage forgecraft:temp player.ability_index int 1 run scoreboard players add .temp_ability_index const 1
execute if score .temp_ability_index const > .temp_ability_length const run return fail
$function custom_items:abilities/reset/get_armor with storage forgecraft:data player[{id:$(id)}].abilities[$(ability_index)]
function custom_items:abilities/reset/loop with storage forgecraft:temp player