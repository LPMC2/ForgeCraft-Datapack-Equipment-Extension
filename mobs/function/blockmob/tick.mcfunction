execute store result score @s health run data get entity @s AbsorptionAmount
tag @s add target_blockmob
execute store result storage minecraft:mob store.currenthealth int 1 run data get entity @s AbsorptionAmount
execute store result storage minecraft:mob store.inithealth int 1 run scoreboard players get @s init_health
execute store result storage minecraft:mob store.damage int 1 run scoreboard players get @s damage
execute as @e[tag=blockmob_text] at @s if score @s id = @e[tag=target_blockmob,limit=1] id run function mobs:blockmob/setname with storage minecraft:mob store
execute as @e[tag=blockmob_text] at @s if score @s id = @e[tag=target_blockmob,limit=1] id run execute at @e[tag=target_blockmob,limit=1] run tp @s ~ ~1 ~
execute as @e[tag=blockmob_display] at @s if score @s id = @e[tag=target_blockmob,limit=1] id run execute at @e[tag=target_blockmob,limit=1] run tp @s ~ ~0.5 ~
execute as @s run function mobs:blockmob/damage with storage minecraft:mob store
execute at @s[tag=invincible] unless block ~ ~ ~ water run data modify entity @s Invulnerable set value 0
execute at @s[tag=invincible] unless block ~ ~ ~ water run tag @s remove invincible
execute at @s[tag=!invincible] if block ~ ~ ~ water run data modify entity @s Invulnerable set value 1
execute at @s[tag=!invincible] if block ~ ~ ~ water run tag @s add invincible
execute as @s if score @s[tag=!block_init] health matches ..0 run function mobs:blockmob/death
scoreboard players add @s[tag=!invincible] cooldown 1
execute as @s if score @s cooldown matches 1200.. run function mobs:blockmob/reset
tag @s remove target_blockmob