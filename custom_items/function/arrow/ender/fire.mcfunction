execute at @s facing ^ ^ ^ run summon item_display ~ ~ ~ {billboard:"fixed",interpolation_duration:1,teleport_duration:2,item_display:"head",Tags:["projectile","enderball"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-37626187,-1850455024,-1826930358,1198424797],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTM2ZTZjNTlmZGVkMmE0ZTMzMzZjYzQ3MTMwN2I0YjM5ZmUwMjdjNzJiMmY5MWJmNDMyYWE4Njg1Y2E3ZTUwNyJ9fX0="}]}}}}
tag @p[tag=arrow_owner] add projectile_source
execute as @n[tag=enderball,tag=!proj_init] rotated as @p[tag=arrow_owner] run tp @s ^ ^ ^0.01 ~ ~
# Projectile Setup
scoreboard players operation @n[tag=enderball,tag=!proj_init] arrow_potion_id = @s arrow_potion_id
data modify entity @n[tag=enderball,tag=!proj_init] transformation.left_rotation set value [90,0,0,1]
execute as @n[tag=enderball,tag=!proj_init] run function custom_items:arrow/ender/projectile_setup
execute as @n[tag=enderball,tag=!proj_init] at @s run function custom_items:projectile/init