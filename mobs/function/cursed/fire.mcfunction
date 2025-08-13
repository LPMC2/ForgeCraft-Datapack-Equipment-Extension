execute at @s unless entity @e[type=#entity_hit_matching:targets_including_player,tag=!cursed,distance=..100] run return fail
execute at @s facing ^ ^ ^ run summon item_display ~ ~1.6 ~ {billboard:"fixed",interpolation_duration:1,teleport_duration:2,item_display:"head",Tags:["projectile","cursed_fireball"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;385749423,155665254,-2009516961,-457205884],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTY4ZGNhOGUwMzc0YTI0MWU1NjA2MjlkYWI0MGI0N2QzOTYwYzYyM2ZjZTAwODc3ZjAwZWI1YjFjYWI5YWJiOCJ9fX0="}]}}}}
tag @s add projectile_source
execute store result score @s ability_action_cd2 run random value 10..50
execute at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0.8 0
# Projectile Setup
execute as @n[tag=cursed_fireball,tag=!proj_init] at @n[tag=projectile_source] run tp @s ^ ^1.6 ^0.01 ~ ~
execute as @n[tag=cursed_fireball,tag=!proj_init] run function mobs:cursed/projectile_setup
execute as @n[tag=cursed_fireball,tag=!proj_init] at @s run function custom_items:projectile/init