scoreboard players reset .base_xp_cost const
scoreboard players set .isdisplay const 1
execute at @s run summon item ~ ~-0.5 ~ {PickupDelay:5,Age:-32768,Tags:["iteminit"],Motion:[0.0,0.25,0.0],Item:{id:"minecraft:stone",count:1}}
data modify entity @n[type=item,tag=iteminit] Item.id set from storage minecraft:reforge forge_itemid
data modify entity @n[type=item,tag=iteminit] Item.components set from storage minecraft:reforge forge_itemcomponents
execute as @n[type=item,tag=iteminit] if data entity @s Item.components.minecraft:profile.properties[0].signature run data remove entity @s Item.components.minecraft:profile.properties[0].signature

# Special Reforges
execute as @n[type=item,tag=iteminit] if data entity @s Item.components.minecraft:custom_data.evolving_reforge run function reforge:forging/display/getter/reforge/evolving/update

data modify storage minecraft:reforge forge.itemtype set from entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemtype
execute store result score .base_xp_cost const run data get entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.forgecraft.xp_cost
execute store result entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.forgecraft.xp_cost int 1 run scoreboard players operation .xp_cost const += .base_xp_cost const
execute unless data entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.itemtype run data modify storage minecraft:reforge forge.itemtype set value "Unknown Type"

scoreboard players set .isreforged const -1
function reforge:forging/get_forge_type
execute if score .isreforged const matches -1 run kill @e[type=minecraft:item,tag=iteminit,limit=1]
data remove storage minecraft:reforge forge_itemid
data remove storage minecraft:reforge forge_itemcomponents