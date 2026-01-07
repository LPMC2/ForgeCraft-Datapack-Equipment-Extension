execute unless score @s effect_slowness_tick matches 5.. store result storage forgecraft:temp effect.slowness.amount double 0.2 run scoreboard players add @s effect_slowness_tick 1
scoreboard players set @s effect_slowness_cd 4
execute as @s run function effects:slowness/apply with storage forgecraft:temp effect.slowness