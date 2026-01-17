function effects:slowness/reset
execute if score @s effect_slowness_tick matches ..0 run return fail
execute if score @s effect_slowness_tick matches 5.. run attribute @s minecraft:jump_strength modifier add fc_effect_slowness -1 add_multiplied_total
$execute if score @s effect_slowness_tick matches ..4 run attribute @s minecraft:movement_speed modifier add fc_effect_slowness -0$(amount) add_multiplied_total
$execute if score @s effect_slowness_tick matches 5.. run attribute @s minecraft:movement_speed modifier add fc_effect_slowness -$(amount) add_multiplied_total
$function custom_items:display/add {tag:"effect_slowness",type:"countdown",max:1,selector:"@s",score:"effect_slowness_cd",format:"number",color:"#6e8388",label:"🐢 Slowdown [$(tick)]: ",unit:"s"}