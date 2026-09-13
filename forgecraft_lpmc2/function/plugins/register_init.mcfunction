data modify storage forgecraft:temp plugin.index set value 0
execute store result storage forgecraft:temp plugin.index int 1 run scoreboard players set .plugin-index const 0
scoreboard players set .plugin-count const 0
execute store result score .plugin-count const run data get storage forgecraft:plugin custom
data modify storage forgecraft:temp plugin.source set from storage forgecraft:plugin custom[0].slug
execute if score .plugin-count const matches 1.. run function forgecraft_lpmc2:plugins/message/base
execute if score .plugin-count const matches 1.. run function forgecraft_lpmc2:plugins/register_loop with storage forgecraft:temp plugin
execute if score .plugin-count const matches 1.. run function forgecraft_lpmc2:plugins/message/end