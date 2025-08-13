tag @s add find

execute as @a at @s run function custom_items:arrow/find_players
scoreboard players set @p[tag=arrow_owner] rapid_count 4
execute if score @p[tag=arrow_owner] arrow_id matches 1.. run execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @p[tag=arrow_owner] arrow_id
function custom_items:arrow/remove_storage with storage minecraft:arrow store
scoreboard players operation @p[tag=arrow_owner] arrow_id = @s[tag=!arrow_ignore] id
tag @s add arrow_ignore
execute if entity @s[type=arrow] run scoreboard players set @p[tag=arrow_owner] arrow_type 1
execute if entity @s[type=spectral_arrow] run scoreboard players set @p[tag=arrow_owner] arrow_type 2
tag @s remove find
tag @a remove arrow_owner

