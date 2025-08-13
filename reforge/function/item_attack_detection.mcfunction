scoreboard players operation .temp_interaction_id const = @s reforgeId
execute as @e[type=item_display,tag=displayitem] at @s if score @s reforgeId = .temp_interaction_id const run function reforge:item_remove

data modify entity @s attack.timestamp set value 0