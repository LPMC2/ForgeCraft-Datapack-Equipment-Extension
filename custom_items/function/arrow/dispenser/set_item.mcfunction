$summon item ~ ~ ~ {PickupDelay:20,Tags:["throw_item","init"],Item:{id:"$(item_id)"}}
data modify entity @n[tag=init,type=item] Item.components set from storage minecraft:item throw.item_data
execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s id
execute as @n[type=item,tag=throw_item,tag=init] at @s run function custom_items:arrow/dispenser/set_projectile with storage minecraft:arrow store
kill @s
execute as @p[tag=arrow_owner] at @s run function custom_items:arrow/dispenser/remove_item
tag @n[type=item,tag=throw_item,tag=init] remove init