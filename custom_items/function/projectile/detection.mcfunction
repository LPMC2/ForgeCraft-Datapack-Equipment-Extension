$execute at @s if entity @n[type=#entity_hit_matching:targets_including_player,distance=..$(digit).$(demical)] run tag @s add proj_source
$execute at @s run execute as @n[type=#entity_hit_matching:targets_including_player,distance=..$(digit).$(demical)] at @s unless score @n[tag=proj_source] projectile_source_id = @s id run function custom_items:projectile/on_hit_mob with storage minecraft:projectile store
execute at @s unless block ~ ~ ~ #minecraft:replaceable run function custom_items:projectile/on_hit_ground
tag @s remove proj_source