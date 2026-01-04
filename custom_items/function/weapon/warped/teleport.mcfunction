$tp @s ^0.5 ^ ^$(distance)
execute align xyz run tp @s ~0.5 ~ ~0.5
playsound minecraft:entity.player.teleport master @a ~ ~ ~ 1 1 0
particle minecraft:portal ~ ~ ~ 0.5 1 0.5 1 100
effect give @s minecraft:slow_falling 1 0 true