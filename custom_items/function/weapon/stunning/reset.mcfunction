attribute @s[type=!player] minecraft:follow_range modifier remove stun_follow
attribute @s minecraft:movement_speed modifier remove stun_speed
attribute @s minecraft:jump_strength modifier remove stun_jump
scoreboard players set @s stun 0
tag @s remove stunning
