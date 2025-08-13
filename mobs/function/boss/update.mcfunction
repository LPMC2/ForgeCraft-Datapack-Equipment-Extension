execute store result storage minecraft:boss store.id int 1 run scoreboard players get @s id
execute store result score @s health run data get entity @s Health
execute store result storage minecraft:boss store.value int 1 run scoreboard players get @s health
execute as @s run function mobs:boss/update_bossbar with storage minecraft:boss store
execute at @s unless entity @a[distance=..100] run tag @s remove boss_init