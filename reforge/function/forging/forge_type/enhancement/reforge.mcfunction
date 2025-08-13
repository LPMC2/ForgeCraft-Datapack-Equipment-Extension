execute unless score .item_mod id matches 1.. run return fail
execute if score .enhancement_count const matches 10.. run return fail

data remove storage minecraft:attribute new.attribute
execute if data entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.runic run data modify storage minecraft:reforge forge.slot set value "offhand"
function reforge:forging/forge_type/enhancement/get_type
$data modify storage minecraft:attribute new.attribute_id set value $(uuid1)
execute as @n[type=item,tag=iteminit,limit=1] run function reforge:forging/forge_type/attribute/operation/get_type
scoreboard players add .enhancement_count const 1
execute store result entity @n[tag=iteminit,limit=1] Item.components.minecraft:custom_data.enhancement_count int 1 run scoreboard players get .enhancement_count const

scoreboard players set .isreforged const 1
function reforge:forging/resetreforgeitem
