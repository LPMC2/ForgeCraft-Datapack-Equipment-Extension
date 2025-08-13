execute store result storage minecraft:projectile store.speed.digit int 1 run scoreboard players get @s projectile_speed_digit
execute store result storage minecraft:projectile store.speed.demical int 1 run scoreboard players get @s projectile_speed_demical
execute store result storage minecraft:projectile store.distance.digit int 1 run scoreboard players get @s projectile_contact_range_digit
execute store result storage minecraft:projectile store.distance.demical int 1 run scoreboard players get @s projectile_contact_range_demical

execute at @s run function custom_items:projectile/travel with storage minecraft:projectile store.speed
execute as @s at @s run function custom_items:projectile/detection with storage minecraft:projectile store.distance
scoreboard players add @s cooldown 1
execute if score @s cooldown >= @s projectile_duration run kill @s