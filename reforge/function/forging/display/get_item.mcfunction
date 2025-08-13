data remove storage minecraft:reforge temp.display
scoreboard players operation .self_id const = @s id
execute as @e[type=item_display,tag=target_type_item] if score .self_id const = @s id unless data entity @s item run return fail
execute as @e[type=item_display,tag=target_type_reforge] if score .self_id const = @s id unless data entity @s item run return fail
execute as @s run function reforge:forging/display/getter/forge_detection
execute as @n[type=item,tag=iteminit] run function reforge:forging/display/get_data
execute if score .apply_id const matches 1.. if score .forge_item_id const matches -1.. unless entity @n[tag=iteminit] run data modify entity @n[type=text_display,tag=target_type_displayname] text set value [{"color":"red","italic":false,"text":"Invaild Item Type!"}]
kill @e[type=item,tag=iteminit]
tag @e remove targetforgeitem
tag @e remove targetforgemodifier
tag @e remove find
