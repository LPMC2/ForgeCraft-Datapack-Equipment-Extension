# Arrow
execute if entity @e[type=#entity_hit_matching:arrow] run execute as @e[type=#entity_hit_matching:arrow] at @s run function custom_items:arrow/tick
execute as @a at @s if entity @s[tag=!init_player] run function custom_items:playerinit

# Weapon
function custom_items:weapon/tick
# General
function custom_items:general/tick

# Projectile
execute as @e[tag=projectile,tag=proj_init] at @s run function custom_items:projectile/update