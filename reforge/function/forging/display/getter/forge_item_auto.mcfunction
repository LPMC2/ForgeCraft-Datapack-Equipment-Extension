scoreboard players reset .base_xp_cost const
scoreboard players set .isdisplay const 1
data modify storage minecraft:reforge forge.name set from entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemname
data modify storage minecraft:reforge forge.itemtype set from entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemtype
execute unless data entity @n[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemtype run data modify storage minecraft:reforge forge.itemtype set value "Unknown Type"
execute store result score .base_xp_cost const run data get entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.forgecraft.xp_cost
scoreboard players set .isreforged const -1
execute as @n[type=item,tag=iteminit] store result entity @s data.req_xp int 1 run scoreboard players get .xp_cost const
function reforge:forging/get_forge_type
execute store result entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.forgecraft.xp_cost int 1 run scoreboard players operation .base_xp_cost const += .xp_cost const
execute as @n[type=item,tag=iteminit] if data entity @s Item.components.minecraft:profile.properties[0].signature run data remove entity @s Item.components.minecraft:profile.properties[0].signature
execute unless score .isreforged const matches 1.. run kill @e[tag=iteminit,limit=1]
data remove storage minecraft:reforge forge_itemid
data remove storage minecraft:reforge forge_itemcomponents