# Uses: Score --> .string_name_index const
# Start: /execute as @n[type=minecraft:item_display] run function reforge:forging/string_data/get_init
execute store result storage minecraft:string temp.index int 1 run scoreboard players get .string_name_index const
function reforge:forging/string_data/alphabet/captialize_letter with storage minecraft:string temp