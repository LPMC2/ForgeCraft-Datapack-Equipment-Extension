tag @s add find
execute as @e[tag=target_type_forge] at @s if score @s reforgeId = @e[tag=find,limit=1] reforgeId run function reforge:item_remove

tag @s remove find

data modify entity @s attack.timestamp set value 0