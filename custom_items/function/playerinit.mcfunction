scoreboard players set .player_loaded const 0
function reforge:player/load
execute if score .player_loaded const matches 1.. run return fail
scoreboard players add .global_unqiue_id id 1
scoreboard players operation @s id = .global_unqiue_id id
recipe give @s crafting:reforge_anvil
recipe give @s crafting:vanilla_item_converter
function reforge:give_reforge_anvil
advancement grant @s only reforge:forging_beginning
tag @s add init_player