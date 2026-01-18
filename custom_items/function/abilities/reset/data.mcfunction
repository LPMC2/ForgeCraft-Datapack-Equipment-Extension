execute store result storage forgecraft:temp player.ability_index int 1 run scoreboard players set .temp_ability_index const 0
$execute store result score .temp_ability_length const run data get storage forgecraft:data player[{id:$(id)}].abilities
function custom_items:abilities/reset/loop with storage forgecraft:temp player
$data modify storage forgecraft:data player[{id:$(id)}].abilities set value []