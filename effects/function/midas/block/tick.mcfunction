scoreboard players add @s const 1
execute if block ~ ~ ~ #minecraft:replaceable run return run kill @s[type=marker]
execute if score @s const matches 100.. run function effects:midas/block/revert