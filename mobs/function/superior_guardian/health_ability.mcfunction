execute if score @s health matches 101..200 run function mobs:superior_guardian/summon_drowned
execute if score @s health matches 101..200 run scoreboard players set @s ability_health_remain 100
execute if score @s health matches 101..200 run tag @s remove health_ability_used
execute if score @s health matches ..100 run function mobs:superior_guardian/summon_guardian