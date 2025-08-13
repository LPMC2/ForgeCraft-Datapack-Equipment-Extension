# Store item data to the reforge storage
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run data modify storage minecraft:reforge forge_itemid set from entity @s item.id
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run data modify storage minecraft:reforge forge_itemcomponents set from entity @s item.components
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute unless data entity @s item.components run data modify storage minecraft:reforge forge_itemcomponents set value {}
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run data modify storage minecraft:reforge forge.name set from entity @s item.components.minecraft:custom_data.itemname
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute unless data entity @s item.components.minecraft:custom_data.itemname run data modify storage minecraft:reforge forge.name set value ""
# Store reforge id from the forge item
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s run execute store result score .item_reforge reforgeId run data get entity @s item.components.minecraft:custom_data.reforgeid
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s unless data entity @s item.components.minecraft:custom_data.reforgeid run scoreboard players set .item_reforge reforgeId -1
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s unless data entity @s item.components.minecraft:custom_data.reforgeid run data modify storage minecraft:item store.reforge_id set from entity @s item.components.minecraft:profile.properties[0].signature
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s unless data entity @s item.components.minecraft:custom_data.reforgeid run function reforge:forging/get_id_from_signature with storage minecraft:item store
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s run data modify storage minecraft:reforge forge.forgeid set from entity @s item.components.minecraft:custom_data.reforgeid
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s run execute if data entity @s item.components.minecraft:custom_data.mod_type store result score .item_mod id run data get entity @s item.components.minecraft:custom_data.mod_type