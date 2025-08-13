summon firework_rocket ^ ^ ^ {ShotAtAngle:1b,Tags:["throw_item","init"]}
execute at @s run playsound minecraft:block.dispenser.dispense master @a ~ ~ ~ 1 1 0
execute at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1 1 0
execute if data entity @p[tag=arrow_owner] Inventory[{Slot:-106b}].components.minecraft:fireworks{flight_duration:1b} run data modify entity @n[tag=init,type=firework_rocket] LifeTime set value 10
execute if data entity @p[tag=arrow_owner] Inventory[{Slot:-106b}].components.minecraft:fireworks{flight_duration:2b} run data modify entity @n[tag=init,type=firework_rocket] LifeTime set value 20
execute if data entity @p[tag=arrow_owner] Inventory[{Slot:-106b}].components.minecraft:fireworks{flight_duration:3b} run data modify entity @n[tag=init,type=firework_rocket] LifeTime set value 30
data modify entity @n[tag=init,type=firework_rocket] FireworksItem.id set from storage minecraft:item throw.item_id
data modify entity @n[tag=init,type=firework_rocket] FireworksItem.components set from storage minecraft:item throw.item_data
execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s id
execute as @n[type=firework_rocket,tag=throw_item,tag=init] at @s run function custom_items:arrow/dispenser/set_projectile with storage minecraft:arrow store
kill @s
execute as @p[tag=arrow_owner] at @s run function custom_items:arrow/dispenser/remove_item
tag @n[type=firework_rocket,tag=throw_item,tag=init] remove init