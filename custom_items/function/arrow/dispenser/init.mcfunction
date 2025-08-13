tag @s add find

execute as @a at @s run function custom_items:arrow/find_players
data remove storage minecraft:item throw
data modify storage minecraft:item throw.item_id set from entity @p[tag=arrow_owner] equipment.offhand.id
data modify storage minecraft:item throw.item_data set from entity @p[tag=arrow_owner] equipment.offhand.components
execute as @s at @s if data storage minecraft:item throw.item_id run function custom_items:arrow/dispenser/get_type
tag @s remove find
tag @a remove arrow_owner