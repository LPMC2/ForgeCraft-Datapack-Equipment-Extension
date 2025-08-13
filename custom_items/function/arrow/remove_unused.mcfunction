scoreboard players set .arrow_index const 0
scoreboard players set .arrow_length const 0
scoreboard players set .arrow_tick const 0
data modify storage minecraft:arrow store.index set value 0
execute store result score .arrow_length const run data get storage minecraft:arrow storage

execute if score .arrow_length const matches 1.. run function custom_items:arrow/remove_unused_loop with storage minecraft:arrow store
