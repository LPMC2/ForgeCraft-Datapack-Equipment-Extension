execute at @s if block ~ ~ ~ #minecraft:replaceable run function mobs:cursed/get_block
execute at @s unless block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run function mobs:cursed/get_block_under
execute store result score @s ability_action_cd1 run random value 200..400
execute at @s run execute as @e[type=item,nbt={Age:0s},distance=..5] at @s unless data entity @s Owner run function mobs:cursed/summon