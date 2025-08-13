scoreboard players add .string_combined_index const 1
execute if score .string_length const <= .string_combined_index const run return fail
$data modify storage minecraft:string storage.combined_name set value "$(current_text)$(next_text)"
execute store result storage minecraft:string temp.next_index int 1 run scoreboard players add .string_next_index const 1
# --- Debug Lines ---
#tellraw @p {"score":{"name":".string_combined_index","objective":"const"}}
#tellraw @p {"score":{"name":".string_next_index","objective":"const"}}
#tellraw @p {"score":{"name":".string_length","objective":"const"}}
#$say combined_name: $(current_text)
#$say next_text: $(next_text)
data modify storage minecraft:string temp.current_text set from storage minecraft:string storage.combined_name
$data modify storage minecraft:string temp.next_text set from storage minecraft:string storage.item_name[$(next_index)].text
execute if score .string_length const > .string_combined_index const run function reforge:forging/string_data/combine/loop with storage minecraft:string temp