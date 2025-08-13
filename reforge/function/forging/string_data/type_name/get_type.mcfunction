execute as @s[type=minecraft:item_display] run function reforge:forging/string_data/type_name/get_init
scoreboard players set .string_name_index const 0
function reforge:forging/string_data/combine/init