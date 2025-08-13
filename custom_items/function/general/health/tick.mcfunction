execute store result score @s current_hp run data get entity @s Health
execute store result score @s max_hp run attribute @s minecraft:max_health get
execute if entity @s[tag=!hp_full] if score @s current_hp = @s max_hp run function custom_items:general/health/full
execute if entity @s[tag=hp_full] if score @s current_hp < @s max_hp run function custom_items:general/health/normal