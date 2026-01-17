scoreboard players set @s raging_tool 0
scoreboard players add @s rage_meter_tool 1
execute if score @s rage_meter_tool matches 31.. run scoreboard players set @s rage_meter_tool 30
tag @s add raging_tool
scoreboard players set .15 const 15
scoreboard players set .100 const 100
scoreboard players set .rage rage_meter_tool 0
scoreboard players set .rage_digit rage_meter_tool 0
scoreboard players operation .rage rage_meter_tool = @s rage_meter_tool
scoreboard players operation .rage rage_meter_tool *= .15 const
function custom_items:weapon/raging/tool/add_digit
function custom_items:display/add {tag:"raging_tool",type:"status",max:30,selector:"@s",score:"rage_meter_tool",format:"number",color:"light_purple",label:"Raging Meter (Tool): ",unit:" 🔥"}

execute store result storage minecraft:attribute store.value_demical int 1 run scoreboard players get .rage rage_meter_tool
execute store result storage minecraft:attribute store.value_digit int 1 run scoreboard players get .rage_digit rage_meter_tool

execute as @s run function custom_items:weapon/raging/tool/add_attribute with storage minecraft:attribute store