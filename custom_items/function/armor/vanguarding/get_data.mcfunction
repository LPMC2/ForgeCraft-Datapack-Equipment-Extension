$scoreboard players set .temp_vanguarding_effect const $(count)
execute store result storage forgecraft:temp ability.amt int 1 run scoreboard players remove .temp_vanguarding_effect const 1
function custom_items:armor/vanguarding/apply with storage forgecraft:temp ability