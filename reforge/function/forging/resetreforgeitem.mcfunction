execute if score .isdisplay const matches 1.. run return fail
scoreboard players add @p[tag=targetplayer] forge_count 1
execute as @p[tag=targetplayer] run function reforge:forging/detect_advancement
execute as @e[tag=target_type_displayname] at @s if score @s reforgeId = @n[tag=targetforgemodifier] reforgeId run function reforge:forging/xp/reset_display
data modify entity @n[type=item_display,tag=targetforgeitem,limit=1] item set value {id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"minecraft:air"}}
#data modify entity @n[tag=targetforgeitem,limit=1] item.components set value ""
data modify entity @n[type=item_display,tag=targetforgemodifier,limit=1] item set value {id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"minecraft:air"}}
#data modify entity @n[tag=targetforgemodifier,limit=1] item.components set value ""
execute as @p[tag=targetplayer] at @s run function reforge:forging/xp/get_xp_level 
execute at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 0.8 0
execute at @s align xyz positioned ~0.5 ~0.1 ~0.5 run particle lava ~ ~ ~ 0 0 0 0.5 10 normal
execute as @e[type=text_display,tag=target_forge_display_text] at @s if score @s id = @n[tag=targetforgemodifier] id run function reforge:forging/xp/reset_display
execute as @e[type=item_display,tag=target_forge_display_item] at @s if score @s id = @n[tag=targetforgemodifier] id run function reforge:forging/display/reset
data remove storage minecraft:reforge forge_itemid
data remove storage minecraft:reforge forge_itemcomponents