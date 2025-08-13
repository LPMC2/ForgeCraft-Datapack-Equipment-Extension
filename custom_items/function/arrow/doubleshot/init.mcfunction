execute store result storage minecraft:arrow store.motion1 double 1 run data get entity @s Motion[0]
execute store result storage minecraft:arrow store.motion2 double 1 run data get entity @s Motion[1]
execute store result storage minecraft:arrow store.motion3 double 1 run data get entity @s Motion[2]
execute as @s run function custom_items:arrow/doubleshot/fire