execute if score .rage rage_meter_tool matches 100.. run scoreboard players add .rage_digit rage_meter_tool 1
execute if score .rage rage_meter_tool matches 100.. run scoreboard players remove .rage rage_meter_tool 100
execute if score .rage_digit rage_meter_tool matches 3.. if score .rage rage_meter_tool matches 0.. run scoreboard players set .rage rage_meter_tool 0
execute if score .rage_digit rage_meter_tool matches 3.. if score .rage rage_meter_tool matches 0.. run scoreboard players set .rage_digit rage_meter_tool 3
execute if score .rage_digit rage_meter_tool matches 3.. if score .rage rage_meter_tool matches 0.. run return fail
execute if score .rage rage_meter_tool matches 100.. run function custom_items:weapon/raging/tool/add_digit