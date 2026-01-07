# Arrow
execute as @e[type=#entity_hit_matching:arrow] at @s run function custom_items:arrow/tick
execute as @a at @s unless score @s id matches 1.. run function custom_items:playerinit

# Weapon
execute as @a run function custom_items:weapon/player_tick

# Projectile
execute as @e[type=item_display,tag=projectile,tag=proj_init] at @s run function custom_items:projectile/update