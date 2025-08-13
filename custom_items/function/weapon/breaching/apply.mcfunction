attribute @s minecraft:attack_damage modifier add breaching_attack -0.5 add_multiplied_total
attribute @s minecraft:armor modifier add breaching_armor -0.5 add_multiplied_total
attribute @s minecraft:armor_toughness modifier add breaching_armor_toughness -0.5 add_multiplied_total
scoreboard players set @s[tag=breaching] breaching 0
execute at @s run playsound minecraft:item.wolf_armor.damage master @a ~ ~ ~ 0.2 0.5 0
tag @s[tag=!breaching] add breaching