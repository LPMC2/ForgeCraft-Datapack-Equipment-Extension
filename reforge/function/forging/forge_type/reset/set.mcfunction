data remove storage minecraft:reforge temp.refund
data modify storage minecraft:reforge temp.refund.amount set value 0
execute if score .item reforgeId matches 85 run return fail
execute store result entity @s data.refund_amount int 1 run data get entity @s Item.components.minecraft:custom_data.forgecraft.xp_cost 0.75
data remove entity @s Item.components
data modify entity @s Item.components.minecraft:custom_data.forgecraft.xp_cost set value 0
scoreboard players set .base_xp_cost const 0
scoreboard players set .isreforged const 1