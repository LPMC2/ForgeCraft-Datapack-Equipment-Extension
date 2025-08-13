execute if score .rage rage_meter_melee matches 100.. run scoreboard players add .rage_digit rage_meter_melee 1
execute if score .rage rage_meter_melee matches 100.. run scoreboard players remove .rage rage_meter_melee 100
execute if score .rage_digit rage_meter_melee matches 2.. if score .rage rage_meter_melee matches 0.. run scoreboard players set .rage rage_meter_melee 0
execute if score .rage_digit rage_meter_melee matches 2.. if score .rage rage_meter_melee matches 0.. run scoreboard players set .rage_digit rage_meter_melee 2
execute if score .rage_digit rage_meter_melee matches 2.. if score .rage rage_meter_melee matches 0.. run return fail
execute if score .rage rage_meter_melee matches 100.. run function custom_items:weapon/raging/melee/add_digit