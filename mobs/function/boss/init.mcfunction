execute store result storage minecraft:boss store.id int 1 run scoreboard players get @s id
execute store result score @s init_health run attribute @s minecraft:max_health get
data modify entity @s PersistenceRequired set value 1
execute as @s run function mobs:boss/add_bossbar with storage minecraft:boss store
tag @s add boss_init