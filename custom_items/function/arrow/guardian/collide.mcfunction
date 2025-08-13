execute as @s run function custom_items:health/damage/apply_arrow with storage minecraft:arrow store
tag @s[tag=!ray_hit] add ray_hit
execute if score .isPoison const matches 1.. run execute at @s run function custom_items:arrow/poison/apply_outer_source
execute as @s if score .arrow_potion_id const matches 0.. run function effects:detect/apply_potion_type_temp
execute if score .istipped const matches 1.. if score .isMagical const matches 1.. run function custom_items:arrow/guardian/cast_potion_strong with storage minecraft:arrow store
