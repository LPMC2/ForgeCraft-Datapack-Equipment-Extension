scoreboard players set .isdisplay const 1
data modify storage minecraft:reforge forge.name set from entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemname
data modify storage minecraft:reforge forge.itemtype set from entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemtype
execute unless data entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemtype run data modify storage minecraft:reforge forge.itemtype set value "Unknown Type"
scoreboard players set .isreforged const -1
function reforge:forging/get_forge_type
execute unless score .isreforged const matches 1.. run kill @e[tag=iteminit,limit=1]
data remove storage minecraft:reforge forge_itemid
data remove storage minecraft:reforge forge_itemcomponents