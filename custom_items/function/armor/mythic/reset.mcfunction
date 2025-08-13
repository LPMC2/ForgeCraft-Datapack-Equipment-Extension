data modify storage minecraft:armor store.type set value "head"
execute as @s run function custom_items:armor/mythic/reset_boost with storage minecraft:armor store
data modify storage minecraft:armor store.type set value "chest"
execute as @s run function custom_items:armor/mythic/reset_boost with storage minecraft:armor store
data modify storage minecraft:armor store.type set value "legs"
execute as @s run function custom_items:armor/mythic/reset_boost with storage minecraft:armor store
data modify storage minecraft:armor store.type set value "feet"
execute as @s run function custom_items:armor/mythic/reset_boost with storage minecraft:armor store