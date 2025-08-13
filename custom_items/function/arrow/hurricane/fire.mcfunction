execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s id
execute as @s run function custom_items:arrow/hurricane/summon with storage minecraft:arrow store
execute at @s run playsound minecraft:block.dispenser.launch master @a ~ ~ ~ 0.5 1 0