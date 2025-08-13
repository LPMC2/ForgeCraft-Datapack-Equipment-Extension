execute store result storage minecraft:projectile store.damage int 1 run scoreboard players get @s projectile_damage
execute store result storage minecraft:projectile store.aoe int 1 run scoreboard players get @s projectile_aoe

execute if score @s projectile_aoe matches 1.. positioned ~ ~ ~ run function custom_items:projectile/area_damage with storage minecraft:projectile store
execute at @s run function custom_items:projectile/effect
# Remove
#execute store result storage minecraft:projectile store.id int 1 run scoreboard players get @s id
#execute as @s run function custom_items:projectile/remove_data with storage minecraft:projectile store

kill @s