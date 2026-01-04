execute if score @s electric_reforge_cd matches 1.. run return fail
scoreboard players set @s electric_reforge_cd 100
tag @s add electric_reforge
scoreboard players set .distance const 0
execute store result storage forgecraft:temp store.damage double 1 run attribute @s minecraft:attack_damage get
tag @s add onHit
execute at @s anchored eyes run function custom_items:weapon/electric/raycast
tag @s remove onHit