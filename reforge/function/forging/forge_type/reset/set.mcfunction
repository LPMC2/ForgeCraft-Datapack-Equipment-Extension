data remove storage minecraft:reforge temp.refund
data modify storage minecraft:reforge temp.refund.amount set value 0
execute if score .item reforgeId matches 85 run return fail
execute store result storage minecraft:reforge temp.refund.amount int 1 run data get entity @s Item.components.minecraft:custom_data.forgecraft.xp_cost 0.75
data remove entity @s Item.components
data modify entity @s Item.components.minecraft:custom_data.forgecraft.xp_refund_amount set from storage minecraft:reforge temp.refund.amount
scoreboard players set .isreforged const 1