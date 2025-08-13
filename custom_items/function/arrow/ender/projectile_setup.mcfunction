scoreboard players operation @s projectile_damage = .damage const
execute if score .crit_damage const matches ..0 run scoreboard players set @s projectile_speed_digit 1
execute if score .crit_damage const matches 1.. run scoreboard players set @s projectile_speed_digit 2
execute if score .crit_damage const matches 1.. run tag @s add crit_proj
scoreboard players set @s projectile_speed_demical 0
scoreboard players set @s projectile_contact_range_digit 1
scoreboard players set @s projectile_contact_range_demical 75
scoreboard players set @s projectile_duration 200
scoreboard players set @s projectile_aoe 0
scoreboard players set @s projectile_ispiercing 0
scoreboard players set @s projectile_type 4