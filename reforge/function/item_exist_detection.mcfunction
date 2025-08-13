tag @s add find
execute as @a at @s run function reforge:find_players
scoreboard players operation .temp_interaction_id const = @s reforgeId
execute as @e[type=item_display,tag=displayitem] at @s if score @s reforgeId = .temp_interaction_id const run function reforge:item_detection
tag @s remove find
data modify entity @s interaction.timestamp set value 0
data modify entity @s attack.timestamp set value 0