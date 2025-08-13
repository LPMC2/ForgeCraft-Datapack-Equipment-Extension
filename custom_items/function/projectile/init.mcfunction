tag @s add proj_init
scoreboard players add .global_projectile id 1
scoreboard players operation @s id = .global_projectile id
#execute store result storage minecraft:projectile store.id int 1 run scoreboard players get @s id
#execute as @s run function custom_items:projectile/store_data with storage minecraft:projectile store
# ----- Fallback values ----- #
execute unless score @s projectile_damage matches 0.. run scoreboard players set @s projectile_damage 0
execute unless score @s projectile_speed_digit matches 0.. run scoreboard players set @s projectile_speed_digit 0
execute unless score @s projectile_speed_demical matches 0.. run scoreboard players set @s projectile_speed_demical 10
execute unless score @s projectile_contact_range_digit matches 0.. run scoreboard players set @s projectile_contact_range_digit 1
execute unless score @s projectile_contact_range_demical matches 0.. run scoreboard players set @s projectile_contact_range_demical 0
execute unless score @s projectile_duration matches 0.. run scoreboard players set @s projectile_duration 200
execute unless score @s projectile_aoe matches 0.. run scoreboard players set @s projectile_aoe 0
# --------------------------- #


scoreboard players operation @s projectile_source_id = @n[tag=projectile_source] id


tag @n[tag=projectile_source] remove projectile_source