execute if data entity @s[type=enderman,tag=paused] AngryAt[0] run function mobs:ranger_enderman/add_target
execute unless data entity @s[type=enderman,tag=!paused] AngryAt[0] run function mobs:ranger_enderman/remove_target
execute at @s run particle dust{color:[0.631,0.000,1.000],scale:1} ~ ~2.6 ~ 0.2 0.2 0.2 1 4 normal