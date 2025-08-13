execute at @s[tag=!stunning] run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.75 0
attribute @s[type=!player] minecraft:follow_range modifier add stun_follow -1 add_multiplied_total
attribute @s minecraft:movement_speed modifier add stun_speed -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add stun_jump -1 add_multiplied_total
tag @s[tag=!stunning] add stunning

