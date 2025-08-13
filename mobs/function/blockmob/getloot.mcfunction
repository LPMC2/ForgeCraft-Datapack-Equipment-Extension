data modify storage minecraft:mob store.dropitem set from entity @s item.id
scoreboard players set .base_drop_count const 0

execute store result score .base_drop_count const run scoreboard players get @s drop_count

execute store result score .multiply_drop_count const run random value 2..10

scoreboard players operation .base_drop_count const *= .multiply_drop_count const

#execute store result storage minecraft:mob store.dropcount int 1 run scoreboard players get .base_drop_count const
execute as @s run function mobs:blockmob/droploot with storage minecraft:mob store