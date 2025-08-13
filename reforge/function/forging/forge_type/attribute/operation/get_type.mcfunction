# > Important Note:
# Required Setup:
# Example: data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_speed",operation:"add_multiplied_total",slot:"$(slot)"}
# Example: data modify storage minecraft:attribute new.attribute_id set value $(uuid5)
# Example: data modify storage minecraft:attribute new.attribute_amount set value 1.5
# execute as @n[tag=iteminit,limit=1] run function reforge:forging/forge_type/attribute/operation/get_type
scoreboard players set .attribute_success const 0
execute as @s run function reforge:forging/forge_type/attribute/operation/find/init
#execute if score .attribute_success const matches 1 run say success finding!
#execute as @s unless score .attribute_success const matches 1 run say failed finding!
execute as @s if score .attribute_success const matches 1 if data storage minecraft:attribute new{type:add_multiplied_base} run function reforge:forging/forge_type/attribute/operation/type/add_multiplied_base/action with storage minecraft:attribute new
execute as @s if score .attribute_success const matches 1 if data storage minecraft:attribute new{type:add_multiplied_total} run function reforge:forging/forge_type/attribute/operation/type/add_multiplied_total/action with storage minecraft:attribute new
execute as @s if score .attribute_success const matches 1 if data storage minecraft:attribute new{type:add_value} run function reforge:forging/forge_type/attribute/operation/type/add_value/action with storage minecraft:attribute new
execute as @s unless score .attribute_success const matches 1 run function reforge:forging/forge_type/attribute/operation/fallback_set
execute as @s unless score .attribute_success const matches 1 run function reforge:forging/forge_type/attribute/operation/add_type with storage minecraft:attribute new