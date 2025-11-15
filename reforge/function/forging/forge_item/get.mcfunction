data modify entity @n[type=minecraft:item,tag=iteminit] Item set from entity @s item
data remove storage minecraft:reforge temp.refund
data modify storage minecraft:reforge temp.refund.amount set value 0
execute if data entity @s item.components.minecraft:custom_data.forgecraft.xp_refund_amount run data modify storage minecraft:reforge temp.refund.amount set from entity @s item.components.minecraft:custom_data.forgecraft.xp_refund_amount
execute if data storage minecraft:reforge temp.refund{amount:0} run return fail
execute as @p[tag=targetplayer] run function reforge:forging/forge_type/reset/refund with storage minecraft:reforge temp.refund
data remove entity @n[type=minecraft:item,tag=iteminit] Item.components.minecraft:custom_data.forgecraft.xp_refund_amount