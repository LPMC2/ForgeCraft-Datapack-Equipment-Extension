scoreboard players add .temp_numberic_index const 1
execute if score .temp_numberic_length const < .temp_numberic_index const run return fail
#$say $(current_text) | $(next_text) $(next_index)
$execute unless score .temp_numberic_decimal const matches 2.. run data modify storage forgecraft:string temp.numberic.result set value "$(current_text)$(next_text)"
$execute unless score .temp_numberic_decimal const matches 1.. run data modify storage forgecraft:string temp.numberic.text_before_decimal set value "$(current_text)"
execute if score .temp_numberic_decimal const matches 1.. run scoreboard players add .temp_numberic_decimal const 1
execute if data storage forgecraft:string temp.numberic{next_text:"."} run scoreboard players set .temp_numberic_decimal const 1
execute store result storage forgecraft:string temp.numberic.next_index int 1 run scoreboard players add .temp_numberic_next_index const 1
execute store result storage forgecraft:string temp.numberic.next_index_1 int 1 run scoreboard players add .temp_numberic_next_index_1 const 1
#tellraw @p {"score":{"name":".temp_numberic_decimal","objective":"const"}}
$execute if score .temp_numberic_decimal const matches 2.. if data storage forgecraft:string temp.numberic{next_text:"0"} if data storage forgecraft:string target.numberic[$(next_index_1)].char{letter:"0"} run return fail
execute if score .temp_numberic_decimal const matches 5.. run return fail
execute if data storage forgecraft:string temp.numberic{next_text:"d"} run return fail
$execute if score .temp_numberic_decimal const matches 2.. run data modify storage forgecraft:string temp.numberic.result set value "$(current_text)$(next_text)"

data modify storage forgecraft:string temp.numberic.current_text set from storage forgecraft:string temp.numberic.result
$data modify storage forgecraft:string temp.numberic.next_text set from storage forgecraft:string target.numberic[$(next_index)].char.letter
function reforge:forging/string_data/numberic/loop with storage forgecraft:string temp.numberic