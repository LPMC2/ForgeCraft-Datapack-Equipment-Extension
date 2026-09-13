execute store result storage minecraft:reforge forge.attribute_index int 1 run scoreboard players add .attribute_index const 1
execute if score .attribute_index const > .attribute_count const run return fail
$execute unless data storage minecraft:reforge data.reforge_data[{id:$(forgeid)}].attributes[$(attribute_index)] run return fail
#$say Attribute ($(attribute_index)) - $(attribute_type) $(attribute_operation) $(attribute_amount) - $(slot)
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"$(attribute_type)",operation:"$(attribute_operation)",slot:"$(slot)"}
execute unless data storage minecraft:reforge forge{attribute_slot:"auto"} run data modify storage minecraft:attribute new.attribute.slot set from storage minecraft:reforge forge.attribute_slot
$data modify storage minecraft:attribute new.attribute_id set value $(uuid)
$data modify storage minecraft:attribute new.attribute_amount set value $(attribute_amount)
$execute if data storage minecraft:reforge data.reforge_data[{id:$(forgeid)}].attributes[$(attribute_index)].percentage run function reforge:forging/forge_type/custom/attribute/percentage with storage minecraft:reforge forge
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type
function reforge:forging/forge_type/custom/attribute/get with storage minecraft:reforge forge
function reforge:forging/forge_type/custom/attribute/loop with storage minecraft:reforge forge