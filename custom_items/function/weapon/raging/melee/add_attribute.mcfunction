attribute @s minecraft:attack_speed modifier remove atkspeed
attribute @s minecraft:movement_speed modifier remove atkspeed
$execute if score .rage rage_meter_melee matches ..9 run execute at @s run playsound minecraft:entity.ravager.attack master @a ~ ~ ~ 0.2 $(value_digit).0$(value_demical) 0
$execute if score .rage rage_meter_melee matches 10.. run execute at @s run playsound minecraft:entity.ravager.attack master @a ~ ~ ~ 0.2 $(value_digit).$(value_demical) 0
$execute at @s run particle dust{color:[0.831,0.000,1.000],scale:0.75} ~ ~0.65 ~ 0.5 0.5 0.5 1 $(value_digit)$(value_demical) normal
$execute if score .rage rage_meter_melee matches ..9 run attribute @s minecraft:attack_speed modifier add atkspeed $(value_digit).0$(value_demical) add_multiplied_total
$execute if score .rage rage_meter_melee matches 10.. run attribute @s minecraft:attack_speed modifier add atkspeed $(value_digit).$(value_demical) add_multiplied_total
$execute if score .rage rage_meter_melee matches ..9 run attribute @s minecraft:movement_speed modifier add atkspeed $(value_digit).0$(value_demical) add_multiplied_total
$execute if score .rage rage_meter_melee matches 10.. run attribute @s minecraft:movement_speed modifier add atkspeed $(value_digit).$(value_demical) add_multiplied_total
#$say speed:$(value_digit).$(value_demical)