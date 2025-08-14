execute as @e[type=!#entity_hit_matching:non_mob] at @s if score @s id = @n[tag=proj_source] projectile_source_id run tag @s add projectile_owner
execute as @n[tag=proj_source] at @s run function custom_items:projectile/effect
execute store result storage minecraft:projectile store.damage int 1 run scoreboard players get @n[tag=proj_source] projectile_damage
execute if score @n[tag=proj_source] projectile_aoe matches 1.. run execute store result storage minecraft:projectile store.aoe int 1 run scoreboard players get @n[tag=proj_source] projectile_aoe
execute if score @n[tag=proj_source] projectile_aoe matches 1.. run execute as @s at @s run function custom_items:projectile/area_damage with storage minecraft:projectile store
execute unless score @n[tag=proj_source] projectile_aoe matches 1.. run execute as @s[tag=!projectile_ignore] at @s run function custom_items:projectile/apply
execute if score @n[tag=proj_source] arrow_potion_id matches 0.. run tag @n[tag=proj_source] add apply_source
execute if score @n[tag=proj_source] arrow_potion_id matches 0.. run function effects:detect/apply_potion_type
execute if score @n[tag=proj_source] arrow_potion_id matches 0.. run tag @n[tag=proj_source] remove apply_source
execute if score @n[tag=proj_source] projectile_ispiercing matches 1.. run return fail
# Remove
#execute store result storage minecraft:projectile store.id int 1 run scoreboard players get @s id
#execute as @s run function custom_items:projectile/remove_data with storage minecraft:projectile store
kill @n[tag=proj_source]
tag @n[tag=projectile_owner] remove projectile_owner