scoreboard players set .isdisplay const 1
execute at @s run summon item ~ ~-0.5 ~ {PickupDelay:5,Age:-32768,Tags:["iteminit"],Motion:[0.0,0.25,0.0],Item:{id:"minecraft:stone",count:1}}
data modify entity @e[tag=iteminit,limit=1] Item.id set from storage minecraft:reforge forge_itemid
data modify entity @e[tag=iteminit,limit=1] Item.components set from storage minecraft:reforge forge_itemcomponents
data modify storage minecraft:reforge forge.itemtype set from entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemtype
execute unless data entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemtype run data modify storage minecraft:reforge forge.itemtype set value "Unknown Type"
scoreboard players set .isreforged const -1
function reforge:forging/get_forge_type
execute if score .isreforged const matches -1 run kill @e[type=minecraft:item,tag=iteminit,limit=1]
data remove storage minecraft:reforge forge_itemid
data remove storage minecraft:reforge forge_itemcomponents