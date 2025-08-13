scoreboard players set .string_capital_index const -2
execute if data storage minecraft:string storage.item_name[{text:"_"}] run execute store result score .string_capital_index const run data get storage minecraft:string storage.item_name[{text:"_"}].id
tellraw @p {"score":{"name":".string_capital_index","objective":"const"}}
scoreboard players add .string_capital_index const 1
scoreboard players operation .string_name_index const = .string_capital_index const
function reforge:forging/string_data/alphabet/captialize_init
execute if data storage minecraft:string storage.item_name[{text:"_"}] run function reforge:forging/string_data/alphabet/captialize_find_loop