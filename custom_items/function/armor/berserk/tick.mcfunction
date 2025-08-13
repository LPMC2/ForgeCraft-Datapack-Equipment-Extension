scoreboard players remove @s berserk_armor_cd 1
execute at @s run particle dust_color_transition{from_color:[0.800,0.000,1.000],scale:1,to_color:[0.310,0.000,0.580]} ~ ~0.7 ~ 0.4 0.7 0.4 1 1 normal
execute unless score @s berserk_armor_cd matches 1.. run function custom_items:armor/berserk/reset