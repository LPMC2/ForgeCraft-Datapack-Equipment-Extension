#$say execute store result storage minecraft:damage store.damage float 1 run attribute @s minecraft:attack_damage get $(digit).$(value)
$execute store result storage minecraft:damage store.damage float 1 run attribute @s minecraft:attack_damage get $(digit).$(value)
execute as @s run function custom_items:health/damage/apply_default with storage minecraft:damage store