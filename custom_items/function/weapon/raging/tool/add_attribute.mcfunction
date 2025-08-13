attribute @s minecraft:block_break_speed modifier remove minespeed
attribute @s minecraft:movement_speed modifier remove minespeed
$execute at @s run particle dust{color:[0.831,0.000,1.000],scale:0.75} ~ ~0.65 ~ 0.5 0.5 0.5 1 $(value_digit)$(value_demical) normal
$execute if score .rage rage_meter_tool matches ..9 run attribute @s minecraft:block_break_speed modifier add minespeed $(value_digit).0$(value_demical) add_multiplied_total
$execute if score .rage rage_meter_tool matches 10.. run attribute @s minecraft:block_break_speed modifier add minespeed $(value_digit).$(value_demical) add_multiplied_total
$execute if score .rage rage_meter_melee matches ..9 run attribute @s minecraft:movement_speed modifier add minespeed $(value_digit).0$(value_demical) add_multiplied_total
$execute if score .rage rage_meter_melee matches 10.. run attribute @s minecraft:movement_speed modifier add minespeed $(value_digit).$(value_demical) add_multiplied_total
#$say speed:$(value_digit).$(value_demical)
execute if score .rage_digit rage_meter_tool matches 2.. run execute at @s run playsound minecraft:entity.ravager.attack master @a ~ ~ ~ 0.2 2 0
execute if score .rage_digit rage_meter_tool matches 2.. run return fail
execute as @s run function custom_items:weapon/raging/tool/play_sound with storage minecraft:attribute store