
scoreboard players set .bossbar_index const 0
data modify storage minecraft:boss store.index set value 0
function mobs:boss/loop_detection with storage minecraft:boss store
execute as @s run function mobs:boss/get_players