execute if score .dash dashing_amount matches 100.. run scoreboard players add .dash_digit dashing_amount 1
execute if score .dash dashing_amount matches 100.. run scoreboard players remove .dash dashing_amount 100

execute if score .dash dashing_amount matches 100.. run function custom_items:armor/dashing/add_digit