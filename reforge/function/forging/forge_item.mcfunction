execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon item ~ ~ ~ {PickupDelay:5,Age:-32768,Tags:["iteminit"],Motion:[0.0,0.25,0.0],Item:{id:"minecraft:stone",count:1}}
data modify entity @n[type=item,tag=iteminit] Item.id set from storage minecraft:reforge forge_itemid
data modify entity @n[type=item,tag=iteminit] Item.components set from storage minecraft:reforge forge_itemcomponents
data modify storage minecraft:reforge forge.itemtype set from entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.itemtype
execute unless data entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.itemtype run data modify storage minecraft:reforge forge.itemtype set value "Unknown Type"
scoreboard players set .isreforged const -1
scoreboard players set .isdisplay const 0
function reforge:forging/get_forge_type
execute if score .isreforged const matches -1 run kill @e[type=minecraft:item,tag=iteminit,limit=1]
data remove storage minecraft:reforge temp.id.forge_id
execute store result storage minecraft:reforge temp.id.forge_id int 1 run scoreboard players get .item_reforge reforgeId
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.forge_data append from storage minecraft:reforge temp.id
tag @n[type=item,tag=iteminit] remove iteminit
data remove storage minecraft:reforge forge_itemid
data remove storage minecraft:reforge forge_itemcomponents