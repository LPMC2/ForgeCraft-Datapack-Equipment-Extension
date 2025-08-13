execute store result score .supercharged const run data get entity @s weapon.components.minecraft:custom_data.supercharged
scoreboard players set .supercharged_amount const 65
scoreboard players operation .supercharged_amount const *= .supercharged const
execute store result storage minecraft:arrow store.supercharged double 1 run scoreboard players get .supercharged_amount const
execute as @s run function custom_items:arrow/super_charged/launch with storage minecraft:arrow store
execute as @s run function custom_items:arrow/super_charged/add_damage
execute at @s run playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ 0.45 2 0
execute at @s run particle minecraft:explosion ^ ^ ^ 0 0 0 2 0 normal