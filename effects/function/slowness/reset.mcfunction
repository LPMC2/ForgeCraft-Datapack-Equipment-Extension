attribute @s minecraft:jump_strength modifier remove fc_effect_slowness
attribute @s minecraft:movement_speed modifier remove fc_effect_slowness
execute if score @s effect_slowness_tick matches ..0 run function custom_items:display/remove {tag:"effect_slowness"}