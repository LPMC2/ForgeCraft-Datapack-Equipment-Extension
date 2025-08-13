execute store result score .count const run data get entity @s Item.count
scoreboard players set .2 const 2
scoreboard players operation .count const *= .2 const
execute store result storage minecraft:mining store.newcount int 1 run scoreboard players get .count const
data modify entity @s Item.count set from storage minecraft:mining store.newcount
execute at @s run playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 1.2 0
execute at @s run particle minecraft:happy_villager ~ ~ ~ 0.1 0.1 0.1 1 3