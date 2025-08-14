tag @s add find
# Note to .itemtype id:
# 0 = Unknown / Unforgeable
# 1 = Melee
# 2 = Ranged
# 3 = Armor - Head
# 4 = Armor - Chest
# 5 = Armor - Legs
# 6 = Armor - Feet
# 7 = Tools
# 8 = Utilities
# Note to .specialtype id:
# 0 = Unknown
# 1 = Gilded


# Score Init
scoreboard players set .itemtype id 0
scoreboard players set .item reforgeId -1
scoreboard players set .item_reforge reforgeId -1
scoreboard players set .specialtype id 0
scoreboard players set .specialtype_axe id 0
scoreboard players set .specialtype_hoe id 0
scoreboard players set .xp_matched const 0
scoreboard players set .item_mod const 0
scoreboard players set .enhancement_count const 0
scoreboard players set .isnotlisted const 0
scoreboard players set .is_supreme const 0
scoreboard players set .item_forge_count const 0
scoreboard players set .is_repeated const 0

execute as @e[tag=target_type_item] at @s if score @s id = .self_id const run tag @s add targetforgeitem
execute as @e[tag=target_type_reforge] at @s if score @s id = .self_id const run tag @s add targetforgemodifier
# ----- Special Detections -----
# > 1. Gilded:
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:isgolditem run scoreboard players set .specialtype id 1
# > 2. Axe:
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:isaxe run scoreboard players set .specialtype_axe id 1
# > 3. Bow:
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:isbow run scoreboard players set .specialtype id 3
# > 4. Elytra:
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:iselytra run scoreboard players set .specialtype id 4
# > 5. Hoe:
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:ishoe run scoreboard players set .specialtype_hoe id 1
# > 6. Heads:
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:isheads run scoreboard players set .itemtype id 3

