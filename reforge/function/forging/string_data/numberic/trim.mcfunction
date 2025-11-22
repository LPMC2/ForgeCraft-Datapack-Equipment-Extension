# Target Storage: forgecraft:string target.text
# Result Storage: forgecraft:string temp.numberic.result
function reforge:forging/string_data/seperate/detailed/run
data modify storage forgecraft:string target.numberic set from storage forgecraft:string storage.seperated
data modify storage forgecraft:string temp.numberic.result set value ""
data modify storage forgecraft:string temp.numberic.text_before_decimal set value ""
data modify storage forgecraft:string temp.numberic.current_text set from storage forgecraft:string target.numberic[0].char.letter
data modify storage forgecraft:string temp.numberic.next_text set from storage forgecraft:string target.numberic[1].char.letter
scoreboard players set .temp_numberic_length const 0
scoreboard players set .temp_numberic_index const 0
scoreboard players set .temp_numberic_decimal const 0
execute store result storage forgecraft:string temp.numberic.next_index int 1 run scoreboard players set .temp_numberic_next_index const 2
execute store result storage forgecraft:string temp.numberic.next_index_1 int 1 run scoreboard players set .temp_numberic_next_index_1 const 3
execute store result score .temp_numberic_length const run data get storage forgecraft:string target.numberic
execute if score .temp_numberic_length const matches 1.. if score .string_length const matches 3.. run function reforge:forging/string_data/numberic/loop with storage forgecraft:string temp.numberic
function reforge:forging/string_data/numberic/rm_useless_decimal with storage forgecraft:string temp.numberic