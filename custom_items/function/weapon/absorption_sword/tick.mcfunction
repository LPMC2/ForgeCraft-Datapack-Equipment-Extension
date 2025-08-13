scoreboard players add @e[tag=absorption_sw] absorption_sword_cd 1

scoreboard players add .absorptioneffect const 1
execute as @e[tag=absorption_sw] at @s if score @s absorption_sword_cd matches 50.. run function custom_items:weapon/absorption_sword/reset
execute if score .absorptioneffect const matches 20.. run execute at @e[tag=absorption_sw] run particle dust_color_transition{from_color:[0.251,0.239,0.247],scale:1.5,to_color:[0.569,0.000,0.000]} ~ ~0.65 ~ 0.4 0.5 0.4 1 20 normal
execute if score .absorptioneffect const matches 20.. run scoreboard players set .absorptioneffect const 0 