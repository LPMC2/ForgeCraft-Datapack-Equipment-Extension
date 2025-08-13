summon small_fireball ~ ~ ~ {Tags:["throw_item","init"]}
execute at @s run playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 1 1 0
execute at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 1 0
data modify entity @n[tag=init,type=small_fireball] Item.components set from storage minecraft:item throw.item_data
execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s id
execute as @n[type=small_fireball,tag=throw_item,tag=init] at @s run function custom_items:arrow/dispenser/set_projectile with storage minecraft:arrow store
kill @s
execute as @p[tag=arrow_owner] at @s run function custom_items:arrow/dispenser/remove_item
tag @n[type=small_fireball,tag=throw_item,tag=init] remove init