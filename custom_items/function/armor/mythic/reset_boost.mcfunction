execute if score @s mythic_count matches 1.. run effect clear @s minecraft:resistance
$attribute @s minecraft:attack_damage modifier remove mythic_$(type)
execute if score @s mythic_count matches 1.. run effect clear @s minecraft:health_boost
$attribute @s minecraft:movement_speed modifier remove mythic_$(type)
$attribute @s minecraft:jump_strength modifier remove mythic_$(type)
$attribute @s minecraft:movement_efficiency modifier remove mythic_$(type)
$attribute @s minecraft:sneaking_speed modifier remove mythic_$(type)
$attribute @s minecraft:oxygen_bonus modifier remove mythic_$(type)
$attribute @s minecraft:attack_speed modifier remove mythic_$(type)
$attribute @s minecraft:burning_time modifier remove mythic_$(type)
execute if score @s mythic_count matches 1.. run effect clear @s minecraft:regeneration
execute if score @s mythic_count matches 1.. run effect clear @s minecraft:strength
$attribute @s minecraft:mining_efficiency modifier remove mythic_$(type)
$attribute @s minecraft:armor_toughness modifier remove mythic_$(type)
$attribute @s minecraft:attack_knockback modifier remove mythic_$(type)
$attribute @s minecraft:step_height modifier remove mythic_$(type)
execute if score @s mythic_count matches 1.. run effect clear @s minecraft:trial_omen
execute if score @s mythic_count matches 1.. run effect clear @s minecraft:water_breathing
execute if score @s mythic_count matches 1.. run effect clear @s minecraft:fire_resistance
$attribute @s minecraft:safe_fall_distance modifier remove mythic_$(type)