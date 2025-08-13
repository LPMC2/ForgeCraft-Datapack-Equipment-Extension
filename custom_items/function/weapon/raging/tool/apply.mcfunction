scoreboard players set @s raging_tool 0
scoreboard players add @s rage_meter_tool 1
tag @s add raging_tool
scoreboard players set .15 const 15
scoreboard players set .100 const 100
scoreboard players set .rage rage_meter_tool 0
scoreboard players set .rage_digit rage_meter_tool 0
scoreboard players operation .rage rage_meter_tool = @s rage_meter_tool
scoreboard players operation .rage rage_meter_tool *= .15 const
function custom_items:weapon/raging/tool/add_digit

execute store result storage minecraft:attribute store.value_demical int 1 run scoreboard players get .rage rage_meter_tool
execute store result storage minecraft:attribute store.value_digit int 1 run scoreboard players get .rage_digit rage_meter_tool

execute as @s run function custom_items:weapon/raging/tool/add_attribute with storage minecraft:attribute store