data modify storage minecraft:mob store.item set from entity @s Item.id
data modify storage minecraft:mob store.count set from entity @s Item.count
execute store result storage minecraft:mob store.health int 1 run random value 50..200
execute store result storage minecraft:mob store.damage int 1 run random value 20..50
execute as @s run function mobs:blockmob/spawn with storage minecraft:mob store