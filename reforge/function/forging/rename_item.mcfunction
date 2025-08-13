scoreboard players set .isdisplay const 0
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon item ~ ~ ~ {PickupDelay:5,Age:-32768,Tags:["iteminit"],Motion:[0.0,0.25,0.0],Item:{id:"minecraft:stone",count:1}}
data modify entity @e[tag=iteminit,limit=1] Item.id set from storage minecraft:reforge forge_itemid
data modify entity @e[tag=iteminit,limit=1] Item.components set from storage minecraft:reforge forge_itemcomponents
#data modify storage minecraft:reforge forge.itemtype set from entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemtype
#execute unless data entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemtype run data modify storage minecraft:reforge forge.itemtype set value "Unknown Type"
#scoreboard players set .isreforged const -1
#function reforge:forging/forge_type/getforgetype
#execute if score .isreforged const matches -1 run kill @e[type=minecraft:item,tag=iteminit,limit=1]
$execute if data entity @n[tag=iteminit,limit=1] Item.components.minecraft:custom_data.reforgeid run data modify entity @n[tag=iteminit,limit=1] Item.components.minecraft:custom_name set value [{"color":"#DEDEDE","italic":false,"text":"⚒ "},{"color":"#DEDEDE","italic":false,"text":"$(custom_name)"}]
$execute unless data entity @n[tag=iteminit,limit=1] Item.components.minecraft:custom_data.reforgeid run data modify entity @n[tag=iteminit,limit=1] Item.components.minecraft:custom_name set value [{"color":"white","italic":true,"text":"$(custom_name)"}]
$data modify entity @n[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemname set value "$(custom_name)"
tag @e[tag=iteminit,limit=1] remove iteminit
data remove storage minecraft:reforge forge_itemid
data remove storage minecraft:reforge forge_itemcomponents
function reforge:forging/resetreforgeitem