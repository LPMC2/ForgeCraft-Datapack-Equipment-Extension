scoreboard players set .player_loaded const 0
data modify storage forgecraft:temp new.player.uuid_1 set from entity @s UUID[0]
data modify storage forgecraft:temp new.player.uuid_2 set from entity @s UUID[1]
data modify storage forgecraft:temp new.player.uuid_3 set from entity @s UUID[2]
data modify storage forgecraft:temp new.player.uuid_4 set from entity @s UUID[3]
function reforge:player/load/check with storage forgecraft:temp new.player