execute unless data entity @p[tag=targetplayer] SelectedItem run return run tag @a remove targetplayer
scoreboard players set .temp_forge_id const -1
execute store result score .temp_forge_id const if data entity @p[tag=targetplayer] SelectedItem.components.minecraft:custom_data.reforgeid run data get entity @p[tag=targetplayer] SelectedItem.components.minecraft:custom_data.reforgeid
execute if data entity @p[tag=targetplayer] SelectedItem{id:"minecraft:name_tag"} run scoreboard players set .temp_forge_id const 0
execute if data entity @p[tag=targetplayer] SelectedItem{id:"minecraft:player_head"}.components.minecraft:profile run scoreboard players set .temp_forge_id const 0
execute if entity @s[tag=target_type_reforge] unless score .temp_forge_id const matches 0.. run return run tag @a remove targetplayer
scoreboard players set .is_empty const 0
execute if data entity @s item{id:"minecraft:structure_void"} run scoreboard players set .is_empty const 1
execute unless data entity @s item.id run scoreboard players set .is_empty const 1
execute unless score .is_empty const matches 1.. run return fail
item modify entity @p[tag=targetplayer] weapon.mainhand reforge:removeitem
data remove entity @s item
data modify entity @s item.id set from storage minecraft:reforge id
data modify entity @s item.components set from storage minecraft:reforge components
tag @s add target_find
execute as @e[type=text_display,tag=target_type_displayname] at @s if score @s id = @n[tag=target_find] id run function reforge:forging/xp/display_detection
execute as @e[type=item_display,tag=target_forge_display_item] at @s if score @s id = @n[tag=target_find] id run function reforge:forging/display/get_item
tag @s remove target_find
tag @a remove targetplayer