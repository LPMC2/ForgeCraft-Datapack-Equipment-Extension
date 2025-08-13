execute unless score @s bullet_count matches 1.. run attribute @s minecraft:movement_speed modifier add ranger_fire -1 add_multiplied_total
execute unless score @s bullet_count matches 1.. run scoreboard players set @s bullet_count 7
execute at @s facing ^ ^ ^ run summon item_display ~ ~3 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},billboard:"fixed",interpolation_duration:1,teleport_duration:2,item_display:"head",Tags:["projectile","ranger_projectile"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1890324826,1019562071,-2069777952,-2013110035],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2Q1ZjExMzQ2NGQ2NmZhMjBiMDM2OTMyZDdhOGIyYjcwMmNmODczNTJlNDE4Njk4MzljNmNiNzk3OWFiNDEifX19"}]}}}}
tag @s add projectile_source
tag @s add find
scoreboard players set .ranger_count const 0
execute as @e[type=enderman,tag=ranger_enderman] at @s if data entity @s AngryAt run scoreboard players add .ranger_count const 1
#execute if score .ranger_count const matches ..5 as @e[type=#entity_hit_matching:targets_including_player] at @s run function mobs:ranger_enderman/find_target_angryat

execute at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 2 0
execute at @s run particle minecraft:portal ~ ~2.6 ~ 0 0 0 0.2 30
# Projectile Setup
execute unless score .ranger_count const matches ..1 as @n[tag=ranger_projectile,tag=!proj_init] at @n[tag=projectile_source] run tp @s ^ ^3 ^0.01 ~ ~5
execute if score .ranger_count const matches ..1 as @e[type=#entity_hit_matching:targets_including_player,tag=!find] at @s if score @s id = @n[tag=find] angry_at_id run tag @s add target_angryat
execute as @n[tag=ranger_projectile,tag=!proj_init] at @n[tag=projectile_source] run tp @s ^ ^3 ^0.01 facing entity @n[tag=target_angryat] eyes
execute as @n[tag=ranger_projectile,tag=!proj_init] run function mobs:ranger_enderman/projectile_setup
execute as @n[tag=ranger_projectile,tag=!proj_init] at @s run function custom_items:projectile/init
scoreboard players remove @s bullet_count 1
execute if score @s bullet_count matches 1.. run scoreboard players set @s ability_action_cd1 3
execute unless score @s bullet_count matches 1.. run attribute @s minecraft:movement_speed modifier remove ranger_fire
execute unless score @s bullet_count matches 1.. run scoreboard players set @s ability_action_cd1 100
tag @s remove find
tag @e remove target_angryat