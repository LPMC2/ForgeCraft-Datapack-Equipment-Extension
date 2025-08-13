scoreboard players set @s sprint_cd 0
scoreboard players add @s dashing_amount 1
scoreboard players set .dash_digit dashing_amount 0
scoreboard players set .dash dashing_amount 0
execute if score @s dashing_amount > @s max_dash_amount run scoreboard players operation @s dashing_amount = @s max_dash_amount
scoreboard players operation .dash dashing_amount = @s dashing_amount
particle minecraft:small_gust ~ ~0.75 ~ 0.5 1 0.5 1 2
function custom_items:armor/dashing/add_digit
execute store result storage minecraft:armor store.digit int 1 run scoreboard players get .dash_digit dashing_amount
execute store result storage minecraft:armor store.value int 1 run scoreboard players get .dash dashing_amount
execute as @s run function custom_items:armor/dashing/apply with storage minecraft:armor store