scoreboard players add @e[tag=raging_tool] raging_tool 1
execute at @e[tag=raging_tool] run particle dust{color:[0.831,0.000,1.000],scale:0.5} ~ ~0.65 ~ 0.5 0.5 0.5 1 2 normal
execute as @e[tag=raging_tool] at @s if score @s raging_tool matches 100.. run function custom_items:weapon/raging/tool/reset