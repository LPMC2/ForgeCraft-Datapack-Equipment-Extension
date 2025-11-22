# > Goal of this function: In each loop, get the letter from the index (string)
#   and store it to the list of storage, [seperated]
$data modify storage forgecraft:string storage.seperated append string storage forgecraft:string target.text $(index) $(index_offset)

execute if score .no_space const matches 1.. if data storage forgecraft:string storage.seperated[{char:" "}] run data remove storage forgecraft:string storage.seperated[{char:" "}]
execute store result storage forgecraft:string storage.list_index int 1 run scoreboard players add .list_index const 1
execute store result storage forgecraft:string storage.index int 1 run scoreboard players add .string_index const 1
execute store result storage forgecraft:string storage.index_offset int 1 run scoreboard players add .string_index_offset const 1
execute if score .string_length const > .string_index const run function reforge:forging/string_data/seperate/loop with storage forgecraft:string storage
