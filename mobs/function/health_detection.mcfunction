execute store result score @s health run data get entity @s Health
execute as @s[tag=!health_ability_used] if score @s health <= @s ability_health_remain run function mobs:health_ability