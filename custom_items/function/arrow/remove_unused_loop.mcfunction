scoreboard players set .isexist const 0
scoreboard players set .arrow_id const 0
$execute store result score .arrow_id const run data get storage minecraft:arrow storage[$(index)].id
# Debug: tellraw @p [{"text":"ID: "},{"score":{"name":".arrow_id","objective":"const"}}]
$execute store result storage minecraft:arrow store.id int 1 run data get storage minecraft:arrow storage[$(index)].id
execute as @e[type=#entity_hit_matching:arrow] at @s if score @s id = .arrow_id const run scoreboard players add .isexist const 1
execute if score .isexist const matches 0 run function custom_items:arrow/remove_storage with storage minecraft:arrow store
scoreboard players add .arrow_index const 1
# Debug: $tellraw @p [{"text":"Index($(index)): "},{"score":{"name":".arrowbar_index","objective":"const"}}]
execute store result storage minecraft:arrow store.index int 1 run scoreboard players get .arrow_index const

execute if score .arrow_index const < .arrow_length const run function custom_items:arrow/remove_unused_loop with storage minecraft:arrow store