scoreboard players set .inferno_amount const 25
scoreboard players set .inferno_amount_digit const 0
scoreboard players operation .inferno_amount const *= @s inferno_armor_count

function custom_items:armor/inferno/add_digit
execute store result storage minecraft:armor store.amount int 1 run scoreboard players get .inferno_amount const
execute store result storage minecraft:armor store.digit int 1 run scoreboard players get .inferno_amount_digit const
execute as @s run function custom_items:armor/inferno/apply with storage minecraft:armor store
execute at @s run playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1.8 0
execute at @s run particle minecraft:flame ~ ~0.7 ~ 0.4 0.7 0.4 0.5 30