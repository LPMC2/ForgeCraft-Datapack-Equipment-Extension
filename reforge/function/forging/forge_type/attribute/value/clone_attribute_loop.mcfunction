execute store result storage minecraft:attribute store.uuid int 1 run random value -999999999..999999999
#function reforge:forging/forge_type/attribute/value/set_attribute_data with storage minecraft:attribute store
#execute as @s run function reforge:forging/forge_type/attribute/value/set_attribute with storage minecraft:attribute store

data remove storage minecraft:attribute new.attribute
$data modify storage minecraft:attribute new.attribute_actual_type set from storage minecraft:attribute list.$(index).type
$data modify storage minecraft:attribute new.attribute_operation set from storage minecraft:attribute list.$(index).operation
$data modify storage minecraft:attribute new.attribute_slot set from storage minecraft:attribute list.$(index).slot
#$data modify storage minecraft:attribute new.attribute_id set from storage storage minecraft:attribute list.$(index).id
#$execute store result storage minecraft:attribute new.attribute_amount double 0.5 run data get storage minecraft:attribute list.$(index).amount
$execute store result score .attribute_amount const run data get storage minecraft:attribute list.$(index).amount $(amount)
scoreboard players set .-1 const -1
execute if score .attribute_amount const matches ..-1 run scoreboard players operation .attribute_amount const *= .-1 const
execute store result storage minecraft:attribute new.attribute_amount double 0.001 run scoreboard players get .attribute_amount const
execute as @s run function reforge:forging/forge_type/attribute/value/set_attribute_storage with storage minecraft:attribute new
execute as @s run function reforge:forging/forge_type/attribute/operation/get_type

scoreboard players add .clone_attribute_index const 1
execute store result storage minecraft:attribute store.index int 1 run scoreboard players get .clone_attribute_index const
execute as @s if score .clone_attribute_index const < .clone_attribute_length const run function reforge:forging/forge_type/attribute/value/clone_attribute_loop with storage minecraft:attribute store