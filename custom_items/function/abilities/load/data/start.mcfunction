scoreboard players set .temp_ability_length const 0
execute store result storage forgecraft:temp player.ability_index int 1 run scoreboard players set .temp_ability_index const 0
$execute store result score .temp_ability_length const run data get storage forgecraft:data player[{id:$(id)}].abilities
function custom_items:abilities/load/data/loop with storage forgecraft:temp player