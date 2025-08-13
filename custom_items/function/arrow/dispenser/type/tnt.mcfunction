summon tnt ~ ~ ~ {fuse:80,Tags:["throw_item","init"]}
execute at @s run playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 1 1 0
execute at @s run playsound minecraft:block.dispenser.launch master @a ~ ~ ~ 1 1 0

execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s id
execute as @n[type=tnt,tag=throw_item,tag=init] at @s run function custom_items:arrow/dispenser/set_projectile with storage minecraft:arrow store
kill @s
execute as @p[tag=arrow_owner] at @s run function custom_items:arrow/dispenser/remove_item
tag @n[type=tnt,tag=throw_item,tag=init] remove init