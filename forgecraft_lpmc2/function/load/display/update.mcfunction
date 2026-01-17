function reforge:player/load
execute store result storage forgecraft:player temp.id int 1 run scoreboard players get @s id
execute unless data storage forgecraft:display settings{format:"bossbar"} run function forgecraft_lpmc2:load/display/bossbar/disable with storage forgecraft:player temp