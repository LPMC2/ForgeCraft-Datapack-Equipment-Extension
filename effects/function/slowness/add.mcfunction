execute unless score @s effect_slowness_tick matches 7.. store result storage forgecraft:temp effect.slowness.amount double 0.15 run scoreboard players add @s effect_slowness_tick 1
execute store result storage forgecraft:temp effect.slowness.tick int 1 run scoreboard players get @s effect_slowness_tick
execute unless score @s effect_slowness_cd matches 1.. run scoreboard players set @s effect_slowness_cd 4
execute as @s run function effects:slowness/apply with storage forgecraft:temp effect.slowness