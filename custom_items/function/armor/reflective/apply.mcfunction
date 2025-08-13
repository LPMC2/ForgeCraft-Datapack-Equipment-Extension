scoreboard players set .reflective_amount const 50
scoreboard players set .reflective_amount_digit const 0
scoreboard players operation .reflective_amount const *= @s reflective_armor_count
execute if entity @s[advancements={reforge:reflective_reforge=false}] if score @s reflective_armor_count matches 4.. run advancement grant @s only reforge:reflective_reforge
function custom_items:armor/reflective/add_digit
execute store result storage minecraft:armor store.digit int 1 run scoreboard players get .reflective_amount_digit const
execute store result storage minecraft:armor store.value int 1 run scoreboard players get .reflective_amount const
execute as @n[tag=onHurt_target] run function custom_items:armor/reflective/get_damage with storage minecraft:armor store