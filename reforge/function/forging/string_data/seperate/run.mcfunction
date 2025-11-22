# > target: Storage forgecraft:string target.text
# > Goal of this function: initialize the loop for each letter in id
# > Result: Storage -> forgecraft:string storage.seperated
# > Example of result: Example --> [{"id":0, "char":"E"}, {"id":1, "char":"x"}, {"id":2, "char":"a"}, {"id":3, "char":"m"}, {"id":4, "char":"p"}, {"id":5, "char":"l"}, {"id":6, "char":"e"}]
scoreboard players set .string_length const 0
scoreboard players set .list_index const 0
scoreboard players set .no_space const 1
execute store result storage forgecraft:string storage.list_index int 1 run scoreboard players set .list_index const 0
execute store result storage forgecraft:string storage.index int 1 run scoreboard players set .string_index const 0
execute store result storage forgecraft:string storage.index_offset int 1 run scoreboard players set .string_index_offset const 1
execute store result score .string_length const run data get storage forgecraft:string target.text
data remove storage forgecraft:string storage.seperated
execute as @s run function reforge:forging/string_data/seperate/loop with storage forgecraft:string storage
