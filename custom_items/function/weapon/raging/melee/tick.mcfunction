scoreboard players add @s raging_melee 1
execute at @s run particle dust{color:[0.831,0.000,1.000],scale:0.5} ~ ~0.65 ~ 0.5 0.5 0.5 1 2 normal
execute at @s if score @s raging_melee matches 200.. run function custom_items:weapon/raging/melee/reset