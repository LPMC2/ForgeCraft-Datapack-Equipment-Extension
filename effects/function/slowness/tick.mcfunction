scoreboard players remove @s effect_slowness_cd 1
execute if score @s effect_slowness_cd matches ..0 run function effects:slowness/reduct
particle minecraft:ash ~ ~ ~ 0.6 1 0.6 1 10
particle dust{color:[0.200,0.200,0.200],scale:2} ~ ~ ~ 0.3 0 0.3 0 10 normal
playsound minecraft:block.snow.step master @a ~ ~ ~ 0.5 0.5 0