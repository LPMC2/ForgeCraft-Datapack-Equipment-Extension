scoreboard players set .item_damage const 0
execute store result score .item_damage const run data get entity @s Item.components.minecraft:damage
execute unless score .item_damage const matches 1.. run return run scoreboard players set .non_repairable const 1
data modify entity @s Item.components.minecraft:damage set value 0
scoreboard players set .isreforged const 1

