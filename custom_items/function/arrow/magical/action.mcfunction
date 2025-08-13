scoreboard players set .magical_power const 0
execute store result storage minecraft:arrow store.id int 1 run scoreboard players add @s id 0
execute store result score .magical_power const run data get entity @s weapon.components.minecraft:custom_data.magical
execute as @s run function custom_items:arrow/magical/cast with storage minecraft:arrow store
execute as @s run function custom_items:arrow/remove with storage minecraft:arrow store