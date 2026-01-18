scoreboard players set .temp_has_abilities_data const 0
function custom_items:abilities/load/check with storage forgecraft:temp player
execute unless score .temp_has_abilities_data const matches 1.. run return 1
return 0