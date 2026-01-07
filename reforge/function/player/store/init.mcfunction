data modify storage forgecraft:temp new.player.id set value -1
execute store result storage forgecraft:temp new.player.id int 1 run scoreboard players get @s id
$execute if data storage forgecraft:data player[{uuid:[$(uuid_1),$(uuid_2),$(uuid_3),$(uuid_4)]}] run return run function reforge:player/store/set with storage forgecraft:temp new.player
function reforge:player/store/add with storage forgecraft:temp new.player