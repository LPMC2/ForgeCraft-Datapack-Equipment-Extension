# Reset
data modify storage minecraft:reforge forge.attribute_amount set value 0
data modify storage minecraft:reforge forge.attribute_operation set value "add_value"
data modify storage minecraft:reforge forge.attribute_type set value "minecraft:armor"
data modify storage minecraft:reforge forge.attribute_slot set value "auto"

# Percentage value
$execute if data storage minecraft:reforge data.reforge_data[{id:$(forgeid)}].attributes[$(attribute_index)].percentage run data modify storage minecraft:reforge forge.percentage set from storage minecraft:reforge data.reforge_data[{id:$(forgeid)}].attributes[$(attribute_index)].percentage
$execute unless data storage minecraft:reforge data.reforge_data[{id:$(forgeid)}].attributes[$(attribute_index)].percentage run data remove storage minecraft:reforge forge.percentage

# Attribute Data
$data modify storage minecraft:reforge forge.attribute_amount set from storage minecraft:reforge data.reforge_data[{id:$(forgeid)}].attributes[$(attribute_index)].amount
$data modify storage minecraft:reforge forge.attribute_operation set from storage minecraft:reforge data.reforge_data[{id:$(forgeid)}].attributes[$(attribute_index)].operation
$data modify storage minecraft:reforge forge.attribute_type set from storage minecraft:reforge data.reforge_data[{id:$(forgeid)}].attributes[$(attribute_index)].type
$data modify storage minecraft:reforge forge.attribute_slot set from storage minecraft:reforge data.reforge_data[{id:$(forgeid)}].attributes[$(attribute_index)].slot

# UUID
execute store result storage minecraft:reforge forge.uuid int 1 run random value -999999999..999999999