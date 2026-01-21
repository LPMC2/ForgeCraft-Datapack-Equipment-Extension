scoreboard players set .temp_health const 20
execute store result score .temp_health const run data get entity @s Health
execute store result score .temp_max_health const run attribute @s minecraft:max_health get
execute if score .temp_health const >= .temp_max_health const run return fail
execute unless score @s use matches 1.. run function custom_items:weapon/armorfluxing/apply
scoreboard players set @s use 2