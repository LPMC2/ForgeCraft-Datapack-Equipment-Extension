# Arrow
execute if entity @e[type=#entity_hit_matching:arrow] run execute as @e[type=#entity_hit_matching:arrow] at @s run function custom_items:arrow/tick
execute as @a at @s if entity @s[tag=!init_player] run function custom_items:playerinit

# Weapon
execute as @a run function custom_items:weapon/player_tick
execute as @e[type=!#entity_hit_matching:non_mob] run function custom_items:weapon/entity_tick
# General
function custom_items:general/tick

# Projectile
execute as @e[tag=projectile,tag=proj_init] at @s run function custom_items:projectile/update