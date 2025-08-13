# Core Functions
# > Default Damage
execute as @s unless score @n[tag=proj_source] projectile_type matches 0.. run function custom_items:health/damage/apply_default with storage minecraft:projectile store
# 0 > Mob Attack (Can Aggro)
execute as @s if score @n[tag=proj_source] projectile_type matches 0 run function custom_items:health/damage/apply_entity with storage minecraft:projectile store
# 1 > Mob Attack (No Aggro)
execute as @s if score @n[tag=proj_source] projectile_type matches 1 run function custom_items:health/damage/apply_entity_noaggro with storage minecraft:projectile store
# 2 > Explosion
execute as @s if score @n[tag=proj_source] projectile_type matches 2 run function custom_items:health/damage/apply_explosion with storage minecraft:projectile store
# 3 > Player Attack
execute as @s if score @n[tag=proj_source] projectile_type matches 3 run function custom_items:health/damage/apply with storage minecraft:projectile store
# 4 > Player Attack (No Source)
execute as @s if score @n[tag=proj_source] projectile_type matches 4 run function custom_items:health/damage/apply_player_no_source with storage minecraft:projectile store
# Custom Functions