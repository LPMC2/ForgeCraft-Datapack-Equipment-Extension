data modify storage minecraft:reforge forge.name set from entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.itemname
data modify storage minecraft:reforge forge.itemtype set from entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.itemtype
execute unless data entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.itemtype run data modify storage minecraft:reforge forge.itemtype set value "Unknown Type"
scoreboard players set .isreforged const -1
scoreboard players set .isdisplay const 0
function reforge:forging/get_forge_type
execute unless score .isreforged const matches 1.. run kill @n[type=item,tag=iteminit]
data remove storage minecraft:reforge temp.id.forge_id
execute store result storage minecraft:reforge temp.id.forge_id int 1 run scoreboard players get .item_reforge reforgeId
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.forge_data append from storage minecraft:reforge temp.id
tag @n[type=item,tag=iteminit] remove iteminit
data remove storage minecraft:reforge forge_itemid
data remove storage minecraft:reforge forge_itemcomponents