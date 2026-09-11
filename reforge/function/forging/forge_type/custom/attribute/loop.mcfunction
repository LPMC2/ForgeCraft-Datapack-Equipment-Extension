$scoreboard players set .is_percentage const $(is_percentage)
data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute set value {type:"$(type)",operation:"$(operation)",slot:"$(slot)"}
$data modify storage minecraft:attribute new.attribute_id set value $(uuid)
$data modify storage minecraft:attribute new.attribute_amount set value $(amount)
execute if score .is_percentage const matches 1.. run function reforge:forging/forge_type/custom/attribute/percentage with storage minecraft:reforge forge
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type