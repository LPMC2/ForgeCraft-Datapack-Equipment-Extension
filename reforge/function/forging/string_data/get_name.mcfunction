execute store result storage minecraft:string storage.index int 1 run scoreboard players set .string_index const 0
execute store result storage minecraft:string storage.index_offset int 1 run scoreboard players set .string_index_offset const 1
execute as @s[type=minecraft:item_display] run function reforge:forging/string_data/pre_id/get_init
execute as @s[type=minecraft:item_display] run function reforge:forging/string_data/get_init
scoreboard players set .string_name_index const 0
function reforge:forging/string_data/alphabet/captialize_init
function reforge:forging/string_data/trim/find/init
function reforge:forging/string_data/trim/underscore_loop
function reforge:forging/string_data/combine/init