# Store item data to the reforge storage
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run data modify storage minecraft:reforge forge_itemid set from entity @s item.id
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run data modify storage minecraft:reforge forge_itemcomponents set from entity @s item.components
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute unless data entity @s item.components run data modify storage minecraft:reforge forge_itemcomponents set value {}
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run data modify storage minecraft:reforge forge.name set from entity @s item.components.minecraft:custom_data.itemname
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute unless data entity @s item.components.minecraft:custom_data.itemname run data modify storage minecraft:reforge forge.name set value ""
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] if data entity @s item.components.minecraft:custom_data.enhancement_count run execute store result score .enhancement_count const run data get entity @s item.components.minecraft:custom_data.enhancement_count
execute if data entity @n[tag=targetforgeitem] item.components.minecraft:custom_data.supreme_reforge run scoreboard players set .is_supreme const 1
execute as @n[tag=targetforgeitem] if data entity @s item.components.minecraft:custom_data.forge_count store result score .item_forge_count const run data get entity @s item.components.minecraft:custom_data.forge_count
# Store reforge id from the forge item
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s run execute store result score .item_reforge reforgeId run data get entity @s item.components.minecraft:custom_data.reforgeid
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s unless data entity @s item.components.minecraft:custom_data.reforgeid run scoreboard players set .item_reforge reforgeId -1
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s unless data entity @s item.components.minecraft:custom_data.reforgeid run data modify storage minecraft:item store.reforge_id set from entity @s item.components.minecraft:profile.properties[0].signature
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s unless data entity @s item.components.minecraft:custom_data.reforgeid run function reforge:forging/get_id_from_signature with storage minecraft:item store
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s run data modify storage minecraft:reforge forge.forgeid set from entity @s item.components.minecraft:custom_data.reforgeid
execute as @e[tag=targetforgemodifier,sort=nearest,limit=1] at @s run execute if data entity @s item.components.minecraft:custom_data.mod_type store result score .item_mod id run data get entity @s item.components.minecraft:custom_data.mod_type
# Store reforge id from the item
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute store result score .item reforgeId store result storage minecraft:reforge forge.forge_itemid int 1 run data get entity @s item.components.minecraft:custom_data.reforgeid
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s unless data entity @s item.components.minecraft:custom_data.reforgeid run scoreboard players set .item reforgeId -1
# Detect if potential repeated forge ids
execute as @n[type=item_display,tag=targetforgeitem] run function reforge:forging/repeated_detection with storage minecraft:reforge forge
# Store item type from the item
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:ismelee run scoreboard players set .itemtype id 1
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:isranged run scoreboard players set .itemtype id 2
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:ishelmet run scoreboard players set .itemtype id 3
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:ischestplate run scoreboard players set .itemtype id 4
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:isleggings run scoreboard players set .itemtype id 5
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:isboots run scoreboard players set .itemtype id 6
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:istools run scoreboard players set .itemtype id 7
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if predicate reforge:isutilities run scoreboard players set .itemtype id 8
execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run execute if data entity @s item.components.minecraft:custom_data.typeid run execute store result score .itemtype id run data get entity @s item.components.minecraft:custom_data.typeid
execute if score .itemtype id matches 1..2 run data modify storage minecraft:reforge forge.slot set value "mainhand"
execute if score .itemtype id matches 7..9 run data modify storage minecraft:reforge forge.slot set value "mainhand"
execute if score .itemtype id matches 3 run data modify storage minecraft:reforge forge.slot set value "head"
execute if score .itemtype id matches 4 run data modify storage minecraft:reforge forge.slot set value "chest"
execute if score .itemtype id matches 5 run data modify storage minecraft:reforge forge.slot set value "legs"
execute if score .itemtype id matches 6 run data modify storage minecraft:reforge forge.slot set value "feet"
execute as @n[tag=targetforgeitem] if data entity @s item.components.minecraft:custom_data.runic run data modify storage minecraft:reforge forge.slot set value "offhand"
execute unless score .itemtype id matches 1.. run scoreboard players set .isnotlisted const 1
# Returns if potential repeated forge ids
execute if score .is_repeated const matches 1.. run return run function reforge:forging/detection_reset
function reforge:forging/randomizeduuid
# Auto-Convert
execute if score .item reforgeId matches -1 if score .item_reforge reforgeId matches 1.. unless score .isrequireconvert const matches 1.. run function reforge:forging/display/getter/auto_convert
# Normal Reforge
execute as @s if score .item reforgeId matches 0 if score .itemtype id matches 1.. unless score .item_reforge reforgeId matches 39 unless score .item_reforge reforgeId matches 75 if score .item_reforge reforgeId matches 1.. run function reforge:forging/display/getter/forge_item
# Special Reforges
execute as @s if score .item reforgeId matches 1.. if score .itemtype id matches 1.. if score .item_reforge reforgeId matches 1.. if score .is_supreme const matches 1.. unless score .item reforgeId = .item_reforge reforgeId unless score .item_forge_count const matches 2.. run function reforge:forging/display/getter/forge_item
execute as @s if score .itemtype id matches 1.. if score .item_reforge reforgeId matches 39 unless data entity @n[tag=targetforgeitem] item{id:"minecraft:structure_void"} run function reforge:forging/display/getter/forge_item
execute as @s if score .item reforgeId matches 0.. if score .itemtype id matches 1.. if score .item_reforge reforgeId matches 75 run function reforge:forging/display/getter/forge_item

execute as @s if score .item reforgeId matches -1 if score .item_reforge reforgeId matches 0 run execute as @e[tag=targetforgeitem,sort=nearest,limit=1] at @s run function reforge:forging/getvanilladata with storage minecraft:reforge uuid
execute as @s if score .item reforgeId matches -1 if score .item_reforge reforgeId matches 0 run function reforge:forging/display/getter/vanilla_forge with storage minecraft:reforge vanilla 

data remove storage minecraft:reforge temp.custom_name
execute if score .itemtype id matches 1.. as @n[type=minecraft:item_display,tag=targetforgemodifier,nbt={item:{id:"minecraft:name_tag"}}] if data entity @s item.components.minecraft:custom_name run data modify storage minecraft:reforge temp.custom_name set from entity @s item.components.minecraft:custom_name
execute if score .itemtype id matches 1.. as @n[type=minecraft:item_display,tag=targetforgemodifier,nbt={item:{id:"minecraft:name_tag"}}] if data entity @s item.components.minecraft:custom_name if data storage minecraft:reforge temp.custom_name run function reforge:forging/display/getter/rename_item with storage minecraft:reforge temp
